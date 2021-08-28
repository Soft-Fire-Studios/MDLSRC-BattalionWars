function Units(owner)
  local tableData = {}
  tableData.revConCursor = GetHandCursor()
  tableData.cursorSelect = GetFingetCursor()
  local currentModel = 0
  local currentModelID = 1
  local nextModelID = 1
  local scaleZ = 1
  local zoomRate = 0.75 / GetFramesPerSecond()
  local zoomMin = 0.5
  local zoomMax = 1
  local navSound = 0
  local unitTypeHeaders = {
    0,
    42,
    84,
    122
  }
  function tableData.getHeaderText()
    return unitTypeHeaders[ForcesType] + NumGlobalStrings
  end
  function tableData.getUnitName()
    return UnitNames[ForcesType][currentModelID] + NumGlobalStrings
  end
  function tableData.getUnitDescription()
    return UnitDescriptions[ForcesType][currentModelID] + NumGlobalStrings
  end
  function tableData.getBGScrollingMapColour()
    return FactionBGColours[SelectedFaction]
  end
  local modelDragActive = false
  local initialXRot = -10
  local currentRotX = initialXRot
  local currentRotY = 0
  local targetRotX = initialXRot
  local targetRotY = 0
  local damping = 0.3
  local baseRotX = 0
  local baseRotY = 0
  local activateRotX = 0
  local activateRotY = 0
  local modelYReleaseRate = 0
  local firstHeld = true
  function tableData.modelGetXRotation()
    return currentRotX
  end
  function tableData.modelGetYRotation()
    return currentRotY
  end
  local function tweenToNewAngle(current, target)
    local currentToTargetDiff = target - current
    current = current + currentToTargetDiff * damping
    return current
  end
  local function modelClampAndTweenToNewPosition()
    if targetRotX < -80 then
      targetRotX = -80
    elseif targetRotX > 80 then
      targetRotX = 80
    end
    currentRotX = tweenToNewAngle(currentRotX, targetRotX)
    currentRotY = tweenToNewAngle(currentRotY, targetRotY)
  end
  local prevPosX = {}
  local prevPosXIdx = 0
  local numXSpinSamples = GetFramesPerSecond() / 5
  function tableData.modelOnActivate()
    local y, x = GetCursorPosition()
    for prevPosXIdx = 1, numXSpinSamples do
      prevPosX[prevPosXIdx] = y
    end
    baseRotX = currentRotX
    baseRotY = currentRotY
    activateRotX = x
    activateRotY = y
    modelDragActive = true
    EndMainCursor(tableData)
    tableData.revConCursor = GetGrabCursor()
    OpenSprite(tableData.revConCursor)
  end
  function tableData.modelOnHeld()
    if modelDragActive then
      local y, x = GetCursorPosition()
      if prevPosXIdx < numXSpinSamples then
        prevPosXIdx = prevPosXIdx + 1
      else
        prevPosXIdx = 1
      end
      prevPosX[prevPosXIdx] = y
      targetRotX = baseRotX + (activateRotX - x) * 0.35
      targetRotY = baseRotY + (activateRotY - y) * 0.35
      modelClampAndTweenToNewPosition()
    end
  end
  function tableData.modelOnRelease()
    modelYReleaseRate = 1
    if firstHeld then
      firstHeld = false
    elseif modelDragActive then
      local diff = 0
      local tmp = 0
      for i = 1, numXSpinSamples - 1 do
        tmp = abs(prevPosX[i] - prevPosX[i + 1])
        if diff < tmp then
          diff = tmp
        end
      end
      if targetRotY - currentRotY < 0 then
        modelYReleaseRate = diff * 0.02
      else
        modelYReleaseRate = -diff * 0.02
      end
    end
    modelDragActive = false
    EndMainCursor(tableData)
    tableData.revConCursor = GetHandCursor()
    OpenSprite(tableData.revConCursor)
  end
  local function resetModelDrag()
    modelDragActive = false
    modelYReleaseRate = 1
    currentRotX = initialXRot
    targetRotX = initialXRot
  end
  local function doNavSound()
    if navSound ~= 0 then
      StopWidget(navSound)
    end
    navSound = GUI_Sound.units_nav_button
    StartWidget(tableData, navSound, false)
  end
  local clearDirection = false
  local clearCount = 0
  local clearCountLimit = 180
  local clearCountRate = GetFramesPerSecond() * 0.3
  function tableData.clearTogglePressed()
    if clearDirection then
      clearDirection = false
    else
      clearDirection = true
      SetCursorState(CursorState.Normal)
    end
  end
  function tableData.clearCountAlpha()
    return cos(clearCount) * 127.5 + 127.5
  end
  local function updateClear()
    if clearDirection then
      clearCount = clearCount + clearCountRate
      if clearCount > clearCountLimit then
        clearCount = clearCountLimit
      end
    else
      clearCount = clearCount - clearCountRate
      if clearCount < 0 then
        clearCount = 0
      end
    end
  end
  local alphaCount = 180
  local alphaRate = GetFramesPerSecond() * 0.3
  local alphaDirection
  local done = 0
  local up = 1
  local down = 2
  local noSound = true
  local function fadeUpdate()
    if alphaDirection == down and noSound then
      noSound = false
      doNavSound()
    end
    if alphaDirection == up then
      alphaCount = alphaCount - alphaRate
      if alphaCount <= 0 then
        alphaCount = 0
        alphaDirection = done
        noSound = true
      end
    elseif alphaDirection == down then
      alphaCount = alphaCount + alphaRate
      if alphaCount >= 180 then
        alphaCount = 180
        alphaDirection = done
      end
    end
  end
  local function modelUpdate()
    if currentModelID ~= nextModelID then
      if currentModel ~= 0 then
        if alphaDirection == done then
          StopWidget(currentModel)
          currentModel = 0
        end
      elseif alphaDirection == done then
        currentModelID = nextModelID
        currentModel = GetModelWidget(currentModelID)
        if currentModel ~= 0 then
          scaleZ = 1
          StartWidget(tableData, currentModel, false)
          alphaDirection = up
        end
        resetModelDrag()
      end
    end
    if modelDragActive == false then
      currentRotY = currentRotY - modelYReleaseRate
    end
  end
  function tableData.fadeModelAlpha()
    return cos(alphaCount) * 127.5 + 127.5
  end
  local decrementModelID = function(thisModelID)
    local modelID = thisModelID - 1
    if modelID < 1 then
      modelID = GetModelCount()
    end
    return modelID
  end
  local function getPrevModelID(thisModelID)
    local modelID = decrementModelID(thisModelID)
    while GetModelWidget(modelID) == 0 do
      modelID = decrementModelID(modelID)
      if modelID == thisModelID then
        return 0
      end
    end
    return modelID
  end
  local incrementModelID = function(thisModelID)
    local modelID = thisModelID + 1
    if modelID > GetModelCount() then
      modelID = 1
    end
    return modelID
  end
  local function getNextModelID(thisModelID)
    local modelID = incrementModelID(thisModelID)
    while GetModelWidget(modelID) == 0 do
      modelID = incrementModelID(modelID)
      if modelID == thisModelID then
        return 0
      end
    end
    return modelID
  end
  local function prevModel()
    if alphaDirection == done then
      alphaDirection = down
      nextModelID = getPrevModelID(currentModelID)
    end
  end
  local function nextModel()
    if alphaDirection == done then
      alphaDirection = down
      nextModelID = getNextModelID(currentModelID)
    end
  end
  function tableData.goLeft()
    if clearCount == 0 then
      prevModel()
      firstHeld = true
    end
  end
  function tableData.goRight()
    if clearCount == 0 then
      nextModel()
      firstHeld = true
    end
  end
  function tableData.buttonActive()
    return clearCount == 0
  end
  function tableData.dPadLeft()
    prevModel()
  end
  function tableData.dPadRight()
    nextModel()
  end
  function tableData.getModelY(default)
    return default
  end
  function tableData.getModelZ(default)
    return default * scaleZ
  end
  function tableData.modelArrayPos()
    return 0, (scaleZ - zoomMin) * -60 * 2.5
  end
  function tableData.dPadUp()
    scaleZ = scaleZ * (1 - zoomRate)
    if scaleZ < zoomMin then
      scaleZ = zoomMin
    end
  end
  function tableData.dPadDown()
    scaleZ = scaleZ * (1 + zoomRate)
    if scaleZ > zoomMax then
      scaleZ = zoomMax
    end
  end
  local sdc = {}
  local sdir = {}
  local ambient = {}
  local am = {
    0,
    0,
    0,
    0
  }
  local sc1 = {
    255,
    0,
    127,
    0
  }
  local sd1 = {0, 0}
  local curInitCount = 0
  function tableData.Open()
    clearCount = 0
    clearDirection = false
    SetSunDirection({40, 50})
    SetSunAmbientColour({
      104,
      92,
      97
    })
    SetSunDirectionalColour({
      212,
      209,
      205,
      255
    })
    SetAntiSunDirectionalColour({
      107,
      95,
      89
    })
    firstHeld = true
    resetModelDrag()
    currentRotX = initialXRot
    currentRotY = 240
    targetRotX = initialXRot
    targetRotY = 240
    currentModelID = getNextModelID(0)
    nextModelID = currentModelID
    currentModel = GetModelWidget(currentModelID)
    if currentModel ~= 0 then
      StartWidget(tableData, currentModel, false)
      alphaCount = 180
      alphaDirection = up
    end
    scaleZ = 1
    curInitCount = 0
  end
  function tableData.Update()
    if curInitCount < 4 then
      curInitCount = curInitCount + 1
      SetCursorState(CursorState.Normal)
    end
    PollUnitsMusicLoop(SelectedFaction)
    fadeUpdate()
    modelUpdate()
    updateClear()
  end
  function tableData.Close()
    SetSunDirection({65, 65})
    SetSunAmbientColour({
      224,
      224,
      224
    })
    SetSunDirectionalColour({
      226,
      224,
      226,
      255
    })
    SetAntiSunDirectionalColour({
      225,
      226,
      227
    })
    if currentModel ~= 0 then
      StopWidget(currentModel)
      currentModel = 0
    end
  end
  function GetUnitsPage()
    return tableData
  end
  DebugOut("Units ticked ***")
end

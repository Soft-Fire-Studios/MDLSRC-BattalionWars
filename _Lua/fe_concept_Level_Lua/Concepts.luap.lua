function Concepts(owner)
  local tableData = {}
  tableData.revConCursor = 0
  tableData.cursorSelect = 0
  function tableData.getConceptsTitle()
    return NumGlobalStrings + 8
  end
  local factionIcon
  function tableData.getFactionIconPos()
    return 524, 84
  end
  StringID.HideCaptions = NumGlobalStrings + 9
  function tableData.getBGScrollingMapColour()
    return FactionBGColours[SelectedFaction]
  end
  local getPicture = function(picIdx)
    local pictures = {
      {
        GUI_Texture.SE_C_CO,
        GUI_Texture.SE_C_B_Buildings01,
        GUI_Texture.SE_C_B_Buildings02,
        GUI_Texture.SE_C_Scene01,
        GUI_Texture.SE_C_Scene02,
        GUI_Texture.SE_C_Scene03,
        GUI_Texture.SE_C_T_Troop,
        GUI_Texture.SE_C_VA_Air_Transport,
        GUI_Texture.SE_C_VA_Fighter,
        GUI_Texture.SE_C_VA_Gunship,
        GUI_Texture.SE_C_VG_AA,
        GUI_Texture.SE_C_VG_Artillery,
        GUI_Texture.SE_C_VG_HTank,
        GUI_Texture.SE_C_VG_LTank,
        GUI_Texture.SE_C_VG_Recon,
        GUI_Texture.SE_C_VW_Battleship,
        GUI_Texture.SE_C_VW_Dreadnought,
        GUI_Texture.SE_C_VW_Frigate,
        GUI_Texture.SE_C_VW_Sub
      },
      {
        GUI_Texture.WF_C_CO,
        GUI_Texture.WF_C_B_Buildings01,
        GUI_Texture.WF_C_B_Buildings02,
        GUI_Texture.WF_C_B_Buildings03,
        GUI_Texture.WF_C_B_Buildings04,
        GUI_Texture.WF_C_Scene01,
        GUI_Texture.WF_C_Scene02,
        GUI_Texture.WF_C_Scene03,
        GUI_Texture.WF_C_Scene04,
        GUI_Texture.WF_C_T_Troop,
        GUI_Texture.WF_C_VA_Air_Transport,
        GUI_Texture.WF_C_VA_Bomber,
        GUI_Texture.WF_C_VA_Fighter,
        GUI_Texture.WF_C_VA_Gunship,
        GUI_Texture.WF_C_VA_Stratofortress,
        GUI_Texture.WF_C_VG_AA,
        GUI_Texture.WF_C_VG_Artillery,
        GUI_Texture.WF_C_VG_Battlestation,
        GUI_Texture.WF_C_VG_HTank,
        GUI_Texture.WF_C_VG_LTank,
        GUI_Texture.WF_C_VG_LTransport,
        GUI_Texture.WF_C_VG_Recon,
        GUI_Texture.WF_C_VW_Battleship,
        GUI_Texture.WF_C_VW_Dreadnought,
        GUI_Texture.WF_C_VW_Frigate,
        GUI_Texture.WF_C_VW_Sub
      },
      {
        GUI_Texture.AI_C_CO,
        GUI_Texture.AI_C_B_Buildings01,
        GUI_Texture.AI_C_Env01,
        GUI_Texture.AI_C_Env02,
        GUI_Texture.AI_C_Env03,
        GUI_Texture.AI_C_Env04,
        GUI_Texture.AI_C_Env05,
        GUI_Texture.AI_C_Env06,
        GUI_Texture.AI_C_Env07,
        GUI_Texture.AI_C_T_Troops01,
        GUI_Texture.AI_C_T_Troops02,
        GUI_Texture.AI_C_VA_Air_Transport,
        GUI_Texture.AI_C_VA_Bomber,
        GUI_Texture.AI_C_VA_Fighter,
        GUI_Texture.AI_C_VA_Stratodestroyer,
        GUI_Texture.AI_C_VG_Artillery,
        GUI_Texture.AI_C_VG_HTank,
        GUI_Texture.AI_C_VG_LTank,
        GUI_Texture.AI_C_VW_Battleship,
        GUI_Texture.AI_C_VW_Frigate,
        GUI_Texture.AI_C_VW_Sub
      },
      {
        GUI_Texture.IL_C_CO,
        GUI_Texture.IL_C_B_Buildings,
        GUI_Texture.IL_C_Scene01,
        GUI_Texture.IL_C_Scene02,
        GUI_Texture.IL_C_Scene03,
        GUI_Texture.IL_C_T_Troops,
        GUI_Texture.IL_C_VA_Bomber,
        GUI_Texture.IL_C_VA_Fighter,
        GUI_Texture.IL_C_VA_Gunship,
        GUI_Texture.IL_C_VG_Artillery,
        GUI_Texture.IL_C_VG_Battlestation,
        GUI_Texture.IL_C_VG_HTank
      },
      {
        GUI_Texture.T_C_CO,
        GUI_Texture.T_C_B_Buildings,
        GUI_Texture.T_C_T_Troops,
        GUI_Texture.T_C_VA_Bomber,
        GUI_Texture.T_C_VA_Fighter,
        GUI_Texture.T_C_VA_Gunship,
        GUI_Texture.T_C_VG_AA,
        GUI_Texture.T_C_VG_Artillery,
        GUI_Texture.T_C_VG_Battlestation,
        GUI_Texture.T_C_VG_HTank,
        GUI_Texture.T_C_VG_LTank,
        GUI_Texture.T_C_VG_LTransport,
        GUI_Texture.T_C_VG_Recon,
        GUI_Texture.T_C_VW_Battleship,
        GUI_Texture.T_C_VW_Dreadnought,
        GUI_Texture.T_C_VW_Frigate,
        GUI_Texture.T_C_VW_Sub
      },
      {
        GUI_Texture.X_C_CO,
        GUI_Texture.X_C_B_Buildings,
        GUI_Texture.X_C_Scene01,
        GUI_Texture.X_C_Scene02,
        GUI_Texture.X_C_Scene03,
        GUI_Texture.X_C_Scene04,
        GUI_Texture.X_C_VA_Bomber,
        GUI_Texture.X_C_VA_Fighter,
        GUI_Texture.X_C_VA_Gunship,
        GUI_Texture.X_C_VA_Stratofortress,
        GUI_Texture.X_C_VG_AA,
        GUI_Texture.X_C_VG_Artillery,
        GUI_Texture.X_C_VG_Battlestation,
        GUI_Texture.X_C_VG_HTank,
        GUI_Texture.X_C_VG_HTransport,
        GUI_Texture.X_C_VG_LTank,
        GUI_Texture.X_C_VG_LTransport,
        GUI_Texture.X_C_VW_Battleship,
        GUI_Texture.X_C_VW_Dreadnought,
        GUI_Texture.X_C_VW_Frigate,
        GUI_Texture.X_C_VW_Sub
      }
    }
    return pictures[SelectedFaction][picIdx]
  end
  local totalPictures = {
    19,
    26,
    21,
    12,
    12,
    21
  }
  local currentPicture = 0
  local currentPictureID = 0
  local nextPictureID = 0
  local clearDirection = false
  local clearCount = 0
  local clearCountLimit = 180
  local clearCountRate = GetFramesPerSecond() * 0.3
  function tableData.clearTogglePressed()
    if clearDirection then
      clearDirection = false
      StartMainCursor(tableData)
      StartFingerCursor(tableData)
    else
      clearDirection = true
      EndMainCursor(tableData)
      EndSelectCursor(tableData)
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
  local alphaRate = GetFramesPerSecond() / 3.5
  local done = 20
  local up = 1
  local down = 2
  local alphaDirection = up
  local function fadeUpdate()
    if alphaDirection == up then
      alphaCount = alphaCount - alphaRate
      if alphaCount <= 0 then
        alphaCount = 0
        alphaDirection = done
      end
    elseif alphaDirection == down then
      alphaCount = alphaCount + alphaRate
      if alphaCount >= 180 then
        alphaCount = 180
        alphaDirection = -done
      end
    end
  end
  local function pictureUpdate()
    if currentPictureID ~= nextPictureID and alphaDirection == -done then
      if currentPicture ~= 0 then
        StopWidget(currentPicture)
        currentPicture = 0
      else
        currentPictureID = nextPictureID
        currentPicture = getPicture(currentPictureID)
        if currentPicture ~= 0 then
          StartWidget(tableData, currentPicture, false)
          alphaDirection = up
        end
      end
    end
  end
  function tableData.fadePictureAlpha()
    return cos(alphaCount) * 127.5 + 127.5
  end
  local function setPrevPic()
    if nextPictureID > 1 then
      nextPictureID = nextPictureID - 1
      alphaDirection = down
    end
  end
  local function setNextPic()
    if nextPictureID < totalPictures[SelectedFaction] then
      nextPictureID = nextPictureID + 1
      alphaDirection = down
    end
  end
  function tableData.goLeft()
    if alphaDirection == done then
      setPrevPic()
    end
  end
  function tableData.goRight()
    if alphaDirection == done then
      setNextPic()
    end
  end
  function tableData.decPic()
    if clearCount == 0 and alphaDirection == done then
      setPrevPic()
    end
  end
  function tableData.incPic()
    if clearCount == 0 and alphaDirection == done then
      setNextPic()
    end
  end
  function tableData.dPadUp()
  end
  function tableData.dPadDown()
  end
  function tableData.goLeftActive()
    if clearCount == 0 then
      return nextPictureID ~= 1
    else
      return false
    end
  end
  function tableData.goRightActive()
    if clearCount == 0 then
      return nextPictureID ~= totalPictures[SelectedFaction]
    else
      return false
    end
  end
  function tableData.getBackButtonActive()
    if clearCount == 0 then
      return true
    else
      return false
    end
  end
  local factionPicStrBaseIDs = {
    NumGlobalStrings + 176,
    NumGlobalStrings + 21,
    NumGlobalStrings + 52,
    NumGlobalStrings + 114,
    NumGlobalStrings + 83,
    NumGlobalStrings + 145
  }
  function tableData.getPicNameStr()
    return factionPicStrBaseIDs[SelectedFaction] + currentPictureID
  end
  function tableData.Open()
    clearCount = 0
    clearDirection = false
    alphaDirection = up
    factionIcon = GetFactionIcon(SelectedFaction)
    currentPictureID = 1
    currentPicture = getPicture(currentPictureID)
    StartWidget(tableData, currentPicture, false)
    nextPictureID = currentPictureID
    StartMainCursor(tableData)
    StartFingerCursor(tableData)
  end
  function tableData.Update()
    pictureUpdate()
    fadeUpdate()
    updateClear()
    PollConceptMusicLoop()
  end
  function tableData.Close()
    StopWidget(factionIcon)
    StopWidget(currentPicture)
    EndMainCursor(tableData)
    EndSelectCursor(tableData)
  end
  function GetConceptsPage()
    return tableData
  end
  DebugOut("Concepts ticked ***")
end

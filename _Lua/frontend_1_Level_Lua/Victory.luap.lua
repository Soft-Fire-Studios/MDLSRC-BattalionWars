function Victory(owner)
  local tableData = {}
  tableData.selectedButton = 1
  tableData.clearColour = {
    0,
    0,
    0,
    127
  }
  local hasPressedA = false
  local dialogCount = 0
  local memcardAccess = false
  local bExitFlag = false
  local mSpeed = 0
  local mPower = 0
  local mTechnique = 0
  local mGrade = 0
  local mTotal = 0
  local mSpeedOld = 0
  local mPowerOld = 0
  local mTechniqueOld = 0
  local mGradeOld = 0
  local mTotalOld = 0
  local letterWobbleCount = 0
  local letterAngles = {
    -15,
    -10.5,
    -6,
    -0.7,
    4.5,
    10,
    15
  }
  local hypotenuse = 775
  local radius = 880
  local savedStats = false
  local newUnits = false
  local triggerPanel = 0
  local function triggeredPanelColour()
    local a
    if triggerPanel > 0 then
      a = cos(triggerPanel) * 64 + 64
    else
      a = 127
    end
    return 127, 127, 127, a
  end
  local function progressLevels()
    newUnits = false
    mSpeed, mPower, mTechnique, mGrade = GetMissionData()
    mTotal = (mSpeed + mPower + mTechnique) / 3
    mSpeedOld, mPowerOld, mTechniqueOld, mGradeOld = GetStoredMissionData(SelectedLevel)
    mTotalOld = (mSpeedOld + mPowerOld + mTechniqueOld) / 3
    if mGradeOld == GRADE.NONE then
      SetCurrentMissionStats(SelectedLevel)
      savedStats = true
    end
    if SelectedLevel <= maxMissions and SelectedLevel > LevelsDone then
      SetLevelsDone(SelectedLevel)
      if SelectedLevel < maxMissions then
        SetCurrentLevel(SelectedLevel + 1)
        if NewUnitsList[SelectedLevel].num > 0 then
          newUnits = true
        end
      end
    end
    if SelectedLevel > maxMissions and IsBonusDone(SelectedLevel - maxMissions) == false then
      SetBonusDone(SelectedLevel - maxMissions)
    end
    if newUnits == true then
      ResetPageStack("NewStuff")
    else
      ResetPageStack("MissionSelect")
    end
  end
  local bgb1amod = function()
    return 127, 127, 127, sin(GetTime() * 100 + 0) * 48 + 80
  end
  local bgb2amod = function()
    return 127, 127, 127, sin(GetTime() * 100 + 120) * 48 + 80
  end
  local bgb3amod = function()
    return 127, 127, 127, sin(GetTime() * 100 + 240) * 48 + 80
  end
  local shimmerY = 0
  local function usy()
    shimmerY = shimmerY + 2
    if shimmerY > 240 then
      shimmerY = shimmerY - 240
    end
  end
  local function shimmerUVt()
    return 0, shimmerY
  end
  local function shimmerUVb()
    return 0, shimmerY - 240
  end
  tableData.backgrounds = {
    {
      "BG_WHITE_SQU",
      {0, 22},
      {640, 220},
      {8, 8},
      {32, 32},
      {
        64,
        64,
        127,
        127
      }
    },
    {
      "BG_BEAMS_01",
      {0, 22},
      {640, 216},
      {0, 0},
      {640, 216},
      bgb1amod
    },
    {
      "BG_BEAMS_02",
      {0, 22},
      {640, 216},
      {0, 0},
      {640, 216},
      bgb2amod
    },
    {
      "BG_BEAMS_03",
      {0, 22},
      {640, 216},
      {0, 0},
      {640, 216},
      bgb3amod
    },
    {
      "BG_SHIMMER_01",
      {0, 22},
      {640, 240},
      shimmerUVt,
      {640, 240},
      48
    },
    {
      "BG_SHIMMER_01",
      {0, 22},
      {640, 240},
      shimmerUVb,
      {640, 240},
      48
    },
    {
      "BG_VICTORY_01",
      {0, 22},
      {640, 379},
      {0, 0},
      {640, 379},
      {
        127,
        70,
        70,
        127
      }
    },
    {
      "OVR_RIBBON_01",
      {36, 120},
      {568, 244},
      {0, 0},
      {568, 248}
    },
    {
      "PNL_VICTORY_01",
      {40, 312},
      {560, 96},
      {0, 0},
      {560, 96},
      {
        127,
        127,
        96,
        127
      }
    }
  }
  local function bAccept()
    if bFadeNotDone() or triggerPanel > 0 then
      return
    end
    if memcardAccess == true then
      if CardStatus > CARD.NONE and DialogDataTable[CardStatus][ButtonAOp] ~= None then
        dialogCount = DialogCountStart
        triggerPanel = TriggerPanelStart
        DialogDataTable[CardStatus][ButtonAOp]()
        CardStatus = CARD.NONE
        PlaySound(SoundID.UI_FE_Open)
      end
    elseif mTotalOld >= mTotal then
      PopPageStack()
      PlaySound(SoundID.UI_FE_Open)
    elseif hasPressedA == true then
      dialogCount = DialogCountStart
      triggerPanel = TriggerPanelStart
      if savedStats == false then
        SetCurrentMissionStats(SelectedLevel)
        savedStats = true
      end
      MemcardQuitOp(PopPageStack)
      MemcardRetryOp(InitialCheck)
      InitialCheck()
      memcardAccess = true
      PlaySound(SoundID.UI_FE_Open)
    else
      dialogCount = DialogCountStart
      triggerPanel = TriggerPanelStart
      hasPressedA = true
      PlaySound(SoundID.UI_FE_Popup)
    end
  end
  local function bCancel()
    if bFadeNotDone() or triggerPanel > 0 then
      return
    end
    if memcardAccess == true then
      if CardStatus > CARD.NONE and DialogDataTable[CardStatus][ButtonBOp] ~= None then
        DialogDataTable[CardStatus][ButtonBOp]()
        CardStatus = CARD.NONE
        dialogCount = DialogCountStart
        triggerPanel = TriggerPanelStart
      end
      PlaySound(SoundID.UI_FE_Close)
    else
      PlaySound(SoundID.UI_FE_Fail)
    end
  end
  local function bX()
    if bFadeNotDone() or triggerPanel > 0 then
      return
    end
    if memcardAccess == true and CardStatus > CARD.NONE and DialogDataTable[CardStatus][ButtonXOp] ~= None then
      DialogDataTable[CardStatus][ButtonXOp]()
      CardStatus = CARD.NONE
      triggerPanel = TriggerPanelStart
      dialogCount = DialogCountStart
      PlaySound(SoundID.UI_FE_Open)
    end
  end
  tableData.buttons = {
    {
      onPressA = bAccept,
      onPressB = bCancel,
      onPressX = bX
    }
  }
  local badgeR = function()
    return GetTime() * -75
  end
  local function cHyp(a)
    local i = sin(letterWobbleCount - a * 2) * 208 - 200
    local j = sin(letterWobbleCount + 180 - a * 2) * 208 - 200
    if i > -6 then
      return hypotenuse + i + 4
    elseif j > -6 then
      return hypotenuse + j + 4
    else
      return hypotenuse
    end
  end
  local function vPos(idx)
    local a = letterAngles[idx - 7]
    return sin(a) * cHyp(a) + 320, radius - cos(a) * cHyp(a)
  end
  local function vRot(idx)
    return -letterAngles[idx - 7]
  end
  local function vhPos(idx)
    local a = letterAngles[idx - 14]
    return sin(a) * cHyp(a) + 320, radius - cos(a) * cHyp(a)
  end
  local function vhRot(idx)
    return -letterAngles[idx - 14]
  end
  local function vsPos(idx)
    local a = letterAngles[idx]
    return sin(a) * cHyp(a) + 320, (radius - cos(a) * cHyp(a)) * 0.99 + 18
  end
  local function vsRot(idx)
    return -letterAngles[idx]
  end
  local eccentricBadgePos = function()
    return sin(GetTime() * 80) * 4 + 320, cos(GetTime() * 80) * 4 + 235
  end
  local function vhAlpha(idx)
    local a = letterAngles[idx - 14]
    local alpha
    local i = sin(letterWobbleCount + 20 - a * 2) * 208 - 200
    local j = sin(letterWobbleCount + 200 - a * 2) * 208 - 200
    if i > 0 then
      alpha = i * 12
    elseif j > 0 then
      alpha = j * 12
    else
      alpha = 0
    end
    return 127, 127, 127, alpha
  end
  local sAlpha = 16
  tableData.sprites = {
    {
      SpriteID.FE_OVR_VICTORY_V02,
      vsPos,
      1,
      vsRot,
      sAlpha
    },
    {
      SpriteID.FE_OVR_VICTORY_I02,
      vsPos,
      1,
      vsRot,
      sAlpha
    },
    {
      SpriteID.FE_OVR_VICTORY_C02,
      vsPos,
      1,
      vsRot,
      sAlpha
    },
    {
      SpriteID.FE_OVR_VICTORY_T02,
      vsPos,
      1,
      vsRot,
      sAlpha
    },
    {
      SpriteID.FE_OVR_VICTORY_O02,
      vsPos,
      1,
      vsRot,
      sAlpha
    },
    {
      SpriteID.FE_OVR_VICTORY_R02,
      vsPos,
      1,
      vsRot,
      sAlpha
    },
    {
      SpriteID.FE_OVR_VICTORY_Y02,
      vsPos,
      1,
      vsRot,
      sAlpha
    },
    {
      SpriteID.FE_OVR_VICTORY_V,
      vPos,
      1,
      vRot
    },
    {
      SpriteID.FE_OVR_VICTORY_I,
      vPos,
      1,
      vRot
    },
    {
      SpriteID.FE_OVR_VICTORY_C,
      vPos,
      1,
      vRot
    },
    {
      SpriteID.FE_OVR_VICTORY_T,
      vPos,
      1,
      vRot
    },
    {
      SpriteID.FE_OVR_VICTORY_O,
      vPos,
      1,
      vRot
    },
    {
      SpriteID.FE_OVR_VICTORY_R,
      vPos,
      1,
      vRot
    },
    {
      SpriteID.FE_OVR_VICTORY_Y,
      vPos,
      1,
      vRot
    },
    {
      SpriteID.FE_OVR_VICTORY_V01,
      vhPos,
      1,
      vhRot,
      vhAlpha
    },
    {
      SpriteID.FE_OVR_VICTORY_I01,
      vhPos,
      1,
      vhRot,
      vhAlpha
    },
    {
      SpriteID.FE_OVR_VICTORY_C01,
      vhPos,
      1,
      vhRot,
      vhAlpha
    },
    {
      SpriteID.FE_OVR_VICTORY_T01,
      vhPos,
      1,
      vhRot,
      vhAlpha
    },
    {
      SpriteID.FE_OVR_VICTORY_O01,
      vhPos,
      1,
      vhRot,
      vhAlpha
    },
    {
      SpriteID.FE_OVR_VICTORY_R01,
      vhPos,
      1,
      vhRot,
      vhAlpha
    },
    {
      SpriteID.FE_OVR_VICTORY_Y01,
      vhPos,
      1,
      vhRot,
      vhAlpha
    },
    {
      SpriteID.FE_GAMEPAD_A,
      {600, 424}
    },
    {
      SpriteID.FE_OVR_BADGE_01,
      eccentricBadgePos,
      0.95,
      badgeR
    },
    {
      SpriteID.FE_OVR_BADGE_STAR,
      eccentricBadgePos
    }
  }
  local badgeArray = {
    SpriteID.FE_OVR_BADGE_C,
    SpriteID.FE_OVR_BADGE_B,
    SpriteID.FE_OVR_BADGE_A,
    SpriteID.FE_OVR_BADGE_S
  }
  local function getGradeSprID()
    return badgeArray[mGrade]
  end
  local gradeBadge = {getGradeSprID, eccentricBadgePos}
  local function openGradeBadge()
    OpenSprite(gradeBadge)
  end
  local function renderGradeBadge()
    RenderSprite(gradeBadge, 50)
  end
  local function closeGradeBadge()
    CloseSprite(gradeBadge)
  end
  local speedStr
  local function fSpeedStr()
    return speedStr
  end
  local powerStr
  local function fPowerStr()
    return powerStr
  end
  local techniqueStr
  local function fTechniqueStr()
    return techniqueStr
  end
  local totalStr
  local function fTotalStr()
    return totalStr
  end
  local function setStrings()
    speedStr = GetString(StringID.SPEED) .. " = " .. rint(mSpeed) .. "%"
    techniqueStr = GetString(StringID.TECHNIQUE) .. " = " .. rint(mTechnique) .. "%"
    powerStr = GetString(StringID.POWER) .. " = " .. rint(mPower) .. "%"
    totalStr = GetString(StringID.TOTAL) .. " = " .. rint(mTotal) .. "%"
  end
  local textColBG = {
    127,
    127,
    100,
    127
  }
  local textColFG = {
    10,
    10,
    10,
    127
  }
  tableData.textBoxes = {
    {
      StringID.VICTORY,
      {250, 404},
      {140, 15},
      {
        127,
        127,
        0,
        127
      },
      StatusFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.CONTINUE,
      {320, 404},
      {250, 15},
      {
        0,
        127,
        0,
        127
      },
      StatusFont,
      JUSTIFY.RIGHT
    }
  }
  local statsStrings = {
    {
      fSpeedStr,
      {99, 326},
      {140, 15},
      textColBG,
      PlinthFont,
      JUSTIFY.LEFT
    },
    {
      fSpeedStr,
      {100, 327},
      {140, 15},
      textColFG,
      PlinthFont,
      JUSTIFY.LEFT
    },
    {
      fTechniqueStr,
      {229, 326},
      {180, 15},
      textColBG,
      PlinthFont,
      JUSTIFY.CENTRE
    },
    {
      fTechniqueStr,
      {230, 327},
      {180, 15},
      textColFG,
      PlinthFont,
      JUSTIFY.CENTRE
    },
    {
      fPowerStr,
      {399, 326},
      {140, 15},
      textColBG,
      PlinthFont,
      JUSTIFY.RIGHT
    },
    {
      fPowerStr,
      {400, 327},
      {140, 15},
      textColFG,
      PlinthFont,
      JUSTIFY.RIGHT
    },
    {
      fTotalStr,
      {228, 360},
      {180, 15},
      textColBG,
      GUIFontLarge,
      JUSTIFY.CENTRE
    },
    {
      fTotalStr,
      {230, 362},
      {180, 15},
      textColFG,
      GUIFontLarge,
      JUSTIFY.CENTRE
    }
  }
  local function renderStatsStrings()
    for i = 1, 8 do
      RenderTextBox(statsStrings[i], -1400)
    end
  end
  local function updateWobbleCount()
    letterWobbleCount = letterWobbleCount + 2
  end
  local function pollMemorycard()
    if memcardAccess == true then
      if dialogCount > 0 or triggerPanel > 0 then
        return
      end
      local localCardStatus = GetCardError()
      if localCardStatus > CARD.NONE then
        if localCardStatus == CARD.CardOK then
          CheckSaveFile()
        elseif localCardStatus == CARD.FileOK then
          SaveToCard(true)
        elseif localCardStatus == CARD.CRCRecoverable then
          SaveToCard(true)
        else
          CardStatus = localCardStatus
          triggerPanel = TriggerPanelStart
          dialogCount = DialogCountStart
          if localCardStatus == CARD.SaveOK then
            bExitFlag = true
          end
        end
      end
    end
  end
  local function checkExit()
    if dialogCount > 0 or triggerPanel > 0 then
      return
    end
    if bExitFlag then
      PopPageStack()
      return
    end
  end
  local function updateDialogCount()
    if dialogCount > 0 then
      dialogCount = dialogCount - 1
    end
  end
  local statusCardMsg = {
    StringID.MemcardStatus,
    {
      170,
      11 + oY
    },
    {300, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local accessCardMsg = {
    StringID.AccessingCard,
    {
      200,
      11 + oY
    },
    {240, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local panelBGTop = {
    "PNL_MISSION_01",
    DBoxPosTop,
    {408, 92},
    {0, 0},
    {408, 92},
    triggeredPanelColour
  }
  local panelBGMid = {
    "PNL_MISSION_01",
    DBoxPosMid,
    {408, 1},
    {0, 92},
    {408, 1},
    triggeredPanelColour
  }
  local panelBGBot = {
    "PNL_MISSION_01",
    DBoxPosBot,
    {408, 27},
    {0, 93},
    {408, 27},
    triggeredPanelColour
  }
  local AButton = {
    SpriteID.FE_GAMEPAD_A,
    GetAPos,
    1,
    0,
    triggeredPanelColour
  }
  local BButton = {
    SpriteID.FE_GAMEPAD_B,
    GetBPos,
    1,
    0,
    triggeredPanelColour
  }
  local XButton = {
    SpriteID.FE_GAMEPAD_X,
    GetXPos,
    1,
    0,
    triggeredPanelColour
  }
  local message1 = {
    Message1Str,
    Message1Pos,
    {340, 15},
    triggeredPanelColour,
    StatusFont,
    JUSTIFY.CENTRE
  }
  local message2 = {
    Message2Str,
    Message2Pos,
    {290, 15},
    triggeredPanelColour,
    StatusFont,
    JUSTIFY.LEFT
  }
  local message3 = {
    Message3Str,
    Message3Pos,
    {290, 15},
    triggeredPanelColour,
    StatusFont,
    JUSTIFY.LEFT
  }
  local message4 = {
    Message4Str,
    Message4Pos,
    {290, 15},
    triggeredPanelColour,
    StatusFont,
    JUSTIFY.LEFT
  }
  local AButtonSave = {
    SpriteID.FE_GAMEPAD_A,
    {
      190,
      72 + oY
    },
    1,
    0,
    triggeredPanelColour
  }
  local panelText = {
    StringID.SaveGameProgress,
    {
      170,
      11 + oY
    },
    {300, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local panelSaveContinue = {
    StringID.CONTINUE,
    {
      220,
      53 + oY
    },
    {200, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.LEFT
  }
  local function openCardPanel()
    OpenSprite(AButton)
    OpenSprite(BButton)
    OpenSprite(XButton)
    OpenSprite(AButtonSave)
    OpenFlat(panelBGTop)
    OpenFlat(panelBGMid)
    OpenFlat(panelBGBot)
  end
  local function renderPanelBG(offset)
    RenderFlat(panelBGTop, 1700)
    for i = 1, offset do
      offMid = i - 1
      RenderFlat(panelBGMid, 1700)
    end
    offBot = offset - 1
    RenderFlat(panelBGBot, 1700)
  end
  local function renderCardPanel()
    if memcardAccess == true then
      if CardStatus == CARD.NONE or CardStatus == CARD.FileOK then
        offTop = 0
        offMid = 0
        offBot = 0
        RenderFlat(panelBGTop, 1700)
        RenderFlat(panelBGMid, 1700)
        RenderFlat(panelBGBot, 1700)
        RenderTextBox(accessCardMsg, 350)
      else
        renderPanelBG(MemCardMessagePos[CardStatus][4])
        RenderTextBox(statusCardMsg, 350)
        RenderTextBox(message1, 350)
        if Message2Str() ~= 0 then
          RenderSprite(AButton, 600)
          RenderTextBox(message2, 350)
        end
        if Message3Str() ~= 0 then
          RenderSprite(BButton, 600)
          RenderTextBox(message3, 350)
        end
        if 0 < Message4Str() then
          RenderSprite(XButton, 600)
          RenderTextBox(message4, 350)
        end
      end
    elseif hasPressedA == true then
      renderPanelBG(1)
      RenderTextBox(panelText, 350)
      RenderTextBox(panelSaveContinue, 350)
      RenderSprite(AButtonSave, 600)
    end
  end
  local function closeCardPanel()
    CloseSprite(AButton)
    CloseSprite(BButton)
    CloseSprite(XButton)
    CloseSprite(AButtonSave)
    CloseFlat(panelBGTop)
    CloseFlat(panelBGMid)
    CloseFlat(panelBGBot)
  end
  local function updateFadeIn()
    updateFadeColour(tableData)
  end
  local function updateFades()
    if triggerPanel > 0 then
      triggerPanel = triggerPanel - TriggerPanelRate
    end
    if triggerPanel < 0 then
      triggerPanel = 0
    end
  end
  local function initMusic()
    SetMusicVolume(StingsVol, 0.1)
    if mGrade == GRADE.S or mGrade == GRADE.A then
      StartMusic(constant.FILENAME, MusicDirectory, "Victory_A", 0, constant.ONCE)
    elseif mGrade == GRADE.B or mGrade == GRADE.C then
      StartMusic(constant.FILENAME, MusicDirectory, "Victory_C", 0, constant.ONCE)
    end
  end
  local pollMusic = function()
    if Fanfare == 2 then
      return
    elseif Fanfare == 1 then
      SetMusicVolume(MapLoopVol, 0.1)
      FEMusic = StartMusic(constant.FILENAME, MusicDirectory, "Map_Loop")
      if FEMusic == true then
        Fanfare = 2
      end
    elseif CheckMusicFinished() == true then
      Fanfare = 1
      StopMusic()
    end
  end
  local function init()
    AutoLoad(false)
    hasPressedA = false
    savedStats = false
    memcardAccess = false
    CardStatus = CARD.NONE
    bExitFlag = false
    dialogCount = 0
    triggerPanel = 0
    Fanfare = 0
  end
  tableData.open = {
    init,
    progressLevels,
    initFadeIn,
    openCardPanel,
    setStrings,
    openGradeBadge,
    initMusic
  }
  tableData.render = {
    renderStatsStrings,
    renderGradeBadge,
    renderCardPanel
  }
  tableData.update = {
    updateFadeIn,
    updateWobbleCount,
    usy,
    updateFades,
    pollMemorycard,
    updateDialogCount,
    pollMusic,
    checkExit
  }
  tableData.close = {closeGradeBadge, closeCardPanel}
  function GetVictoryPage()
    return tableData
  end
  DebugOut("Victory ticked ***")
end

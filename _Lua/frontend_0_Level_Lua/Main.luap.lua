function Main(owner)
  local tableData = {}
  tableData.selectedButton = 0
  tableData.clearColour = {
    0,
    0,
    0,
    127
  }
  local hasPressedA = 0
  local bExitFlag = false
  local bExitingFlag = false
  local exitFadeCount = 0
  local myCount = {
    0,
    0,
    0,
    0,
    0
  }
  local ANotPressed = 0
  local APressed = 1
  local ALoadSlot = 2
  local ANewSlot = 3
  local ANewSlotYes = 4
  local AConfirmedNew = 5
  local missionTimeText = {}
  local memcardAccess = false
  local dialogCount = 0
  local triggerPanel = 0
  local function triggeredPanelColour()
    local a = 127
    if triggerPanel > 0 then
      a = cos(triggerPanel) * 64 + 64
    end
    return 127, 127, 127, a
  end
  tableData.backgrounds = {
    {
      "BG_MAP01",
      "bg1pos",
      {640, 379},
      {0, 0},
      {640, 379},
      {
        127,
        127,
        0,
        127
      }
    },
    {
      "BG_MAP01",
      "bg2pos",
      {640, 379},
      {0, 0},
      {640, 379},
      {
        127,
        127,
        0,
        127
      }
    },
    {
      "OVR_MAP08_EDGE",
      {-10, 22},
      {330, 190},
      {2, 2},
      {316, 186},
      {
        127,
        127,
        0,
        64
      }
    },
    {
      "OVR_MAP08_EDGE",
      {320, 22},
      {330, 190},
      {316, 2},
      {-316, 186},
      {
        127,
        127,
        0,
        64
      }
    },
    {
      "OVR_MAP08_EDGE",
      {-10, 212},
      {330, 190},
      {2, 186},
      {316, -186},
      {
        127,
        127,
        0,
        64
      }
    },
    {
      "OVR_MAP08_EDGE",
      {320, 212},
      {330, 190},
      {316, 186},
      {-316, -186},
      {
        127,
        127,
        0,
        64
      }
    },
    {
      "OVR_MAP01_CONT",
      "bg3pos",
      {616, 336},
      {0, 0},
      {616, 336},
      "bg3colour"
    },
    {
      "OVR_MAP02_DOTS",
      "bg3pos",
      {648, 160},
      {0, 0},
      {648, 160},
      "bg3colour"
    },
    {
      "OVR_MAP03_SCALE",
      "bg3pos",
      {40, 29},
      {0, 0},
      {40, 29},
      "bg3colour"
    },
    {
      "OVR_MAP04_SQU",
      "bg3pos",
      {48, 48},
      {0, 0},
      {48, 48},
      "bg3colour"
    },
    {
      "OVR_MAP05_TAPE",
      "bg3pos",
      {512, 48},
      {0, 0},
      {512, 48},
      "bg3colour"
    },
    {
      "OVR_MAP06_TAPE",
      "bg3pos",
      {560, 48},
      {0, 0},
      {560, 48},
      "bg3colour"
    },
    {
      "OVR_MAP07_TAPE",
      "bg3pos",
      {304, 48},
      {0, 0},
      {304, 48},
      "bg3colour"
    },
    {
      "PHTO_01_VLAD",
      "bg3pos",
      {320, 240},
      {0, 0},
      {320, 240},
      "bg3colour"
    },
    {
      "PHTO_02_AUSTIN",
      "bg3pos",
      {320, 240},
      {0, 0},
      {320, 240},
      "bg3colour"
    },
    {
      "PHTO_03_AIR",
      "bg3pos",
      {320, 240},
      {0, 0},
      {320, 240},
      "bg3colour"
    },
    {
      "PHTO_05_TUNDRA",
      "bg3pos",
      {240, 320},
      {0, 0},
      {240, 320},
      "bg3colour"
    },
    {
      "PHTO_06_HERMAN",
      "bg3pos",
      {240, 320},
      {0, 0},
      {240, 320},
      "bg3colour"
    },
    {
      "LOGO_F_01",
      "bg3pos",
      {112, 112},
      {0, 0},
      {112, 112},
      "bg3colour"
    },
    {
      "LOGO_S_01",
      "bg3pos",
      {112, 112},
      {0, 0},
      {112, 112},
      "bg3colour"
    },
    {
      "LOGO_T_01",
      "bg3pos",
      {112, 112},
      {0, 0},
      {112, 112},
      "bg3colour"
    },
    {
      "LOGO_U_01",
      "bg3pos",
      {112, 112},
      {0, 0},
      {112, 112},
      "bg3colour"
    },
    {
      "LOGO_X_01",
      "bg3pos",
      {112, 112},
      {0, 0},
      {112, 112},
      "bg3colour"
    },
    {
      "BP_TMP_TXT_01",
      "bg3pos",
      {256, 48},
      {0, 0},
      {256, 48},
      "bg3colour"
    },
    {
      "BP_TMP_TXT_02",
      "bg3pos",
      {256, 48},
      {0, 0},
      {256, 48},
      "bg3colour"
    },
    {
      "BP_TMP_TXT_03",
      "bg3pos",
      {256, 48},
      {0, 0},
      {256, 48},
      "bg3colour"
    },
    {
      "BP_TMP_TXT_04",
      "bg3pos",
      {256, 48},
      {0, 0},
      {256, 48},
      "bg3colour"
    },
    {
      "BP_TMP_TXT_05",
      "bg3pos",
      {256, 48},
      {0, 0},
      {256, 48},
      "bg3colour"
    },
    {
      "BP_TMP_MAZE_01",
      "bg3pos",
      {640, 80},
      {0, 0},
      {640, 80},
      "bg3colour"
    },
    {
      "BP_TMP_GRID_02",
      "bg3pos",
      {152, 240},
      {0, 0},
      {152, 240},
      "bg3colour"
    },
    {
      "BP_TMP_GUIDL_01",
      "bg3pos",
      {576, 400},
      {0, 0},
      {576, 400},
      "bg3colour"
    },
    {
      "BP_TMP_GUID_01",
      "bg3pos",
      {56, 56},
      {0, 0},
      {56, 56},
      "bg3colour"
    },
    {
      "BP_TMP_GUID_02",
      "bg3pos",
      {64, 64},
      {0, 0},
      {64, 64},
      "bg3colour"
    },
    {
      "BP_TMP_GUID_03",
      "bg3pos",
      {56, 56},
      {0, 0},
      {56, 56},
      "bg3colour"
    },
    {
      "BP_TMP_GUID_04",
      "bg3pos",
      {112, 56},
      {0, 0},
      {112, 56},
      "bg3colour"
    },
    {
      "BP_TMP_GUID_05",
      "bg3pos",
      {48, 48},
      {0, 0},
      {48, 48},
      "bg3colour"
    },
    {},
    {
      "PNL_MAIN_01",
      {84, 55},
      {472, 312},
      {0, 0},
      {472, 312}
    }
  }
  local goToMissionSelect = function()
    SelectedLevel = 1
    SetMissionStatus(GAMESTATUS.MISSIONS)
    PageDone = true
    FrontendDone = true
  end
  local function bpressA(idx)
    if bFadeNotDone() or triggerPanel > 0 or bExitingFlag then
      return
    end
    if memcardAccess == true then
      if CardStatus > CARD.NONE and DialogDataTable[CardStatus][ButtonAOp] ~= None then
        DialogDataTable[CardStatus][ButtonAOp]()
        CardStatus = CARD.NONE
        dialogCount = DialogCountStart
        triggerPanel = TriggerPanelStart
        PlaySound(SoundID.UI_FE_Open)
      end
    elseif hasPressedA == ANotPressed then
      SelectedSlot = idx
      SetSelectedSlot(idx)
      if 0 < GetSlotTime(SelectedSlot - 1) then
        hasPressedA = APressed
        triggerPanel = TriggerPanelStart
        PlaySound(SoundID.UI_FE_Popup)
      else
        bExitingFlag = true
        exitFadeCount = 180
        SetMusicVolume(0, musicFadeTime)
        PlaySound(SoundID.UI_FE_Open)
      end
    elseif hasPressedA == APressed then
      hasPressedA = ALoadSlot
      bExitingFlag = true
      exitFadeCount = 180
      PlaySound(SoundID.UI_FE_Open)
      SetMusicVolume(0, musicFadeTime)
    elseif hasPressedA == ANewSlot then
      missionTimeText[idx] = GetString(StringID.EMPTY)
      StartNewSlot()
      MemcardQuitOp(goToMissionSelect)
      MemcardRetryOp(InitialCheck)
      InitialCheck()
      memcardAccess = true
      hasPressedA = AConfirmedNew
      triggerPanel = TriggerPanelStart
      dialogCount = DialogCountStart
      CardStatus = CARD.NONE
      PlaySound(SoundID.UI_FE_Open)
    end
  end
  local function bPressB(idx)
    if bFadeNotDone() or triggerPanel > 0 or bExitingFlag then
      return
    end
    if memcardAccess == true then
      if CardStatus > CARD.NONE and DialogDataTable[CardStatus][ButtonBOp] ~= None then
        DialogDataTable[CardStatus][ButtonBOp]()
        CardStatus = CARD.NONE
        dialogCount = DialogCountStart
        triggerPanel = TriggerPanelStart
        PlaySound(SoundID.UI_FE_Close)
      end
    elseif hasPressedA == APressed then
      hasPressedA = ANotPressed
      PlaySound(SoundID.UI_FE_Close)
    elseif hasPressedA == ANewSlot then
      hasPressedA = ANotPressed
      PlaySound(SoundID.UI_FE_Close)
    else
      bPopPage()
    end
  end
  local function bPressX()
    if bFadeNotDone() or triggerPanel > 0 or bExitingFlag then
      return
    end
    if memcardAccess == true then
      if CardStatus > CARD.NONE and DialogDataTable[CardStatus][ButtonXOp] ~= None then
        DialogDataTable[CardStatus][ButtonXOp]()
        CardStatus = CARD.NONE
        triggerPanel = TriggerPanelStart
        dialogCount = DialogCountStart
        PlaySound(SoundID.UI_FE_Open)
      end
    elseif hasPressedA == APressed and 0 < GetSlotTime(SelectedSlot - 1) then
      hasPressedA = ANewSlot
      triggerPanel = TriggerPanelStart
      PlaySound(SoundID.UI_FE_Popup)
    end
  end
  local function b4pressA()
    if bFadeNotDone() or triggerPanel > 0 or bExitingFlag then
      return
    end
    PushPageStack("Settings")
    PlaySound(SoundID.UI_FE_Open)
  end
  local function b5pressA()
    if bFadeNotDone() or triggerPanel > 0 or bExitingFlag then
      return
    end
    PushPageStack("Credits")
    PlaySound(SoundID.UI_FE_Open)
  end
  local function balpha(idx)
    return 127, 127, 127, cos(myCount[idx]) * 40 + 88
  end
  local function balphad(idx)
    if myCount[idx] >= 180 then
      tableData.buttons[idx][5] = 0
      return 127, 127, 127, 0
    else
      return 127, 127, 127, cos(myCount[idx]) * 64 + 64
    end
  end
  local function b1sel(idx)
    if hasPressedA > ANotPressed or bExitingFlag then
      return
    end
    myCount[idx] = 0
    tableData.buttons[idx][5] = balpha
    PlaySound(SoundID.UI_FE_Navigate)
  end
  local function b1desel(idx)
    if hasPressedA > ANotPressed or bExitingFlag then
      return
    end
    if myCount[idx] > 180 then
      myCount[idx] = mod(myCount[idx], 360)
      if myCount[idx] > 180 then
        myCount[idx] = 180 - (myCount[idx] - 180)
      end
    end
    if myCount[idx] >= 180 then
      tableData.buttons[idx][5] = 0
      myCount[idx] = 0
    else
      tableData.buttons[idx][5] = balphad
    end
  end
  local function bBackOut()
    if hasPressedA > ANotPressed or bExitingFlag then
      return
    end
    bPopPage()
  end
  tableData.buttons = {
    {
      SpriteID.FE_BTN_CIRC01_SEL,
      {190, 141},
      1,
      0,
      0,
      onSelect = b1sel,
      onDeselect = b1desel,
      onPressA = bpressA,
      onPressB = bPressB,
      onPressX = bPressX
    },
    {
      SpriteID.FE_BTN_CIRC01_SEL,
      {322, 141},
      1,
      0,
      0,
      onSelect = b1sel,
      onDeselect = b1desel,
      onPressA = bpressA,
      onPressB = bPressB,
      onPressX = bPressX
    },
    {
      SpriteID.FE_BTN_CIRC01_SEL,
      {452, 141},
      1,
      0,
      0,
      onSelect = b1sel,
      onDeselect = b1desel,
      onPressA = bpressA,
      onPressB = bPressB,
      onPressX = bPressX
    },
    {
      SpriteID.FE_BTN_HEX01_SEL,
      {264, 295},
      1,
      0,
      0,
      onSelect = b1sel,
      onDeselect = b1desel,
      onPressA = b4pressA,
      onPressB = bBackOut
    },
    {
      SpriteID.FE_BTN_HEX01_SEL,
      {378, 295},
      1,
      0,
      0,
      onSelect = b1sel,
      onDeselect = b1desel,
      onPressA = b5pressA,
      onPressB = bBackOut
    }
  }
  tableData.sprites = {
    {
      SpriteID.FE_GAMEPAD_A,
      {600, 424}
    },
    {
      SpriteID.FE_GAMEPAD_B,
      {40, 424}
    },
    {
      SpriteID.FE_BTN_OVR01_A,
      {200, 145},
      1,
      0,
      64
    },
    {
      SpriteID.FE_BTN_OVR01_B,
      {332, 145},
      1,
      0,
      64
    },
    {
      SpriteID.FE_BTN_OVR01_C,
      {462, 145},
      1,
      0,
      64
    }
  }
  local buttonStatusStrings = {
    StringID.MISSION_SELECT,
    StringID.MISSION_SELECT,
    StringID.MISSION_SELECT,
    StringID.SETTINGS,
    StringID.CREDITS
  }
  local function text3()
    return buttonStatusStrings[tableData.selectedButton]
  end
  local function getMissionTime(idx)
    return missionTimeText[idx]
  end
  local function getMissionTimeA()
    return getMissionTime(1)
  end
  local function getMissionTimeB()
    return getMissionTime(2)
  end
  local function getMissionTimeC()
    return getMissionTime(3)
  end
  tableData.textBoxes = {
    {
      StringID.BACK,
      {60, 404},
      {250, 15},
      {
        127,
        32,
        32,
        127
      },
      StatusFont,
      JUSTIFY.LEFT
    },
    {
      StringID.MAIN,
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
      text3,
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
    },
    {
      getMissionTimeA,
      {128, 201},
      {120, 15},
      {
        127,
        127,
        0,
        127
      },
      PlinthFont,
      JUSTIFY.CENTRE
    },
    {
      getMissionTimeB,
      {260, 201},
      {120, 15},
      {
        127,
        127,
        0,
        127
      },
      PlinthFont,
      JUSTIFY.CENTRE
    },
    {
      getMissionTimeC,
      {392, 201},
      {120, 15},
      {
        127,
        127,
        0,
        127
      },
      PlinthFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.SETTINGS,
      {220, 282},
      {90, 15},
      {
        127,
        127,
        127,
        127
      },
      StatusFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.CREDITS,
      {333, 282},
      {90, 15},
      {
        127,
        127,
        127,
        127
      },
      StatusFont,
      JUSTIFY.CENTRE
    }
  }
  tableData.nextMap = {
    {
      3,
      2,
      4,
      4
    },
    {
      1,
      3,
      4,
      5
    },
    {
      2,
      1,
      5,
      5
    },
    {
      5,
      5,
      1,
      2
    },
    {
      4,
      4,
      3,
      2
    }
  }
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
            bExitingFlag = true
            exitFadeCount = 180
            SetMusicVolume(0, musicFadeTime)
          end
        end
      end
    end
  end
  local function updateDialogCount()
    if dialogCount > 0 then
      dialogCount = dialogCount - 1
    end
  end
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
  local XButtonSave = {
    SpriteID.FE_GAMEPAD_X,
    {
      195,
      114 + oY
    },
    1,
    0,
    triggeredPanelColour
  }
  local BButtonSave = {
    SpriteID.FE_GAMEPAD_B,
    {
      193,
      116 + oY
    },
    1,
    0,
    triggeredPanelColour
  }
  local BButtonQuit = {
    SpriteID.FE_GAMEPAD_B,
    {
      193,
      156 + oY
    },
    1,
    0,
    triggeredPanelColour
  }
  local slotMenuTitle = {
    StringID.SLOT_OPTIONS,
    {
      170,
      11 + oY
    },
    {300, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local slotMenuWarn = {
    StringID.NEW_SLOT_WARN,
    {
      170,
      11 + oY
    },
    {300, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local slotMenuStart = {
    StringID.NEW_CAMPAIGN,
    {
      220,
      53 + oY
    },
    {200, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.LEFT
  }
  local slotMenuLoad = {
    StringID.LOAD_CAMPAIGN,
    {
      220,
      53 + oY
    },
    {200, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.LEFT
  }
  local slotMenuNew = {
    StringID.NEW_CAMPAIGN,
    {
      220,
      94 + oY
    },
    {200, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.LEFT
  }
  local slotMenuYes = {
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
  local slotMenuCancel = {
    StringID.Cancel,
    {
      220,
      94 + oY
    },
    {200, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.LEFT
  }
  local slotMenuQuit = {
    StringID.Cancel,
    {
      220,
      136 + oY
    },
    {200, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.LEFT
  }
  local function openSlotMenu()
    OpenFlat(panelBGTop)
    OpenFlat(panelBGMid)
    OpenFlat(panelBGBot)
    OpenSprite(AButtonSave)
    OpenSprite(XButtonSave)
    OpenSprite(BButtonSave)
    OpenSprite(BButtonQuit)
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
  local function renderSlotMenu()
    if hasPressedA <= ANotPressed or bExitingFlag == true then
      return
    end
    if hasPressedA == APressed then
      renderPanelBG(74)
      RenderSprite(AButtonSave, 600)
      RenderSprite(XButtonSave, 600)
      RenderSprite(BButtonQuit, 600)
      RenderTextBox(slotMenuTitle, 350)
      RenderTextBox(slotMenuLoad, 350)
      RenderTextBox(slotMenuNew, 350)
      RenderTextBox(slotMenuQuit, 350)
    elseif hasPressedA == ANewSlot then
      renderPanelBG(30)
      RenderSprite(AButtonSave, 600)
      RenderSprite(BButtonSave, 600)
      RenderTextBox(slotMenuWarn, 350)
      RenderTextBox(slotMenuYes, 350)
      RenderTextBox(slotMenuCancel, 350)
    end
  end
  local function closeSlotMenu()
    CloseFlat(panelBGTop)
    CloseFlat(panelBGMid)
    CloseFlat(panelBGBot)
    CloseSprite(AButtonSave)
    CloseSprite(XButtonSave)
    CloseSprite(BButtonSave)
    CloseSprite(BButtonQuit)
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
    end
  end
  local function closeCardPanel()
    CloseSprite(AButton)
    CloseSprite(BButton)
    CloseSprite(XButton)
  end
  local function localOpenGlobe()
    openGlobe(tableData.backgrounds)
  end
  local function localUpdateGlobe()
    updateGlobe(tableData.backgrounds)
  end
  local function incCounts()
    for i = 1, 5 do
      myCount[i] = myCount[i] + 4
    end
  end
  local function setSlot()
    if tableData.selectedButton == 0 then
      tableData.selectedButton = GetSelectedSlot()
      tableData.buttons[tableData.selectedButton][5] = balpha
    end
  end
  local function updateFades()
    if bExitFlag == false then
      updateFadeColour(tableData)
    else
      tableData.a = 0
    end
    if triggerPanel > 0 then
      triggerPanel = triggerPanel - TriggerPanelRate
    end
    if triggerPanel < 0 then
      triggerPanel = 0
    end
  end
  local function checkExit()
    if bExitingFlag == true and bExitFlag == false then
      local a = 0
      if exitFadeCount > 0 then
        a = cos(exitFadeCount) * 64 + 64
        exitFadeCount = exitFadeCount - fadeRate
      elseif exitFadeCount < 0 then
        exitFadeCount = 0
      end
      tableData.fadeColour = a
      if a <= 0 then
        bExitFlag = true
        StopMusic()
      end
    end
    if bExitFlag == false then
      return
    end
    goToMissionSelect()
  end
  local blank = {
    {-10, 0},
    {660, 480},
    {
      0,
      0,
      0,
      127
    }
  }
  local function renderBlank()
    if bExitFlag then
      RenderRect(blank, 1551)
    end
  end
  local function init()
    hasPressedA = ANotPressed
    bExitFlag = false
    bExitingFlag = false
    exitFadeCount = 0
    triggerPanel = 0
    AutoLoad(false)
    CardStatus = CARD.NONE
    memcardAccess = false
    dialogCount = 0
    for i = 1, 3 do
      if GetSlotTime(i - 1) == 0 then
        missionTimeText[i] = GetString(StringID.EMPTY)
      else
        missionTimeText[i] = GetSlotTimeString(i - 1)
      end
    end
  end
  local function close()
    missionTimeText = {}
  end
  local function checkButton()
    if hasPressedA > ANotPressed or bExitingFlag then
      tableData.nextSelectedButton = tableData.selectedButton
    end
  end
  local pollMusic = function()
    if FEMusic == false then
      SetMusicVolume(TitleLoopVol, 0.1)
      FEMusic = StartMusic(constant.FILENAME, MusicDirectory, "TitleLoop")
    end
  end
  tableData.open = {
    init,
    initFadeIn,
    localOpenGlobe,
    setSlot,
    openSlotMenu,
    openCardPanel
  }
  tableData.update = {
    localUpdateGlobe,
    updateFades,
    incCounts,
    checkButton,
    pollMemorycard,
    updateDialogCount,
    checkExit,
    pollMusic
  }
  tableData.render = {
    renderSlotMenu,
    renderCardPanel,
    renderBlank
  }
  tableData.close = {
    close,
    closeGlobe,
    closeSlotMenu,
    closeCardPanel
  }
  function GetMainPage()
    return tableData
  end
  DebugOut("Main ticked ***")
end

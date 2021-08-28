function SettingsUSA(owner)
  local tableData = {}
  tableData.selectedButton = 2
  tableData.nextSelectedButton = 2
  tableData.clearColour = {
    0,
    0,
    0,
    127
  }
  tableData.repeatRate = 6
  local textHeight = 18
  local textStart = 52.3
  local selectedOption = 2
  local hasPressedA = false
  local hasChanged = false
  local dialogCount = 0
  local memcardAccess = false
  local bExitFlag = false
  local triggerPanel = 0
  local function triggeredPanelColour()
    local a = 127
    if triggerPanel > 0 then
      a = cos(triggerPanel) * 64 + 64
    end
    return 127, 127, 127, a
  end
  local triggerItemStart = 180
  local triggerItem = 0
  local triggerItemRate = 5 * 6
  local function triggeredItemColour()
    local a = 127
    if triggerItem > 0 then
      a = cos(triggerItem) * 64 + 64
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
      "PNL_SETTINGS_01",
      {156, 40},
      {328, 296},
      {0, 0},
      {328, 296}
    },
    {
      "OVR_BAR",
      {
        248,
        textStart + textHeight * 0 + textHeight / 2
      },
      {144, 8},
      {0, 0},
      {144, 8}
    },
    {
      "OVR_BAR",
      {
        248,
        textStart + textHeight * 4 + textHeight / 2
      },
      {144, 8},
      {0, 0},
      {144, 8}
    },
    {
      "OVR_BAR",
      {
        248,
        textStart + textHeight * 6 + textHeight / 2
      },
      {144, 8},
      {0, 0},
      {144, 8}
    },
    {
      "OVR_BAR",
      {
        248,
        textStart + textHeight * 9 + textHeight / 2
      },
      {144, 8},
      {0, 0},
      {144, 8}
    },
    {
      "OVR_BAR",
      {
        248,
        textStart + textHeight * 12 + textHeight / 2
      },
      {144, 8},
      {0, 0},
      {144, 8}
    },
    {
      "BTN_LNG01_UNSEL",
      {228, 315},
      {184, 56},
      {0, 0},
      {184, 56}
    }
  }
  local triggerArrowScaleL = 0
  local triggerArrowScaleR = 0
  local arrowScaleMax = 120
  local arrowScaleRate = 12
  local saveOKflag = false
  local function aScale(arrowScale)
    local scale = 1
    if arrowScale > 0 then
      local x = arrowScaleMax - arrowScale
      scale = 6 / x * sin(x * 6) + 1
    end
    return scale, scale
  end
  local function aScaleL()
    return aScale(triggerArrowScaleL)
  end
  local function aScaleR()
    return aScale(triggerArrowScaleR)
  end
  local function updateArrowScale()
    if triggerArrowScaleL ~= 0 then
      if triggerArrowScaleL > 0 then
        triggerArrowScaleL = triggerArrowScaleL - arrowScaleRate
      else
        triggerArrowScaleL = 0
      end
    end
    if triggerArrowScaleR ~= 0 then
      if triggerArrowScaleR > 0 then
        triggerArrowScaleR = triggerArrowScaleR - arrowScaleRate
      else
        triggerArrowScaleR = 0
      end
    end
  end
  local getNone = function()
    return 0
  end
  local setNone = function()
    return 0
  end
  local optionsTable = {
    {
      idx = 0,
      max = 0,
      get = getNone,
      set = SetNone
    },
    {
      idx = 0,
      max = 31,
      get = GetMusicVolume,
      set = SetMusicVolumeS
    },
    {
      idx = 0,
      max = 31,
      get = GetSFXVolume,
      set = SetSFXVolume
    },
    {
      idx = 0,
      max = 31,
      get = GetVoiceVolume,
      set = SetVoiceVolume
    },
    {
      idx = 0,
      max = 0,
      get = getNone,
      set = SetNone
    },
    {
      idx = 0,
      max = 2,
      get = GetSoundMode,
      set = SetSoundMode
    },
    {
      idx = 0,
      max = 0,
      get = getNone,
      set = SetNone
    },
    {
      idx = 0,
      max = 63,
      get = GetBrightness,
      set = SetBrightness
    },
    {
      idx = 0,
      max = 1,
      get = GetScreenRatio,
      set = SetScreenRatio
    },
    {
      idx = 0,
      max = 0,
      get = getNone,
      set = SetNone
    },
    {
      idx = 0,
      max = 1,
      get = GetInvertY,
      set = SetInvertY
    },
    {
      idx = 0,
      max = 1,
      get = GetRumble,
      set = SetRumble
    },
    {},
    {}
  }
  local musicVolIdx = 2
  local sfxVolIdx = 3
  local voiceVolIdx = 4
  local soundModeIdx = 6
  local brightnessIdx = 8
  local screenRatioIdx = 9
  local invertYIdx = 11
  local rumbleIdx = 12
  local arrowLeftIdx = 13
  local arrowRightIdx = 14
  local rumbleCount = -1
  local function updateRumble()
    if rumbleCount > 0 then
      Rumble(0, 1, 128)
      rumbleCount = rumbleCount - 1
    elseif rumbleCount == 0 then
      Rumble(0, 0, 0)
      rumbleCount = rumbleCount - 1
    end
  end
  local function CheckRumble(idx)
    if idx == rumbleIdx then
      rumbleCount = 30
    else
      rumbleCount = 0
    end
  end
  local function selArrowLeft()
    if hasPressedA == false then
      triggerArrowScaleL = arrowScaleMax
      if optionsTable[selectedOption].idx > 0 then
        optionsTable[selectedOption].idx = optionsTable[selectedOption].idx - 1
        hasChanged = true
        optionsTable[selectedOption].set(optionsTable[selectedOption].idx)
        PlaySound(SoundID.UI_FE_Adjust)
      else
        PlaySound(SoundID.UI_FE_Fail)
      end
    end
  end
  local function selArrowRight()
    if hasPressedA == false then
      triggerArrowScaleR = arrowScaleMax
      if optionsTable[selectedOption].idx < optionsTable[selectedOption].max then
        optionsTable[selectedOption].idx = optionsTable[selectedOption].idx + 1
        hasChanged = true
        PlaySound(SoundID.UI_FE_Adjust)
        optionsTable[selectedOption].set(optionsTable[selectedOption].idx)
      else
        PlaySound(SoundID.UI_FE_Fail)
      end
    end
  end
  local function bSelect(idx)
    if hasPressedA == false then
      triggerItem = triggerItemStart
      selectedOption = idx
      CheckRumble(idx)
      PlaySound(SoundID.UI_FE_Navigate)
    end
  end
  local function canGoLeft()
    if optionsTable[selectedOption].idx == 0 then
      return false
    end
    return true
  end
  local function canGoRight()
    if optionsTable[selectedOption].idx == optionsTable[selectedOption].max then
      return false
    end
    return true
  end
  local function bAccept()
    if bFadeNotDone() or triggerPanel > 0 then
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
    elseif hasChanged == false then
      PopPageStack()
      PlaySound(SoundID.UI_FE_Close)
    elseif hasPressedA == true then
      dialogCount = DialogCountStart
      triggerPanel = TriggerPanelStart
      saveOKflag = true
      EndSettings()
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
    elseif saveOKflag == false then
      if hasPressedA == true then
        hasPressedA = false
      else
        PopPageStack()
      end
    end
    PlaySound(SoundID.UI_FE_Close)
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
    {},
    {
      onPressA = bAccept,
      onPressB = bCancel,
      onSelect = bSelect,
      onPressX = bX
    },
    {
      onPressA = bAccept,
      onPressB = bCancel,
      onSelect = bSelect,
      onPressX = bX
    },
    {
      onPressA = bAccept,
      onPressB = bCancel,
      onSelect = bSelect,
      onPressX = bX
    },
    {},
    {
      onPressA = bAccept,
      onPressB = bCancel,
      onSelect = bSelect,
      onPressX = bX
    },
    {},
    {
      onPressA = bAccept,
      onPressB = bCancel,
      onSelect = bSelect,
      onPressX = bX
    },
    {
      onPressA = bAccept,
      onPressB = bCancel,
      onSelect = bSelect,
      onPressX = bX
    },
    {},
    {
      onPressA = bAccept,
      onPressB = bCancel,
      onSelect = bSelect,
      onPressX = bX
    },
    {
      onPressA = bAccept,
      onPressB = bCancel,
      onSelect = bSelect,
      onPressX = bX
    },
    {
      SpriteID.FE_BTN_ARROW01_L,
      {250, 348},
      aScaleL,
      isActive = canGoLeft,
      onSelect = selArrowLeft
    },
    {
      SpriteID.FE_BTN_ARROW01_R,
      {405, 348},
      aScaleR,
      isActive = canGoRight,
      onSelect = selArrowRight
    }
  }
  local function boverlay()
    return 320, 66 + (selectedOption - 1) * textHeight
  end
  local function boverlayActive()
    if hasPressedA == true then
      return false
    end
    return true
  end
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
      SpriteID.FE_BTN_OVR02_LINE,
      boverlay,
      1,
      0,
      triggeredItemColour,
      isActive = boverlayActive
    }
  }
  local function tcolour(idx)
    if idx == selectedOption and hasPressedA == false then
      return 127, 127, 0, 127
    else
      return 127, 127, 127, 127
    end
  end
  local optionsText = {
    {""},
    {""},
    {""},
    {""},
    {""},
    {
      StringID.Mono,
      StringID.Stereo,
      StringID.Surround
    },
    {""},
    {""},
    {
      StringID.Normal,
      StringID.Widescreen
    },
    {""},
    {
      StringID.INVERTED,
      StringID.Normal
    },
    {
      StringID.Off,
      StringID.On
    },
    {""},
    {""}
  }
  local function currentVarText()
    if optionsText[selectedOption][1] ~= "" then
      return optionsText[selectedOption][optionsTable[selectedOption].idx + 1]
    end
    return ""
  end
  local function statusTextA()
    if hasChanged == true then
      return StringID.SAVE
    else
      return StringID.BACK
    end
  end
  local function statusTextB()
    if hasChanged == true then
      return StringID.CANCEL
    else
      return StringID.BACK
    end
  end
  tableData.textBoxes = {
    {},
    {
      StringID.Music_Volume,
      {
        150,
        textStart + textHeight * 1
      },
      {340, 15},
      tcolour,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.FX_Volume,
      {
        150,
        textStart + textHeight * 2
      },
      {340, 15},
      tcolour,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.Voice_Volume,
      {
        150,
        textStart + textHeight * 3
      },
      {340, 15},
      tcolour,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {},
    {
      StringID.Sound_Mode,
      {
        150,
        textStart + textHeight * 5
      },
      {340, 15},
      tcolour,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {},
    {
      StringID.Brightness,
      {
        150,
        textStart + textHeight * 7
      },
      {340, 15},
      tcolour,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.Screen_Ratio,
      {
        150,
        textStart + textHeight * 8
      },
      {340, 15},
      tcolour,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {},
    {
      StringID.Invert_Y,
      {
        150,
        textStart + textHeight * 10
      },
      {340, 15},
      tcolour,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.Rumble,
      {
        150,
        textStart + textHeight * 11
      },
      {340, 15},
      tcolour,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      statusTextB,
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
      StringID.SETTINGS,
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
      statusTextA,
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
  tableData.nextMap = {
    {},
    {
      arrowLeftIdx,
      arrowRightIdx,
      12,
      3
    },
    {
      arrowLeftIdx,
      arrowRightIdx,
      2,
      4
    },
    {
      arrowLeftIdx,
      arrowRightIdx,
      3,
      6
    },
    {},
    {
      arrowLeftIdx,
      arrowRightIdx,
      4,
      8
    },
    {},
    {
      arrowLeftIdx,
      arrowRightIdx,
      6,
      9
    },
    {
      arrowLeftIdx,
      arrowRightIdx,
      8,
      11
    },
    {},
    {
      arrowLeftIdx,
      arrowRightIdx,
      9,
      12
    },
    {
      arrowLeftIdx,
      arrowRightIdx,
      11,
      2
    },
    {
      arrowLeftIdx,
      arrowRightIdx,
      2,
      2
    },
    {
      arrowLeftIdx,
      arrowRightIdx,
      2,
      2
    }
  }
  local function localOpenGlobe()
    openGlobe(tableData.backgrounds)
  end
  local function localUpdateGlobe()
    updateGlobe(tableData.backgrounds)
  end
  local function updateSelectedOption()
    if tableData.nextSelectedButton > rumbleIdx and tableData.selectedButton == rumbleIdx then
      CheckRumble(tableData.selectedButton)
    end
    if tableData.nextSelectedButton > rumbleIdx or hasPressedA == true then
      tableData.nextSelectedButton = tableData.selectedButton
    end
    selectedOption = tableData.selectedButton
  end
  local function initFade()
    initFadeIn()
    triggerPanel = 0
    triggerItem = 0
  end
  local function updateFade()
    updateFadeColour(tableData)
    if triggerPanel > 0 then
      triggerPanel = triggerPanel - TriggerPanelRate
    end
    if triggerPanel < 0 then
      triggerPanel = 0
    end
    if triggerItem > 0 then
      triggerItem = triggerItem - triggerItemRate
    end
    if triggerItem < 0 then
      triggerItem = 0
    end
  end
  local function initSettings()
    saveOKflag = false
    optionsTable[1].idx = optionsTable[1].get()
    optionsTable[2].idx = optionsTable[2].get()
    optionsTable[3].idx = optionsTable[3].get()
    optionsTable[4].idx = optionsTable[4].get()
    optionsTable[5].idx = optionsTable[5].get()
    optionsTable[6].idx = optionsTable[6].get()
    optionsTable[7].idx = optionsTable[7].get()
    optionsTable[8].idx = optionsTable[8].get()
    optionsTable[9].idx = optionsTable[9].get()
    optionsTable[10].idx = optionsTable[10].get()
    optionsTable[11].idx = optionsTable[11].get()
    optionsTable[12].idx = optionsTable[12].get()
    CheckRumble(selectedOption)
  end
  local closeSettings = function()
    Rumble(0, 0, 0)
    InitSettings()
    ApplySettings()
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
  local panelSaveText = {
    StringID.SETTINGSMSG,
    {
      170,
      11 + oY
    },
    {300, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local panelSaveYes = {
    StringID.Yes,
    {
      220,
      53 + oY
    },
    {200, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.LEFT
  }
  local panelSaveCancel = {
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
  local function openCardPanel()
    OpenFlat(panelBGTop)
    OpenFlat(panelBGMid)
    OpenFlat(panelBGBot)
    OpenSprite(AButton)
    OpenSprite(BButton)
    OpenSprite(XButton)
    OpenSprite(AButtonSave)
    OpenSprite(BButtonSave)
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
      if CardStatus == CARD.NONE or CardStatus == CARD.FileOK or CardStatus == CARD.CardOK then
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
    elseif hasPressedA == true and hasChanged == true then
      renderPanelBG(27)
      RenderSprite(AButtonSave, 600)
      RenderSprite(BButtonSave, 600)
      RenderTextBox(panelSaveText, 350)
      RenderTextBox(panelSaveYes, 350)
      RenderTextBox(panelSaveCancel, 350)
    end
  end
  local function closeCardPanel()
    CloseFlat(panelBGTop)
    CloseFlat(panelBGMid)
    CloseFlat(panelBGBot)
    CloseSprite(AButton)
    CloseSprite(BButton)
    CloseSprite(XButton)
    CloseSprite(AButtonSave)
    CloseSprite(BButtonSave)
  end
  local mStatText = {
    currentVarText,
    {250, 328},
    {140, 15},
    triggeredItemColour,
    StatusFont,
    JUSTIFY.CENTRE
  }
  local centredLArrow, centredRArrow, centredBar, mVolume
  local function openStatsSprites()
    centredLArrow = GetSprite(SpriteID.FE_BTN_PLACEMENT_LEFT)
    ZDepthSprite(centredLArrow, 14780)
    centredRArrow = GetSprite(SpriteID.FE_BTN_PLACEMENT_RIGHT)
    ZDepthSprite(centredRArrow, 14780)
    centredBar = GetSprite(SpriteID.FE_BTN_PLACEMENT_BAR)
    ZDepthSprite(centredBar, 14780)
    mVolume = GetSprite(SpriteID.FE_BTN_VOLUME)
    ZDepthSprite(mVolume, 14780)
  end
  local function RenderVolumeStat()
    local j, a
    j, j, j, a = triggeredItemColour()
    FadeSprite(mVolume, a)
    SetFrameSprite(mVolume, rint(optionsTable[selectedOption].idx / 5 + 0.8))
    MoveSprite(mVolume, 320, 343)
    DrawSprite(mVolume)
  end
  local function RenderCentreOffsetStat()
    local j, a
    j, j, j, a = triggeredItemColour()
    FadeSprite(centredBar, a)
    MoveSprite(centredBar, 320, 343)
    DrawSprite(centredBar)
    local count = optionsTable[selectedOption].idx - 31
    local offset = 2
    if count > 0 then
      while count > 0 do
        offset = offset + 12
        count = count - 8
        FadeSprite(centredRArrow, a)
        MoveSprite(centredRArrow, 320 + offset, 345)
        DrawSprite(centredRArrow)
      end
    elseif count < 0 then
      while count < 0 do
        offset = offset + 12
        count = count + 8
        FadeSprite(centredLArrow, a)
        MoveSprite(centredLArrow, 320 - offset, 345)
        DrawSprite(centredLArrow)
      end
    end
  end
  local function renderStatsSprites()
    local idx = tableData.selectedButton
    if idx == musicVolIdx or idx == sfxVolIdx or idx == voiceVolIdx then
      RenderVolumeStat()
    elseif idx == brightnessIdx then
      RenderCentreOffsetStat()
    else
      RenderTextBox(mStatText, 0)
    end
  end
  local cloaeStatsSprites = function()
  end
  local function init()
    hasPressedA = false
    saveOKflag = false
    hasChanged = false
    rumbleCount = -1
    memcardAccess = false
    CardStatus = CARD.NONE
    bExitFlag = false
    dialogCount = 0
    AutoLoad(false)
  end
  tableData.open = {
    init,
    initFade,
    initSettings,
    localOpenGlobe,
    openCardPanel,
    openStatsSprites
  }
  tableData.update = {
    updateFade,
    localUpdateGlobe,
    updateSelectedOption,
    updateArrowScale,
    updateRumble,
    pollMemorycard,
    updateDialogCount,
    checkExit
  }
  tableData.render = {renderStatsSprites, renderCardPanel}
  tableData.close = {
    closeGlobe,
    closeSettings,
    closeStatsSprites
  }
  function GetSettingsPage()
    return tableData
  end
  DebugOut("Settings ticked ***")
end

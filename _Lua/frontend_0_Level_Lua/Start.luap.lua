function Start(owner)
  local tableData = {}
  tableData.selectedButton = 1
  tableData.clearColour = {
    0,
    0,
    0,
    127
  }
  local attractCount = 0
  local attractTimeout = 30 * 60
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
    {}
  }
  local logo = {
    "BattalionWarsLog",
    {
      100 * 1.03125,
      70
    },
    {
      424 * 1.03125,
      144
    },
    {0, 0},
    {424, 144},
    127
  }
  local b1pos = function()
    return 320, 350 + sin(GetTime() * 300) * 6
  end
  local function b1choose()
    if bFadeNotDone() then
      return
    end
    if attractCount <= 15 then
      SetMusicVolume(1, musicFadeTime)
    end
    PushPageStack("Main")
    PlaySound(SoundID.UI_FE_Open)
  end
  local b1alpha = function()
    return 128, 128, 128, sin(GetTime() * 130) * 64 + 63
  end
  tableData.buttons = {
    {
      SpriteID.FE_BTN_LNG01_UNSEL,
      b1pos,
      onPressA = b1choose
    }
  }
  tableData.sprites = {
    {
      SpriteID.FE_BTN_LNG01_SEL,
      b1pos,
      1,
      0,
      b1alpha
    }
  }
  local tpos = function()
    return 220, 336 + sin((GetTime() - 0.03) * 300) * 6
  end
  tableData.textBoxes = {
    {
      StringID.PRESSSTART,
      tpos,
      {200, 15},
      {
        127,
        127,
        127,
        127
      },
      GUIFont,
      JUSTIFY.CENTRE
    }
  }
  local function resetAttractCount()
    attractCount = attractTimeout
  end
  local function checkAttractCount()
    attractCount = attractCount - 1
    if attractCount < 15 then
      tableData.fadeColour = cos(attractCount * 12) * 64 + 64
    end
    if attractCount == 15 then
      SetMusicVolume(0, musicFadeTime)
    end
    if attractCount <= 0 then
      StopMusic()
      PushPageStack("Attract")
    end
  end
  local fadeRect = {
    {-10, 0},
    {660, 480},
    {
      0,
      0,
      0,
      0
    }
  }
  local function openLogo()
    OpenFlat(logo)
  end
  local function renderLogo()
    RenderFlat(logo, 1900)
  end
  local function closeLogo()
    CloseFlat(logo)
  end
  local function localInitFades()
    initFadeIn()
    tableData.fadeColour = 0
  end
  local function updateFades()
    updateFadeColour(tableData)
    if FirstTime then
      if fadeCount >= 180 then
        FirstTime = false
      end
      fadeRect[3][4] = tableData.fadeColour
      tableData.fadeColour = 0
    end
  end
  local function doFadeRect()
    if FirstTime then
      RenderRect(fadeRect, 1300)
    end
  end
  local function localOpenGlobe()
    openGlobe(tableData.backgrounds)
  end
  local function localUpdateGlobe()
    updateGlobe(tableData.backgrounds)
  end
  local copyrightMessage = {
    StringID.BYKUJU,
    {0, 404},
    {640, 18},
    {
      127,
      127,
      127,
      127
    },
    StatusFont,
    JUSTIFY.CENTRE
  }
  local function doCopyrightMessage()
    RenderTextBox(copyrightMessage, 0)
  end
  local pollMusic = function()
    if FEMusic == false then
      SetMusicVolume(TitleLoopVol, 0.1)
      FEMusic = StartMusic(constant.FILENAME, MusicDirectory, "TitleLoop")
    end
  end
  tableData.open = {
    openLogo,
    localInitFades,
    resetAttractCount,
    localOpenGlobe
  }
  tableData.update = {
    updateFades,
    checkAttractCount,
    localUpdateGlobe,
    pollMusic
  }
  tableData.render = {
    doCopyrightMessage,
    doFadeRect,
    renderLogo
  }
  tableData.close = {closeLogo, closeGlobe}
  function GetStartPage()
    return tableData
  end
  DebugOut("Start ticked ***")
end

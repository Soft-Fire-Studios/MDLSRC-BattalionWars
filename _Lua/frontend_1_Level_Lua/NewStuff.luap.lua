function NewStuff(owner)
  local tableData = {}
  tableData.selectedButton = 1
  tableData.clearColour = {
    0,
    0,
    0,
    127
  }
  local newUnitNum = 1
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
    },
    {
      "PNL_VICTORY_02",
      {36, 35},
      {568, 360},
      {0, 0},
      {568, 360},
      {
        127,
        127,
        96,
        127
      }
    }
  }
  local bMissionSelect = function()
    ResetPageStack("Start")
    PushPageStack("Main")
    PushPageStack("MissionSelect")
  end
  local function bNext()
    if bFadeNotDone() then
      return
    end
    if NewUnitsList[SelectedLevel].num > newUnitNum then
      newUnitNum = newUnitNum + 1
    else
      bMissionSelect()
    end
    fadeCount = 0
    PlaySound(SoundID.UI_FE_Open)
  end
  local function bQuit()
    if bFadeNotDone() then
      return
    end
    bMissionSelect()
    PlaySound(SoundID.UI_FE_Close)
  end
  tableData.buttons = {
    {onPressA = bNext, onPressB = bQuit}
  }
  tableData.sprites = {
    {
      SpriteID.FE_GAMEPAD_A,
      {600, 424}
    },
    {
      SpriteID.FE_GAMEPAD_B,
      {40, 424}
    }
  }
  local textColTitle = {
    0,
    0,
    0,
    127
  }
  local textColStats = {
    127,
    127,
    127,
    127
  }
  local textColDesc = {
    127,
    127,
    127,
    127
  }
  local function getUnitTitle()
    return NewUnitsList[SelectedLevel].title[newUnitNum]
  end
  local function getUnitStats()
    return NewUnitsList[SelectedLevel].stats[newUnitNum]
  end
  local function getUnitStatsB()
    return NewUnitsList[SelectedLevel].statsB[newUnitNum]
  end
  local function getUnitDesc()
    return NewUnitsList[SelectedLevel].desc[newUnitNum]
  end
  tableData.textBoxes = {
    {
      StringID.MISSION_SELECT,
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
      StringID.NEW_UNITS,
      {200, 404},
      {240, 15},
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
    },
    {
      StringID.NEW_UNIT,
      {55, 110},
      {400, 15},
      textColTitle,
      PlinthFont,
      JUSTIFY.LEFT
    },
    {
      getUnitTitle,
      {55, 130},
      {400, 15},
      textColTitle,
      PlinthFont,
      JUSTIFY.LEFT
    },
    {
      getUnitStats,
      {55, 204},
      {530, 46},
      textColStats,
      GameFont,
      JUSTIFY.LEFT
    },
    {
      getUnitStatsB,
      {55, 228},
      {530, 46},
      textColStats,
      GameFont,
      JUSTIFY.LEFT
    },
    {
      getUnitDesc,
      {55, 255.5},
      {530, 112},
      textColDesc,
      GameFont,
      JUSTIFY.LEFT
    }
  }
  local imageList = {
    {
      "",
      {216, 50},
      {208, 168},
      {0, 0},
      {208, 168},
      127
    },
    {
      "",
      {216, 50},
      {208, 168},
      {0, 0},
      {208, 168},
      127
    },
    {
      "",
      {216, 50},
      {208, 168},
      {0, 0},
      {208, 168},
      127
    }
  }
  local iconList = {
    {
      "",
      {464, 100},
      {96, 96},
      {0, 0},
      {64, 64},
      127
    },
    {
      "",
      {464, 100},
      {96, 96},
      {0, 0},
      {64, 64},
      127
    },
    {
      "",
      {464, 100},
      {96, 96},
      {0, 0},
      {64, 64},
      127
    }
  }
  local function openImages()
    for i = 1, NewUnitsList[SelectedLevel].num do
      imageList[i][1] = NewUnitsList[SelectedLevel].tex[i]
      OpenFlat(imageList[i])
      iconList[i][1] = NewUnitsList[SelectedLevel].icon[i]
      OpenFlat(iconList[i])
    end
  end
  local function renderImage()
    RenderFlat(imageList[newUnitNum], 200)
    RenderFlat(iconList[newUnitNum], 200)
  end
  local function closeImages()
    for i = 1, NewUnitsList[SelectedLevel].num do
      CloseFlat(imageList[i])
      CloseFlat(iconList[i])
    end
  end
  local openMusic = function()
    SetMusicVolume(1, 0.1)
    StartMusic(constant.FILENAME, MusicDirectory, "Map_Loop")
  end
  local pollMusic = function()
    if Fanfare == 2 then
      return
    elseif Fanfare == 1 then
      Fanfare = 2
      SetMusicVolume(MapLoopVol, 0.1)
      StartMusic(constant.FILENAME, MusicDirectory, "Map_Loop")
    elseif CheckMusicFinished() == true then
      Fanfare = 1
      StopMusic()
    end
  end
  local closeMusic = function()
  end
  local function updateFadeIn()
    updateFadeColour(tableData)
  end
  local function init()
    newUnitNum = 1
  end
  tableData.open = {
    init,
    initFadeIn,
    openImages
  }
  tableData.update = {
    updateFadeIn,
    usy,
    pollMusic
  }
  tableData.render = {renderImage}
  tableData.close = {closeImages}
  function GetNewStuffPage()
    return tableData
  end
  DebugOut("NewStuff ticked ***")
end

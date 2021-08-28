function Defeat(owner)
  local tableData = {}
  local letterWobbleCount = 0
  local letterAngles = {
    -15,
    -9,
    -3,
    3,
    9,
    15
  }
  local hypotenuse = 775
  local radius = 880
  tableData.selectedButton = 1
  tableData.clearColour = {
    0,
    0,
    0,
    127
  }
  local bgFlickerA = 100
  local function bgFlicker()
    if GetRandom() > 0.7 then
      bgFlickerA = GetRandom(60, 117)
    end
    return 128, 128, 128, bgFlickerA
  end
  local pnlFlickerA = 60
  local function pnlFlicker()
    if GetRandom() > 0.6 then
      pnlFlickerA = GetRandom(64, 127)
    end
    return 128, 128, 128, pnlFlickerA
  end
  local fireFlickerA = 120
  local function fireFlicker()
    if GetRandom() > 0.5 then
      fireFlickerA = GetRandom(110, 127)
    end
    return 128, 128, 128, fireFlickerA
  end
  tableData.backgrounds = {
    {
      "BG_DEFEAT_01",
      {0, 22},
      {640, 379},
      {0, 0},
      {640, 379}
    },
    {
      "BG_DEFEAT_02",
      {0, 22},
      {640, 379},
      {0, 0},
      {640, 379},
      bgFlicker
    },
    {
      "PNL_DEFEAT_01",
      {40, 312},
      {560, 96},
      {0, 0},
      {560, 96}
    },
    {
      "PNL_DEFEAT_02",
      {40, 312},
      {560, 96},
      {0, 0},
      {560, 96},
      pnlFlicker
    },
    {
      "OVR_FIRE_02",
      {265, 271},
      {96, 88},
      {0, 0},
      {96, 88},
      fireFlicker
    }
  }
  local bReplayQuit = function()
    if bFadeNotDone() then
      return
    end
    PushPageStack("ReplayQuit")
    PlaySound(SoundID.UI_FE_Open)
  end
  tableData.buttons = {
    {onPressA = bReplayQuit}
  }
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
  local function dPos(idx)
    local a = letterAngles[idx]
    return sin(a) * cHyp(a) + 320, radius - cos(a) * cHyp(a)
  end
  local function dRot(idx)
    return -letterAngles[idx]
  end
  local dCol = {
    80,
    100,
    100,
    127
  }
  tableData.sprites = {
    {
      SpriteID.FE_OVR_DEFEAT_D,
      dPos,
      1,
      dRot,
      dCol
    },
    {
      SpriteID.FE_OVR_DEFEAT_E,
      dPos,
      1,
      dRot,
      dCol
    },
    {
      SpriteID.FE_OVR_DEFEAT_F,
      dPos,
      1,
      dRot,
      dCol
    },
    {
      SpriteID.FE_OVR_DEFEAT_E,
      dPos,
      1,
      dRot,
      dCol
    },
    {
      SpriteID.FE_OVR_DEFEAT_A,
      dPos,
      1,
      dRot,
      dCol
    },
    {
      SpriteID.FE_OVR_DEFEAT_T,
      dPos,
      1,
      dRot,
      dCol
    },
    {
      SpriteID.FE_GAMEPAD_A,
      {600, 424}
    },
    {
      SpriteID.FE_OVR_FIRE_01,
      {320, 280}
    }
  }
  tableData.textBoxes = {
    {
      StringID.DEFEAT,
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
  local function updateWobbleCount()
    letterWobbleCount = letterWobbleCount + 1
  end
  local function updateFadeIn()
    updateFadeColour(tableData)
  end
  local init = function()
    Fanfare = 0
    SetMusicVolume(StingsVol, 0.1)
    StartMusic(constant.FILENAME, MusicDirectory, "Defeat", 0, constant.ONCE)
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
  tableData.open = {init, initFadeIn}
  tableData.update = {
    updateFadeIn,
    updateWobbleCount,
    pollMusic
  }
  tableData.render = {}
  function GetDefeatPage()
    return tableData
  end
  DebugOut("Defeat ticked ***")
end

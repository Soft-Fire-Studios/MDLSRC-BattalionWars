function ReplayQuit(owner)
  local tableData = {}
  local myCount = {0, 0}
  local letterWobbleCount = 0
  local letterAngle = {
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
  local bExitingFlag = false
  local bExitFlag = false
  local exitFadeCount = 180
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
  local bgFlickerA = 100
  local function bgFlicker()
    if GetRandom() > 0.7 then
      bgFlickerA = GetRandom(60, 117)
    end
    return 128, 128, 128, bgFlickerA
  end
  local pnlFliakerA = 60
  local function pnlFlicker()
    if GetRandom() > 0.6 then
      pnlFliakerA = GetRandom(64, 127)
    end
    return 128, 128, 128, pnlFliakerA
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
  local bQuit = function()
    if bFadeNotDone() then
      return
    end
    ResetPageStack("MissionSelect")
    PlaySound(SoundID.UI_FE_Close)
  end
  local function bReplay()
    if bFadeNotDone() or bExitingFlag == true then
      return
    end
    bExitingFlag = true
    exitFadeCount = 180
    SetMusicVolume(0, musicFadeTime)
    PlaySound(SoundID.UI_FE_Open)
  end
  local function balpha(idx)
    local r, g, b, a
    r, g, b, a = triggeredPanelColour()
    a = a * (cos(myCount[idx]) * 0.5 + 0.5)
    return 127, 127, 127, a
  end
  local function balphad(idx)
    if myCount[idx] >= 180 then
      tableData.sprites[idx][5] = 0
      return 127, 127, 127, 0
    else
      return balpha(idx)
    end
  end
  local xButtonPos = {440, 200}
  local function bpos(idx)
    return xButtonPos[idx], 360 + sin(myCount[idx] * 2) * 6
  end
  local function bposd(idx)
    if myCount[idx] >= 180 then
      tableData.buttons[idx][2] = {
        xButtonPos[idx],
        360
      }
      tableData.sprites[idx][2] = {
        xButtonPos[idx],
        360
      }
      tableData.textBoxes[idx][2] = {
        xButtonPos[idx] - 50,
        360 - 13
      }
      return xButtonPos[idx], 360
    else
      return bpos(idx)
    end
  end
  local function tpos(idx)
    local x, y = bpos(idx)
    return x - 50, y - 13
  end
  local function bsel(idx)
    myCount[idx] = 0
    tableData.sprites[idx][5] = balpha
    tableData.sprites[idx][2] = bpos
    tableData.buttons[idx][2] = bpos
    tableData.textBoxes[idx][2] = tpos
    PlaySound(SoundID.UI_FE_Navigate)
  end
  local function bdesel(idx)
    if myCount[idx] > 180 then
      myCount[idx] = mod(myCount[idx], 180)
    end
    tableData.sprites[idx][5] = balphad
    tableData.sprites[idx][2] = bposd
    tableData.buttons[idx][2] = bposd
  end
  tableData.buttons = {
    {
      SpriteID.FE_BTN_LNG01_UNSEL,
      bpos,
      1,
      0,
      triggeredPanelColour,
      onSelect = bsel,
      onDeselect = bdesel,
      onPressA = bReplay
    },
    {
      SpriteID.FE_BTN_LNG01_UNSEL,
      {200, 360},
      1,
      0,
      triggeredPanelColour,
      onSelect = bsel,
      onDeselect = bdesel,
      onPressA = bQuit
    }
  }
  tableData.nextMap = {
    {
      2,
      2,
      1,
      1
    },
    {
      1,
      1,
      2,
      2
    }
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
    local a = letterAngle[idx - 2]
    return sin(a) * cHyp(a) + 320, radius - cos(a) * cHyp(a)
  end
  local function dRot(idx)
    return -letterAngle[idx - 2]
  end
  local dCol = {
    80,
    100,
    100,
    127
  }
  tableData.sprites = {
    {
      SpriteID.FE_BTN_LNG01_SEL,
      bpos,
      1,
      0,
      balpha
    },
    {
      SpriteID.FE_BTN_LNG01_SEL,
      {200, 360},
      1,
      0,
      0
    },
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
  local function rqText()
    if tableData.selectedButton == 1 then
      return StringID.REPLAY
    else
      return StringID.QUIT
    end
  end
  tableData.textBoxes = {
    {
      StringID.REPLAY,
      tpos,
      {100, 15},
      triggeredPanelColour,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.QUIT,
      {
        200 - 50,
        360 - 13
      },
      {100, 15},
      triggeredPanelColour,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.CHOOSE,
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
      rqText,
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
  local function incCounts()
    for i = 1, 2 do
      myCount[i] = myCount[i] + 4
    end
  end
  local function updateWobbleCount()
    letterWobbleCount = letterWobbleCount + 2
  end
  local function updateFades()
    if triggerPanel > 0 then
      triggerPanel = triggerPanel - TriggerPanelRate
    end
    if triggerPanel < 0 then
      triggerPanel = 0
    end
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
    ResetPageStack("CutsceneIn")
    SetMissionStatus(GAMESTATUS.PLAY)
  end
  local function init()
    triggerPanel = TriggerPanelStart
    bExitingFlag = false
    bExitFlag = false
  end
  tableData.open = {init}
  tableData.update = {
    updateFades,
    incCounts,
    updateWobbleCount,
    checkExit,
    pollMusic
  }
  tableData.render = {renderBlank}
  tableData.close = {}
  function GetReplayQuitPage()
    return tableData
  end
  DebugOut("ReplayQuit ticked ***")
end

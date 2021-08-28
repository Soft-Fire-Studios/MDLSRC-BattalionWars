function Briefing(owner)
  local tableData = {}
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
  local briefShiftX = 150
  local wlp = function()
    return 0, 22
  end
  local function wrp()
    local x = 640 - (missionDataTable[SelectedLevel].X + briefShiftX - 320)
    return x, 22
  end
  local function wls()
    local x = 640 - (missionDataTable[SelectedLevel].X + briefShiftX - 320)
    return x, 379
  end
  local function wrs()
    local x = missionDataTable[SelectedLevel].X + briefShiftX - 320
    return x, 379
  end
  local function tlp()
    local x = missionDataTable[SelectedLevel].X + briefShiftX - 320
    local y = missionDataTable[SelectedLevel].Y - 240 + 22
    return x, y
  end
  local trp = function()
    local y = missionDataTable[SelectedLevel].Y - 240 + 22
    return 0, y
  end
  local function tls()
    local x = 640 - (missionDataTable[SelectedLevel].X + briefShiftX - 320)
    return x, 379
  end
  local function trs()
    local x = missionDataTable[SelectedLevel].X + briefShiftX - 320
    return x, 379
  end
  local bgpos = function()
    local pos = missionDataTable[SelectedLevel]
    return pos.X * 0.2, pos.Y * 0.1
  end
  tableData.backgrounds = {
    {
      "BG_MAP02_BG",
      {-10, 22},
      {660, 379},
      bgpos,
      {640, 379}
    },
    {
      "BG_MAP02_L",
      wlp,
      wls,
      tlp,
      tls
    },
    {
      "BG_MAP02_R",
      wrp,
      wrs,
      trp,
      trs
    }
  }
  local function selectMission()
    if bFadeNotDone() or bExitingFlag then
      return
    end
    bExitingFlag = true
    exitFadeCount = 180
    SetMusicVolume(0, musicFadeTime)
    PlaySound(SoundID.UI_FE_Open)
  end
  local function bCancel()
    if bFadeNotDone() or bExitingFlag then
      return
    end
    bPopPage()
  end
  tableData.buttons = {
    {onPressA = selectMission, onPressB = bCancel}
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
      SpriteID.FE_BTN_MAP04_PLAY1,
      {170, 240}
    },
    {
      SpriteID.FE_BTN_MAP04_PLAY2,
      {170, 240}
    }
  }
  local function tposName(idx)
    local x = MapNameData[idx].X - (missionDataTable[SelectedLevel].X + briefShiftX) + 320
    local y = MapNameData[idx].Y - missionDataTable[SelectedLevel].Y + 240
    return x, y
  end
  local function tposWest()
    return tposName(1)
  end
  local function tposAll()
    return tposName(2)
  end
  local function tposTun()
    return tposName(3)
  end
  local function tposTerr()
    return tposName(4)
  end
  local function tposSol()
    return tposName(5)
  end
  local function tposEmp()
    return tposName(6)
  end
  local function tposCoral()
    return tposName(7)
  end
  local function tposAtol()
    return tposName(8)
  end
  local function tposDune()
    return tposName(9)
  end
  local function tposXyl()
    return tposName(10)
  end
  local tNameCol = {
    100,
    100,
    100,
    110
  }
  local tNameBox = {100, 15}
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
      StringID.MISSION_BRIEFING,
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
      StringID.FINISH_BRIEFING,
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
  local tNameColWFrontier = {
    120 / 2,
    204 / 2,
    131 / 2,
    80
  }
  local tNameColTTerritories = {
    204 / 2,
    113 / 2,
    115 / 2,
    80
  }
  local tNameColSEmpire = {
    255 / 2,
    207 / 2,
    255 / 2,
    80
  }
  local tNameColDuneSea = {
    210 / 2,
    204 / 2,
    118 / 2,
    80
  }
  local tNameColXylvania = {
    110 / 2,
    122 / 2,
    204 / 2,
    80
  }
  local mapNames = {
    {
      StringID.WESTERN,
      tposWest,
      tNameBox,
      tNameColWFrontier,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.FRONTIER,
      tposAll,
      tNameBox,
      tNameColWFrontier,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.TUNDRAN,
      tposTun,
      tNameBox,
      tNameColTTerritories,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.TERRITORIES,
      tposTerr,
      tNameBox,
      tNameColTTerritories,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.SOLAR,
      tposSol,
      tNameBox,
      tNameColSEmpire,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.EMPIRE,
      tposEmp,
      tNameBox,
      tNameColSEmpire,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.CORAL,
      tposCoral,
      tNameBox,
      tNameColSEmpire,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.ATOL,
      tposAtol,
      tNameBox,
      tNameColSEmpire,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.DUNESEA,
      tposDune,
      tNameBox,
      tNameColDuneSea,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.XYLVANIA,
      tposXyl,
      tNameBox,
      tNameColXylvania,
      GUIFont,
      JUSTIFY.CENTRE
    }
  }
  local function renderMapNames()
    for i = 1, 10 do
      RenderTextBox(mapNames[i], -1500)
    end
  end
  local getMissionName = function()
    return GetString(missionDataTable[SelectedLevel].name)
  end
  local getMissionBriefing = function()
    return GetString(missionDataTable[SelectedLevel].mission)
  end
  local triggerPanel = 360
  local function triggeredPanelColour()
    local a
    if triggerPanel > 180 then
      a = 0
      triggerPanel = triggerPanel - 6
    elseif triggerPanel > 0 then
      a = cos(triggerPanel) * 64 + 64
      triggerPanel = triggerPanel - 6
    else
      a = 127
    end
    return 127, 127, 127, a
  end
  local pnl0 = {
    "PNL_BRIEF_01",
    {280, 50},
    {336, 368},
    {0, 0},
    {336, 368},
    triggeredPanelColour
  }
  local missionName = {
    getMissionName,
    {302, 62},
    {320, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local missionBriefing = {
    getMissionBriefing,
    {315, 110},
    {265, 200},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.LEFT
  }
  local rectBlank = {
    Top = {
      {-10, 0},
      {660, 22},
      {
        0,
        0,
        0,
        127
      }
    },
    Bottom = {
      {-10, 401},
      {660, 101},
      {
        0,
        0,
        0,
        127
      }
    }
  }
  local function TopBotton()
    RenderRect(rectBlank.Top, 0)
    RenderRect(rectBlank.Bottom, 0)
  end
  local function openPnl()
    OpenFlat(pnl0)
  end
  local function closePnl()
    CloseFlat(pnl0)
  end
  local function renderPnl()
    RenderFlat(pnl0, 1700)
    RenderTextBox(missionBriefing, 350)
    RenderTextBox(missionName, 350)
  end
  local function updateFades()
    if bExitingFlag == false then
      updateFadeColour(tableData)
    end
  end
  local gradientOverlay = {
    {
      "OVR_MAP08_EDGE",
      {-10, 22},
      {210, 190},
      {2, 2},
      {316, 186},
      64
    },
    {
      "OVR_MAP08_EDGE",
      {200, 22},
      {450, 190},
      {316, 2},
      {-316, 186},
      64
    },
    {
      "OVR_MAP08_EDGE",
      {-10, 212},
      {210, 190},
      {2, 186},
      {316, -186},
      64
    },
    {
      "OVR_MAP08_EDGE",
      {200, 212},
      {450, 190},
      {316, 186},
      {-316, -186},
      64
    }
  }
  local function openGradient()
    for i = 1, 4 do
      OpenFlat(gradientOverlay[i])
    end
  end
  local function renderGradient()
    for i = 1, 4 do
      RenderFlat(gradientOverlay[i], 1500)
    end
  end
  local function closeGradient()
    for i = 1, 4 do
      CloseFlat(gradientOverlay[i])
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
    SetMissionStatus(GAMESTATUS.PLAY)
    PushPageStack("CutsceneIn")
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
  local function init()
    triggerPanel = 360
    bExitingFlag = false
    bExitFlag = false
    exitFadeCount = 180
  end
  tableData.open = {
    init,
    initFadeIn,
    openPnl,
    openGradient
  }
  tableData.update = {
    updateFades,
    checkExit,
    pollMusic
  }
  tableData.render = {
    renderMapNames,
    TopBotton,
    renderGradient,
    renderPnl,
    renderBlank
  }
  tableData.close = {closePnl, closeGradient}
  function GetBriefingPage()
    return tableData
  end
  DebugOut("Briefing ticked ***")
end

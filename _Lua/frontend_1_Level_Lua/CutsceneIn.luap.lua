function CutsceneIn(owner)
  local tableData = {}
  tableData.selectedButton = 1
  local cutsceneInNames = {
    "1.1_NewsDrill",
    "",
    "1.2_StaleMate",
    "",
    "",
    "",
    "1.3_DealDevil",
    "2.1_EnemyRevealed",
    "",
    "",
    "",
    "3.1_NewFront",
    "3.3_NewAlly",
    "",
    "",
    "",
    "",
    "4.1_TheDead",
    "",
    "",
    "",
    "",
    "",
    ""
  }
  local selectMission = function()
    FrontendDone = true
    PageDone = true
  end
  local function startVideo()
    if cutsceneInNames[SelectedLevel] ~= "" then
      PlayVideo(VIDEO.ONCE, cutsceneInNames[SelectedLevel], 0)
    else
      selectMission()
    end
  end
  local function stopVideo()
    if cutsceneInNames[SelectedLevel] ~= "" then
      SetMusicVolume(0)
      PlayVideo(VIDEO.OFF, cutsceneInNames[SelectedLevel], 0)
    end
    selectMission()
  end
  local function bPress()
    if bFadeNotDone() or GetCurrentMissionAttempted() == false then
      return
    end
    stopVideo()
  end
  tableData.buttons = {
    {onPressA = bPress, onPressB = bPress}
  }
  local function checkVideo()
    if IsVideoFinished() then
      selectMission()
    end
  end
  local function updateFadeIn()
    updateFadeColour(tableData)
  end
  tableData.open = {initFadeIn, startVideo}
  tableData.update = {updateFadeIn, checkVideo}
  tableData.close = {}
  function GetCutsceneInPage()
    return tableData
  end
  DebugOut("CutsceneIn ticked ***")
end

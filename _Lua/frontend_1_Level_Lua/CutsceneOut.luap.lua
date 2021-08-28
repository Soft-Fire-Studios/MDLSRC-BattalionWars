function CutsceneOut(owner)
  local tableData = {}
  tableData.selectedButton = 1
  local cutsceneOutNames = {
    "",
    "",
    "",
    "",
    "",
    "",
    "1.4_Betrayal",
    "",
    "",
    "",
    "2.2_GorgiIsSlain",
    "",
    "",
    "",
    "3.2_HistoryLes",
    "",
    "",
    "",
    "4.2_ShowDown",
    "4.3_TheEnd",
    "",
    "",
    "",
    ""
  }
  local function startVideo()
    if cutsceneOutNames[SelectedLevel] ~= "" then
      PlayVideo(VIDEO.ONCE, cutsceneOutNames[SelectedLevel], 0)
    else
      ResetPageStack("Victory")
    end
  end
  local function stopVideo()
    if cutsceneOutNames[SelectedLevel] ~= "" then
      SetMusicVolume(0)
      PlayVideo(VIDEO.OFF, cutsceneOutNames[SelectedLevel], 0)
    end
    ResetPageStack("Victory")
  end
  local checkVideo = function()
    if IsVideoFinished() then
      ResetPageStack("Victory")
    end
  end
  local function bPress()
    if bFadeNotDone() or GetCurrentFMVOutSeen() == false then
      return
    end
    stopVideo()
  end
  tableData.buttons = {
    {onPressA = bPress, onPressB = bPress}
  }
  local function updateFadeIn()
    updateFadeColour(tableData)
  end
  tableData.open = {initFadeIn, startVideo}
  tableData.update = {updateFadeIn, checkVideo}
  tableData.close = {stopVideo, SetCurrentFMVOutSeen}
  function GetCutsceneOutPage()
    return tableData
  end
  DebugOut("CutsceneOut ticked ***")
end

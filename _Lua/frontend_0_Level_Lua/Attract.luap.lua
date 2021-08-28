function Attract(owner)
  local tableData = {}
  tableData.selectedButton = 1
  local alreadyPressedButton = false
  local startVideo = function()
    PlayVideo(VIDEO.ONCE, "AttractMode", 0)
  end
  local stopVideo = function()
    SetMusicVolume(0)
    PlayVideo(VIDEO.OFF, "AttractMode", 0)
  end
  local function bPress()
    if bFadeNotDone() then
      return
    end
    if alreadyPressedButton == false then
      alreadyPressedButton = true
      stopVideo()
      PopPageStack()
    end
  end
  tableData.buttons = {
    {onPressA = bPress, onPressB = bPress}
  }
  local function updateFadeIn()
    updateFadeColour(tableData)
  end
  local checkVideo = function()
    if IsVideoFinished() then
      PopPageStack()
    end
  end
  local function init()
    alreadyPressedButton = false
  end
  tableData.open = {
    init,
    initFadeIn,
    startVideo
  }
  tableData.update = {updateFadeIn, checkVideo}
  tableData.close = {stopVideo}
  function GetAttractPage()
    return tableData
  end
  DebugOut("Attract ticked ***")
end

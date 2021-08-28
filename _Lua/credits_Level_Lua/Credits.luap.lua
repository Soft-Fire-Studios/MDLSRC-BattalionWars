function Credits(owner)
  local tableData = {}
  local maxCreditStrings = 400
  local initScrollY = 160
  local startScrollY = 340
  local lineHeight = 19
  if GetRegionStr() == "JPN" then
    lineHeight = 22
  end
  local windowTop = 28
  local windowBottom = 380
  local scrollY, lineY
  local fontID = 0
  local creditsStr = {}
  local function initCreditsTable()
    for i = 1, maxCreditStrings do
      creditsStr[i] = GetString(NumGlobalStrings + i - 1)
    end
  end
  local function txtPos()
    return 90, scrollY + lineY * lineHeight
  end
  local function txtPos2()
    return 90 + 2, scrollY + lineY * lineHeight + 2
  end
  local function creditsLine()
    return creditsStr[lineY]
  end
  local function txtCol()
    local a = 0
    local y = scrollY + lineY * lineHeight - windowTop
    if y > 0 and y < windowBottom then
      a = sin(180 / windowBottom * y) * 200
    end
    return 255, 255, 255, a
  end
  local function txtCol2()
    local a = 0
    local y = scrollY + lineY * lineHeight - windowTop
    if y > 0 and y < windowBottom then
      a = sin(180 / windowBottom * y) * 200
    end
    return 0, 0, 0, a
  end
  local credits = {
    creditsLine,
    txtPos,
    {520, 20},
    txtCol,
    fontID,
    0
  }
  local credits2 = {
    creditsLine,
    txtPos2,
    {520, 20},
    txtCol2,
    fontID,
    0
  }
  local function updateScrollY()
    scrollY = scrollY - 30 / GetFramesPerSecond()
  end
  local function renderText()
    lineY = 1
    while creditsStr[lineY] do
      RenderTextBox(credits2, 0)
      RenderTextBox(credits, 0)
      lineY = lineY + 1
    end
    if scrollY + lineY * lineHeight < 0 then
      scrollY = startScrollY
    end
  end
  local bExiting = false
  local function setToExit()
    bExiting = true
    initFadeOut()
    SetMusicVolume(0, MusicFadeOutSecs)
  end
  function tableData.gotoMainFrontend()
    if not bExiting then
      setToExit()
    end
  end
  local gotoMainFrontend = function()
    FrontendDone = true
    PageDone = true
  end
  function tableData.Open()
    scrollY = initScrollY
    initFadeIn()
    initCreditsTable()
    SetFontKernFactor(fontID, 1)
  end
  function tableData.Update()
    updateFadeColour(tableData)
    PollCreditsMusicLoop()
    if bExiting and bFadeOutDone() then
      gotoMainFrontend()
    end
    updateScrollY()
  end
  function tableData.Render()
    renderText()
  end
  function tableData.Close()
    SetFontKernFactor(fontID, 1)
  end
  function GetCreditsPage()
    return tableData
  end
  DebugOut("Credits ticked ***")
end

function AnimLogo(owner)
  local tableData = {}
  tableData.selectedButton = 1
  tableData.clearColour = {
    0,
    0,
    0,
    0
  }
  local counter = 0
  local counterLimit = 30 * 8
  local startVideo = function()
    PlayVideo(VIDEO.ONCE, "BW_Title", 0)
  end
  local stopVideo = function()
    PlayVideo(VIDEO.OFF)
  end
  local function update()
    counter = counter + 1
    if IsVideoFinished() then
      ResetPageStack("Start")
    end
  end
  local function logoAlpha()
    local a = 0
    if counter > counterLimit then
      a = 127 / 60 * (counter - counterLimit)
    end
    if a > 127 then
      a = 127
    end
    return 127, 127, 127, a
  end
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
    logoAlpha
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
  tableData.open = {openLogo, startVideo}
  tableData.update = {update}
  tableData.render = {renderLogo}
  tableData.close = {closeLogo}
  function GetAnimLogoPage()
    return tableData
  end
  DebugOut("AnimLogo ticked ***")
end

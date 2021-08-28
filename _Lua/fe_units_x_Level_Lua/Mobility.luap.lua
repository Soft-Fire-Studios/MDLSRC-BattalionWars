function Mobility(owner)
  local tableData = {}
  tableData.revConCursor = GetMainCursor()
  tableData.cursorSelect = GetFingetCursor()
  local fadeDone = false
  local prevForcesType = 1
  function tableData.iconTTOn(id)
  end
  function tableData.iconTTOff()
  end
  local factionIcon = 0
  local currentIcons = 0
  local getMobilityIcons = function(type)
    local iconTable = {
      {
        GUI_Custom_Widget.Mobility_icons_SE_Infantry,
        GUI_Custom_Widget.Mobility_icons_SE_Ground,
        GUI_Custom_Widget.Mobility_icons_SE_Air,
        GUI_Custom_Widget.Mobility_icons_SE_Sea
      },
      {
        GUI_Custom_Widget.Mobility_icons_WF_Infantry,
        GUI_Custom_Widget.Mobility_icons_WF_Ground,
        GUI_Custom_Widget.Mobility_icons_WF_Air,
        GUI_Custom_Widget.Mobility_icons_WF_Sea
      },
      {
        GUI_Custom_Widget.Mobility_icons_AI_Infantry,
        GUI_Custom_Widget.Mobility_icons_AI_Ground,
        GUI_Custom_Widget.Mobility_icons_AI_Air,
        GUI_Custom_Widget.Mobility_icons_AI_Sea
      },
      {
        GUI_Custom_Widget.Mobility_icons_IL_Infantry,
        GUI_Custom_Widget.Mobility_icons_IL_Ground,
        GUI_Custom_Widget.Mobility_icons_IL_Air,
        GUI_Custom_Widget.Mobility_icons_IL_Sea
      },
      {
        GUI_Custom_Widget.Mobility_icons_TT_Infantry,
        GUI_Custom_Widget.Mobility_icons_TT_Ground,
        GUI_Custom_Widget.Mobility_icons_TT_Air,
        GUI_Custom_Widget.Mobility_icons_TT_Sea
      },
      {
        GUI_Custom_Widget.Mobility_icons_X_Infantry,
        GUI_Custom_Widget.Mobility_icons_X_Ground,
        GUI_Custom_Widget.Mobility_icons_X_Air,
        GUI_Custom_Widget.Mobility_icons_X_Sea
      }
    }
    return iconTable[SelectedFaction][type]
  end
  local panelOn = false
  function tableData.rollOn(type)
    panelOn = true
    ForcesType = type
    prevForcesType = type
    if currentIcons ~= 0 then
      StopWidget(currentIcons)
      currentIcons = 0
    end
    currentIcons = getMobilityIcons(ForcesType)
    if currentIcons ~= 0 then
      StartWidget(tableData, currentIcons, false)
    end
  end
  function tableData.rollOff()
    panelOn = false
    ForcesType = 0
    if currentIcons ~= 0 then
      StopWidget(currentIcons)
      currentIcons = 0
    end
  end
  local panelAlpha = 0
  local panelAlphaRate = 48
  function tableData.getPanelMapInfoAlpha()
    return panelAlpha
  end
  local function updatePanelAlpha()
    if panelOn then
      panelAlpha = panelAlpha + panelAlphaRate
    else
      panelAlpha = panelAlpha - panelAlphaRate
    end
    if panelAlpha > 255 then
      panelAlpha = 255
    elseif panelAlpha < 0 then
      panelAlpha = 0
    end
  end
  function tableData.getFactionIconPos()
    return 320, 190
  end
  function tableData.getBGScrollingMapColour()
    return FactionBGColours[SelectedFaction]
  end
  local bExiting = false
  function tableData.gotoUnits()
    if not bExiting then
      PushPageStack("Units")
    end
  end
  function tableData.gotoFactions()
    if not bExiting then
      bExiting = true
      initFadeOut()
      SetMusicVolume(0, MusicFadeOutSecs)
    end
  end
  local gotoFactions = function()
    FrontendDone = true
    PageDone = true
  end
  function tableData.getSeaButtonActive()
    if SelectedFaction == IronLegionID then
      return false
    end
    return true
  end
  function tableData.Open()
    bExiting = false
    if fadeDone ~= true then
      initFadeIn()
    end
    factionIcon = GetFactionIcon(SelectedFaction)
    StartWidget(tableData, factionIcon, false)
    ControllerErrorMessages(false)
    if ForcesType ~= 0 then
      tableData.rollOn(ForcesType)
    end
  end
  function tableData.Update()
    updateFadeColour(tableData)
    IconPosX = 0
    PollUnitsMusicLoop(SelectedFaction)
    updatePanelAlpha()
    if bExiting and bFadeOutDone() then
      gotoFactions()
    end
  end
  function tableData.Close()
    ForcesType = prevForcesType
    fadeDone = true
    StopWidget(factionIcon)
    if currentIcons ~= 0 then
      StopWidget(currentIcons)
      currentIcons = 0
    end
  end
  function GetMobilityPage()
    return tableData
  end
  DebugOut("Mobility ticked ***")
end

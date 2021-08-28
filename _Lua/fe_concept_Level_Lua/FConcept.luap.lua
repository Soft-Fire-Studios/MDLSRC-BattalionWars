function FConcept(owner)
  local tableData = {}
  tableData.revConCursor = GetMainCursor()
  tableData.cursorSelect = GetFingetCursor()
  local nandDialog
  local firstTime = true
  local bExiting = false
  local saveSeenFlags = false
  local factionNameTable = {
    NumGlobalStrings + 7,
    NumGlobalStrings + 2,
    NumGlobalStrings + 3,
    NumGlobalStrings + 5,
    NumGlobalStrings + 4,
    NumGlobalStrings + 6
  }
  function tableData.getFactionName()
    if SelectedFaction == 0 then
      return ""
    else
      return factionNameTable[SelectedFaction]
    end
  end
  function tableData.getFConceptTitle()
    return NumGlobalStrings + 1
  end
  function tableData.getUnitDossier()
    return NumGlobalStrings + 237
  end
  function tableData.getFactionUnlocked(faction)
    return IsUnlocked(faction, UnlockConcept)
  end
  function tableData.unlockedSEActive()
    return C1Unlocked(UnlockConcept)
  end
  function tableData.unlockedWFActive()
    return C2Unlocked(UnlockConcept)
  end
  function tableData.unlockedAIActive()
    return C3Unlocked(UnlockConcept)
  end
  function tableData.unlockedILActive()
    return C4Unlocked(UnlockConcept)
  end
  function tableData.unlockedTTActive()
    return C5Unlocked(UnlockConcept)
  end
  function tableData.unlockedXActive()
    return C6Unlocked(UnlockConcept)
  end
  local function setToExit()
    bExiting = true
    initFadeOut()
    SetMusicVolume(0, MusicFadeOutSecs)
  end
  local function saveCallback(status)
    SetGameSaveValid(SPSaveStatus, status)
    setToExit()
  end
  local function saveUnlockSeenFlags()
    nandDialog.Save(WriteSaveFile, saveCallback)
  end
  function tableData.gotoNextPage()
    if not bExiting and IsUnlocked(SelectedFaction, UnlockConcept) then
      if AddFactionUnlockConceptFlag(SelectedFaction) then
        saveSeenFlags = true
      end
      PushPageStack("Concepts")
    end
  end
  function tableData.gotoExtras()
    if not bExiting then
      if saveSeenFlags then
        saveSeenFlags = false
        saveUnlockSeenFlags()
      else
        setToExit()
      end
    end
  end
  local doneExit = function()
    FrontendDone = true
    PageDone = true
  end
  local panelAlpha = 0
  local panelAlphaRate = 64
  local panelOn = false
  function tableData.openRolloverInfo(factionID)
    panelOn = true
    SelectedFaction = factionID
  end
  function tableData.closeRolloverInfo()
    panelOn = false
  end
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
  function tableData.Open()
    nandDialog = GetNANDDialog()
    nandDialog.Open()
    if firstTime then
      firstTime = false
      initFadeIn()
    end
    DoUnlockFlags()
    panelAlpha = 0
    panelOn = false
    ControllerErrorMessages(false)
  end
  function tableData.Update()
    updateFadeColour(tableData)
    PollConceptMusicLoop()
    updatePanelAlpha()
    nandDialog.Update()
    if bExiting and bFadeOutDone() then
      doneExit()
    end
  end
  function tableData.Close()
    nandDialog.Close()
  end
  function GetFConceptPage()
    return tableData
  end
  DebugOut("FConcept ticked ***")
end

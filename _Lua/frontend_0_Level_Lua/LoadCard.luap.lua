function LoadCard(owner)
  local LoadCard = {}
  local dialogCount = 0
  LoadCard.selectedButton = 1
  LoadCard.clearColour = {
    0,
    0,
    0,
    127
  }
  local bExitFlag = false
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
  local statusCardMsg = {
    StringID.MemcardStatus,
    MessageStatusPos,
    {300, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local accessCardMsg = {
    StringID.AccessingCard,
    {
      200,
      11 + oY
    },
    {240, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local startGameMsg = {
    StringID.GameStarting,
    {
      200,
      62 + oY
    },
    {240, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local loadingMsg = {
    StringID.LoadingGame,
    {
      200,
      62 + oY
    },
    {240, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local panelBGTop = {
    "PNL_MISSION_01",
    DBoxPosTop,
    {408, 92},
    {0, 0},
    {408, 92},
    triggeredPanelColour
  }
  local panelBGMid = {
    "PNL_MISSION_01",
    DBoxPosMid,
    {408, 1},
    {0, 92},
    {408, 1},
    triggeredPanelColour
  }
  local panelBGBot = {
    "PNL_MISSION_01",
    DBoxPosBot,
    {408, 27},
    {0, 93},
    {408, 27},
    triggeredPanelColour
  }
  local AButton = {
    SpriteID.FE_GAMEPAD_A,
    GetAPos,
    1,
    0,
    triggeredPanelColour
  }
  local BButton = {
    SpriteID.FE_GAMEPAD_B,
    GetBPos,
    1,
    0,
    triggeredPanelColour
  }
  local XButton = {
    SpriteID.FE_GAMEPAD_X,
    GetXPos,
    1,
    0,
    triggeredPanelColour
  }
  local message1 = {
    Message1Str,
    Message1Pos,
    {340, 15},
    triggeredPanelColour,
    StatusFont,
    JUSTIFY.CENTRE
  }
  local message2 = {
    Message2Str,
    Message2Pos,
    {230, 15},
    triggeredPanelColour,
    StatusFont,
    JUSTIFY.LEFT
  }
  local message3 = {
    Message3Str,
    Message3Pos,
    {230, 15},
    triggeredPanelColour,
    StatusFont,
    JUSTIFY.LEFT
  }
  local message4 = {
    Message4Str,
    Message4Pos,
    {230, 15},
    triggeredPanelColour,
    StatusFont,
    JUSTIFY.LEFT
  }
  local InitGame = function()
    UseMemoryCard(true)
    NewSaveFile()
    MemcardQuitOp(PopPageStack)
    MemcardRetryOp(InitialCheck)
  end
  local function bChoose()
    if bFadeNotDone() or triggerPanel > 0 then
      return
    end
    if CardStatus > CARD.NONE and DialogDataTable[CardStatus][ButtonAOp] ~= None then
      DialogDataTable[CardStatus][ButtonAOp]()
      CardStatus = CARD.NONE
      triggerPanel = TriggerPanelStart
      dialogCount = DialogCountStart
      PlaySound(SoundID.UI_FE_Open)
    end
  end
  local function bCancel()
    if bFadeNotDone() or triggerPanel > 0 then
      return
    end
    if CardStatus > CARD.NONE and DialogDataTable[CardStatus][ButtonBOp] ~= None then
      DialogDataTable[CardStatus][ButtonBOp]()
      CardStatus = CARD.NONE
      triggerPanel = TriggerPanelStart
      dialogCount = DialogCountStart
      PlaySound(SoundID.UI_FE_Close)
    end
  end
  local function bX()
    if bFadeNotDone() or triggerPanel > 0 then
      return
    end
    if CardStatus > CARD.NONE and DialogDataTable[CardStatus][ButtonXOp] ~= None then
      DialogDataTable[CardStatus][ButtonXOp]()
      CardStatus = CARD.NONE
      triggerPanel = TriggerPanelStart
      dialogCount = DialogCountStart
      PlaySound(SoundID.UI_FE_Open)
    end
  end
  LoadCard.buttons = {
    {
      onPressA = bChoose,
      onPressB = bCancel,
      onPressX = bX
    }
  }
  local function pollMemorycard()
    if dialogCount > 0 or triggerPanel > 0 then
      return
    end
    local localCardStatus = GetCardError()
    if localCardStatus > CARD.NONE then
      if localCardStatus == CARD.CardOK then
        LoadFromCard()
      elseif localCardStatus == CARD.SaveOK then
        LoadFromCard()
      elseif localCardStatus == CARD.CRCRecoverable then
        SaveToCard(true)
      else
        CardStatus = localCardStatus
        if localCardStatus == CARD.NoSpace then
          CardStatus = NoSpaceIPL
        end
        triggerPanel = TriggerPanelStart
        dialogCount = DialogCountStart
        if localCardStatus == CARD.LoadOK then
          bExitFlag = true
        end
      end
    end
  end
  local function updateDialogCount()
    if dialogCount > 0 then
      dialogCount = dialogCount - 1
    end
  end
  local function checkExit()
    if dialogCount > 0 or triggerPanel > 0 then
      return
    end
    if bExitFlag then
      PopPageStack()
      return
    end
  end
  local function openPanel()
    OpenFlat(panelBGTop)
    OpenFlat(panelBGMid)
    OpenFlat(panelBGBot)
    OpenSprite(AButton)
    OpenSprite(BButton)
    OpenSprite(XButton)
  end
  local function renderPanelBG(offset)
    RenderFlat(panelBGTop, 100)
    for i = 1, offset do
      offMid = i - 1
      RenderFlat(panelBGMid, 100)
    end
    offBot = offset - 1
    RenderFlat(panelBGBot, 100)
  end
  local function renderPanel()
    if CardStatus == CARD.NONE or CardStatus == CARD.CardOK then
      offTop = 0
      offMid = 0
      offBot = 0
      RenderFlat(panelBGTop, 100)
      RenderFlat(panelBGMid, 100)
      RenderFlat(panelBGBot, 100)
      RenderTextBox(accessCardMsg, 0)
    else
      renderPanelBG(MemCardMessagePos[CardStatus][4])
      RenderTextBox(statusCardMsg, 0)
      RenderTextBox(message1, 0)
      if 0 < Message2Str() then
        RenderSprite(AButton, 0)
        RenderTextBox(message2, 0)
      end
      if 0 < Message3Str() then
        RenderSprite(BButton, 0)
        RenderTextBox(message3, 0)
      end
      if 0 < Message4Str() then
        RenderSprite(XButton, 0)
        RenderTextBox(message4, 0)
      end
      if CardStatus == CARD.SaveOK then
        RenderTextBox(loadingMsg, 0)
      elseif CardStatus == CARD.LoadOK then
        RenderTextBox(startGameMsg, 0)
      end
    end
  end
  local function closePanel()
    CloseFlat(panelBGTop)
    CloseFlat(panelBGMid)
    CloseFlat(panelBGBot)
    CloseSprite(AButton)
    CloseSprite(BButton)
    CloseSprite(XButton)
  end
  local function updateFades()
    updateFadeColour(LoadCard)
    if triggerPanel > 0 then
      triggerPanel = triggerPanel - TriggerPanelRate
    end
    if triggerPanel < 0 then
      triggerPanel = 0
    end
  end
  local function init()
    ResetPageStack("AnimLogo")
    triggerPanel = TriggerPanelStart
    dialogCount = DialogCountStart
    CardStatus = CARD.NONE
    bExitFlag = false
  end
  local close = function()
    AutoLoad(false)
    FirstTime = true
  end
  LoadCard.open = {
    init,
    InitGame,
    initFadeIn,
    openPanel
  }
  LoadCard.update = {
    updateFades,
    pollMemorycard,
    updateDialogCount,
    checkExit
  }
  LoadCard.render = {renderPanel}
  LoadCard.close = {closePanel, close}
  function GetLoadCardPage()
    return LoadCard
  end
  DebugOut("LoadCard ticked ***")
end

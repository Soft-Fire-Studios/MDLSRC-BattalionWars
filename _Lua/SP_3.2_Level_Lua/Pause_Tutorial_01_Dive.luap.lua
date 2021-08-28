function Pause_Tutorial_01_Dive(owner)
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    EnableControllerItem(constant.CONTROL_JUMP, 0, constant.PLAYER_ONE)
  end
  repeat
    EndFrame()
  until PauseTutorial01 == 1
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    repeat
      EndFrame()
    until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
    PauseTutorialShow()
    ClearMessageQueue(constant.PLAYER_ONE)
    PhoneMessage(8, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE, true)
    WaitForNoPause(1)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_FLICK, constant.HUD_ITEM_FLASH, 99999)
    WaitForPTText(2)
    repeat
      EndFrame()
    until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
    PauseTutorialExit()
    EnableControllerItem(constant.CONTROL_JUMP, 1, constant.PLAYER_ONE)
    PhoneMessage(16, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  end
end

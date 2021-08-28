function Pause_Tutorial_Forced(owner)
  local PauseTutorialWaitStart = 0
  local PauseTutorialHeavyWeaponStart = 0
  local PauseTutorialTransferStart = 0
  local PauseTutorialMapStart = 0
  local PauseTutorialMGNestStart = 0
  local PauseTutorialJumpStart = 0
  local PauseTutorialCameraStart = 0
  while true do
    if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
      if PauseTutorialWait == 1 and PauseTutorialWaitStart == 0 then
        PauseTutorialWaitStart = 1
        PauseTutorialShow()
        ClearMessageQueue()
        PhoneMessage(70, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, true)
        SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_FOLLOW, true, Ground_Vehicle.SEaatank1)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 99999)
        WaitFollowToggle = 1
        WaitForPTText(2)
        repeat
          EndFrame()
        until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
        WaitFollowToggle = 2
        PauseTutorialExit()
      end
      if PauseTutorialHeavyWeapon == 1 and PauseTutorialHeavyWeaponStart == 0 then
        PauseTutorialHeavyWeaponStart = 1
        PauseTutorialShow()
        ClearMessageQueue()
        PhoneMessage(71, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, true)
        SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_NONE, true, Troop.SEbazooka2)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_TRIGGER, constant.HUD_ITEM_FLASH, 99999)
        SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_TRIGGER, true)
        WaitForPTText(2)
        repeat
          EndFrame()
        until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
        PauseTutorialExit()
        SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_TRIGGER, false)
        SetActive(Ground_Vehicle.AIlighttank2, constant.ACTIVE)
      end
      if GuardTutorial == true and PauseTutorialCameraStart == 0 then
        PauseTutorialCameraStart = 1
        PauseTutorialShow()
        ClearMessageQueue()
        PhoneMessage(75, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, true)
        SetupPauseTutorialStack(false, constant.HUD_FUNC_INDICATOR_NONE, false)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_C, constant.HUD_ITEM_FLASH, 99999)
        WaitForPTText(2)
        repeat
          EndFrame()
        until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
        PauseTutorialExit()
        SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_C, false)
        EnableCamera = 1
      end
      if PauseTutorialTransfer == 1 and PauseTutorialTransferStart == 0 then
        PauseTutorialTransferStart = 1
        PauseTutorialShow()
        ClearMessageQueue()
        PhoneMessage(72, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, true)
        SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_TRANSFER, true, Ground_Vehicle.SEaatank1)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_DPAD, constant.HUD_ITEM_FLASH, 99999)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 99999)
        SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, true)
        WaitForPTText(2)
        repeat
          EndFrame()
        until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
        PauseTutorialExit()
        SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, false)
        PauseTutorialTransferEnd = 1
        SetActive(Air_Vehicle.AIbomber, 1)
      end
      if PauseTutorialJump == 1 and PauseTutorialJumpStart == 0 then
        PauseTutorialJumpStart = 1
        PauseTutorialShow()
        ClearMessageQueue()
        PhoneMessage(103, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, true)
        SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_NONE, true, Troop.SEgrunt1)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_FLICK, constant.HUD_ITEM_FLASH, 99999)
        WaitForPTText(2)
        repeat
          EndFrame()
        until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
        PauseTutorialExit()
      end
      EndFrame()
    end
  end
end

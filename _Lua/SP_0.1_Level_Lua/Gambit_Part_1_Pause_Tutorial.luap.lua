function Gambit_Part_1_Pause_Tutorial(owner)
  while true do
    if DialogShootDone == 1 and DialogFenceDone == 0 and PauseTutorial_LockOnDone == 0 then
      PauseTutorial_LockOnDone = 1
      DebugOut("IS MISSION ALREADY COMPLETED: ", GetCurrentMissionCompleted())
      DebugOut("REPLAY TUTORIAL IS SET TO: ", GetTutorialMode())
      if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
        PauseTutorialShow()
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessage(110, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, true)
        WaitForNoPause(1)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_FLASH, 99999)
        SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, true)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_TRIGGER, constant.HUD_ITEM_FLASH, 99999)
        WaitForPTText(2)
        repeat
          EndFrame()
        until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
        PauseTutorialExit()
        SetFunctionIndicatorState(false)
      end
    end
    if PauseTutorial_CombatRollStart == 1 and PauseTutorial_CombatRollDone == 0 then
      PauseTutorial_CombatRollDone = 1
    end
    if 1 <= PlayerEnteredDrain and StaffBearerUnderPlayerCommand == 0 and PauseTutorial_SquadWaitDone == 0 then
      DebugOut("IS MISSION ALREADY COMPLETED: ", GetCurrentMissionCompleted())
      DebugOut("REPLAY TUTORIAL IS SET TO: ", GetTutorialMode())
      PauseTutorial_SquadWaitDone = 1
      if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
        PauseTutorialShow()
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessage(115, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, true)
        WaitForNoPause(1)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_ON)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 99999)
        if not IsDead(Troop.Sgrunt02) then
          SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_FOLLOW, true, Troop.Sgrunt02)
        end
        WaitForPTText(2)
        repeat
          EndFrame()
        until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
        if not IsDead(Troop.Sgrunt02) then
          SetupPauseTutorialStack(false, constant.HUD_FUNC_INDICATOR_FOLLOW, true, Troop.Sgrunt02)
        end
        PauseTutorialExit()
      end
    end
    if PlayerAtHazard == 1 and DrainGateBlownUp == 0 and PauseTutorial_SquadAttackDone == 0 then
      DebugOut("IS MISSION ALREADY COMPLETED: ", GetCurrentMissionCompleted())
      DebugOut("REPLAY TUTORIAL IS SET TO: ", GetTutorialMode())
      PauseTutorial_SquadAttackDone = 1
      if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
        PauseTutorialShow()
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessage(120, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, true)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_ON)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_FLASH, 99999)
        SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, true)
        WaitForNoPause(1)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 99999)
        if not IsDead(Troop.Sgrunt02) then
          SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_ATTACK, true, Troop.Sgrunt02)
        end
        WaitForPTText(2)
        repeat
          EndFrame()
        until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_OFF)
        SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, false)
        if not IsDead(Troop.Sgrunt02) then
          SetupPauseTutorialStack(false, constant.HUD_FUNC_INDICATOR_ATTACK, true, Troop.Sgrunt02)
        end
        PauseTutorial_SquadAttackDone = 2
        PauseTutorialExit()
      end
    end
    if PauseTutorial_CombatRollRepeatStart == 1 and PauseTutorial_CombatRollRepeatDone == 0 then
      DebugOut("IS MISSION ALREADY COMPLETED: ", GetCurrentMissionCompleted())
      DebugOut("REPLAY TUTORIAL IS SET TO: ", GetTutorialMode())
      PauseTutorial_CombatRollRepeatDone = 1
      if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
        PauseTutorialOverheadShow()
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessage(128, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, true)
        WaitForNoPause(1)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_CONTROL_STICK_ABOVE, constant.HUD_ITEM_ON)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_CONTROL_STICK_ABOVE, constant.HUD_ITEM_FLASH, 99999)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_NUNCHUK_FLICK_ABOVE, constant.HUD_ITEM_FLASH, 99999)
        WaitForPTText(2)
        repeat
          EndFrame()
        until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
        PauseTutorialExit()
      end
    end
    EndFrame()
  end
end

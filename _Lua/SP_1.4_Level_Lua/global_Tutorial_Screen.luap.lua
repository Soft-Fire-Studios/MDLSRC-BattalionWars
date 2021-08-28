function global_Tutorial_Screen(owner)
  ShowOverheadInstead = 0
  PTTime = 0
  function PauseTutorialShow()
    SetFunctionIndicatorState(false)
    ActivateTutorialWarning(constant.PLAYER_ONE, ShowOverheadInstead)
    PlayEffect(Scripted_Effect.Tutorial, 1, GetPlayerUnit())
    EnableControllerItem(constant.CONTROL_TOGGLE_MAP, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_PAUSE, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_TRANSFER, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_HUD_TRANSFER, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_CALL, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_SEND, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_DISMISS, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_LOCAL_CALL, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_LOAD_VEHICLE, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_UNLOAD_VEHICLE, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_TOGGLE_MAP, 0, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_PAUSE, 0, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_TRANSFER, 0, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_HUD_TRANSFER, 0, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_CALL, 0, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_SEND, 0, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_DISMISS, 0, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_LOCAL_CALL, 0, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_LOAD_VEHICLE, 0, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_UNLOAD_VEHICLE, 0, constant.PLAYER_TWO)
    WaitFor(1.25)
    ToggleBlankPauseScreen(true)
    if ShowOverheadInstead == 0 then
      SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON)
    else
      ShowOverheadInstead = 0
    end
    SetFunctionIndicatorState(false)
    ClearMessageQueue(constant.PLAYER_ONE)
    ClearMessageQueue(constant.PLAYER_TWO)
    DebugOut("Pause Tutorial Screen is running...")
  end
  function PauseTutorialOverheadShow()
    ShowOverheadInstead = 1
    PauseTutorialShow()
  end
  function WaitForPTText(PTTime)
    if GetCurrentMissionCompleted() == false then
      WaitForNoPause(PTTime)
    else
      WaitForNoPause(0.2)
    end
    SetFunctionIndicatorState(true)
    SetFunctionIndicatorPosition(640, 400)
    SetFunctionIndicatorMode(constant.HUD_FUNC_INDICATOR_ON)
    SetFunctionIndicatorAction(constant.HUD_FUNC_INDICATOR_PAUSE_CONTINUE)
    PTTime = 0
  end
  function PauseTutorialExit()
    DebugOut("Pause Tutorial Screen is stopped...")
    ClearMessageQueue(constant.PLAYER_ONE)
    ClearMessageQueue(constant.PLAYER_TWO)
    WaitForNoPause(0.1)
    SetFunctionIndicatorState(true)
    SetFunctionIndicatorMode(constant.HUD_FUNC_INDICATOR_AUTO)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_DPAD, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_TRIGGER, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_RETURN, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_HOME, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_PAUSE, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_1, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_2, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_ANALOGUE, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_C, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_FLICK, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_TWIST, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_CONTROL_STICK_ABOVE, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_NUNCHUK_FLICK_ABOVE, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_NUNCHUK_ABOVE, constant.HUD_ITEM_OFF)
    SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, false)
    EnableControllerItem(constant.CONTROL_TOGGLE_MAP, 1, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_PAUSE, 1, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_TRANSFER, 1, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_HUD_TRANSFER, 1, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_CALL, 1, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_SEND, 1, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_DISMISS, 1, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_LOCAL_CALL, 1, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_LOAD_VEHICLE, 1, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_UNLOAD_VEHICLE, 1, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_TOGGLE_MAP, 1, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_PAUSE, 1, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_TRANSFER, 1, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_HUD_TRANSFER, 1, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_CALL, 1, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_SEND, 1, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_DISMISS, 1, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_LOCAL_CALL, 1, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_LOAD_VEHICLE, 1, constant.PLAYER_TWO)
    EnableControllerItem(constant.CONTROL_UNLOAD_VEHICLE, 1, constant.PLAYER_TWO)
    ToggleBlankPauseScreen(false)
  end
end

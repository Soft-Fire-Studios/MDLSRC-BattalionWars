function Pause_Tutorial_Wait_Follow_Toggle(owner)
  repeat
    EndFrame()
  until WaitFollowToggle == 1
  repeat
    WaitForNoPause(3.35)
    SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_WAIT, true, Ground_Vehicle.SEaatank1)
    WaitForNoPause(3.35)
    SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_FOLLOW, true, Ground_Vehicle.SEaatank1)
  until WaitFollowToggle == 2
end

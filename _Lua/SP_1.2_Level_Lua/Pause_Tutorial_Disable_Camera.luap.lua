function Pause_Tutorial_Disable_Camera(owner)
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    repeat
      EnableControllerItem(constant.CONTROL_GLOBAL_TOGGLE, 0, constant.PLAYER_ONE)
      EndFrame()
    until EnableCamera == 1
  end
end

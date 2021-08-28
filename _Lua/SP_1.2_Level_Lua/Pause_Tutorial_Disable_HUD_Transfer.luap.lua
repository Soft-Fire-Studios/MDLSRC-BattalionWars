function Pause_Tutorial_Disable_HUD_Transfer(owner)
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    repeat
      EnableControllerItem(constant.CONTROL_HUD_TRANSFER, 0, constant.PLAYER_ONE)
      EndFrame()
    until PauseTutorialTransferEnd == 1
  end
end

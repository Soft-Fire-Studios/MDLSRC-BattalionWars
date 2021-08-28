function Gambit_Part_1_Drained_Weapon(owner)
  local FusedDialogTimer = 0
  repeat
    EndFrame()
  until cutsceneMidGameTowerBegin >= 2
  WaitFor(1)
  while MissionOver == 0 do
    if ReadControllerState(constant.CONTROL_FIRE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) and FusedDialogTimer < GetTime() then
      PhoneMessage(43, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      FusedDialogTimer = GetTime() + 10
    end
    EndFrame()
  end
end

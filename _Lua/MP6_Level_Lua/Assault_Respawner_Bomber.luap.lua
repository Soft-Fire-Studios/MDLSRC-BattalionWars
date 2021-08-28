function Assault_Respawner_Bomber(owner)
  SetTickScriptWhenDead(owner, 1)
  while true do
    repeat
      EndFrame()
    until IsDead(owner)
    repeat
      EndFrame()
    until IsReadyToRevive(owner)
    WaitFor(Player2BomberTimer)
    ReviveFullUnitCarrier(Player2Army, flag.GTYPE_GRUNT, owner, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, CurrentPlayer2Direction, 15)
    WaitFor(0.1)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(owner, GetPlayerUnit(constant.PLAYER_TWO), -1, constant.ORDER_NORMAL)
    end
    EndFrame()
  end
end

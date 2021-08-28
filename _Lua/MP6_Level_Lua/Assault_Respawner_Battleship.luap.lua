function Assault_Respawner_Battleship(owner)
  SetTickScriptWhenDead(owner, 1)
  while true do
    repeat
      EndFrame()
    until IsDead(owner)
    repeat
      EndFrame()
    until IsReadyToRevive(owner)
    if gamestate ~= 2 then
      WaitFor(Player1BattleshipTimerStart)
    end
    if gamestate == 2 then
      WaitFor(Player1BattleshipTimerEnd)
    end
    ReviveFullUnitCarrier(Player1Army, flag.GTYPE_GRUNT, owner, CurrentPlayer1WaterSpawnX, CurrentPlayer1WaterSpawnZ, CurrentPlayer1Direction, 20)
    WaitFor(0.1)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(owner, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    end
    EndFrame()
  end
end

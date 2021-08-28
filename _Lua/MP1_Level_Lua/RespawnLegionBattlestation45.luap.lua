function RespawnLegionBattlestation45(owner)
  SetTickScriptWhenDead(owner)
  local counter01 = 0
  while missionend == 0 do
    if IsDead(owner) then
      counter01 = GetTime()
      repeat
        EndFrame()
      until GetTime() >= counter01 + 45
      ReviveFullUnitCarrier(flag.TYPE_UNDERWORLD, flag.GTYPE_GRUNT, owner, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, CurrentPlayer1Dir, 2)
      EndFrame()
      if GetSpawnMode() == eModeAction.Follow and WillReviveInGuard(owner) == false then
        FollowUnit(owner, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
      end
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.battlestationCO = 1
      end
    end
    EndFrame()
  end
end

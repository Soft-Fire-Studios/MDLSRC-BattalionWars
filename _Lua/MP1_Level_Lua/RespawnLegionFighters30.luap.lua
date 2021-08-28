function RespawnLegionFighters30(owner)
  SetTickScriptWhenDead(owner)
  local counter01 = 0
  while missionend == 0 do
    if IsDead(owner) then
      counter01 = GetTime()
      repeat
        EndFrame()
      until GetTime() >= counter01 + 30
      ReviveFullUnitCarrier(flag.TYPE_UNDERWORLD, flag.GTYPE_GRUNT, owner, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, CurrentPlayer1Dir, 10)
      EndFrame()
      if GetSpawnMode() == eModeAction.Follow and WillReviveInGuard(owner) == false then
        FollowUnit(owner, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
      end
    end
    EndFrame()
  end
end

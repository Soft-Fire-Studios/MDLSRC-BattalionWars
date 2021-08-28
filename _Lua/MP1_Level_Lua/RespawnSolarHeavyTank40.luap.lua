function RespawnSolarHeavyTank40(owner)
  SetTickScriptWhenDead(owner)
  local counter01 = 0
  while missionend == 0 do
    if IsDead(owner) then
      counter01 = GetTime()
      repeat
        EndFrame()
      until GetTime() >= counter01 + 40
      ReviveFullUnitCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, owner, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, CurrentPlayer2Dir, 15)
      EndFrame()
      if GetSpawnMode() == eModeAction.Follow and WillReviveInGuard(owner) == false then
        FollowUnit(owner, GetPlayerUnit(constant.PLAYER_TWO), -1, constant.ORDER_NORMAL)
      end
    end
    EndFrame()
  end
end

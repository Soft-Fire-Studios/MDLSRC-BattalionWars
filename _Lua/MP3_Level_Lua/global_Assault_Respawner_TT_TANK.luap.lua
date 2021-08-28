function global_Assault_Respawner_TT_TANK(owner)
  local TTlighttankrespawntimer = 15
  SetTickScriptWhenDead(owner, 1)
  while true do
    repeat
      EndFrame()
    until IsDead(owner)
    if TestFlags(owner, Player2Army, constant.TYPE) and TestFlags(owner, flag.GTYPE_LIGHT_TANK, constant.GTYPE) then
      WaitFor(TTlighttankrespawntimer)
      ReviveFullUnitCarrier(Player2Army, flag.GTYPE_GRUNT, owner, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, CurrentPlayer2Direction, 15)
      WaitFor(0.1)
      if GetSpawnMode() == eModeAction.Follow then
        DebugOut("Game set to Follow mode...")
        if WillReviveInGuard(owner) == false then
          DebugOut("Unit not in guard mode, following player...")
          FollowUnit(owner, GetPlayerUnit(constant.PLAYER_TWO), -1, constant.ORDER_NORMAL)
        else
          DebugOut("Unit in guard mode, returning to previous guard point..")
        end
      end
    end
    EndFrame()
  end
end

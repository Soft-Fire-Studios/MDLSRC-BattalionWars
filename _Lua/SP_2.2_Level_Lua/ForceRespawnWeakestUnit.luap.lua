function ForceRespawnWeakestUnit(owner)
  local revive01 = 0
  while missionend == 0 do
    if AllPlayerUnitsDead(constant.PLAYER_ONE) and airbase == 2 then
      SetInvulnerable(flag.TYPE_WFRONTIER, 1)
      repeat
        if revive01 == 0 and IsReadyToRevive(Air_Vehicle.WFGunship02) then
          ReviveFullUnitCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, Air_Vehicle.WFGunship02, 140, 3, 0, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Air_Vehicle.WFGunship03) then
          ReviveFullUnitCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, Air_Vehicle.WFGunship03, 140, 3, 0, 10)
          revive01 = 1
        end
        DebugOut("1. *ForceRespawnWeakestUnit* - Force Revived a WF Gunship")
        EndFrame()
      until AllPlayerUnitsDead(constant.PLAYER_ONE) == false
      SetInvulnerable(flag.TYPE_WFRONTIER, 0)
      revive01 = 0
    end
    EndFrame()
  end
end

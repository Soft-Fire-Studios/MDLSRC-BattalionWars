function UNIT_SPAWNER(owner)
  local SEartillerySpawned = false
  local SEgunshipSpawned = false
  local ILartillerySpawned = false
  local ILgunshipSpawned = false
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      if SEartillerySpawned == false and SEfactorystate == 2 then
        ReviveFullUnitCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Ground_Vehicle.SEhTank, GetObjectXPosition(Waypoint.SEfactorySpawn), GetObjectZPosition(Waypoint.SEfactorySpawn), 270, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Ground_Vehicle.SEhTank, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        end
        SEartillerySpawned = true
      elseif SEartillerySpawned == false and ILfactorystate == 2 then
        ReviveFullUnitCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Ground_Vehicle.SEhTank, GetObjectXPosition(Waypoint.ILfactorySpawn), GetObjectZPosition(Waypoint.ILfactorySpawn), 90, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Ground_Vehicle.SEhTank, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        end
        SEartillerySpawned = true
      end
      EndFrame()
      if SEgunshipSpawned == false and airbasestate == 2 then
        ReviveFullUnitCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SEGunship, GetObjectXPosition(Waypoint.airbaseSpawn), GetObjectZPosition(Waypoint.airbaseSpawn), 180, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Air_Vehicle.SEGunship, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        end
        SEgunshipSpawned = true
      end
      EndFrame()
    until SEartillerySpawned == true and SEgunshipSpawned == true
  end
  EndFrame()
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      if ILartillerySpawned == false and ILfactorystate == 1 then
        ReviveFullUnitCarrier(flag.TYPE_UNDERWORLD, flag.GTYPE_GRUNT, Ground_Vehicle.ILhTank, GetObjectXPosition(Waypoint.ILfactorySpawn), GetObjectZPosition(Waypoint.ILfactorySpawn), 90, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Ground_Vehicle.ILhTank, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        end
        ILartillerySpawned = true
      elseif ILartillerySpawned == false and SEfactorystate == 1 then
        ReviveFullUnitCarrier(flag.TYPE_UNDERWORLD, flag.GTYPE_GRUNT, Ground_Vehicle.ILhTank, GetObjectXPosition(Waypoint.SEfactorySpawn), GetObjectZPosition(Waypoint.SEfactorySpawn), 270, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Ground_Vehicle.ILhTank, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        end
        ILartillerySpawned = true
      end
      EndFrame()
      if ILgunshipSpawned == false and airbasestate == 1 then
        ReviveFullUnitCarrier(flag.TYPE_UNDERWORLD, flag.GTYPE_GRUNT, Air_Vehicle.ILGunship, GetObjectXPosition(Waypoint.airbaseSpawn), GetObjectZPosition(Waypoint.airbaseSpawn), 180, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Air_Vehicle.ILGunship, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        end
        ILgunshipSpawned = true
      end
      EndFrame()
    until ILartillerySpawned == true and ILgunshipSpawned == true
  end
  EndFrame()
end

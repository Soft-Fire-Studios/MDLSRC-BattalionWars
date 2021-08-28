function UNIT_SPAWNER(owner)
  local WFunitsSpawned = false
  local TunitsSpawned = false
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      if WFunitsSpawned == false and WFairbasestate == 1 then
        ReviveFullUnitCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, Air_Vehicle.WFGunship1, GetObjectXPosition(Waypoint.WFairbaseSpawn), GetObjectZPosition(Waypoint.WFairbaseSpawn), 315, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Air_Vehicle.WFGunship1, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        end
        WFunitsSpawned = true
      elseif WFunitsSpawned == false and Tairbasestate == 1 then
        ReviveFullUnitCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, Air_Vehicle.WFGunship1, GetObjectXPosition(Waypoint.TairbaseSpawn), GetObjectZPosition(Waypoint.TairbaseSpawn), 135, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Air_Vehicle.WFGunship1, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        end
        WFunitsSpawned = true
      end
      EndFrame()
    until WFunitsSpawned == true
  end
  EndFrame()
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      if TunitsSpawned == false and WFairbasestate == 2 then
        ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TGunship1, GetObjectXPosition(Waypoint.WFairbaseSpawn), GetObjectZPosition(Waypoint.WFairbaseSpawn), 315, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Air_Vehicle.TGunship1, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        end
        TunitsSpawned = true
      elseif TunitsSpawned == false and Tairbasestate == 2 then
        ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TGunship1, GetObjectXPosition(Waypoint.TairbaseSpawn), GetObjectZPosition(Waypoint.TairbaseSpawn), 135, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Air_Vehicle.TGunship1, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        end
        TunitsSpawned = true
      end
      EndFrame()
    until TunitsSpawned == true
  end
  EndFrame()
end

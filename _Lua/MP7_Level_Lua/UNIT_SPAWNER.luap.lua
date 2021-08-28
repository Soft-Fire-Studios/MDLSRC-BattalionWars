function UNIT_SPAWNER(owner)
  local XunitsSpawned = false
  local TunitsSpawned = false
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      if XunitsSpawned == false and Xfactorystate == 1 then
        ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Ground_Vehicle.Xantiairtank1, GetObjectXPosition(Waypoint.XfactorySpawn1), GetObjectZPosition(Waypoint.XfactorySpawn1), 90, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Ground_Vehicle.Xantiairtank1, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        end
        WaitFor(2)
        ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Ground_Vehicle.Xbattlestation, GetObjectXPosition(Waypoint.XfactorySpawn2), GetObjectZPosition(Waypoint.XfactorySpawn2), 90, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Ground_Vehicle.Xbattlestation, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        end
        XunitsSpawned = true
      elseif XunitsSpawned == false and Tfactorystate == 1 then
        ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Ground_Vehicle.Xantiairtank1, GetObjectXPosition(Waypoint.TfactorySpawn1), GetObjectZPosition(Waypoint.TfactorySpawn1), 270, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Ground_Vehicle.Xantiairtank1, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        end
        WaitFor(2)
        ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Ground_Vehicle.Xbattlestation, GetObjectXPosition(Waypoint.TfactorySpawn2), GetObjectZPosition(Waypoint.TfactorySpawn2), 270, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Ground_Vehicle.Xbattlestation, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        end
        XunitsSpawned = true
      end
      EndFrame()
    until XunitsSpawned == true
  end
  EndFrame()
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      if TunitsSpawned == false and Xfactorystate == 2 then
        ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Ground_Vehicle.Tantiair, GetObjectXPosition(Waypoint.XfactorySpawn1), GetObjectZPosition(Waypoint.XfactorySpawn1), 90, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Ground_Vehicle.Tantiair, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        end
        WaitFor(2)
        ReviveDeadUnit(Ground_Vehicle.Tbattlestation, GetObjectXPosition(Waypoint.XfactorySpawn2), GetObjectZPosition(Waypoint.XfactorySpawn2), 90, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Ground_Vehicle.Tbattlestation, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        end
        TunitsSpawned = true
      elseif TunitsSpawned == false and Tfactorystate == 2 then
        ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Ground_Vehicle.Tantiair, GetObjectXPosition(Waypoint.TfactorySpawn1), GetObjectZPosition(Waypoint.TfactorySpawn1), 270, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Ground_Vehicle.Tantiair, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        end
        WaitFor(2)
        ReviveDeadUnit(Ground_Vehicle.Tbattlestation, GetObjectXPosition(Waypoint.TfactorySpawn2), GetObjectZPosition(Waypoint.TfactorySpawn2), 270, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Ground_Vehicle.Tbattlestation, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        end
        TunitsSpawned = true
      end
      EndFrame()
    until TunitsSpawned == true
  end
  EndFrame()
end

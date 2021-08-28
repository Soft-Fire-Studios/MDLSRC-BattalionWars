function UNIT_SPAWNER(owner)
  local WFbomberSpawned = false
  local WFtankSpawned = false
  local AIbomberSpawned = false
  local AItankSpawned = false
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      if WFbomberSpawned == false and WFairbasestate == 1 then
        ReviveFullUnitCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, Air_Vehicle.WF_Bomber1, GetObjectXPosition(Waypoint.WFairbaseSpawn), GetObjectZPosition(Waypoint.WFairbaseSpawn), 270, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Air_Vehicle.WF_Bomber1, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        end
        WFbomberSpawned = true
      elseif WFbomberSpawned == false and AIairbasestate == 1 then
        ReviveFullUnitCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, Air_Vehicle.WF_Bomber1, GetObjectXPosition(Waypoint.AIairbaseSpawn), GetObjectZPosition(Waypoint.AIairbaseSpawn), 90, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Air_Vehicle.WF_Bomber1, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        end
        WFbomberSpawned = true
      end
      EndFrame()
      if WFtankSpawned == false and factorystate == 1 then
        ReviveFullUnitCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, Ground_Vehicle.WF_HTank1, GetObjectXPosition(Waypoint.factorySpawn), GetObjectZPosition(Waypoint.factorySpawn), 180, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Ground_Vehicle.WF_HTank1, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
        end
        WFtankSpawned = true
      end
      EndFrame()
    until WFbomberSpawned == true and WFtankSpawned == true
  end
  EndFrame()
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      if AIbomberSpawned == false and AIairbasestate == 2 then
        ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Bomber1, GetObjectXPosition(Waypoint.AIairbaseSpawn), GetObjectZPosition(Waypoint.AIairbaseSpawn), 90, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Air_Vehicle.AI_Bomber1, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        end
        AIbomberSpawned = true
      elseif AIbomberSpawned == false and WFairbasestate == 2 then
        ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Bomber1, GetObjectXPosition(Waypoint.WFairbaseSpawn), GetObjectZPosition(Waypoint.WFairbaseSpawn), 270, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Air_Vehicle.AI_Bomber1, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        end
        AIbomberSpawned = true
      end
      EndFrame()
      if AItankSpawned == false and factorystate == 2 then
        ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Ground_Vehicle.AI_HTank1, GetObjectXPosition(Waypoint.factorySpawn), GetObjectZPosition(Waypoint.factorySpawn), 180, 5)
        EndFrame()
        if GetSpawnMode() == eModeAction.Follow then
          FollowUnit(Ground_Vehicle.AI_HTank1, GetPlayerUnit(constant.PLAYER_TWO), -1, 0, constant.ORDER_NORMAL)
        end
        AItankSpawned = true
      end
      EndFrame()
    until AIbomberSpawned == true and AItankSpawned == true
  end
  EndFrame()
end

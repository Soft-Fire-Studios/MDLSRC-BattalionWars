function Anglo_Transport_Orders(owner)
  local timer = 0
  repeat
    EndFrame()
  until navalwaypoints == 1
  repeat
    EndFrame()
    timer = timer + 1
  until IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.AI_Sea_Transport_1, 50) or IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.AI_Sea_Transport_2, 50) or timer == 900 or GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE)) > GetObjectZPosition(Water_Vehicle.AI_Sea_Transport_1) and GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE)) > GetObjectZPosition(Water_Vehicle.AI_Sea_Transport_2)
  DebugOut("Transports moving to WP1")
  FollowWaypoint(Unit_Group.AI_ST, Waypoint.NT_WP_01, 0, 0, constant.FORMATION_ALLOWED)
  timer = 0
  repeat
    if IsInRange(Waypoint.NT_WP_02, Water_Vehicle.AI_Sea_Transport_1, 35) or IsInRange(Waypoint.NT_WP_02, Water_Vehicle.AI_Sea_Transport_2, 35) then
      timer = timer + 1
    end
    EndFrame()
  until (IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.AI_Sea_Transport_1, 50) or IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.AI_Sea_Transport_2, 50)) and (IsInRange(Waypoint.NT_WP_02, Water_Vehicle.AI_Sea_Transport_1, 20) or IsInRange(Waypoint.NT_WP_02, Water_Vehicle.AI_Sea_Transport_2, 20)) or timer == 900 or timer > 0 and GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) < GetObjectXPosition(Water_Vehicle.AI_Sea_Transport_1) and GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) < GetObjectXPosition(Water_Vehicle.AI_Sea_Transport_2)
  DebugOut("Transports moving to WP3")
  FollowWaypoint(Unit_Group.AI_ST, Waypoint.NT_WP_03, 0, 0, constant.FORMATION_ALLOWED)
  timer = 0
  repeat
    if IsInRange(Waypoint.NT_WP_03, Water_Vehicle.AI_Sea_Transport_1, 35) or IsInRange(Waypoint.NT_WP_03, Water_Vehicle.AI_Sea_Transport_2, 35) then
      timer = timer + 1
    end
    EndFrame()
  until (IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.AI_Sea_Transport_1, 50) or IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.AI_Sea_Transport_2, 50)) and (IsInRange(Waypoint.NT_WP_03, Water_Vehicle.AI_Sea_Transport_1, 20) or IsInRange(Waypoint.NT_WP_03, Water_Vehicle.AI_Sea_Transport_2, 20)) or timer == 900 or timer > 0 and GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) < GetObjectXPosition(Water_Vehicle.AI_Sea_Transport_1) and GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) < GetObjectXPosition(Water_Vehicle.AI_Sea_Transport_2)
  DebugOut("Transports moving to WP4")
  FollowWaypoint(Unit_Group.AI_ST, Waypoint.NT_WP_04, 0, 0, constant.FORMATION_ALLOWED)
  timer = 0
  repeat
    if IsInRange(Waypoint.NT_WP_04, Water_Vehicle.AI_Sea_Transport_1, 35) or IsInRange(Waypoint.NT_WP_04, Water_Vehicle.AI_Sea_Transport_2, 35) then
      timer = timer + 1
    end
    EndFrame()
  until (IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.AI_Sea_Transport_1, 50) or IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.AI_Sea_Transport_2, 50)) and (IsInRange(Waypoint.NT_WP_04, Water_Vehicle.AI_Sea_Transport_1, 20) or IsInRange(Waypoint.NT_WP_04, Water_Vehicle.AI_Sea_Transport_2, 20)) or timer == 900 or timer > 0 and GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) < GetObjectXPosition(Water_Vehicle.AI_Sea_Transport_1) and GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) < GetObjectXPosition(Water_Vehicle.AI_Sea_Transport_2)
  DebugOut("Transports moving to WP5")
  FollowWaypoint(Unit_Group.AI_ST, Waypoint.NT_WP_05, 0, 0, constant.FORMATION_ALLOWED)
  timer = 0
  repeat
    if IsInRange(Waypoint.NT_WP_05, Water_Vehicle.AI_Sea_Transport_1, 35) or IsInRange(Waypoint.NT_WP_05, Water_Vehicle.AI_Sea_Transport_2, 35) then
      timer = timer + 1
    end
    EndFrame()
  until (IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.AI_Sea_Transport_1, 50) or IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.AI_Sea_Transport_2, 50)) and (IsInRange(Waypoint.NT_WP_05, Water_Vehicle.AI_Sea_Transport_1, 20) or IsInRange(Waypoint.NT_WP_05, Water_Vehicle.AI_Sea_Transport_2, 20)) or timer == 900 or timer > 0 and GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) < GetObjectXPosition(Water_Vehicle.AI_Sea_Transport_1) and GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) < GetObjectXPosition(Water_Vehicle.AI_Sea_Transport_2)
  DebugOut("Transports moving to WP6")
  FollowWaypoint(Unit_Group.AI_ST, Waypoint.NT_WP_06, 0, 0, constant.FORMATION_ALLOWED)
  timer = 0
end

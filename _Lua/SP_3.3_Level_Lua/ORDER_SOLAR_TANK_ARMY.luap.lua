function ORDER_SOLAR_TANK_ARMY(owner)
  local TanksMoving = false
  repeat
    EndFrame()
  until SolarTankArmyOrdered == true
  repeat
    if SolarTankArmyOrdered == true then
      Spawn(Ground_Vehicle.SEltankA1)
      FollowWaypoint(Ground_Vehicle.SEltankA1, Waypoint.SEltanksA, 0, 0, constant.ORDER_FORCED, constant.FORMATION_DISALLOWED)
      WaitFor(5)
      Spawn(Ground_Vehicle.SEltankA2)
      FollowWaypoint(Ground_Vehicle.SEltankA2, Waypoint.SEltanksB, 0, 0, constant.ORDER_FORCED, constant.FORMATION_DISALLOWED)
      WaitFor(5)
      Spawn(Ground_Vehicle.SEltankA3)
      FollowWaypoint(Ground_Vehicle.SEltankA3, Waypoint.SEltanksC, 0, 0, constant.ORDER_FORCED, constant.FORMATION_DISALLOWED)
      WaitFor(5)
      Spawn(Ground_Vehicle.SEltankA4)
      FollowWaypoint(Ground_Vehicle.SEltankA4, Waypoint.SEltanksD, 0, 0, constant.ORDER_FORCED, constant.FORMATION_DISALLOWED)
      TanksMoving = true
    end
    EndFrame()
  until TanksMoving == true
end

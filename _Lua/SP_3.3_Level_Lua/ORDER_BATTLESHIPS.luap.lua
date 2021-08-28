function ORDER_BATTLESHIPS(owner)
  local BattleshipsMoving = false
  repeat
    EndFrame()
  until BattleshipOrder1 == true
  repeat
    if BattleshipOrder1 == true then
      FollowWaypoint(Water_Vehicle.TBattleship1, Waypoint.BattleshipWP1A, 0, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
      WaitFor(3)
      FollowWaypoint(Water_Vehicle.TBattleship2, Waypoint.BattleshipWP1B, 0, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
      WaitFor(10)
      FollowWaypoint(Water_Vehicle.TBattleship3, Waypoint.BattleshipWP2A, 0, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
      WaitFor(3)
      FollowWaypoint(Water_Vehicle.TBattleship4, Waypoint.BattleshipWP2B, 0, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
      BattleshipsMoving = true
    end
    EndFrame()
    WaitFor(0.1)
  until BattleshipsMoving == true
end

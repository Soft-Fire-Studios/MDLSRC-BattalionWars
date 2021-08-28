function owner_Bomber_Helipad(owner)
  repeat
    GoToArea(owner, GetObjectXPosition(Waypoint.HelipadBomber), GetObjectZPosition(Waypoint.HelipadBomber), 1, 0, constant.ORDER_FORCED)
    WaitFor(0.1)
    EndFrame()
  until IsDead(owner)
end

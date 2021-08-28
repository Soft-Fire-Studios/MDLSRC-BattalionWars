function owner_Bomber_WF(owner)
  repeat
    GoToArea(owner, GetObjectXPosition(Waypoint.WFBomber), GetObjectZPosition(Waypoint.WFBomber), 1, 0, constant.ORDER_FORCED)
    WaitFor(25)
    EndFrame()
  until IsDead(owner)
end

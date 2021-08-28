function Melee_SE_Artillery_Control(owner)
  repeat
    if IsInArea(Ground_Vehicle.SE_Assault_Artillery01, Map_Zone.SE_Assault_Artillery01) == false then
      GoToArea(Ground_Vehicle.SE_Assault_Artillery01, GetObjectXPosition(Waypoint.SE_Assault_Artillery01), GetObjectZPosition(Waypoint.SE_Assault_Artillery01), 5, 0, constant.ORDER_NORMAL)
    end
    EndFrame()
    if IsInArea(Ground_Vehicle.SE_Assault_Artillery02, Map_Zone.SE_Assault_Artillery02) == false then
      GoToArea(Ground_Vehicle.SE_Assault_Artillery02, GetObjectXPosition(Waypoint.SE_Assault_Artillery02), GetObjectZPosition(Waypoint.SE_Assault_Artillery02), 5, 0, constant.ORDER_NORMAL)
    end
    EndFrame()
  until ArtilleryAdvance == 1
  if IsDead(Ground_Vehicle.SE_Assault_Artillery01) == false then
    GoToArea(Ground_Vehicle.SE_Assault_Artillery01, GetObjectXPosition(Waypoint.SE_Assault_East), GetObjectZPosition(Waypoint.SE_Assault_East), 5, 0, constant.ORDER_FORCED)
  end
  if IsDead(Ground_Vehicle.SE_Assault_Artillery02) == false then
    GoToArea(Ground_Vehicle.SE_Assault_Artillery02, GetObjectXPosition(Waypoint.SE_Assault_West), GetObjectZPosition(Waypoint.SE_Assault_West), 5, 0, constant.ORDER_FORCED)
  end
end

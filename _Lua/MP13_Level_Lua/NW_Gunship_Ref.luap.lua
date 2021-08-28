function NW_Gunship_Ref(owner)
  while true do
    if GetHealthPercent(Building.X_NW_Tower_2) < 15 then
      DebugOut("players on west bridge, send in reinforcements")
      GoToArea(Unit_Group.X_NW, 390, 260, 25)
      break
    else
      EndFrame()
    end
    if NumItemsInArea(Map_Zone.NW_Bridge, flag.TYPE_WFRONTIER) > 0 or 0 < NumItemsInArea(Map_Zone.NW_Bridge, flag.TYPE_TUNDRAN) then
      DebugOut("players on west bridge, send in reinforcements")
      GoToArea(Unit_Group.X_NW, 335, 290, 25)
      break
    else
      EndFrame()
    end
    if 0 < NumItemsInArea(Map_Zone.SE_Entrance, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.SE_Entrance, flag.TYPE_TUNDRAN) then
      DebugOut("players on west bridge, send in reinforcements")
      GoToArea(Unit_Group.X_NW, 525, 275, 25)
      break
    else
      EndFrame()
    end
  end
end

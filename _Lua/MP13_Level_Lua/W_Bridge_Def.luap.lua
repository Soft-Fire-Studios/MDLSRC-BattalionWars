function W_Bridge_Def(owner)
  while true do
    if GetHealthPercent(Building.X_SW_Tower_1) < 15 then
      DebugOut("players on west bridge, send in reinforcements")
      GoToArea(Unit_Group.X_West_Infantry, 350, 40, 25)
      break
    elseif NumItemsInArea(Map_Zone.SW_Bridge, flag.TYPE_WFRONTIER) > 0 or 0 < NumItemsInArea(Map_Zone.SW_Bridge, flag.TYPE_TUNDRAN) then
      DebugOut("players on west bridge, send in reinforcements")
      GoToArea(Unit_Group.X_West_Infantry, 350, 40, 25)
      break
    else
      EndFrame()
    end
  end
end

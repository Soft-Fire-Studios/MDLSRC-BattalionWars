function North_Bazooka(owner)
  while true do
    if NumItemsInArea(Map_Zone.NW_Baz, flag.TYPE_WFRONTIER) > 0 or 0 < NumItemsInArea(Map_Zone.NW_Baz, flag.TYPE_TUNDRAN) then
      GoToArea(Unit_Group.North_Baz, 390, 445, 25)
      break
    else
      EndFrame()
    end
    if 0 < NumItemsInArea(Map_Zone.S_Baz, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.S_Baz, flag.TYPE_TUNDRAN) then
      GoToArea(Unit_Group.North_Baz, 535, 405, 25)
      break
    else
      EndFrame()
    end
  end
end

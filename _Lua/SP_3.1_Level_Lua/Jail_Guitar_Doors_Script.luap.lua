function Jail_Guitar_Doors_Script(owner)
  script11 = owner
  if NumItemsInArea(Map_Zone.POW_Camp_W, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_GVEHICLE), 1) > 0 or 0 < NumItemsInArea(Map_Zone.POW_Camp_W, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_INFANTRY), 1) then
    DebugOut("Player approaches Jail from the West")
    GoToArea(Unit_Group.Jail_Guitar_Doors, -95, 755, 30)
    return
  end
  EndFrame()
  if 0 < NumItemsInArea(Map_Zone.POW_Camp_S, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_GVEHICLE), 1) or 0 < NumItemsInArea(Map_Zone.POW_Camp_S, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_INFANTRY), 1) then
    DebugOut("Player approaches Jail from the South")
    GoToArea(Unit_Group.Jail_Guitar_Doors, 0, 660, 30)
    return
  end
  EndFrame()
  if 0 < NumItemsInArea(Map_Zone.POW_Camp_E, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_GVEHICLE), 1) or 0 < NumItemsInArea(Map_Zone.POW_Camp_E, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_INFANTRY), 1) then
    DebugOut("Player approaches Jail from the east")
    GoToArea(Unit_Group.Jail_Guitar_Doors, 90, 725, 10)
    return
  end
  EndFrame()
end

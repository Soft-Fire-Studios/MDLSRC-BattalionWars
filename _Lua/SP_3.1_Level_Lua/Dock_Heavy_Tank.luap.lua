function Dock_Heavy_Tank(owner)
  while true do
    if NumItemsInArea(Map_Zone.Dock_Tank, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_GVEHICLE), 1) > 0 or 0 < NumItemsInArea(Map_Zone.Dock_Tank, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_INFANTRY), 1) then
      break
    else
      EndFrame()
    end
  end
  Spawn(Ground_Vehicle.SE_Light_Tank_7)
  GoToArea(Ground_Vehicle.SE_Light_Tank_7, 670, 715, 2)
  WaitFor(2)
  GoToArea(Ground_Vehicle.SE_Light_Tank_7, 650, 715, 2)
end

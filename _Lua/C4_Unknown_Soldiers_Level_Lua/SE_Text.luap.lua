function SE_Text(owner)
  local loop = 0
  while loop == 0 do
    if 0 < NumItemsInArea(Map_Zone.SolarPilots, flag.TYPE_WFRONTIER) then
      PhoneMessage(23, 0, 0, 6, SpriteID.CO_WF_Austin_Happy)
      loop = 1
    end
    EndFrame()
  end
end

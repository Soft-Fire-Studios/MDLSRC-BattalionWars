function CraterApproach(owner)
  WaitFor(1)
  repeat
    WaitFor(1)
    EndFrame()
  until NumItemsInArea(Map_Zone.East, flag.TYPE_WFRONTIER) > 0 or 0 < NumItemsInArea(Map_Zone.West, flag.TYPE_WFRONTIER)
  PhoneMessage(7, 0, 0, 4, SpriteID.CO_WF_Austin_Happy)
end

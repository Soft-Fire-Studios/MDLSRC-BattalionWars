function Wall_Hack(owner)
  local loop = 0
  while loop == 0 do
    if CapturePoint2Captured == 0 and 0 < NumItemsInArea(Map_Zone.Wall_Hack, flag.TYPE_WFRONTIER) then
      DebugOut("Overide Teleport")
      Teleport(GetPlayerUnit(), -59, -59, 180)
      EndFrame()
    end
    if CapturePoint3Captured == 0 and 0 < NumItemsInArea(Map_Zone.Wall_Hack_2, flag.TYPE_WFRONTIER) then
      DebugOut("Overide Teleport 2")
      Teleport(GetPlayerUnit(), 68, 42, 180)
      EndFrame()
    end
    EndFrame()
  end
  EndFrame()
end

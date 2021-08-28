function ArtInitialisation(owner)
  repeat
    EndFrame()
  until CutsceneEnded == true
  local ViewDistanceSet = 0
  while true do
    WaitFor(0.2)
    if IsInArea(GetPlayerUnit(), Map_Zone.ViewZone1) then
      if ViewDistanceSet ~= 1 then
        ViewDistanceSet = 1
        DebugOut("Reducing to ViewDistance1: ", ViewDistance1, "over ", ViewDistance1Time, "frames")
        SetViewDistanceAdjustment(ViewDistance1, ViewDistance1Time)
      end
      WaitFor(0.2)
    elseif IsInArea(GetPlayerUnit(), Map_Zone.ViewZone2) then
      if ViewDistanceSet ~= 2 then
        ViewDistanceSet = 2
        DebugOut("Reducing to ViewDistance2: ", ViewDistance2, "over ", ViewDistance2Time, "frames")
        SetViewDistanceAdjustment(ViewDistance2, ViewDistance2Time)
      end
      WaitFor(0.2)
    elseif ViewDistanceSet ~= 0 then
      if ViewDistanceSet == 1 then
        SetViewDistanceAdjustment(-1, ViewDistance1Time)
      elseif ViewDistanceSet == 2 then
        SetViewDistanceAdjustment(-1, ViewDistance2Time)
      elseif ViewDistanceSet == 3 then
        SetViewDistanceAdjustment(-1, ViewDistance3Time)
      elseif ViewDistanceSet == 4 then
        SetViewDistanceAdjustment(-1, ViewDistance4Time)
      elseif ViewDistanceSet == 5 then
        SetViewDistanceAdjustment(-1, ViewDistance5Time)
      end
      DebugOut("Reset View Distance to default")
      ViewDistanceSet = 0
      SetWaterRenderEnable(true)
    end
    WaitFor(1)
    EndFrame()
  end
end

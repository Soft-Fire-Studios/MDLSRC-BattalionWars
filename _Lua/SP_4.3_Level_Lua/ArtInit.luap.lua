function ArtInit(owner)
  PlayEffect(Scripted_Effect.Drizzle, 3, 0, 0, 0)
  local WaterSet = 0
  Kill(Destroyable_Object.LIGHTFIRE01)
  Kill(Destroyable_Object.LIGHTFIRE02)
  Kill(Destroyable_Object.LIGHTFIRE03)
  Kill(Destroyable_Object.LIGHTFIRE04)
  Kill(Destroyable_Object.LIGHTFIRETOWER)
  local ViewDistanceSet = 0
  while true do
    WaitFor(0.2)
    if IsInArea(GetPlayerUnit(), Map_Zone.ViewZone1) then
      if ViewDistanceSet ~= 1 then
        ViewDistanceSet = 1
        DebugOut("Reducing to ViewDistance1: ", ViewDistance1, "over ", ViewDistance1Time, "frames")
        SetViewDistanceAdjustment(ViewDistance1, ViewDistance1Time)
        SetWaterRenderEnable(false)
      end
      WaitFor(0.2)
    elseif IsInArea(GetPlayerUnit(), Map_Zone.ViewZone2) then
      if ViewDistanceSet ~= 2 then
        ViewDistanceSet = 2
        DebugOut("Reducing to ViewDistance2: ", ViewDistance2, "over ", ViewDistance2Time, "frames")
        SetViewDistanceAdjustment(ViewDistance2, ViewDistance2Time)
      end
      WaitFor(0.2)
    elseif IsInArea(GetPlayerUnit(), Map_Zone.ViewZone3) then
      if ViewDistanceSet ~= 3 then
        ViewDistanceSet = 3
        DebugOut("Reducing to ViewDistance3: ", ViewDistance3, "over ", ViewDistance3Time, "frames")
        SetViewDistanceAdjustment(ViewDistance3, ViewDistance3Time)
      end
      WaitFor(0.2)
    elseif IsInArea(GetPlayerUnit(), Map_Zone.WaterOn) then
      if ViewDistanceSet ~= 4 then
        ViewDistanceSet = 4
        SetWaterRenderEnable(true)
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
      end
      DebugOut("Reset View Distance to default")
      ViewDistanceSet = 0
    end
    WaitFor(1)
    EndFrame()
  end
end

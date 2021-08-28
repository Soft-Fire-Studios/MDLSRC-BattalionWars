function ArtInitialisation(owner)
  Kill(Destroyable_Object.LightFire01)
  Kill(Destroyable_Object.LightFire04)
  Kill(Destroyable_Object.LightFire05)
  Kill(Destroyable_Object.LightFire07)
  Kill(Destroyable_Object.LightFire08)
  Kill(Destroyable_Object.LightFire09)
  Kill(Destroyable_Object.LightFire10)
  Kill(Destroyable_Object.LightFire11)
  Kill(Destroyable_Object.LightMines01)
  Kill(Destroyable_Object.LightMines02)
  Kill(Destroyable_Object.LightMines03)
  Kill(Destroyable_Object.LightNerocite01)
  Kill(Destroyable_Object.LightNerocite02)
  Kill(Destroyable_Object.LightNerocite03)
  Kill(Destroyable_Object.LightNerocite04)
  local ViewDistanceSet = 0
  repeat
    EndFrame()
  until cutscene01 >= 1
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.ViewZone1) then
      if ViewDistanceSet ~= 1 then
        ViewDistanceSet = 1
        DebugOut("Reducing to ViewDistance1: ", ViewDistance1, "over ", ViewDistance1Time, "frames")
        SetViewDistanceAdjustment(ViewDistance1, ViewDistance1Time)
        SetWaterRenderEnable(false)
      end
    elseif IsInArea(GetPlayerUnit(), Map_Zone.ViewZone2) then
      if ViewDistanceSet ~= 2 then
        ViewDistanceSet = 2
        DebugOut("Reducing to ViewDistance2: ", ViewDistance2, "over ", ViewDistance2Time, "frames")
        SetViewDistanceAdjustment(ViewDistance2, ViewDistance2Time)
        SetWaterRenderEnable(false)
      end
    elseif IsInArea(GetPlayerUnit(), Map_Zone.ViewZone3) then
      if ViewDistanceSet ~= 3 then
        ViewDistanceSet = 3
        DebugOut("Reducing to ViewDistance3: ", ViewDistance3, "over ", ViewDistance3Time, "frames")
        SetViewDistanceAdjustment(ViewDistance3, ViewDistance3Time)
        SetWaterRenderEnable(true)
      end
    elseif ViewDistanceSet ~= 0 then
      if ViewDistanceSet == 1 then
        SetViewDistanceAdjustment(-1, ViewDistance1Time)
      elseif ViewDistanceSet == 2 then
        SetViewDistanceAdjustment(-1, ViewDistance2Time)
      elseif ViewDistanceSet == 3 then
        SetViewDistanceAdjustment(-1, ViewDistance3Time)
      end
      DebugOut("Reset View Distance to default")
      PlayEffect(Scripted_Effect.Drizzle, 3, 0, 0, 0)
      ViewDistanceSet = 0
    end
    WaitFor(1)
    EndFrame()
  end
end

function ArtInitialisation(owner)
  Kill(Destroyable_Object.FXFireLight)
  Kill(Destroyable_Object.FXFireLight2)
  Kill(Destroyable_Object.FireRed01)
  PlayEffect(Scripted_Effect.LightningX, 3, 0, 0, 0)
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
    elseif IsInArea(GetPlayerUnit(), Map_Zone.ViewZone3) then
      if ViewDistanceSet ~= 3 then
        ViewDistanceSet = 3
        DebugOut("Reducing to ViewDistance3: ", ViewDistance3, "over ", ViewDistance3Time, "frames")
        SetViewDistanceAdjustment(ViewDistance3, ViewDistance3Time)
      end
      WaitFor(0.2)
    elseif IsInArea(GetPlayerUnit(), Map_Zone.ViewZone4) then
      if ViewDistanceSet ~= 4 then
        ViewDistanceSet = 4
        DebugOut("Reducing to ViewDistance4: ", ViewDistance4, "over ", ViewDistance4Time, "frames")
        SetViewDistanceAdjustment(ViewDistance4, ViewDistance4Time)
        SetWaterRenderEnable(false)
      end
      WaitFor(0.2)
    elseif IsInArea(GetPlayerUnit(), Map_Zone.ViewZone5) then
      if ViewDistanceSet ~= 5 then
        ViewDistanceSet = 5
        DebugOut("Reducing to ViewDistance5: ", ViewDistance5, "over ", ViewDistance5Time, "frames")
        SetViewDistanceAdjustment(ViewDistance5, ViewDistance5Time)
      end
      WaitFor(0.2)
    elseif IsInArea(GetPlayerUnit(), Map_Zone.ViewZone6) then
      if ViewDistanceSet ~= 6 then
        ViewDistanceSet = 6
        SetWaterRenderEnable(true)
        DebugOut("Water On")
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
      elseif ViewDistanceSet == 6 then
        SetViewDistanceAdjustment(-1, ViewDistance5Time)
      end
      DebugOut("Reset View Distance to default")
      ViewDistanceSet = 0
    end
    WaitFor(1)
    EndFrame()
  end
end

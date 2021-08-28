function ArtInitialisation(owner)
  PlayEffect(Scripted_Effect.Lightning, 3, 0, 0, 0)
  Kill(Destroyable_Object.Fire01)
  Kill(Destroyable_Object.Fire02)
  Kill(Destroyable_Object.Fire03)
  Kill(Destroyable_Object.Fire04)
  Kill(Destroyable_Object.Fire05)
  Kill(Destroyable_Object.Fire06)
  Kill(Destroyable_Object.Fire07)
  Kill(Destroyable_Object.Fire08)
  Kill(Destroyable_Object.Fire09)
  Kill(Destroyable_Object.Fire10)
  Kill(Destroyable_Object.Fire11)
  Kill(Destroyable_Object.Fire12)
  Kill(Destroyable_Object.Fire13)
  Kill(Destroyable_Object.Fire14)
  Kill(Destroyable_Object.Fire15)
  Kill(Destroyable_Object.Fire16)
  Kill(Destroyable_Object.Fire17)
  Kill(Destroyable_Object.Fire18)
  local ViewDistanceSet = 0
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.ViewZone1) then
      if ViewDistanceSet ~= 1 then
        ViewDistanceSet = 1
        DebugOut("Reducing to ViewDistance1: ", ViewDistance1, "over ", ViewDistance1Time, "frames")
        SetViewDistanceAdjustment(ViewDistance1, ViewDistance1Time)
      end
    elseif IsInArea(GetPlayerUnit(), Map_Zone.ViewZone2) then
      if ViewDistanceSet ~= 2 then
        ViewDistanceSet = 2
        DebugOut("Reducing to ViewDistance2: ", ViewDistance2, "over ", ViewDistance2Time, "frames")
        SetViewDistanceAdjustment(ViewDistance2, ViewDistance2Time)
      end
    elseif IsInArea(GetPlayerUnit(), Map_Zone.ViewZone3) then
      if ViewDistanceSet ~= 3 then
        ViewDistanceSet = 3
        DebugOut("Reducing to ViewDistance3: ", ViewDistance3, "over ", ViewDistance3Time, "frames")
        SetViewDistanceAdjustment(ViewDistance3, ViewDistance3Time)
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
      ViewDistanceSet = 0
    end
    WaitFor(1)
    EndFrame()
  end
end

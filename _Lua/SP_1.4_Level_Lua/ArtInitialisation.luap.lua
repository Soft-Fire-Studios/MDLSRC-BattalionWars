function ArtInitialisation(owner)
  Kill(Destroyable_Object.LightTorch01)
  Kill(Destroyable_Object.LightTorch02)
  Kill(Destroyable_Object.LightTorch03)
  Kill(Destroyable_Object.LightTorch04)
  Kill(Destroyable_Object.LightTorch05)
  Kill(Destroyable_Object.LightTorch06)
  Kill(Destroyable_Object.LightTorch07)
  Kill(Destroyable_Object.LightTorch08)
  Kill(Destroyable_Object.LightTorch09)
  Kill(Destroyable_Object.LightTorch10)
  Kill(Destroyable_Object.LightTorch11)
  Kill(Destroyable_Object.LightTorch12)
  Kill(Destroyable_Object.LightTorch13)
  Kill(Destroyable_Object.LightTorch14)
  Kill(Destroyable_Object.LightTorch15)
  Kill(Destroyable_Object.LightTorch16)
  Kill(Destroyable_Object.LightTorch17)
  Kill(Destroyable_Object.LightTorch18)
  Kill(Destroyable_Object.LightTorch19)
  Kill(Destroyable_Object.LightTorch20)
  Kill(Destroyable_Object.LightTorch21)
  Kill(Destroyable_Object.redlight01)
  local ViewDistanceSet = 0
  while true do
    WaitFor(0.2)
    if IsInArea(GetPlayerUnit(), Map_Zone.ViewZoneBase) then
      if ViewDistanceSet ~= 1 then
        ViewDistanceSet = 1
        DebugOut("Reducing to ViewDistance1: ", 450, "over ", 40, "frames")
        SetViewDistanceAdjustment(450, 40)
      end
      WaitFor(0.2)
    elseif IsInArea(GetPlayerUnit(), Map_Zone.ViewZoneValley) then
      if ViewDistanceSet ~= 2 then
        ViewDistanceSet = 2
        DebugOut("Reducing to ViewDistance2: ", 300, "over ", 40, "frames")
        SetViewDistanceAdjustment(300, 40)
      end
      WaitFor(0.2)
    elseif ViewDistanceSet ~= 0 then
      if ViewDistanceSet == 1 then
        SetViewDistanceAdjustment(-1, 40)
      elseif ViewDistanceSet == 2 then
        SetViewDistanceAdjustment(-1, 40)
      end
      DebugOut("Reset View Distance to default")
      ViewDistanceSet = 0
    end
    WaitFor(1)
    EndFrame()
  end
end

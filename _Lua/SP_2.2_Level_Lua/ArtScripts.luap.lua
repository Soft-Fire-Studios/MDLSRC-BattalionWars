function ArtScripts(owner)
  local ViewDistanceSet = 0
  repeat
    EndFrame()
  until IntroCutsceneFinished >= 1
  WaitFor(1)
  while missionend == 0 do
    while not (EndCutscene02 < 2) do
      EndFrame()
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.ViewZone1) then
      if ViewDistanceSet ~= 1 then
        ViewDistanceSet = 1
        DebugOut("Reducing to ViewDistance1: ", 350, "over ", 10, "frames")
        SetViewDistanceAdjustment(350, 30)
        SetWaterRenderEnable(false)
      end
    elseif IsInArea(GetPlayerUnit(), Map_Zone.ViewZone2) then
      if ViewDistanceSet ~= 2 then
        ViewDistanceSet = 2
        DebugOut("Reducing to ViewDistance2: ", 350, "over ", 10, "frames")
        SetViewDistanceAdjustment(550, 30)
        SetWaterRenderEnable(false)
      end
    elseif IsInArea(GetPlayerUnit(), Map_Zone.ViewZone3) then
      if ViewDistanceSet ~= 3 then
        ViewDistanceSet = 3
        DebugOut("Reducing to ViewDistance3: ", 350, "over ", 10, "frames")
        SetViewDistanceAdjustment(550, 30)
        SetWaterRenderEnable(false)
      end
    elseif IsInArea(GetPlayerUnit(), Map_Zone.ViewZone4) then
      if ViewDistanceSet ~= 4 then
        ViewDistanceSet = 4
        DebugOut("Reducing to ViewDistance3: ", 350, "over ", 10, "frames")
        SetViewDistanceAdjustment(450, 30)
        SetWaterRenderEnable(true)
      end
    elseif ViewDistanceSet ~= 0 then
      if ViewDistanceSet == 1 then
        SetViewDistanceAdjustment(-1, 30)
        SetWaterRenderEnable(true)
      elseif ViewDistanceSet == 2 then
        SetViewDistanceAdjustment(-1, 30)
        SetWaterRenderEnable(true)
      elseif ViewDistanceSet == 3 then
        SetViewDistanceAdjustment(-1, 30)
        SetWaterRenderEnable(true)
      elseif ViewDistanceSet == 4 then
        SetViewDistanceAdjustment(-1, 30)
        SetWaterRenderEnable(true)
      end
      DebugOut("Reset View Distance to default")
      ViewDistanceSet = 0
    end
    WaitFor(1)
    EndFrame()
  end
end

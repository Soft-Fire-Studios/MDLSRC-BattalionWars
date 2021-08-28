function Sea_Fort_Death_Check(owner)
  local sf1 = 0
  local sf2 = 0
  local sf3 = 0
  repeat
    if IsDead(Building.AI_Sea_Fort_2) and sf2 == 0 or netvariable.player1.docks == 2 then
      DebugOut("Sea Fort 2 taken down")
      Kill(Building.SF2_Tower_1)
      Kill(Building.SF2_Tower_2)
      Kill(Building.SF2_Tower_3)
      Despawn(Building.SF2_Tower_1)
      Despawn(Building.SF2_Tower_2)
      Despawn(Building.SF2_Tower_3)
      sf2 = 1
    end
    if IsDead(Building.AI_Sea_Fort_3) and sf3 == 0 or netvariable.player1.docks == 2 then
      DebugOut("Sea Fort 3 taken down")
      Kill(Building.SF3_Tower_1)
      Kill(Building.SF3_Tower_2)
      Kill(Building.SF3_Tower_3)
      Despawn(Building.SF3_Tower_1)
      Despawn(Building.SF3_Tower_2)
      Despawn(Building.SF3_Tower_3)
      sf3 = 1
    end
    EndFrame()
  until sf2 + sf3 == 2
  DebugOut("Sea Forts Destroyed")
end

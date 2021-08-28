function level_Respawner(owner)
  while not CapturingBase do
    EndFrame()
  end
  WaitFor(20)
  while true do
    if messages.HasBeenTriggered("WF_Victory") then
      break
    end
    local plane = 0
    local pilot = 0
    plane = FindDeadUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_FIGHTER)
    if plane == 0 then
      plane = FindDeadUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_BOMBER)
    end
    if plane > 0 then
      pilot = FindDeadUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT)
      if pilot > 0 then
        DebugOut("Spawning plane")
        if 0 < GetPlayerUnit() then
          if IsInArea(GetPlayerUnit(), Map_Zone.spawnright) then
            while not Teleport(plane, GetRandom(1615, 1675), GetRandom(245, 150), 1, 30) do
              WaitFor(1)
            end
            do break end
            while not Teleport(plane, GetRandom(-1615, -1550), GetRandom(-100, -200), 1, 30) do
              WaitFor(1)
            end
          end
          while not IsReadyToRevive do
            EndFrame()
          end
        end
        ReviveDeadUnit(plane)
        WaitFor(1)
        pilot = SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, plane)
        WaitFor(5)
        if GetRandom(3) > 2 then
          if 0 < GetPlayerUnit() then
            AttackTarget(plane, GetPlayerUnit())
          else
            GoToArea(plane, -225, 1025, 10)
          end
        else
          GoToArea(plane, -225, 1025, 10)
        end
      end
    end
    WaitFor(9)
  end
  DebugOut("Stopped spawning XV planes")
  local num_spawns = 0
  while true do
    local plane = 0
    local pilot = 0
    plane = FindDeadUnit(flag.TYPE_WFRONTIER, flag.GTYPE_FIGHTER)
    if plane > 0 then
      pilot = FindDeadUnit(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT)
      if pilot > 0 then
        DebugOut("Spawning WF plane")
        while not Teleport(plane, GetRandom(-1200, -1210), GetRandom(200, 210), 1, 30) do
          WaitFor(2)
        end
        ReviveDeadUnit(plane)
        WaitFor(1)
        pilot = SpawnUnitInCarrier(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, plane)
        WaitFor(1)
        while not Teleport(plane, GetRandom(-1200, -1210), GetRandom(200, 210), 1, 30) do
          WaitFor(2)
        end
        FollowUnit(plane, GetPlayerUnit(), -1, 0)
      end
      num_spawns = num_spawns + 1
    end
    if num_spawns > 2 then
      break
    end
    WaitFor(1)
  end
  DebugOut("Stopped spawning WF planes")
end

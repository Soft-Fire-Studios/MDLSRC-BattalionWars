function C1M1_TSpyScript03(owner)
  local despawnSpy0003 = 0
  local timerSpy0003 = 0
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.SpyRun0003) then
      break
    end
    if GetTargetedObject() == Troop.Tspy0003 then
      break
    end
    EndFrame()
  end
  DebugOut("Spawning Alpha Company")
  Spawn(Troop.WFgrunt0001)
  Spawn(Troop.WFgrunt0002)
  Spawn(Troop.WFgrunt0003)
  Spawn(Troop.WFgrunt0004)
  FollowWaypoint(Troop.Tspy0003, Waypoint.Entity0373, 0, 0, constant.ORDER_FORCED)
  timerSpy0003 = GetTime()
  while true do
    if despawnSpy0003 == 0 and GetTime() > timerSpy0003 + 10 then
      despawnSpy0003 = 1
      Teleport(Troop.Tspy0003, -510, -510, 0, 20)
      Despawn(Troop.Tspy0003)
      DebugOut("Timer on spy 3 has run out - despawning spy")
      break
    end
    if despawnSpy0003 == 0 and IsInArea(Troop.Tspy0003, Map_Zone.SpyTeleport0003) then
      despawnSpy0003 = 1
      Teleport(Troop.Tspy0003, -510, -510, 0, 20)
      Despawn(Troop.Tspy0003)
      break
    end
    FollowWaypoint(Troop.Tspy0003, Waypoint.Entity0376, 0, 0, constant.ORDER_FORCED)
    WaitFor(1)
    EndFrame()
  end
  EndFrame()
  return
end

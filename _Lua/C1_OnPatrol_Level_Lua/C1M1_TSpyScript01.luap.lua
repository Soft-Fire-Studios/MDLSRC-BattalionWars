function C1M1_TSpyScript01(owner)
  Despawn(Building.TlisteningPost0001)
  Despawn(Building.TlisteningPost0002)
  Despawn(Building.TlisteningPost0003)
  Despawn(Troop.Tspy0001)
  local despawnSpy0001 = 0
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.SpyRun0001) then
      Spawn(Troop.Tspy0001)
      break
    end
    if GetTargetedObject() == Troop.Tspy0001 then
      break
    end
    EndFrame()
  end
  FollowWaypoint(Troop.Tspy0001, Waypoint.Entity0357, 0, 0, constant.ORDER_FORCED)
  while true do
    if despawnSpy0001 == 0 and IsInArea(Troop.Tspy0001, Map_Zone.SpyTeleport0001) then
      despawnSpy0001 = 1
      Teleport(Troop.Tspy0001, -500, -500, 0, 20)
      Despawn(Troop.Tspy0001)
      Spawn(Building.TlisteningPost0001)
      Spawn(Building.TlisteningPost0002)
      Spawn(Building.TlisteningPost0003)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end

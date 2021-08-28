function C1M1_TSpyScript02(owner)
  Despawn(Building.TlisteningPost0010)
  Despawn(Building.TlisteningPost0011)
  local despawnSpy0002 = 0
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.SpyRun0002) then
      ClearMessageQueue()
      PhoneMessage(177, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      break
    end
    if GetTargetedObject() == Troop.Tspy0002 then
      ClearMessageQueue()
      PhoneMessage(177, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      break
    end
    EndFrame()
  end
  FollowWaypoint(Troop.Tspy0002, Waypoint.Entity0361, 0, 0, constant.ORDER_FORCED)
  while true do
    if despawnSpy0002 == 0 and IsInArea(Troop.Tspy0002, Map_Zone.SpyTeleport0002) then
      despawnSpy0002 = 1
      Teleport(Troop.Tspy0002, -505, -505, 0, 20)
      Despawn(Troop.Tspy0002)
      Spawn(Building.TlisteningPost0010)
      Spawn(Building.TlisteningPost0011)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end

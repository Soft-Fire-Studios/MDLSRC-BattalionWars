function CheckWesternFlag(owner)
  repeat
    WaitFor(0.5)
    if missionfailed == 1 then
      return
    end
    if GetActionState(Troop.XBazookaVet1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XBazookaVet2) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XBazookaVet3) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XBazookaVet4) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XBazookaVet5) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XBazookaVet6) == constant.ACTION_STATE_ATTACK then
      attackwest = 1
    end
    EndFrame()
    if GetActionState(Troop.XBazookaVet7) == constant.ACTION_STATE_ATTACK or GetActionState(Building.MGTower1) == constant.ACTION_STATE_ATTACK or GetActionState(Building.MGTower2) == constant.ACTION_STATE_ATTACK or GetActionState(Building.MGTower5) == constant.ACTION_STATE_ATTACK or GetActionState(Building.MGTower6) == constant.ACTION_STATE_ATTACK then
      attackwest = 1
    end
    EndFrame()
    if GetHealthPercent(Building.MGTower1) < 100 or GetHealthPercent(Building.MGTower2) < 100 or GetHealthPercent(Building.MGTower5) < 100 or GetHealthPercent(Building.MGTower6) < 100 then
      attackwest = 1
    end
    EndFrame()
  until attackwest == 1
  AttackTarget(Troop.XGrunt7, GetPlayerUnit())
  FollowWaypoint(Troop.XBazookaVet2, Waypoint.CrossWestBridge1, 0, 0)
  FollowWaypoint(Troop.XBazookaVet3, Waypoint.CrossWestBridge1, 0, 0)
  PhoneMessage(4, 0, 1, 6, SpriteID.CO_X_Vlad_Happy)
  PhoneMessage(18, 0, 1, 6, SpriteID.CO_X_Vlad_Happy)
  repeat
    EndFrame()
  until 0 < NumPassengersInUnit(Capture_Point.WesternPoint)
  if IsDead(Ground_Vehicle.XArtillery5) and IsDead(Ground_Vehicle.XArtillery6) then
    return
  end
  PhoneMessage(9, 0, 1, 6, SpriteID.CO_X_Vlad_Happy)
  FollowWaypoint(Ground_Vehicle.XArtillery5, Waypoint.Artillery5, 0, 0)
  FollowWaypoint(Ground_Vehicle.XArtillery6, Waypoint.Artillery6, 0, 0)
end

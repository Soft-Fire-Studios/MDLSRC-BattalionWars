function Boat_Orders(owner)
  BoatOrders = owner
  local TentsStringPlayed = 0
  local NavalTransport5Landed = 0
  local NavalTransport6Landed = 0
  local NavalTransport7Landed = 0
  local NavalTransport8Landed = 0
  repeat
    WaitFor(0.1)
    EndFrame()
  until NumPassengersInUnit(Water_Vehicle.AItransport1) < 1
  WaitFor(0.5)
  if IsDead(Ground_Vehicle.AItank1) == false then
    CutsceneBeachTankStart = 1
  end
  EndFrame()
  if IsDead(Building.NavalCannon1) == false then
    WaitFor(2)
    AttackTarget(Ground_Vehicle.AItank1, Building.NavalCannon1, constant.ORDER_FORCED)
  else
    WaitFor(2)
    AttackTarget(Ground_Vehicle.AItank1, Building.NavalCannon2, constant.ORDER_FORCED)
  end
  EndFrame()
  repeat
    WaitFor(0.1)
    EndFrame()
  until 1 > NumPassengersInUnit(Water_Vehicle.AItransport2)
  if IsDead(Water_Vehicle.AItransport2) == false then
    CutsceneBeachInfantryStart = 1
  end
  EndFrame()
  WaitFor(1)
  Teleport(Troop.AIboat2bazooka1, GetObjectXPosition(Troop.AIboat2bazooka1), GetObjectZPosition(Troop.AIboat2bazooka1), 180, 1)
  Teleport(Troop.AIboat2bazooka2, GetObjectXPosition(Troop.AIboat2bazooka2), GetObjectZPosition(Troop.AIboat2bazooka2), 180, 1)
  Teleport(Troop.AIboat2grunt1, GetObjectXPosition(Troop.AIboat2grunt1), GetObjectZPosition(Troop.AIboat2grunt1), 180, 1)
  Teleport(Troop.AIboat2grunt2, GetObjectXPosition(Troop.AIboat2grunt2), GetObjectZPosition(Troop.AIboat2grunt2), 180, 1)
  Teleport(Troop.AIboat2grunt3, GetObjectXPosition(Troop.AIboat2grunt3), GetObjectZPosition(Troop.AIboat2grunt3), 180, 1)
  WaitFor(1)
  if IsDead(Building.NavalCannon2) == false then
    AttackTarget(Troop.AIboat2bazooka1, Building.NavalCannon2, constant.ORDER_FORCED)
    AttackTarget(Troop.AIboat2bazooka2, Building.NavalCannon2, constant.ORDER_FORCED)
  else
    AttackTarget(Troop.AIboat2bazooka1, Building.NavalCannon1, constant.ORDER_FORCED)
    AttackTarget(Troop.AIboat2bazooka2, Building.NavalCannon1, constant.ORDER_FORCED)
  end
  EndFrame()
  SetUnitAI(Troop.AIboat2grunt1, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
  SetUnitAI(Troop.AIboat2grunt2, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
  SetUnitAI(Troop.AIboat2grunt3, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
  GoToArea(Troop.AIboat2grunt1, GetObjectXPosition(Waypoint.BeachGrunts), GetObjectZPosition(Waypoint.BeachGrunts), 10)
  GoToArea(Troop.AIboat2grunt2, GetObjectXPosition(Waypoint.BeachGrunts), GetObjectZPosition(Waypoint.BeachGrunts), 10)
  GoToArea(Troop.AIboat2grunt3, GetObjectXPosition(Waypoint.BeachGrunts), GetObjectZPosition(Waypoint.BeachGrunts), 10)
  repeat
    WaitFor(0.1)
    EndFrame()
  until 1 > NumPassengersInUnit(Water_Vehicle.AItransport3)
  if IsDead(Building.NavalCannon1) == false then
    AttackTarget(Ground_Vehicle.AItank2, Building.NavalCannon2, constant.ORDER_FORCED)
  else
    AttackTarget(Ground_Vehicle.AItank2, Building.NavalCannon1, constant.ORDER_FORCED)
  end
  EndFrame()
  if IsDead(Water_Vehicle.AItransport3) == false then
    PhoneMessage(62, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  end
  EndFrame()
  WaitFor(3)
  GoToArea(Water_Vehicle.AItransport3, GetObjectXPosition(Waypoint.AITransport3Despawn), GetObjectZPosition(Waypoint.AITransport3Despawn), 1, 0, constant.ORDER_FORCED)
  repeat
    WaitFor(0.1)
    EndFrame()
  until 1 > NumPassengersInUnit(Water_Vehicle.AItransport4)
  WaitFor(3)
  if IsDead(Water_Vehicle.AItransport4) == false then
    PhoneMessage(96, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  end
  EndFrame()
  if IsDead(Building.NavalCannon2) == false then
    AttackTarget(Troop.AIboat4bazooka1, Building.NavalCannon1, constant.ORDER_FORCED)
    AttackTarget(Troop.AIboat4bazooka2, Building.NavalCannon1, constant.ORDER_FORCED)
  else
    AttackTarget(Troop.AIboat4bazooka1, Building.NavalCannon2, constant.ORDER_FORCED)
    AttackTarget(Troop.AIboat4bazooka2, Building.NavalCannon2, constant.ORDER_FORCED)
  end
  EndFrame()
  SetUnitAI(Troop.AIboat4grunt1, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
  SetUnitAI(Troop.AIboat4grunt2, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
  SetUnitAI(Troop.AIboat4grunt3, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
  GoToArea(Troop.AIboat4grunt1, GetObjectXPosition(Waypoint.BeachGrunts), GetObjectZPosition(Waypoint.BeachGrunts), 10)
  GoToArea(Troop.AIboat4grunt2, GetObjectXPosition(Waypoint.BeachGrunts), GetObjectZPosition(Waypoint.BeachGrunts), 10)
  GoToArea(Troop.AIboat4grunt3, GetObjectXPosition(Waypoint.BeachGrunts), GetObjectZPosition(Waypoint.BeachGrunts), 10)
  WaitFor(3)
  GoToArea(Water_Vehicle.AItransport4, GetObjectXPosition(Waypoint.AITransport4Despawn), GetObjectZPosition(Waypoint.AITransport4Despawn), 1, 0, constant.ORDER_FORCED)
  WaitFor(5)
  Kill(Water_Vehicle.AItransport4)
  while true do
    if 1 > NumPassengersInUnit(Water_Vehicle.AItransport5) and NavalTransport5Landed == 0 then
      NavalTransport5Landed = 1
      WaitFor(3)
      if IsDead(Building.NavalCannon1) == false then
        AttackTarget(Troop.AIboat6bazooka1, Building.NavalCannon1, constant.ORDER_FORCED)
        AttackTarget(Troop.AIboat6bazooka2, Building.NavalCannon1, constant.ORDER_FORCED)
        DebugOut("Bazooka from transport 5 attacking")
      else
        AttackTarget(Troop.AIboat6bazooka1, Building.NavalCannon2, constant.ORDER_FORCED)
        AttackTarget(Troop.AIboat6bazooka2, Building.NavalCannon2, constant.ORDER_FORCED)
        DebugOut("Bazooka from transport 5 attacking")
      end
      EndFrame()
      SetUnitAI(Troop.AIboat6grunt1, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
      SetUnitAI(Troop.AIboat6grunt2, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
      SetUnitAI(Troop.AIboat6grunt3, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
      GoToArea(Troop.AIboat6grunt1, GetObjectXPosition(Waypoint.BeachGrunts), GetObjectZPosition(Waypoint.BeachGrunts), 10)
      GoToArea(Troop.AIboat6grunt2, GetObjectXPosition(Waypoint.BeachGrunts), GetObjectZPosition(Waypoint.BeachGrunts), 10)
      GoToArea(Troop.AIboat6grunt3, GetObjectXPosition(Waypoint.BeachGrunts), GetObjectZPosition(Waypoint.BeachGrunts), 10)
      WaitFor(3)
      GoToArea(Water_Vehicle.AItransport5, GetObjectXPosition(Waypoint.AITransport5Despawn), GetObjectZPosition(Waypoint.AITransport5Despawn), 1, 0, constant.ORDER_FORCED)
    end
    if 1 > NumPassengersInUnit(Water_Vehicle.AItransport6) and NavalTransport6Landed == 0 then
      NavalTransport6Landed = 1
      if IsDead(Building.NavalCannon1) == false then
        AttackTarget(Ground_Vehicle.AItank3, Building.NavalCannon1, constant.ORDER_FORCED)
      else
        AttackTarget(Ground_Vehicle.AItank3, Building.NavalCannon2, constant.ORDER_FORCED)
      end
      EndFrame()
      WaitFor(3)
      GoToArea(Water_Vehicle.AItransport6, GetObjectXPosition(Waypoint.AITransport6Despawn), GetObjectZPosition(Waypoint.AITransport6Despawn), 1, 0, constant.ORDER_FORCED)
    end
    if 1 > NumPassengersInUnit(Water_Vehicle.AItransport7) and NavalTransport7Landed == 0 then
      NavalTransport7Landed = 1
      WaitFor(3)
      if IsDead(Building.NavalCannon2) == false then
        AttackTarget(Troop.AIboat7bazooka1, Building.NavalCannon2, constant.ORDER_FORCED)
        AttackTarget(Troop.AIboat7bazooka2, Building.NavalCannon2, constant.ORDER_FORCED)
        DebugOut("Bazooka from transport 7 attacking")
      else
        AttackTarget(Troop.AIboat7bazooka1, Building.NavalCannon1, constant.ORDER_FORCED)
        AttackTarget(Troop.AIboat7bazooka2, Building.NavalCannon1, constant.ORDER_FORCED)
        DebugOut("Bazooka from transport 7 attacking")
      end
      EndFrame()
      SetUnitAI(Troop.AIboat7grunt1, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
      SetUnitAI(Troop.AIboat7grunt2, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
      SetUnitAI(Troop.AIboat7grunt3, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
      GoToArea(Troop.AIboat7grunt1, GetObjectXPosition(Waypoint.BeachGrunts), GetObjectZPosition(Waypoint.BeachGrunts), 10)
      GoToArea(Troop.AIboat7grunt2, GetObjectXPosition(Waypoint.BeachGrunts), GetObjectZPosition(Waypoint.BeachGrunts), 10)
      GoToArea(Troop.AIboat7grunt3, GetObjectXPosition(Waypoint.BeachGrunts), GetObjectZPosition(Waypoint.BeachGrunts), 10)
      WaitFor(3)
      GoToArea(Water_Vehicle.AItransport7, GetObjectXPosition(Waypoint.AITransport7Despawn), GetObjectZPosition(Waypoint.AITransport7Despawn), 1, 0, constant.ORDER_FORCED)
    end
    if 1 > NumPassengersInUnit(Water_Vehicle.AItransport8) and NavalTransport8Landed == 0 then
      NavalTransport8Landed = 1
      if IsDead(Building.NavalCannon2) == false then
        AttackTarget(Ground_Vehicle.AItank4, Building.NavalCannon2, constant.ORDER_FORCED)
      else
        AttackTarget(Ground_Vehicle.AItank4, Building.NavalCannon1, constant.ORDER_FORCED)
      end
      EndFrame()
      WaitFor(3)
      GoToArea(Water_Vehicle.AItransport8, GetObjectXPosition(Waypoint.AITransport8Despawn), GetObjectZPosition(Waypoint.AITransport8Despawn), 1, 0, constant.ORDER_FORCED)
    end
    if MidCutsceneDocksSetup == 1 then
      break
    end
    EndFrame()
  end
  repeat
    if IsInArea(GetPlayerUnit(), Map_Zone.SearchTentsString) and TentsStringPlayed == 0 then
      PhoneMessage(47, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
      TentsStringPlayed = 1
    end
    EndFrame()
  until TentsStringPlayed == 1
end

function Tundran_Counter(owner)
  local Encounter1 = 0
  local Encounter2 = 0
  local Encounter3 = 0
  local CampTrigger1 = 0
  local CampTrigger2 = 0
  local CampTrigger3 = 0
  local RiverCrossed = 0
  local PercentKilled = 0
  local Tent1 = 0
  local Tent2 = 0
  local Tent3 = 0
  local Tent4 = 0
  local Tent5 = 0
  local Tent6 = 0
  local Tent7 = 0
  CounterScript = owner
  WaitFor(1)
  DebugOut("Encounter1 Group Health  == ", GetGroupHealthPercent(Unit_Group.Encounter1_Dudes))
  DebugOut("Encounter2 Group Health  == ", GetGroupHealthPercent(Unit_Group.Encounter2_Dudes))
  DebugOut("Encounter3 Group Health  == ", GetGroupHealthPercent(Unit_Group.Encounter3_Dudes))
  repeat
    if (Encounter1 > 0 or Encounter2 > 0 or Encounter3 > 0) and FirstAttacked == 0 then
      PhoneMessage(20, 0, 2, 4, SpriteID.CO_T_Nova_Sad)
      PhoneMessage(21, 0, 0, 3, SpriteID.CO_WF_Betty_Happy)
      FirstAttacked = 1
    end
    if GetGroupHealthPercent(Unit_Group.Encounter1_Dudes) < 100 and Encounter1 == 0 then
      GoToArea(Troop.T_Bazooka1, -375, -50, 20)
      GoToArea(Troop.T_Bazooka3, -375, -50, 20)
      GoToArea(Troop.T_Bazooka4, -375, -50, 20)
      DebugOut("Encounter1 Group Health == ", GetGroupHealthPercent(Unit_Group.Encounter1_Dudes))
      Encounter1 = 1
    end
    if 0 < NumItemsInArea(-400, 38, 50, flag.TYPE_WFRONTIER) and CampTrigger1 == 0 then
      Kill(Destroyable_Object.Entity0143)
      Kill(Destroyable_Object.Entity0144)
      Kill(Destroyable_Object.Entity0203)
      Kill(Destroyable_Object.Entity0196)
      DebugOut("Encounter1 Group Health  == ", GetGroupHealthPercent(Unit_Group.Encounter1_Dudes))
      CampTrigger1 = 1
    end
    if IsDead(Destroyable_Object.Entity0144) and Tent1 == 0 then
      Spawn(Troop.T_Grunt5)
      Tent1 = 1
    end
    if IsDead(Destroyable_Object.Entity0143) and Tent2 == 0 then
      Spawn(Troop.T_Grunt7)
      Tent2 = 1
    end
    if IsDead(Destroyable_Object.Entity0203) and Tent3 == 0 then
      Spawn(Troop.T_Grunt9)
      Spawn(Troop.T_Grunt10)
      Tent3 = 1
    end
    if IsDead(Destroyable_Object.Entity0196) and Tent4 == 0 then
      Spawn(Troop.T_Grunt11)
      Spawn(Troop.T_Grunt12)
      Tent4 = 1
    end
    if GetGroupHealthPercent(Unit_Group.Encounter2_Dudes) < 100 and Encounter2 == 0 then
      FollowWaypoint(Troop.T_Bazooka5, Waypoint.Entity0100, 0, 0, constant.ORDER_FORCED)
      FollowWaypoint(Troop.T_Bazooka6, Waypoint.Entity0103, 0, 0, constant.ORDER_FORCED)
      FollowWaypoint(Troop.T_Bazooka7, Waypoint.Entity0103, 0, 0, constant.ORDER_FORCED)
      FollowWaypoint(Troop.T_Bazooka8, Waypoint.Entity0100, 0, 0, constant.ORDER_FORCED)
      DebugOut("Encounter2 Group Health  == ", GetGroupHealthPercent(Unit_Group.Encounter2_Dudes))
      Encounter2 = 1
    end
    if 0 < NumItemsInArea(-155, 47, 50, flag.TYPE_WFRONTIER) and CampTrigger2 == 0 then
      DebugOut("Encounter2 Group Health  == ", GetGroupHealthPercent(Unit_Group.Encounter2_Dudes))
      CampTrigger2 = 1
    end
    if GetGroupHealthPercent(Unit_Group.Encounter3_Dudes) < 100 and Encounter3 == 0 then
      FollowWaypoint(Troop.T_Bazooka9, Waypoint.Entity0106, 0, 0)
      FollowWaypoint(Troop.T_Bazooka11, Waypoint.Entity0106, 0, 0)
      FollowWaypoint(Troop.T_Bazooka12, Waypoint.Entity0111, 0, 0)
      DebugOut("Encounter3 Group Health  == ", GetGroupHealthPercent(Unit_Group.Encounter3_Dudes))
      Encounter3 = 1
    end
    if 0 < NumItemsInArea(-20, 100, 50, flag.TYPE_WFRONTIER) and CampTrigger3 == 0 then
      Kill(Destroyable_Object.Entity0247)
      Kill(Destroyable_Object.Entity0246)
      Kill(Destroyable_Object.Entity0204)
      DebugOut("Encounter3 Group Health  == ", GetGroupHealthPercent(Unit_Group.Encounter3_Dudes))
      CampTrigger3 = 1
    end
    if IsDead(Destroyable_Object.Entity0247) and Tent5 == 0 then
      Spawn(Troop.T_Flamer6)
      GoToArea(Troop.T_Flamer6, 5, 95, 30)
      Tent5 = 1
    end
    if IsDead(Destroyable_Object.Entity0246) and Tent6 == 0 then
      Spawn(Troop.T_Flamer5)
      Spawn(Troop.T_Flamer8)
      GoToArea(Troop.T_Flamer5, 5, 95, 30)
      GoToArea(Troop.T_Flamer8, 5, 95, 30)
      Tent6 = 1
    end
    if IsDead(Destroyable_Object.Entity0204) and Tent7 == 0 then
      Spawn(Troop.T_Flamer10)
      Tent7 = 1
    end
    PercentKilled = (GetGroupHealthPercent(Unit_Group.Encounter1_Dudes) + GetGroupHealthPercent(Unit_Group.Encounter2_Dudes) + GetGroupHealthPercent(Unit_Group.Encounter3_Dudes)) / 3
    if PercentKilled < 45 and TimeOn == 0 then
      DebugOut(PercentKilled)
      TimeOn = 1
    end
    if PercentKilled < 75 and Gunshit1 == 0 then
      DebugOut(PercentKilled)
      Gunshit1 = 1
      Spawn(Air_Vehicle.T_Gunship1)
      PhoneMessage(56, 0, 2, 4, SpriteID.CO_T_Nova_Happy)
      if (IsDead(Ground_Vehicle.WF_Artillery1) and IsDead(Ground_Vehicle.WF_Artillery2) and IsDead(Ground_Vehicle.WF_Artillery3)) == false then
        PhoneMessage(57, 0, 0, 4, SpriteID.CO_WF_Betty_Sad)
      end
    end
    if PercentKilled < 40 and Gunshit2 == 0 then
      DebugOut(PercentKilled)
      Spawn(Air_Vehicle.T_Gunship2)
      PhoneMessage(54, 0, 2, 4, SpriteID.CO_T_Nova_Happy)
      Gunshit2 = 1
    end
    if PercentKilled < 25 and Gunshit3 == 0 then
      DebugOut(PercentKilled)
      Spawn(Air_Vehicle.T_Gunship3)
      PhoneMessage(55, 0, 0, 4, SpriteID.CO_WF_Betty_Sad)
      Gunshit3 = 1
    end
    EndFrame()
  until LevelState == 3
end

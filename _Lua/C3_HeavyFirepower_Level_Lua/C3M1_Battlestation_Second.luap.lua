function C3M1_Battlestation_Second(owner)
  local BattlestationXCoord = 0
  local BattlestationZCoord = 0
  local BWait = 0
  local BWaitSet = 0
  while true do
    if BattlestationMessageDone == 0 and 0 < GetPlayerUnit() and (IsInArea(GetPlayerUnit(), Map_Zone.BattlestationWarning) or IsInRectangle(GetPlayerUnit(), -70, -350, 1000, 1000)) then
      BattlestationMessageDone = 1
      XBattlestationDetected = 1
      PhoneMessage(9, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Sad)
      PhoneMessage(44, constant.ID_NONE, 1, 4, SpriteID.CO_X_Ingrid_Happy)
      FollowUnit(Air_Vehicle.Xfighter0004, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.Xfighter0001, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
      SetObjectiveData(Objective_Marker.BeachCorridor, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.BattlestationObjective, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.BattlestationSecond, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.BeachCorridor, constant.OBJECTIVE_DATA_STATE, 1)
      Spawn(Troop.WFbazooka0003)
      Spawn(Troop.WFbazooka0004)
      SetActive(Troop.WFbazooka0003, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFbazooka0004, constant.INACTIVE, constant.ADJUST_WEAPON)
    end
    if XBattlestationDetected == 1 then
      XBattlestationDetected = 2
      DebugOut("Time Taken = ", GetTime())
      DebugOut("Battlestation - following path 2")
      FollowWaypoint(Ground_Vehicle.Xbattlestation0001, Waypoint.Entity0024, 5, 10, constant.ORDER_FORCED)
      XBattlestationPath = 2
      WaitFor(1)
      Spawn(Ground_Vehicle.WFantiAirVehicle0001)
      SetActive(Ground_Vehicle.WFantiAirVehicle0001, constant.INACTIVE, constant.ADJUST_WEAPON)
      WaitFor(1)
      Spawn(Ground_Vehicle.WFantiAirVehicle0002)
      SetActive(Ground_Vehicle.WFantiAirVehicle0002, constant.INACTIVE, constant.ADJUST_WEAPON)
      WaitFor(3)
      FollowWaypoint(Troop.Xmissile0001, Waypoint.Entity0030, 5, 10, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
      FollowWaypoint(Troop.Xmissile0002, Waypoint.Entity0030, 5, 10, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
      FollowUnit(Troop.Xhose0008, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
      FollowUnit(Troop.Xhose0009, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.Xfighter0004, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.Xfighter0001, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
      WaitFor(10)
      if ReinforcementsReceived == 0 then
        PhoneMessage(10, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
        PhoneMessage(37, constant.ID_NONE, 0, 10, SpriteID.CO_WF_Betty_Happy)
        SetObjectiveData(Objective.Reinforcements, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Reinforcements, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
    else
      EndFrame()
      while true do
        if IsInArea(Ground_Vehicle.Xbattlestation0001, -50, 390, 30) then
          DebugOut("Time Taken = ", GetTime(), "REPAIRING for 15 secs")
          WaitFor(15)
          DebugOut("Battlestation - following path 3")
          FollowWaypoint(Ground_Vehicle.Xbattlestation0001, Waypoint.Entity0035, 5, 10, constant.ORDER_FORCED)
          XBattlestationPath = 3
          WaitFor(5)
          FollowUnit(Troop.Xhose0001, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
          FollowUnit(Troop.Xhose0002, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
          FollowUnit(Troop.Xhose0008, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
          FollowUnit(Troop.Xhose0009, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
          FollowUnit(Troop.Xmissile0001, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
          FollowUnit(Troop.Xmissile0002, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
          FollowUnit(Air_Vehicle.Xfighter0004, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
          FollowUnit(Air_Vehicle.Xfighter0001, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
          WaitFor(5)
          FollowWaypoint(Ground_Vehicle.Xbattlestation0001, Waypoint.Entity0039, 5, 10, constant.ORDER_FORCED)
          break
        else
          FollowWaypoint(Ground_Vehicle.Xbattlestation0001, Waypoint.Entity0034, 5, 10, constant.ORDER_FORCED)
          WaitFor(2)
        end
        EndFrame()
      end
    end
  end
  while true do
    if IsInArea(Ground_Vehicle.Xbattlestation0001, 100, 405, 30) then
      BattlestationXCoord = GetObjectXPosition(Ground_Vehicle.Xbattlestation0001)
      BattlestationZCoord = GetObjectZPosition(Ground_Vehicle.Xbattlestation0001)
      if BWaitSet == 0 then
        BWaitSet = 1
        BWait = GetTime()
      end
      if 1 <= NumItemsInArea(BattlestationXCoord, BattlestationZCoord, 50, flag.TYPE_WFRONTIER) or GetTime() >= BWait + 60 then
        OkayToSendReinforcements = 1
        DebugOut("Battlestation - following path 4")
        FollowWaypoint(Ground_Vehicle.Xbattlestation0001, Waypoint.Entity0040, 5, 10, constant.ORDER_FORCED)
        XBattlestationPath = 4
        FollowUnit(Troop.Xhose0001, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
        FollowUnit(Troop.Xhose0002, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
        FollowUnit(Troop.Xhose0008, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
        FollowUnit(Troop.Xhose0009, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
        FollowUnit(Troop.Xmissile0001, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
        FollowUnit(Troop.Xmissile0002, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
        FollowUnit(Air_Vehicle.Xfighter0004, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Air_Vehicle.Xfighter0001, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Air_Vehicle.Xfighter0003, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Air_Vehicle.Xfighter0002, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
        WaitFor(10)
        FollowWaypoint(Ground_Vehicle.Xbattlestation0001, Waypoint.Entity0043, 5, 10)
        break
      else
        FollowWaypoint(Ground_Vehicle.Xbattlestation0001, Waypoint.Entity0039, 5, 10, constant.ORDER_FORCED)
        WaitFor(2)
      end
    end
    EndFrame()
  end
  while true do
    if IsInArea(Ground_Vehicle.Xbattlestation0001, 295, 323, 30) then
      DebugOut("Time Taken = ", GetTime(), "Waiting for 25 secs")
      WaitFor(25)
      DebugOut("Battlestation - following path 5")
      FollowWaypoint(Ground_Vehicle.Xbattlestation0001, Waypoint.Entity0044, 5, 10)
      XBattlestationPath = 5
      FollowUnit(Troop.Xhose0001, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.Xhose0002, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.Xhose0008, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.Xhose0009, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.Xmissile0001, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.Xmissile0002, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.Xfighter0004, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.Xfighter0001, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.Xfighter0003, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.Xfighter0002, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
      WaitFor(5)
      FollowWaypoint(Ground_Vehicle.Xbattlestation0001, Waypoint.Entity0048, 5, 10)
      break
    else
      FollowWaypoint(Ground_Vehicle.Xbattlestation0001, Waypoint.Entity0043, 5, 10)
      WaitFor(2)
    end
    EndFrame()
  end
  while true do
    if IsInArea(Ground_Vehicle.Xbattlestation0001, 408, 31, 30) then
      BattlestationXCoord = GetObjectXPosition(Ground_Vehicle.Xbattlestation0001)
      BattlestationZCoord = GetObjectZPosition(Ground_Vehicle.Xbattlestation0001)
      if 1 <= NumItemsInArea(BattlestationXCoord, BattlestationZCoord, 200, flag.TYPE_WFRONTIER) then
        DebugOut("Time Taken = ", GetTime(), "REPAIRING for 30 secs")
        DebugOut("Battlestation - following path 6 - end run!")
        WaitFor(30)
        FollowWaypoint(Ground_Vehicle.Xbattlestation0001, Waypoint.Entity0049, 5, 10)
        XBattlestationPath = 6
        WaitFor(5)
        FollowUnit(Troop.Xhose0001, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
        FollowUnit(Troop.Xhose0002, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
        FollowUnit(Troop.Xhose0008, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
        FollowUnit(Troop.Xhose0009, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
        FollowUnit(Troop.Xmissile0001, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
        FollowUnit(Troop.Xmissile0002, Ground_Vehicle.Xbattlestation0001, 5, 10, constant.ORDER_NORMAL)
        FollowUnit(Air_Vehicle.Xfighter0004, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Air_Vehicle.Xfighter0001, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Air_Vehicle.Xfighter0003, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Air_Vehicle.Xfighter0002, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
        WaitFor(30)
        FollowWaypoint(Ground_Vehicle.Xbattlestation0001, Waypoint.Entity0080, 5, 10)
      else
        else
          FollowWaypoint(Ground_Vehicle.Xbattlestation0001, Waypoint.Entity0048, 5, 10)
          WaitFor(2)
        end
        EndFrame()
        while true do
          if not IsDead(Ground_Vehicle.Xbattlestation0001) then
            FollowUnit(Air_Vehicle.Xfighter0004, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
            FollowUnit(Air_Vehicle.Xfighter0001, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
            FollowUnit(Air_Vehicle.Xfighter0003, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
            FollowUnit(Air_Vehicle.Xfighter0002, Ground_Vehicle.Xbattlestation0001, -1, 0, constant.ORDER_NORMAL)
            FollowWaypoint(Ground_Vehicle.Xbattlestation0001, Waypoint.Entity0080, 5, 10, constant.ORDER_NORMAL)
            WaitFor(45)
          end
          EndFrame()
        end
      end
  end
  return
end

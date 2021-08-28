function PitOfDeath(owner)
  repeat
    if missionfailed == 1 then
      return
    end
    if NumItemsInArea(-90, 463, 150, flag.TYPE_WFRONTIER) > 0 then
      playerinambush = 1
    end
    EndFrame()
  until playerinambush == 1
  ClearMessageQueue()
  PhoneMessage(50, 0, 1, 7, SpriteID.CO_X_Vlad_Happy)
  PhoneMessage(12, 0, 0, 6, SpriteID.CO_WF_Herman_Sad)
  PhoneMessage(51, 0, 0, 4, SpriteID.CO_WF_Herman_Sad)
  DebugOut("Pit of Doom tanks assembling")
  Spawn(Troop.XBazookaVet14)
  Spawn(Troop.XBazookaVet20)
  Spawn(Air_Vehicle.XBomber3)
  Spawn(Air_Vehicle.XBomber4)
  Spawn(Air_Vehicle.XBomber5)
  Spawn(Air_Vehicle.XBomber6)
  Spawn(Ground_Vehicle.XArtillery1)
  Spawn(Ground_Vehicle.XArtillery2)
  Spawn(Ground_Vehicle.XArtillery4)
  Spawn(Ground_Vehicle.XHeavyTank1)
  Spawn(Ground_Vehicle.XHeavyTank2)
  Spawn(Ground_Vehicle.XHeavyTank3)
  Spawn(Ground_Vehicle.XHeavyTank4)
  Spawn(Ground_Vehicle.XHeavyTank5)
  Spawn(Ground_Vehicle.XHeavyTank6)
  DebugOut("Bombers on route to Pit of Death")
  WaitFor(0.2)
  GoToArea(Air_Vehicle.XBomber1, -74, -463, 30, constant.ORDER_FORCED)
  FollowWaypoint(Ground_Vehicle.XHeavyTank2, Waypoint.AmbushLeft, 0, 0)
  FollowWaypoint(Ground_Vehicle.XHeavyTank1, Waypoint.AmbushLeft, 0, 0)
  FollowWaypoint(Ground_Vehicle.XHeavyTank3, Waypoint.AmbushLeft, 0, 0)
  FollowWaypoint(Ground_Vehicle.XHeavyTank4, Waypoint.AmbushRight, 0, 0)
  FollowWaypoint(Ground_Vehicle.XHeavyTank5, Waypoint.AmbushRight, 0, 0)
  FollowWaypoint(Ground_Vehicle.XHeavyTank6, Waypoint.AmbushRight, 0, 0)
  GoToArea(Air_Vehicle.XBomber3, -67, 465, 75, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.XBomber4, -67, 465, 75, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.XBomber5, -67, 465, 75, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.XBomber6, -67, 465, 75, constant.ORDER_FORCED)
  WaitFor(6)
  Spawn(Air_Vehicle.Stratofortress1)
  Spawn(Air_Vehicle.Stratofortress2)
  Spawn(Troop.WFStratoPilot1)
  Spawn(Troop.WFStratoPilot2)
  PhoneMessage(23, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
  WaitFor(3)
  GoToArea(Air_Vehicle.Stratofortress1, -160, 460, 75, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.Stratofortress2, 0, 460, 75, constant.ORDER_FORCED)
  local NumInPoD = 9
  local tmp, PoD_dudes
  local StarHolder = 0
  PoD_dudes = {
    next = PoD_dudes,
    id = Ground_Vehicle.XHeavyTank1
  }
  PoD_dudes = {
    next = PoD_dudes,
    id = Ground_Vehicle.XHeavyTank2
  }
  PoD_dudes = {
    next = PoD_dudes,
    id = Ground_Vehicle.XHeavyTank3
  }
  PoD_dudes = {
    next = PoD_dudes,
    id = Ground_Vehicle.XHeavyTank4
  }
  PoD_dudes = {
    next = PoD_dudes,
    id = Ground_Vehicle.XHeavyTank5
  }
  PoD_dudes = {
    next = PoD_dudes,
    id = Ground_Vehicle.XHeavyTank6
  }
  PoD_dudes = {
    next = PoD_dudes,
    id = Ground_Vehicle.XArtillery1
  }
  PoD_dudes = {
    next = PoD_dudes,
    id = Ground_Vehicle.XArtillery2
  }
  PoD_dudes = {
    next = PoD_dudes,
    id = Ground_Vehicle.XArtillery4
  }
  SetObjectiveData(Objective_Marker.PitOfDeath, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  local function NumDeadInPoD(target)
    local count = 0
    tmp = target
    while tmp do
      if IsDead(tmp.id) then
        count = count + 1
      end
      tmp = tmp.next
    end
    return count
  end
  local function GetNewStarHolder(target)
    tmp = target
    while tmp do
      if not IsDead(tmp.id) then
        return tmp.id
      end
      tmp = tmp.next
    end
  end
  repeat
    if missionfailed == 1 then
      break
    end
    if NumDeadInPoD(PoD_dudes) > 6 then
      if StarHolder > 0 then
        if IsDead(StarHolder) then
          StarHolder = GetNewStarHolder(PoD_dudes)
          SetObjectiveData(Objective_Marker.PoD01, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, StarHolder)
        end
      else
        StarHolder = GetNewStarHolder(PoD_dudes)
        SetObjectiveData(Objective_Marker.PoD01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.PoD01, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, StarHolder)
      end
    end
    EndFrame()
  until NumDeadInPoD(PoD_dudes) == NumInPoD
  if alldone == 0 then
    PhoneMessage(59, 0, 0, 6, SpriteID.CO_WF_Herman_Sad)
  end
  if alldone == 1 then
    PhoneMessage(13, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
  end
  ambushbeaten = 1
  repeat
    EndFrame()
  until alldone == 1
  playerinambush = victory
  DebugOut("All Pit of doom units destroyed")
  PhoneMessage(14, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.ExitPoint)
  SetObjectiveData(Objective.Exit, constant.OBJECTIVE_DATA_STATE, 1)
  DebugOut("Player arrived at level exit")
  ClearMessageQueue()
  PhoneMessage(15, 0, 0, 5, SpriteID.CO_WF_Herman_Happy)
  WaitFor(9)
  roadtox = 1
  StopScoringTimer()
end

function Objectives(owner)
  local numObjectives = 0
  local updateobjectives = 0
  local destroyableobjective1 = 0
  local destroyableobjective2 = 0
  local destroyableobjective3 = 0
  local warningtimerplayer1 = 0
  local warningtimerplayer2 = 0
  local destroyableobjective1name = Building.Objective1Battery1
  local destroyableobjective2name = Building.Objective1Battery2
  local destroyableobjective3name = Building.Objective1Battery3
  local objectivemarker1name = Objective_Marker.Objective1Battery1
  local objectivemarker2name = Objective_Marker.Objective1Battery2
  local objectivemarker3name = Objective_Marker.Objective1Battery3
  SetUnitInvulnerable(Destroyable_Object.DummyCapturePoint, true)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetObjectivesResult(true, true, true)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetObjectivesResult(false, false, false)
  end
  repeat
    EndFrame()
  until CutsceneHasEnded == 1
  repeat
    numObjectives = 0
    if IsNetworkPlayer(constant.PLAYER_ONE) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Objective1Warning) and GetTime() > warningtimerplayer1 + 10 then
      PhoneMessage(34, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
      warningtimerplayer1 = GetTime()
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.Objective1Warning) and GetTime() > warningtimerplayer2 + 10 then
      PhoneMessage(35, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_TWO)
      warningtimerplayer2 = GetTime()
    end
    if IsDead(destroyableobjective1name) then
      if destroyableobjective1 == 0 then
        SetObjectiveData(objectivemarker1name, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        PhoneMessage(12, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
        PhoneMessage(14, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_TWO)
        updateobjectives = 1
        destroyableobjective1 = 1
      end
      numObjectives = numObjectives + 1
    end
    if IsDead(destroyableobjective2name) then
      if destroyableobjective2 == 0 then
        SetObjectiveData(objectivemarker2name, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        PhoneMessage(11, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
        PhoneMessage(13, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_TWO)
        updateobjectives = 1
        destroyableobjective2 = 1
      end
      numObjectives = numObjectives + 1
    end
    if IsDead(destroyableobjective3name) then
      if destroyableobjective3 == 0 then
        SetObjectiveData(objectivemarker3name, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        PhoneMessage(11, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
        PhoneMessage(32, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_TWO)
        updateobjectives = 1
        destroyableobjective3 = 1
      end
      numObjectives = numObjectives + 1
    end
    if updateobjectives == 1 then
      if numObjectives == 1 then
        SetObjectiveData(Objective.Player1FirstObjective33, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Player1FirstObjective23, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Player2FirstObjective03, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Player2FirstObjective13, constant.OBJECTIVE_DATA_VISIBLE, 1)
        DebugOut("One Missile destroyed")
        updateobjectives = 0
      elseif numObjectives == 2 then
        SetObjectiveData(Objective.Player1FirstObjective23, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Player1FirstObjective13, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Player2FirstObjective13, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Player2FirstObjective23, constant.OBJECTIVE_DATA_VISIBLE, 1)
        DebugOut("Two Missiles destroyed")
        updateobjectives = 0
      elseif numObjectives == 3 then
        SetObjectiveData(Objective.Player1FirstObjective13, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Player2FirstObjective23, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Player2FirstObjective33, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Player2FirstObjective33, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Player1FirstObjectiveFAILED, constant.OBJECTIVE_DATA_VISIBLE, 1)
        updateobjectives = 2
      end
    end
    EndFrame()
  until updateobjectives == 2
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetObjectivesResult(false, true, true)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetObjectivesResult(true, false, false)
  end
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  SetObjectiveData(Objective_Marker.XSpawnZone1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.WFSpawnZone1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.XSpawnZone2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.WFSpawnZone2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.XSpawnZoneMarker1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.WFSpawnZoneMarker1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.XSpawnZoneMarker2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.WFSpawnZoneMarker2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  PhoneMessageWithObjective(15, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessageWithObjective(16, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
  SetObjectiveData(Objective_Marker.Objective3HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Player1ThirdObjective, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Player2ThirdObjective, constant.OBJECTIVE_DATA_VISIBLE, 1)
  CurrentPlayer1SpawnX = -90
  CurrentPlayer1SpawnZ = 1519
  CurrentPlayer2SpawnX = -95
  CurrentPlayer2SpawnZ = 980
  Player2UnitTimer = 10
  CurrentPlayer2Direction = 0
  SetUnitInvulnerable(Destroyable_Object.DummyCapturePoint, false)
  Kill(Destroyable_Object.DummyCapturePoint)
  Spawn(Capture_Point.HQ)
end

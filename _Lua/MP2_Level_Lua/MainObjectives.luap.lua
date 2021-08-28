function MainObjectives(owner)
  scriptObjectives = owner
  local bomber1dead = 0
  local bomber2dead = 0
  local bomber3dead = 0
  local bomber4dead = 0
  local bombersleft = 4
  local powerstation1dead = 0
  local powerstation2dead = 0
  local powerstation3dead = 0
  local powerstation4dead = 0
  local powerstationsleft = 4
  local warningtimerplayer1 = 0
  local warningtimerplayer2 = 0
  SetUnitInvulnerable(Building.Powerstation1, true)
  SetUnitInvulnerable(Building.Powerstation2, true)
  SetUnitInvulnerable(Building.Powerstation3, true)
  SetUnitInvulnerable(Building.Powerstation4, true)
  SetUnitInvulnerable(Destroyable_Object.DummyCapturePoint, true)
  SetActive(Building.Powerstation1, constant.INACTIVE)
  SetActive(Building.Powerstation2, constant.INACTIVE)
  SetActive(Building.Powerstation3, constant.INACTIVE)
  SetActive(Building.Powerstation4, constant.INACTIVE)
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Objective1Warning) and GetTime() > warningtimerplayer1 + 10 then
      PhoneMessage(65, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
      warningtimerplayer1 = GetTime()
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.Objective1Warning) and GetTime() > warningtimerplayer2 + 10 then
      PhoneMessage(66, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      warningtimerplayer2 = GetTime()
    end
    if bombersleft == 4 and bomber1dead + bomber2dead + bomber3dead + bomber4dead == 1 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(8, constant.ID_NONE, 1, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
      PhoneMessage(20, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      SetObjectiveData(Objective.XBomber04, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.XBomber14, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.TBomber44, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TBomber34, constant.OBJECTIVE_DATA_VISIBLE, 1)
      bombersleft = 3
    end
    if bombersleft == 3 and bomber1dead + bomber2dead + bomber3dead + bomber4dead == 2 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(3, constant.ID_NONE, 1, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
      PhoneMessage(21, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      SetObjectiveData(Objective.XBomber14, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.XBomber24, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.TBomber34, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TBomber24, constant.OBJECTIVE_DATA_VISIBLE, 1)
      bombersleft = 2
    end
    if bombersleft == 2 and bomber1dead + bomber2dead + bomber3dead + bomber4dead == 3 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(4, constant.ID_NONE, 1, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
      PhoneMessage(25, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      SetObjectiveData(Objective.XBomber24, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.XBomber34, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.TBomber24, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TBomber14, constant.OBJECTIVE_DATA_VISIBLE, 1)
      bombersleft = 1
    end
    if bombersleft == 1 and bomber1dead + bomber2dead + bomber3dead + bomber4dead == 4 then
      SetObjectiveData(Objective.XBomber34, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.XBomber44, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.XBomber44, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.TBomber14, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TBomber04, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.TBomber04, constant.OBJECTIVE_DATA_STATE, 1)
      bombersleft = 1
    end
    if bomber1dead == 0 and IsDead(Building.Bomber1) then
      bomber1dead = 1
      SetObjectiveData(Objective_Marker.Bomber1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if bomber2dead == 0 and IsDead(Building.Bomber2) then
      bomber2dead = 1
      SetObjectiveData(Objective_Marker.Bomber2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if bomber3dead == 0 and IsDead(Building.Bomber3) then
      bomber3dead = 1
      SetObjectiveData(Objective_Marker.Bomber3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if bomber4dead == 0 and IsDead(Building.Bomber4) then
      bomber4dead = 1
      SetObjectiveData(Objective_Marker.Bomber4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    EndFrame()
  until IsDead(Building.Bomber1) and IsDead(Building.Bomber2) and IsDead(Building.Bomber3) and IsDead(Building.Bomber4)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetObjectivesResult(true, false, false)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetObjectivesResult(false, true, true)
  end
  SetObjectiveData(Objective_Marker.TSpawnZone1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.XSpawnZone1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.TSpawnZone2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.XSpawnZone2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.TSpawnZoneMarker1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.XSpawnZoneMarker1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.TSpawnZoneMarker2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.XSpawnZoneMarker2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Bomber1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Bomber2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Bomber3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Bomber4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.XBomber34, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.XBomber44, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.XBomber44, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.TBomber14, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.TBomber04, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.TBomberFAIL, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.TBomberFAIL, constant.OBJECTIVE_DATA_STATE, 1)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  PhoneMessageWithObjective(10, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessageWithObjective(11, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
  SetObjectiveData(Objective_Marker.Powerstation1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Powerstation2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Powerstation3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Powerstation4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.TPowerStation44, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.XPowerStation04, constant.OBJECTIVE_DATA_VISIBLE, 1)
  gamestate = 1
  CurrentPlayer1SpawnX = -20
  CurrentPlayer1SpawnZ = -858
  CurrentPlayer2SpawnX = -14
  CurrentPlayer2SpawnZ = -552
  SetUnitInvulnerable(Building.Powerstation1, false)
  SetUnitInvulnerable(Building.Powerstation2, false)
  SetUnitInvulnerable(Building.Powerstation3, false)
  SetUnitInvulnerable(Building.Powerstation4, false)
  SetActive(Building.Powerstation1, constant.ACTIVE)
  SetActive(Building.Powerstation2, constant.ACTIVE)
  SetActive(Building.Powerstation3, constant.ACTIVE)
  SetActive(Building.Powerstation4, constant.ACTIVE)
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Objective2Warning) and GetTime() > warningtimerplayer1 + 10 then
      PhoneMessage(65, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
      warningtimerplayer1 = GetTime()
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.Objective2Warning) and GetTime() > warningtimerplayer2 + 10 then
      PhoneMessage(66, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      warningtimerplayer2 = GetTime()
    end
    if powerstationsleft == 4 and powerstation1dead + powerstation2dead + powerstation3dead + powerstation4dead == 1 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(42, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
      PhoneMessage(43, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      SetObjectiveData(Objective.XPowerStation04, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.XPowerStation14, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.TPowerStation44, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TPowerStation34, constant.OBJECTIVE_DATA_VISIBLE, 1)
      powerstationsleft = 3
    end
    if powerstationsleft == 3 and powerstation1dead + powerstation2dead + powerstation3dead + powerstation4dead == 2 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(44, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
      PhoneMessage(45, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      SetObjectiveData(Objective.XPowerStation14, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.XPowerStation24, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.TPowerStation34, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TPowerStation24, constant.OBJECTIVE_DATA_VISIBLE, 1)
      powerstationsleft = 2
    end
    if powerstationsleft == 2 and powerstation1dead + powerstation2dead + powerstation3dead + powerstation4dead == 3 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(46, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
      PhoneMessage(47, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      SetObjectiveData(Objective.XPowerStation24, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.XPowerStation34, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.TPowerStation24, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TPowerStation14, constant.OBJECTIVE_DATA_VISIBLE, 1)
      powerstationsleft = 1
    end
    if powerstationsleft == 1 and powerstation1dead + powerstation2dead + powerstation3dead + powerstation4dead == 4 then
      SetObjectiveData(Objective.XPowerStation34, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.XPowerStation44, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.XPowerStation44, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.TPowerStation14, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TPowerStation04, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.TPowerStation04, constant.OBJECTIVE_DATA_STATE, 1)
      powerstationsleft = 1
    end
    if powerstation1dead == 0 and IsDead(Building.Powerstation1) then
      powerstation1dead = 1
      SetObjectiveData(Objective_Marker.Powerstation1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if powerstation2dead == 0 and IsDead(Building.Powerstation2) then
      powerstation2dead = 1
      SetObjectiveData(Objective_Marker.Powerstation2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if powerstation3dead == 0 and IsDead(Building.Powerstation3) then
      powerstation3dead = 1
      SetObjectiveData(Objective_Marker.Powerstation3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if powerstation4dead == 0 and IsDead(Building.Powerstation4) then
      powerstation4dead = 1
      SetObjectiveData(Objective_Marker.Powerstation4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    EndFrame()
  until IsDead(Building.Powerstation1) and IsDead(Building.Powerstation2) and IsDead(Building.Powerstation3) and IsDead(Building.Powerstation4)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetObjectivesResult(true, true, false)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetObjectivesResult(false, false, true)
  end
  SetObjectiveData(Objective_Marker.TSpawnZone2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.XSpawnZone2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.TSpawnZone3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.XSpawnZone3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.TSpawnZoneMarker2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.XSpawnZoneMarker2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.TSpawnZoneMarker3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.XSpawnZoneMarker3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Powerstation1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Powerstation2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Powerstation3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Powerstation4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  PhoneMessageWithObjective(12, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessageWithObjective(13, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
  SetObjectiveData(Objective.XPowerStation34, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.XPowerStation44, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.XPowerStation44, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.TPowerStation14, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.TPowerStation04, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.TPowerStationFAIL, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.TPowerStationFAIL, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.THQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.WFHQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.TNHQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
  gamestate = 2
  CurrentPlayer1SpawnX = -14
  CurrentPlayer1SpawnZ = -552
  CurrentPlayer2SpawnX = 88
  CurrentPlayer2SpawnZ = -42
  Vanish(Destroyable_Object.DummyCapturePoint)
  Spawn(Capture_Point.THQ)
end

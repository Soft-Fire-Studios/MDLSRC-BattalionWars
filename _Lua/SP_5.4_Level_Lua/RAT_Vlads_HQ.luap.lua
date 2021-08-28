function RAT_Vlads_HQ(owner)
  local SpawnXFighters = 0
  local fighter1 = 0
  local fighter2 = 0
  local fighter3 = 0
  local fightercount = 0
  local fighter1count = 0
  local fighter2count = 0
  local fighter3count = 0
  SetUnitInvulnerable(Building.Vlad, true)
  SetUnitInvulnerable(Building.Gun01, true)
  SetUnitInvulnerable(Building.Gun02, true)
  SetUnitInvulnerable(Building.Gun03, true)
  SetUnitInvulnerable(Building.Gun04, true)
  SetUnitInvulnerable(Building.XAATower01, true)
  SetUnitInvulnerable(Building.XAATower02, true)
  SetUnitInvulnerable(Building.XAATower03, true)
  SetActive(Building.Gun01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.Gun02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.Gun03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.Gun04, constant.INACTIVE, constant.ADJUST_WEAPON)
  local VladShieldWarningDone = 0
  local FinalAttackDone = 0
  local EndTimerSet = 0
  local EndTimer = 0
  local FollowingWaypointT_Bomber = 0
  local FollowingWaypointAbomber01 = 0
  Despawn(Building.VladWreckage)
  Despawn(Ground_Vehicle.Entity260022366, true)
  Despawn(Ground_Vehicle.Entity260022370, true)
  while missionend == 0 do
    if fighter1 == 0 and IsDead(Building.XAATower01) then
      fighter1 = 1
      fightercount = fightercount + 1
      ClearMessageQueue()
      SetObjectiveData(Objective_Marker.X_Fighter_1_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if fighter2 == 0 and IsDead(Building.XAATower02) then
      fighter2 = 1
      fightercount = fightercount + 1
      ClearMessageQueue()
      SetObjectiveData(Objective_Marker.X_Fighter_2_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if fighter3 == 0 and IsDead(Building.XAATower03) then
      fighter3 = 1
      fightercount = fightercount + 1
      ClearMessageQueue()
      SetObjectiveData(Objective_Marker.X_Fighter_3_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if fightercount == 1 and fighter1count == 0 then
      fighter1count = 1
      SetObjectiveData(Objective.Fighters, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fighters1, constant.OBJECTIVE_DATA_VISIBLE, 1)
      PhoneMessage(58, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
    end
    if fightercount == 2 and fighter2count == 0 then
      fighter2count = 1
      SetObjectiveData(Objective.Fighters1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fighters2, constant.OBJECTIVE_DATA_VISIBLE, 1)
      PhoneMessage(59, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
    end
    if fightercount == 3 and fighter3count == 0 then
      fighter3count = 1
      SetObjectiveData(Objective.Fighters2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fighters3, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.FinalAttack) then
      if SpawnXFighters == 0 then
        SpawnXFighters = 1
      end
      EndFrame()
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.FinalAttack) then
      if FinalAttackDone == 0 then
        FinalAttackDone = 1
        Spawn(Ground_Vehicle.Entity260022366)
        Spawn(Ground_Vehicle.Entity260022370)
      end
      EndFrame()
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.VladShield) then
      if VladShieldWarningDone == 0 then
        VladShieldWarningDone = 1
        SetObjectiveData(Objective.MidWay, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.MidWay, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.MidWay, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Drill, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective_Marker.Drill, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetUnitInvulnerable(Building.XAATower01, false)
        SetUnitInvulnerable(Building.XAATower02, false)
        SetUnitInvulnerable(Building.XAATower03, false)
        SetObjectiveData(Objective.Fighters, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.X_Fighter_1_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.X_Fighter_2_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.X_Fighter_3_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        PhoneMessageWithObjective(56, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
        PhoneMessage(39, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
        PhoneMessageWithObjective(40, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
        Spawn(Air_Vehicle.X_Gunship_1)
        Spawn(Air_Vehicle.X_Gunship_3)
        Spawn(Air_Vehicle.X_Gunship_4)
        GoToArea(Air_Vehicle.X_Gunship_1, -180, 1115, 20)
        GoToArea(Air_Vehicle.X_Gunship_3, -225, 940, 20)
        GoToArea(Air_Vehicle.X_Gunship_4, -170, 935, 20)
      end
      EndFrame()
    end
    if IsDead(Building.XAATower01) and IsDead(Building.XAATower02) and IsDead(Building.XAATower03) then
      CutsceneMidFightersStart = 1
      break
    end
    EndFrame()
  end
  repeat
    EndFrame()
  until 2 <= CutsceneMidFightersStart
  fighters = 1
  SetObjectiveData(Objective.Fighters, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Fighters, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.X_Fighter_1_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.X_Fighter_2_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.X_Fighter_3_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Fighters2, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Fighters3, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Fighters3, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Fighters3, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Vlad, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Vlad_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  AngloBomberIsVulnerable = 1
  SetUnitInvulnerable(Building.Vlad, false)
  WaitFor(1)
  SetActive(Air_Vehicle.T_BomberCutscene, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Air_Vehicle.Abomber01Cutscene, constant.ACTIVE, constant.ADJUST_WEAPON)
  if GetPlayerUnit() ~= Ground_Vehicle.T_Battlestation and IsInArea(Ground_Vehicle.T_Battlestation, Map_Zone.FinalAttack) then
    AttackTarget(Ground_Vehicle.T_Battlestation, Building.Vlad, constant.ORDER_FORCED)
  end
  MiningSpiderInvulnerabilityDialogDone = 1
  while missionend == 0 do
    if IsInArea(Ground_Vehicle.T_Battlestation, Map_Zone.FinalAttack) and GetPlayerUnit() == Ground_Vehicle.T_Battlestation then
      if not IsDead(Air_Vehicle.T_Bomber) and FollowingWaypointT_Bomber == 0 then
        DebugOut("T_Bomber is attacking TUNDRAN BATTLESTATION")
        AttackTarget(Air_Vehicle.T_Bomber, Ground_Vehicle.T_Battlestation, constant.ORDER_NORMAL)
        FollowingWaypointT_Bomber = 1
      end
      if not IsDead(Air_Vehicle.Abomber01) and FollowingWaypointAbomber01 == 0 then
        DebugOut("Abomber01 is attacking TUNDRAN BATTLESTATION")
        AttackTarget(Air_Vehicle.Abomber01, Ground_Vehicle.T_Battlestation, constant.ORDER_NORMAL)
        FollowingWaypointAbomber01 = 1
      end
    else
      if not IsDead(Air_Vehicle.T_Bomber) and FollowingWaypointT_Bomber == 1 then
        FollowingWaypointT_Bomber = 0
        FollowWaypoint(Air_Vehicle.T_Bomber, Waypoint.Entity550039443, 5, 5, constant.ORDER_NORMAL)
      end
      if not IsDead(Air_Vehicle.Abomber01) and FollowingWaypointAbomber01 == 1 then
        FollowingWaypointAbomber01 = 0
        FollowWaypoint(Air_Vehicle.Abomber01, Waypoint.SpiderPatrol01, 5, 5, constant.ORDER_NORMAL)
      end
    end
    if GetPlayerUnit() ~= Ground_Vehicle.T_Battlestation and IsInArea(Ground_Vehicle.T_Battlestation, Map_Zone.FinalAttack) then
      AttackTarget(Ground_Vehicle.T_Battlestation, Building.Vlad, constant.ORDER_FORCED)
    end
    WaitFor(1)
    EndFrame()
  end
end

function RAT_WF_Radar_Station(owner)
  local WFTanksNoLongerInvulnerable = 0
  Despawn(Troop.Tpilot01)
  Despawn(Troop.Tpilot02)
  Despawn(Ground_Vehicle.Xbattlestation01)
  Despawn(Ground_Vehicle.Xbattlestation03, true)
  Despawn(Air_Vehicle.Xgunship01, true)
  Despawn(Air_Vehicle.Xgunship06, true)
  SetUnitInvulnerable(Building.WFRadarStation01, true)
  SetUnitInvulnerable(Building.WFRadarStation02, true)
  SetUnitInvulnerable(Building.WFRadarStation03, true)
  SetUnitInvulnerable(Ground_Vehicle.WFtank01, true)
  SetUnitInvulnerable(Ground_Vehicle.WFtank03, true)
  WaitFor(0.1)
  SetActive(Ground_Vehicle.WFtank01, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.WFtank03, constant.ACTIVE, constant.ADJUST_WEAPON)
  WaitFor(0.1)
  SetActive(Ground_Vehicle.WFtank01, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Ground_Vehicle.WFtank03, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.AdvancedUpMap) then
      break
    end
    EndFrame()
  end
  CutsceneMidRadarStationStart = 1
  Spawn(Ground_Vehicle.Xbattlestation03)
  Spawn(Air_Vehicle.Xgunship01)
  Spawn(Air_Vehicle.Xgunship06)
  wave = 5
  ClearMessageQueue()
  SetObjectiveData(Objective.Xylvanian_Base, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Xylvanian_Base_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.FrontierRadar) and CutsceneMidRadarStationStart >= 2 then
      break
    end
    EndFrame()
  end
  AttackTarget(Ground_Vehicle.WFtank01, Ground_Vehicle.Xbattlestation01, constant.ORDER_NORMAL)
  SetActive(Ground_Vehicle.Xbattlestation01, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetUnitInvulnerable(Building.WFRadarStation01, false)
  SetUnitInvulnerable(Building.WFRadarStation02, false)
  SetUnitInvulnerable(Building.WFRadarStation03, false)
  WaitFor(2)
  SetUnitInvulnerable(Ground_Vehicle.Xbattlestation01, false)
  AttackTarget(Ground_Vehicle.WFtank03, Ground_Vehicle.Xbattlestation01, constant.ORDER_NORMAL)
  DebugOut("X attack")
  GoToArea(Ground_Vehicle.Xbattlestation01, -425, 225, 5, 0, constant.ORDER_NORMAL)
  while true do
    if GetHealthPercent(Ground_Vehicle.Xbattlestation01) < 60 and WFTanksNoLongerInvulnerable == 0 then
      WFTanksNoLongerInvulnerable = 1
      SetUnitInvulnerable(Ground_Vehicle.WFtank01, false)
      SetUnitInvulnerable(Ground_Vehicle.WFtank03, false)
    end
    if IsDead(Ground_Vehicle.Xbattlestation01) then
      WFRadarCompleted = 1
      break
    end
    if IsDead(Building.WFRadarStation01) and IsDead(Building.WFRadarStation02) and IsDead(Building.WFRadarStation03) then
      WFRadarCompleted = 1
      break
    end
    EndFrame()
  end
  if not IsDead(Building.WFRadarStation01) or not IsDead(Building.WFRadarStation02) or not IsDead(Building.WFRadarStation03) then
    SetObjectiveData(Objective.Xylvanian_Base, constant.OBJECTIVE_DATA_STATE, 1)
    SetObjectiveData(Objective_Marker.Xylvanian_Base_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    if not IsDead(Air_Vehicle.Tgunship05) then
      Spawn(Troop.Tpilot02)
      EnterVehicle(Troop.Tpilot02, Air_Vehicle.Tgunship05, constant.ORDER_FORCED)
    end
    if not IsDead(Air_Vehicle.Tgunship06) then
      Spawn(Troop.Tpilot01)
      EnterVehicle(Troop.Tpilot01, Air_Vehicle.Tgunship06, constant.ORDER_FORCED)
    end
    WaitFor(1)
    if not IsDead(Air_Vehicle.Tgunship05) or not IsDead(Air_Vehicle.Tgunship06) then
      TundranGunships02Launched = 1
      PhoneMessageWithObjective(37, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
      WaitFor(1)
      GoToArea(Air_Vehicle.Tgunship05, -490, 230, 5, 0, constant.ORDER_NORMAL)
      WaitFor(1)
      SetActive(Air_Vehicle.Tgunship05, constant.ACTIVE, constant.ADJUST_WEAPON)
      FollowUnit(Air_Vehicle.Tgunship05, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      GoToArea(Air_Vehicle.Tgunship06, -515, 245, 5, 0, constant.ORDER_NORMAL)
      WaitFor(1)
      SetActive(Air_Vehicle.Tgunship06, constant.ACTIVE, constant.ADJUST_WEAPON)
      FollowUnit(Air_Vehicle.Tgunship06, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
    end
  else
    PhoneMessageWithObjective(34, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
    SetObjectiveData(Objective.Xylvanian_Base, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.Xylvanian_Base_Failed, constant.OBJECTIVE_DATA_VISIBLE, 1)
    SetObjectiveData(Objective.Xylvanian_Base_Failed, constant.OBJECTIVE_DATA_STATE, 1)
    SetObjectiveData(Objective_Marker.Xylvanian_Base_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    WaitFor(1)
    Kill(Air_Vehicle.Tgunship05)
    WaitFor(1)
    Kill(Air_Vehicle.Tgunship06)
  end
  if not IsDead(Ground_Vehicle.WFtank01) or not IsDead(Ground_Vehicle.WFtank03) then
    PhoneMessage(49, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
  end
  if not IsDead(Ground_Vehicle.WFtank01) then
    SetActive(Ground_Vehicle.WFtank01, constant.ACTIVE, constant.ADJUST_WEAPON)
    FollowUnit(Ground_Vehicle.WFtank01, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
  end
  if not IsDead(Ground_Vehicle.WFtank03) then
    SetActive(Ground_Vehicle.WFtank03, constant.ACTIVE, constant.ADJUST_WEAPON)
    FollowUnit(Ground_Vehicle.WFtank03, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
  end
end

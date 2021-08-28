function XV_Strat(owner)
  while not messages.HasFinishedPlaying("WF_NewStratInc") do
    EndFrame()
  end
  WaitFor(8)
  SetObjectiveData(Objective.AssaultBase, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.ClearSkies, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Cop01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Cop02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Cop03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Cop04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  group.Spawn(Unit_Group.XV_STRAT, true)
  group.ScatterInArea(Unit_Group.XV_STRAT, -290, 20, 70, 70)
  local chk_cop01 = true
  local chk_cop02 = true
  local chk_cop03 = true
  local chk_cop04 = true
  local wait = GetTime() + 10
  local timeout = GetTime() + 180
  while true do
    if timeout < GetTime() then
      break
    end
    if chk_cop01 and IsDead(Air_Vehicle.XV_FIG01) then
      chk_cop01 = false
      SetObjectiveData(Objective_Marker.Cop01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if chk_cop02 and IsDead(Air_Vehicle.XV_FIG02) then
      chk_cop02 = false
      SetObjectiveData(Objective_Marker.Cop02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if chk_cop03 and IsDead(Air_Vehicle.XV_FIG03) then
      chk_cop03 = false
      SetObjectiveData(Objective_Marker.Cop03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if chk_cop04 and IsDead(Air_Vehicle.XV_FIG04) then
      chk_cop04 = false
      SetObjectiveData(Objective_Marker.Cop04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Air_Vehicle.XV_FIG01) and IsDead(Air_Vehicle.XV_FIG02) and IsDead(Air_Vehicle.XV_FIG03) and IsDead(Air_Vehicle.XV_FIG04) then
      break
    end
    if wait < GetTime() then
      wait = GetTime() + 10
      if 0 < GetPlayerUnit() then
        AttackTarget(Air_Vehicle.XV_FIG01, GetPlayerUnit())
        AttackTarget(Air_Vehicle.XV_FIG02, GetPlayerUnit())
        AttackTarget(Air_Vehicle.XV_FIG03, GetPlayerUnit())
        AttackTarget(Air_Vehicle.XV_FIG04, GetPlayerUnit())
      end
    end
    EndFrame()
  end
  local ReviveStratEscort = function(unit)
    if IsDead(unit) then
      Teleport(unit, GetRandom(-970, -1000), GetRandom(630, 660), 20, 40)
      if IsReadyToRevive(unit) then
        ReviveDeadUnit(unit)
        WaitFor(1)
        while GetNumSeatsFree(unit) > 0 do
          SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, unit)
          WaitFor(1)
        end
      end
    end
  end
  WaitFor(5)
  DebugOut("Launched Strat")
  chk_cop01 = true
  chk_cop02 = true
  chk_cop03 = true
  chk_cop04 = true
  ReviveStratEscort(Air_Vehicle.XV_FIG01)
  ReviveStratEscort(Air_Vehicle.XV_FIG02)
  ReviveStratEscort(Air_Vehicle.XV_FIG03)
  ReviveStratEscort(Air_Vehicle.XV_FIG04)
  SetObjectiveData(Objective_Marker.Cop01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Cop02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Cop03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Cop04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  FollowUnit(Air_Vehicle.XV_FIG01, Air_Vehicle.XV_STRAT01, -1, 0)
  FollowUnit(Air_Vehicle.XV_FIG02, Air_Vehicle.XV_STRAT01, -1, 0)
  FollowUnit(Air_Vehicle.XV_FIG03, Air_Vehicle.XV_STRAT01, -1, 0)
  FollowUnit(Air_Vehicle.XV_FIG04, Air_Vehicle.XV_STRAT01, -1, 0)
  Spawn(Air_Vehicle.XV_STRAT01)
  GoToArea(Air_Vehicle.XV_STRAT01, -270, -50, 10)
  SetObjectiveData(Objective.Strat, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective.Strat, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Strat, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  StratLaunched = true
  local sdead = true
  wait = GetTime() + 10
  while true do
    if sdead and IsDead(Air_Vehicle.XV_STRAT01) then
      sdead = false
      SetObjectiveData(Objective.Strat, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.Strat, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if chk_cop01 and IsDead(Air_Vehicle.XV_FIG01) then
      SetObjectiveData(Objective_Marker.Cop01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if chk_cop02 and IsDead(Air_Vehicle.XV_FIG02) then
      SetObjectiveData(Objective_Marker.Cop02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if chk_cop03 and IsDead(Air_Vehicle.XV_FIG03) then
      SetObjectiveData(Objective_Marker.Cop03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if chk_cop04 and IsDead(Air_Vehicle.XV_FIG04) then
      SetObjectiveData(Objective_Marker.Cop04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Air_Vehicle.XV_STRAT01) and IsDead(Air_Vehicle.XV_FIG01) and IsDead(Air_Vehicle.XV_FIG02) and IsDead(Air_Vehicle.XV_FIG03) and IsDead(Air_Vehicle.XV_FIG04) then
      break
    end
    if wait < GetTime() then
      wait = GetTime() + 10
      if 0 < GetPlayerUnit() then
        AttackTarget(Air_Vehicle.XV_STRAT01, GetPlayerUnit())
      end
    end
    EndFrame()
  end
  SetObjectiveData(Objective.ClearSkies, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Strat, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.Strat, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  messages.Show("XV_Strat_Dead")
  messages.SetRead("WF_Strat_Advice")
  FreezePlayer()
  DeclareVictory(constant.ARMY_WF)
end

function level_POWs(owner)
  local tmp
  local CheckPOW01 = true
  local CheckPOW02 = true
  local function HasDeadWire(target)
    tmp = target
    while tmp do
      if IsDead(tmp.id) then
        return true
      end
      tmp = tmp.next
    end
    return false
  end
  local function KillAllWire(target)
    tmp = target
    while tmp do
      if not IsDead(tmp.id) then
        Kill(tmp.id)
      end
      tmp = tmp.next
    end
  end
  SetActive(Air_Vehicle.WF_FIG01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Air_Vehicle.WF_FIG02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_PILOT_POW01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_PILOT_POW02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_MIS01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_MIS02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_MIS03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WF_MIS04, constant.INACTIVE, constant.ADJUST_WEAPON)
  local POWCamp01
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POW01_WIRE01
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POW01_WIRE02
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POW01_WIRE03
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POW01_WIRE04
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POW01_WIRE05
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POW01_WIRE06
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POW01_WIRE07
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POW01_WIRE08
  }
  local POWCamp02
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POW02_WIRE01
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POW02_WIRE02
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POW02_WIRE03
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POW02_WIRE04
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POW02_WIRE05
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POW02_WIRE06
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POW02_WIRE07
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POW02_WIRE08
  }
  SetObjectiveData(Objective_Marker.PilotPOWs, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.MisVetPOWs, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  while InStartCutscene do
    EndFrame()
  end
  local ActivateFighter = function(id)
    while true do
      if GetMovementState(id) == constant.MOVEMENT_STATE_AIRBORNE then
        WaitFor(2)
        SetActive(id, constant.ACTIVE, constant.ADJUST_WEAPON)
        return
      else
        local pilot = Troop.WF_PILOT_POW01
        if id == Air_Vehicle.WF_FIG02 then
          pilot = Troop.WF_PILOT_POW02
        end
        if GetUnitInSeat(id, 0) == pilot then
          GoToArea(Air_Vehicle.WF_FIG02, GetRandom(-260, -280), GetRandom(0, 20), 20)
        else
          EnterVehicle(pilot, id, constant.ORDER_FORCED)
        end
      end
      WaitFor(1)
    end
  end
  while true do
    if CheckPOW01 and messages.HasBeenTriggered("WF_Free_Pilots") then
      SetObjectiveData(Objective_Marker.PilotPOWs, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    end
    if CheckPOW02 and messages.HasBeenTriggered("WF_Free_Mis_Vets") then
      SetObjectiveData(Objective_Marker.MisVetPOWs, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    end
    if CheckPOW01 and HasDeadWire(POWCamp01) then
      CheckPOW01 = false
      KillAllWire(POWCamp01)
      EnterVehicle(Troop.WF_PILOT_POW01, Air_Vehicle.WF_FIG01, constant.ORDER_FORCED)
      EnterVehicle(Troop.WF_PILOT_POW02, Air_Vehicle.WF_FIG02, constant.ORDER_FORCED)
      WaitFor(7)
      GoToArea(Air_Vehicle.WF_FIG01, -260, 2, 20)
      GoToArea(Air_Vehicle.WF_FIG02, -270, 12, 20)
      SetObjectiveData(Objective.PilotPOWs, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.PilotPOWs, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      messages.Show("WF_Pilots_Free")
      group.Add(Unit_Group.PlayerUnits, Air_Vehicle.WF_FIG01)
      group.Add(Unit_Group.PlayerUnits, Air_Vehicle.WF_FIG02)
      group.Add(Unit_Group.PlayerUnits, Troop.WF_PILOT_POW01)
      group.Add(Unit_Group.PlayerUnits, Troop.WF_PILOT_POW02)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      WaitFor(2)
      SetHealthPercent(Air_Vehicle.WF_FIG01, 100)
      SetHealthPercent(Air_Vehicle.WF_FIG02, 100)
      SetHealthPercent(Troop.WF_PILOT_POW01, 100)
      SetHealthPercent(Troop.WF_PILOT_POW02, 100)
      ActivateFighter(Air_Vehicle.WF_FIG01)
      ActivateFighter(Air_Vehicle.WF_FIG02)
    end
    if CheckPOW02 and HasDeadWire(POWCamp02) then
      CheckPOW02 = false
      KillAllWire(POWCamp02)
      SetActive(Troop.WF_MIS01, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WF_MIS02, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WF_MIS03, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WF_MIS04, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetObjectiveData(Objective.MisVetPOWs, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.MisVetPOWs, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      group.Add(Unit_Group.PlayerUnits, Troop.WF_MIS01)
      group.Add(Unit_Group.PlayerUnits, Troop.WF_MIS02)
      group.Add(Unit_Group.PlayerUnits, Troop.WF_MIS03)
      group.Add(Unit_Group.PlayerUnits, Troop.WF_MIS04)
      FollowUnit(Troop.WF_MIS01, GetPlayerUnit(), -1, 0)
      FollowUnit(Troop.WF_MIS02, GetPlayerUnit(), -1, 0)
      FollowUnit(Troop.WF_MIS03, GetPlayerUnit(), -1, 0)
      FollowUnit(Troop.WF_MIS04, GetPlayerUnit(), -1, 0)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      WaitFor(2)
      SetHealthPercent(Troop.WF_MIS01, 100)
      SetHealthPercent(Troop.WF_MIS02, 100)
      SetHealthPercent(Troop.WF_MIS03, 100)
      SetHealthPercent(Troop.WF_MIS04, 100)
    end
    EndFrame()
  end
end

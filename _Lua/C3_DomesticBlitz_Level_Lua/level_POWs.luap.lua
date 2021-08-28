function level_POWs(owner)
  local tmp
  local CheckPOW01 = true
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
  group.Add(Unit_Group.WF_CopPOWs, Troop.WF_COP01_CRW01)
  group.Add(Unit_Group.WF_CopPOWs, Troop.WF_COP01_CRW02)
  group.Add(Unit_Group.WF_CopPOWs, Troop.WF_COP01_CRW03)
  group.Add(Unit_Group.WF_CopPOWs, Troop.WF_COP02_CRW01)
  group.Add(Unit_Group.WF_CopPOWs, Troop.WF_COP02_CRW02)
  group.Add(Unit_Group.WF_CopPOWs, Troop.WF_COP02_CRW03)
  group.Add(Unit_Group.WF_CopPOWs, Troop.WF_COP03_CRW01)
  group.Add(Unit_Group.WF_CopPOWs, Troop.WF_COP03_CRW02)
  group.Add(Unit_Group.WF_CopPOWs, Troop.WF_COP03_CRW03)
  group.SetActive(Unit_Group.WF_CopPOWs, constant.INACTIVE, constant.ADJUST_WEAPON)
  local POWCamp01
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE01
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE02
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE03
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE04
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE05
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE06
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE07
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE08
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE09
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE10
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE11
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE12
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE13
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE14
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE15
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE16
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE17
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE18
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE19
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE20
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE21
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE22
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE23
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE24
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE25
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE26
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE27
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE28
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE29
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE30
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE31
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE32
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE33
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE34
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE35
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE36
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE37
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE38
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE39
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE40
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE41
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE42
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE43
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE44
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE45
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE46
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE47
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE48
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE49
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE50
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE51
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE52
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE53
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE54
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE55
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE56
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE57
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE58
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE59
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE60
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE61
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE62
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE63
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.POWCAMP01_WIRE64
  }
  local ActivateChopper = function(id)
    while true do
      if GetMovementState(id) == constant.MOVEMENT_STATE_AIRBORNE then
        WaitFor(2)
        SetActive(id, constant.ACTIVE, constant.ADJUST_WEAPON)
        return
      else
        GoToArea(id, GetRandom(190, 290), GetRandom(1110, 1210), 10)
      end
      WaitFor(3)
    end
  end
  while true do
    if CheckPOW01 and IsDead(Building.XV_POWGUARD) then
      CheckPOW01 = false
      messages.SetRead("WF_RescueGunships")
      messages.SetRead("WF_BmbPowMG")
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 2
      KillAllWire(POWCamp01)
      while true do
        local t = GetNumSeatsFree(Air_Vehicle.WF_COP01) + GetNumSeatsFree(Air_Vehicle.WF_COP02) + GetNumSeatsFree(Air_Vehicle.WF_COP03)
        if t == 0 then
          break
        end
        EnterVehicle(Troop.WF_COP01_CRW01, Air_Vehicle.WF_COP01, constant.ORDER_FORCED)
        EnterVehicle(Troop.WF_COP01_CRW02, Air_Vehicle.WF_COP01, constant.ORDER_FORCED)
        EnterVehicle(Troop.WF_COP01_CRW03, Air_Vehicle.WF_COP01, constant.ORDER_FORCED)
        EnterVehicle(Troop.WF_COP02_CRW01, Air_Vehicle.WF_COP02, constant.ORDER_FORCED)
        EnterVehicle(Troop.WF_COP02_CRW02, Air_Vehicle.WF_COP02, constant.ORDER_FORCED)
        EnterVehicle(Troop.WF_COP02_CRW03, Air_Vehicle.WF_COP02, constant.ORDER_FORCED)
        EnterVehicle(Troop.WF_COP03_CRW01, Air_Vehicle.WF_COP03, constant.ORDER_FORCED)
        EnterVehicle(Troop.WF_COP03_CRW02, Air_Vehicle.WF_COP03, constant.ORDER_FORCED)
        EnterVehicle(Troop.WF_COP03_CRW03, Air_Vehicle.WF_COP03, constant.ORDER_FORCED)
        WaitFor(2)
      end
      WaitFor(1)
      group.ScatterInArea(Unit_Group.WF_COPTERS, 240, 1160, 50, 50)
      SetObjectiveData(Objective.POWs, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.POWs, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      group.Add(Unit_Group.WF_Air, Air_Vehicle.WF_COP01)
      group.Add(Unit_Group.WF_Air, Air_Vehicle.WF_COP02)
      group.Add(Unit_Group.WF_Air, Air_Vehicle.WF_COP03)
      WaitFor(2)
      SetHealthPercent(Air_Vehicle.WF_COP01, 100)
      SetHealthPercent(Air_Vehicle.WF_COP02, 100)
      SetHealthPercent(Air_Vehicle.WF_COP03, 100)
      ActivateChopper(Air_Vehicle.WF_COP01)
      ActivateChopper(Air_Vehicle.WF_COP02)
      ActivateChopper(Air_Vehicle.WF_COP03)
      messages.Show("WF_GunshipsFree")
    end
    EndFrame()
  end
end

function POWs(owner)
  local tmp
  local NumPOWsFree = 0
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
  SetActive(Ground_Vehicle.SHeavyTank4, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.SHeavyTank5, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.SHeavyTank6, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_HTK06_CRW01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_HTK06_CRW02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_HTK06_CRW03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_HTK05_CRW01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_HTK05_CRW02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_HTK05_CRW03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_HTK04_CRW01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_HTK04_CRW02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_HTK04_CRW03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_FLM01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_FLM02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_FLM03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_FLM04, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_FLM05, constant.INACTIVE, constant.ADJUST_WEAPON)
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
    id = Destroyable_Object.Wire1
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.Wire2
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.Wire3
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.Wire4
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.Extra_Wire_1
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.Extra_Wire_2
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.Extra_Wire_3
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.Extra_Wire_4
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Destroyable_Object.Extra_Wire_5
  }
  POWCamp01 = {
    next = POWCamp01,
    id = Building.Entity0000
  }
  local POWCamp02
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POWCAMP02_WIRE01
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POWCAMP02_WIRE02
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POWCAMP02_WIRE03
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POWCAMP02_WIRE04
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POWCAMP02_WIRE05
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POWCAMP02_WIRE06
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POWCAMP02_WIRE07
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POWCAMP02_WIRE08
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POWCAMP02_WIRE09
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POWCAMP02_WIRE10
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POWCAMP02_WIRE11
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Destroyable_Object.POWCAMP02_WIRE12
  }
  POWCamp02 = {
    next = POWCamp02,
    id = Building.Entity0001
  }
  while true do
    if CheckPOW01 and HasDeadWire(POWCamp01) then
      CheckPOW01 = false
      KillAllWire(POWCamp01)
      SetActive(Ground_Vehicle.SHeavyTank4, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Ground_Vehicle.SHeavyTank5, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Ground_Vehicle.SHeavyTank6, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SE_HTK06_CRW01, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SE_HTK06_CRW02, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SE_HTK06_CRW03, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SE_HTK05_CRW01, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SE_HTK05_CRW02, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SE_HTK05_CRW03, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SE_HTK04_CRW01, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SE_HTK04_CRW02, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SE_HTK04_CRW03, constant.ACTIVE, constant.ADJUST_WEAPON)
      EnterVehicle(Troop.SE_HTK06_CRW01, Ground_Vehicle.SHeavyTank6, constant.ORDER_FORCED)
      EnterVehicle(Troop.SE_HTK06_CRW02, Ground_Vehicle.SHeavyTank6, constant.ORDER_FORCED)
      EnterVehicle(Troop.SE_HTK06_CRW03, Ground_Vehicle.SHeavyTank6, constant.ORDER_FORCED)
      EnterVehicle(Troop.SE_HTK05_CRW01, Ground_Vehicle.SHeavyTank5, constant.ORDER_FORCED)
      EnterVehicle(Troop.SE_HTK05_CRW02, Ground_Vehicle.SHeavyTank5, constant.ORDER_FORCED)
      EnterVehicle(Troop.SE_HTK05_CRW03, Ground_Vehicle.SHeavyTank5, constant.ORDER_FORCED)
      EnterVehicle(Troop.SE_HTK04_CRW01, Ground_Vehicle.SHeavyTank4, constant.ORDER_FORCED)
      EnterVehicle(Troop.SE_HTK04_CRW02, Ground_Vehicle.SHeavyTank4, constant.ORDER_FORCED)
      EnterVehicle(Troop.SE_HTK04_CRW03, Ground_Vehicle.SHeavyTank4, constant.ORDER_FORCED)
      FollowUnit(Ground_Vehicle.SHeavyTank6, GetPlayerUnit(), -1, 0, 0)
      FollowUnit(Ground_Vehicle.SHeavyTank5, GetPlayerUnit(), -1, 0, 0)
      FollowUnit(Ground_Vehicle.SHeavyTank4, GetPlayerUnit(), -1, 0, 0)
      SetHealthPercent(Ground_Vehicle.SHeavyTank6, 100)
      SetHealthPercent(Ground_Vehicle.SHeavyTank5, 100)
      SetHealthPercent(Ground_Vehicle.SHeavyTank4, 100)
      NumPOWsFree = NumPOWsFree + 1
      SetObjectiveData(Objective_Marker.POW2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if CheckPOW02 and HasDeadWire(POWCamp02) then
      CheckPOW02 = false
      KillAllWire(POWCamp02)
      SetActive(Troop.SE_FLM01, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SE_FLM02, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SE_FLM03, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SE_FLM04, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.SE_FLM05, constant.ACTIVE, constant.ADJUST_WEAPON)
      FollowUnit(Troop.SE_FLM01, GetPlayerUnit(), -1, 0, 0)
      FollowUnit(Troop.SE_FLM02, GetPlayerUnit(), -1, 0, 0)
      FollowUnit(Troop.SE_FLM03, GetPlayerUnit(), -1, 0, 0)
      FollowUnit(Troop.SE_FLM04, GetPlayerUnit(), -1, 0, 0)
      FollowUnit(Troop.SE_FLM05, GetPlayerUnit(), -1, 0, 0)
      SetHealthPercent(Troop.SE_FLM01, 100)
      SetHealthPercent(Troop.SE_FLM02, 100)
      SetHealthPercent(Troop.SE_FLM03, 100)
      SetHealthPercent(Troop.SE_FLM04, 100)
      SetHealthPercent(Troop.SE_FLM05, 100)
      NumPOWsFree = NumPOWsFree + 1
      SetObjectiveData(Objective_Marker.POW1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if NumPOWsFree == 2 then
      SetObjectiveData(Objective.POWS, constant.OBJECTIVE_DATA_STATE, 1)
      Kill(owner)
    end
    EndFrame()
  end
end

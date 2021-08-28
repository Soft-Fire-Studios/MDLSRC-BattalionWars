function JailSolarGrunts(owner)
  local hellfreezesover = 0
  local invehicle = 0
  local powtimer = 0
  SetActive(Troop.POWGrunt1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POWGrunt2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POWGrunt3, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POWGrunt4, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POWGrunt5, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POWGrunt6, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POWGrunt7, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POWGrunt8, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.SolarHeavyTank, constant.INACTIVE)
  repeat
    if IsDead(Destroyable_Object.SolarPOW1) or IsDead(Destroyable_Object.SolarPOW2) or IsDead(Destroyable_Object.SolarPOW3) or IsDead(Destroyable_Object.SolarPOW4) or IsDead(Destroyable_Object.SolarPOW5) or IsDead(Destroyable_Object.SolarPOW6) or IsDead(Destroyable_Object.SolarPOW7) or IsDead(Destroyable_Object.SolarPOW8) or IsDead(Destroyable_Object.SolarPOW9) or IsDead(Destroyable_Object.SolarPOW10) or IsDead(Destroyable_Object.SolarPOW11) or IsDead(Destroyable_Object.SolarPOW12) or IsDead(Destroyable_Object.SolarPOW13) or IsDead(Destroyable_Object.SolarPOW14) or IsDead(Destroyable_Object.SolarPOW14) or IsDead(Destroyable_Object.SolarPOW15) or IsDead(Destroyable_Object.SolarPOW16) or IsDead(Destroyable_Object.SolarPOW17) or IsDead(Destroyable_Object.SolarPOW18) or IsDead(Destroyable_Object.SolarPOW19) or IsDead(Destroyable_Object.SolarPOW20) or IsDead(Destroyable_Object.SolarPOW21) then
      hellfreezesover = 1
    end
    EndFrame()
  until hellfreezesover == 1
  SetActive(Troop.POWGrunt1, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POWGrunt2, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POWGrunt3, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POWGrunt4, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POWGrunt5, constant.ACTIVE, constant.ADJUST_WEAPON)
  solarpowsfree = 1
  SetObjectiveData(Objective.JailGrunts, constant.OBJECTIVE_DATA_STATE, 1)
  Kill(Destroyable_Object.SolarPOW1)
  Kill(Destroyable_Object.SolarPOW2)
  Kill(Destroyable_Object.SolarPOW3)
  Kill(Destroyable_Object.SolarPOW4)
  Kill(Destroyable_Object.SolarPOW5)
  Kill(Destroyable_Object.SolarPOW6)
  Kill(Destroyable_Object.SolarPOW7)
  Kill(Destroyable_Object.SolarPOW8)
  Kill(Destroyable_Object.SolarPOW9)
  Kill(Destroyable_Object.SolarPOW10)
  Kill(Destroyable_Object.SolarPOW11)
  Kill(Destroyable_Object.SolarPOW12)
  Kill(Destroyable_Object.SolarPOW13)
  Kill(Destroyable_Object.SolarPOW14)
  Kill(Destroyable_Object.SolarPOW15)
  Kill(Destroyable_Object.SolarPOW16)
  Kill(Destroyable_Object.SolarPOW17)
  Kill(Destroyable_Object.SolarPOW18)
  Kill(Destroyable_Object.SolarPOW19)
  Kill(Destroyable_Object.SolarPOW20)
  Kill(Destroyable_Object.SolarPOW21)
  PhoneMessage(57, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy)
  PhoneMessage(58, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy)
  EnterVehicle(Troop.POWGrunt6, Ground_Vehicle.SolarHeavyTank, constant.ORDER_FORCED)
  EnterVehicle(Troop.POWGrunt7, Ground_Vehicle.SolarHeavyTank, constant.ORDER_FORCED)
  EnterVehicle(Troop.POWGrunt8, Ground_Vehicle.SolarHeavyTank, constant.ORDER_FORCED)
  repeat
    SetHealthPercent(Troop.POWGrunt1, 100)
    SetHealthPercent(Troop.POWGrunt2, 100)
    SetHealthPercent(Troop.POWGrunt3, 100)
    SetHealthPercent(Troop.POWGrunt4, 100)
    SetHealthPercent(Troop.POWGrunt5, 100)
    SetHealthPercent(Troop.POWGrunt6, 100)
    SetHealthPercent(Troop.POWGrunt7, 100)
    SetHealthPercent(Troop.POWGrunt8, 100)
    WaitFor(0.5)
    powtimer = powtimer + 0.5
  until powtimer == 2
  repeat
    invehicle = 3
    if IsDead(Troop.POWGrunt6) then
      invechicle = invechicle - 1
    end
    if IsDead(Troop.POWGrunt7) then
      invechicle = invechicle - 1
    end
    if IsDead(Troop.POWGrunt8) then
      invechicle = invechicle - 1
    end
    if NumPassengersInUnit(Ground_Vehicle.SolarHeavyTank) == invehicle or IsDead(Ground_Vehicle.SolarHeavyTank) then
      invehicle = 4
    end
    EndFrame()
  until invehicle == 4
  DebugOut("Units in Vehicle, following player")
  SetActive(Troop.POWGrunt6, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POWGrunt7, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POWGrunt8, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.SolarHeavyTank, constant.ACTIVE)
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  local loop = 0
  while loop == 0 do
    if GetPlayerUnit() ~= nil then
      if GetMovementState(GetPlayerUnit()) == constant.MOVEMENT_STATE_SWIMMING then
        if GetActionState(Troop.POWGrunt1) ~= constant.ACTION_STATE_ATTACK then
          StopAndGuard(Troop.POWGrunt1)
        end
        if GetActionState(Troop.POWGrunt2) ~= constant.ACTION_STATE_ATTACK then
          StopAndGuard(Troop.POWGrunt2)
        end
        if GetActionState(Troop.POWGrunt3) ~= constant.ACTION_STATE_ATTACK then
          StopAndGuard(Troop.POWGrunt3)
        end
        if GetActionState(Troop.POWGrunt4) ~= constant.ACTION_STATE_ATTACK then
          StopAndGuard(Troop.POWGrunt4)
        end
        if GetActionState(Troop.POWGrunt5) ~= constant.ACTION_STATE_ATTACK then
          StopAndGuard(Troop.POWGrunt5)
        end
        if GetActionState(Ground_Vehicle.SolarHeavyTank) ~= constant.ACTION_STATE_ATTACK then
          StopAndGuard(Ground_Vehicle.SolarHeavyTank)
        end
        WaitFor(2)
      else
        if GetActionState(Troop.POWGrunt1) ~= constant.ACTION_STATE_ATTACK then
          FollowUnit(Troop.POWGrunt1, GetPlayerUnit(), -1, 0)
        end
        if GetActionState(Troop.POWGrunt2) ~= constant.ACTION_STATE_ATTACK then
          FollowUnit(Troop.POWGrunt2, GetPlayerUnit(), -1, 0)
        end
        if GetActionState(Troop.POWGrunt3) ~= constant.ACTION_STATE_ATTACK then
          FollowUnit(Troop.POWGrunt3, GetPlayerUnit(), -1, 0)
        end
        if GetActionState(Troop.POWGrunt4) ~= constant.ACTION_STATE_ATTACK then
          FollowUnit(Troop.POWGrunt4, GetPlayerUnit(), -1, 0)
        end
        if GetActionState(Troop.POWGrunt5) ~= constant.ACTION_STATE_ATTACK then
          FollowUnit(Troop.POWGrunt5, GetPlayerUnit(), -1, 0)
        end
        if GetActionState(Ground_Vehicle.SolarHeavyTank) ~= constant.ACTION_STATE_ATTACK then
          FollowUnit(Ground_Vehicle.SolarHeavyTank, GetPlayerUnit(), -1, 0)
        end
        WaitFor(2)
      end
    end
    EndFrame()
  end
end

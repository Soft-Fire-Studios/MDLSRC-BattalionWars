function Captured_Tank_Script(owner)
  local loop = 0
  SetActive(Troop.crew1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.crew2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.tank1, constant.INACTIVE, constant.ADJUST_WEAPON)
  while loop == 0 do
    if IsDead(Destroyable_Object.wire21) then
      loop = 1
    elseif IsDead(Destroyable_Object.wire22) then
      loop = 1
    elseif IsDead(Destroyable_Object.wire23) then
      loop = 1
    else
      if IsDead(Destroyable_Object.wire24) then
        loop = 1
      else
      end
    end
    EndFrame()
    if IsDead(Destroyable_Object.wire25) then
      loop = 1
    elseif IsDead(Destroyable_Object.wire26) then
      loop = 1
    elseif IsDead(Destroyable_Object.wire27) then
      loop = 1
    else
      if IsDead(Destroyable_Object.wire28) then
        loop = 1
      else
      end
    end
    EndFrame()
    if IsDead(Destroyable_Object.wire29) then
      loop = 1
    elseif IsDead(Destroyable_Object.wire210) then
      loop = 1
    elseif IsDead(Destroyable_Object.wire211) then
      loop = 1
    else
      if IsDead(Destroyable_Object.wire212) then
        loop = 1
      else
      end
    end
    EndFrame()
  end
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  ClearMessageQueue()
  SetObjectiveData(Objective.LightTank, constant.OBJECTIVE_DATA_STATE, 1)
  PhoneMessage(16, constant.ID_NONE, 0, 10, SpriteID.CO_WF_Austin_Happy)
  Kill(Destroyable_Object.wire21)
  Kill(Destroyable_Object.wire22)
  Kill(Destroyable_Object.wire23)
  Kill(Destroyable_Object.wire24)
  Kill(Destroyable_Object.wire25)
  Kill(Destroyable_Object.wire26)
  Kill(Destroyable_Object.wire27)
  Kill(Destroyable_Object.wire28)
  Kill(Destroyable_Object.wire29)
  Kill(Destroyable_Object.wire210)
  Kill(Destroyable_Object.wire211)
  Kill(Destroyable_Object.wire212)
  EnterVehicle(Troop.crew1, Ground_Vehicle.tank1, constant.ORDER_FORCED)
  EnterVehicle(Troop.crew2, Ground_Vehicle.tank1, constant.ORDER_FORCED)
  SetHealthPercent(Ground_Vehicle.tank1, 100)
  WaitFor(0.2)
  SetHealthPercent(Ground_Vehicle.tank1, 100)
  WaitFor(0.2)
  SetHealthPercent(Ground_Vehicle.tank1, 100)
  WaitFor(0.2)
  SetHealthPercent(Ground_Vehicle.tank1, 100)
  WaitFor(0.2)
  SetHealthPercent(Ground_Vehicle.tank1, 100)
  WaitFor(0.2)
  SetHealthPercent(Ground_Vehicle.tank1, 100)
  WaitFor(0.2)
  SetHealthPercent(Ground_Vehicle.tank1, 100)
  WaitFor(0.2)
  SetHealthPercent(Ground_Vehicle.tank1, 100)
  WaitFor(0.2)
  SetHealthPercent(Ground_Vehicle.tank1, 100)
  WaitFor(0.2)
  SetHealthPercent(Ground_Vehicle.tank1, 100)
  WaitFor(0.2)
  SetActive(Troop.crew1, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.crew2, constant.ACTIVE, constant.ADJUST_WEAPON)
  FollowUnit(Ground_Vehicle.tank1, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
  SetActive(Ground_Vehicle.tank1, constant.ACTIVE, constant.ADJUST_WEAPON)
end

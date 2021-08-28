function POWs_1(owner)
  local loop = 0
  SetActive(Troop.pow1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.pow2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.pow3, constant.INACTIVE, constant.ADJUST_WEAPON)
  while loop == 0 do
    if IsDead(Destroyable_Object.wire1) then
      loop = 1
    elseif IsDead(Destroyable_Object.wire3) then
      loop = 1
    elseif IsDead(Destroyable_Object.wire4) then
      loop = 1
    else
      EndFrame()
    end
    if IsDead(Destroyable_Object.wire6) then
      loop = 1
    elseif IsDead(Destroyable_Object.wire7) then
      loop = 1
    elseif IsDead(Destroyable_Object.wire8) then
      loop = 1
    else
      EndFrame()
    end
  end
  while levelend == 1 do
    EndFrame()
  end
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  SetObjectiveData(Objective.AA, constant.OBJECTIVE_DATA_STATE, 1)
  pow = pow + 1
  DebugOut(pow)
  Kill(Destroyable_Object.wire1)
  Kill(Destroyable_Object.wire3)
  Kill(Destroyable_Object.wire4)
  Kill(Destroyable_Object.wire6)
  Kill(Destroyable_Object.wire7)
  Kill(Destroyable_Object.wire8)
  SetActive(Troop.pow1, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.pow2, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.pow3, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetHealthPercent(Troop.pow1, 100)
  SetHealthPercent(Troop.pow2, 100)
  SetHealthPercent(Troop.pow3, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.pow1, 100)
  SetHealthPercent(Troop.pow2, 100)
  SetHealthPercent(Troop.pow3, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.pow1, 100)
  SetHealthPercent(Troop.pow2, 100)
  SetHealthPercent(Troop.pow3, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.pow1, 100)
  SetHealthPercent(Troop.pow2, 100)
  SetHealthPercent(Troop.pow3, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.pow1, 100)
  SetHealthPercent(Troop.pow2, 100)
  SetHealthPercent(Troop.pow3, 100)
  WaitFor(0.2)
  while levelend == 1 do
    EndFrame()
  end
  ClearMessageQueue()
  PhoneMessage(17, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
  SetHealthPercent(Troop.pow1, 100)
  SetHealthPercent(Troop.pow2, 100)
  SetHealthPercent(Troop.pow3, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.pow1, 100)
  SetHealthPercent(Troop.pow2, 100)
  SetHealthPercent(Troop.pow3, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.pow1, 100)
  SetHealthPercent(Troop.pow2, 100)
  SetHealthPercent(Troop.pow3, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.pow1, 100)
  SetHealthPercent(Troop.pow2, 100)
  SetHealthPercent(Troop.pow3, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.pow1, 100)
  SetHealthPercent(Troop.pow2, 100)
  SetHealthPercent(Troop.pow3, 100)
  WaitFor(0.2)
  local player = GetPlayerUnit()
  loop = 0
  while loop == 0 do
    if GetPlayerUnit() ~= nil then
      if GetMovementState(GetPlayerUnit()) == constant.MOVEMENT_STATE_SWIMMING then
        if GetActionState(Troop.pow1) ~= constant.ACTION_STATE_ATTACK then
          StopAndGuard(Troop.pow1)
        end
        if GetActionState(Troop.pow2) ~= constant.ACTION_STATE_ATTACK then
          StopAndGuard(Troop.pow2)
        end
        if GetActionState(Troop.pow3) ~= constant.ACTION_STATE_ATTACK then
          StopAndGuard(Troop.pow3)
        end
        WaitFor(2)
      elseif player ~= Air_Vehicle.bomber then
        if GetActionState(Troop.pow1) ~= constant.ACTION_STATE_ATTACK then
          FollowUnit(Troop.pow1, GetPlayerUnit(), -1, 0)
        end
        if GetActionState(Troop.pow2) ~= constant.ACTION_STATE_ATTACK then
          FollowUnit(Troop.pow2, GetPlayerUnit(), -1, 0)
        end
        if GetActionState(Troop.pow3) ~= constant.ACTION_STATE_ATTACK then
          FollowUnit(Troop.pow3, GetPlayerUnit(), -1, 0)
        end
        WaitFor(2)
      end
    else
    end
    EndFrame()
  end
end

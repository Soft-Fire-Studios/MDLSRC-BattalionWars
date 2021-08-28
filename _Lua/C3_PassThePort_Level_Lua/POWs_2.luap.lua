function POWs_2(owner)
  local loop = 0
  SetActive(Troop.powa, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.powb, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.powc, constant.INACTIVE, constant.ADJUST_WEAPON)
  while loop == 0 do
    if IsDead(Destroyable_Object.wirea) then
      loop = 1
    elseif IsDead(Destroyable_Object.wireb) then
      loop = 1
    elseif IsDead(Destroyable_Object.wirec) then
      loop = 1
    elseif IsDead(Destroyable_Object.wired) then
      loop = 1
    else
      EndFrame()
    end
    if IsDead(Destroyable_Object.wiree) then
      loop = 1
    elseif IsDead(Destroyable_Object.wiref) then
      loop = 1
    elseif IsDead(Destroyable_Object.wireg) then
      loop = 1
    else
      EndFrame()
    end
  end
  while levelend == 1 do
    EndFrame()
  end
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  SetObjectiveData(Objective.Flame, constant.OBJECTIVE_DATA_STATE, 1)
  pow = pow + 1
  DebugOut(pow)
  Kill(Destroyable_Object.wirea)
  EndFrame()
  Kill(Destroyable_Object.wireb)
  EndFrame()
  Kill(Destroyable_Object.wirec)
  EndFrame()
  SetHealthPercent(Troop.powa, 100)
  SetHealthPercent(Troop.powb, 100)
  SetHealthPercent(Troop.powc, 100)
  Kill(Destroyable_Object.wired)
  EndFrame()
  Kill(Destroyable_Object.wiree)
  EndFrame()
  Kill(Destroyable_Object.wiref)
  EndFrame()
  Kill(Destroyable_Object.wireg)
  SetActive(Troop.powa, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.powb, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.powc, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetHealthPercent(Troop.powa, 100)
  SetHealthPercent(Troop.powb, 100)
  SetHealthPercent(Troop.powc, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.powa, 100)
  SetHealthPercent(Troop.powb, 100)
  SetHealthPercent(Troop.powc, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.powa, 100)
  SetHealthPercent(Troop.powb, 100)
  SetHealthPercent(Troop.powc, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.powa, 100)
  SetHealthPercent(Troop.powb, 100)
  SetHealthPercent(Troop.powc, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.powa, 100)
  SetHealthPercent(Troop.powb, 100)
  SetHealthPercent(Troop.powc, 100)
  WaitFor(0.2)
  while levelend == 1 do
    EndFrame()
  end
  ClearMessageQueue()
  PhoneMessage(18, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
  SetHealthPercent(Troop.powa, 100)
  SetHealthPercent(Troop.powb, 100)
  SetHealthPercent(Troop.powc, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.powa, 100)
  SetHealthPercent(Troop.powb, 100)
  SetHealthPercent(Troop.powc, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.powa, 100)
  SetHealthPercent(Troop.powb, 100)
  SetHealthPercent(Troop.powc, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.powa, 100)
  SetHealthPercent(Troop.powb, 100)
  SetHealthPercent(Troop.powc, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.powa, 100)
  SetHealthPercent(Troop.powb, 100)
  SetHealthPercent(Troop.powc, 100)
  WaitFor(0.2)
  local player = GetPlayerUnit()
  loop = 0
  while loop == 0 do
    if GetPlayerUnit() ~= nil then
      if GetMovementState(GetPlayerUnit()) == constant.MOVEMENT_STATE_SWIMMING then
        if GetActionState(Troop.powa) ~= constant.ACTION_STATE_ATTACK then
          StopAndGuard(Troop.powa)
        end
        if GetActionState(Troop.powb) ~= constant.ACTION_STATE_ATTACK then
          StopAndGuard(Troop.powb)
        end
        if GetActionState(Troop.powc) ~= constant.ACTION_STATE_ATTACK then
          StopAndGuard(Troop.powc)
        end
        WaitFor(2)
      elseif player ~= Air_Vehicle.bomber then
        if GetActionState(Troop.powa) ~= constant.ACTION_STATE_ATTACK then
          FollowUnit(Troop.powa, GetPlayerUnit(), -1, 0)
        end
        if GetActionState(Troop.powb) ~= constant.ACTION_STATE_ATTACK then
          FollowUnit(Troop.powb, GetPlayerUnit(), -1, 0)
        end
        if GetActionState(Troop.powc) ~= constant.ACTION_STATE_ATTACK then
          FollowUnit(Troop.powc, GetPlayerUnit(), -1, 0)
        end
        WaitFor(2)
      end
    else
    end
    EndFrame()
  end
end

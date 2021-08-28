function POW_Script(owner)
  local loop = 0
  local text = 0
  SetActive(Troop.POW1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW3, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW4, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW5, constant.INACTIVE, constant.ADJUST_WEAPON)
  while pows == 0 do
    if text == 0 and 5 < NumItemsInArea(755, 5, 95, flag.TYPE_WFRONTIER) then
      ClearMessageQueue()
      PhoneMessage(21, constant.ID_NONE, 2, 5, SpriteID.CO_T_Nelly_Happy)
      AttackTarget(Ground_Vehicle.xlt1, GetPlayerUnit())
      text = 1
    end
    if IsDead(Destroyable_Object.wire1) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire2) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire3) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire4) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire5) then
      pows = 1
    else
      EndFrame()
    end
    if IsDead(Destroyable_Object.wire6) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire7) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire8) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire9) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire10) then
      pows = 1
    else
      EndFrame()
    end
    if IsDead(Destroyable_Object.wire11) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire12) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire13) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire14) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire15) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire16) then
      pows = 1
    else
      EndFrame()
    end
  end
  AttackTarget(Ground_Vehicle.xlt1, GetPlayerUnit())
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  SetObjectiveData(Objective.POWs, constant.OBJECTIVE_DATA_STATE, 1)
  GoToArea(Troop.grunt1, 745, -5, 10)
  GoToArea(Troop.grunt2, 745, -5, 10)
  GoToArea(Troop.grunt3, 745, -5, 10)
  GoToArea(Troop.grunt4, 745, -5, 10)
  GoToArea(Troop.grunt5, 745, -5, 10)
  FollowUnit(Troop.POW1, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
  FollowUnit(Troop.POW2, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
  FollowUnit(Troop.POW3, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
  FollowUnit(Troop.POW4, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
  FollowUnit(Troop.POW5, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
  SetActive(Troop.POW1, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW2, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW3, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW4, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.POW5, constant.ACTIVE, constant.ADJUST_WEAPON)
  Kill(Destroyable_Object.wire1)
  Kill(Destroyable_Object.wire2)
  Kill(Destroyable_Object.wire3)
  Kill(Destroyable_Object.wire4)
  Kill(Destroyable_Object.wire5)
  Kill(Destroyable_Object.wire6)
  Kill(Destroyable_Object.wire7)
  Kill(Destroyable_Object.wire8)
  Kill(Destroyable_Object.wire9)
  Kill(Destroyable_Object.wire10)
  Kill(Destroyable_Object.wire11)
  Kill(Destroyable_Object.wire12)
  Kill(Destroyable_Object.wire13)
  Kill(Destroyable_Object.wire14)
  Kill(Destroyable_Object.wire15)
  Kill(Destroyable_Object.wire16)
  SetHealthPercent(Troop.POW1, 100)
  SetHealthPercent(Troop.POW2, 100)
  SetHealthPercent(Troop.POW3, 100)
  SetHealthPercent(Troop.POW4, 100)
  SetHealthPercent(Troop.POW5, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.POW1, 100)
  SetHealthPercent(Troop.POW2, 100)
  SetHealthPercent(Troop.POW3, 100)
  SetHealthPercent(Troop.POW4, 100)
  SetHealthPercent(Troop.POW5, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.POW1, 100)
  SetHealthPercent(Troop.POW2, 100)
  SetHealthPercent(Troop.POW3, 100)
  SetHealthPercent(Troop.POW4, 100)
  SetHealthPercent(Troop.POW5, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.POW1, 100)
  SetHealthPercent(Troop.POW2, 100)
  SetHealthPercent(Troop.POW3, 100)
  SetHealthPercent(Troop.POW4, 100)
  SetHealthPercent(Troop.POW5, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.POW1, 100)
  SetHealthPercent(Troop.POW2, 100)
  SetHealthPercent(Troop.POW3, 100)
  SetHealthPercent(Troop.POW4, 100)
  SetHealthPercent(Troop.POW5, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.POW1, 100)
  SetHealthPercent(Troop.POW2, 100)
  SetHealthPercent(Troop.POW3, 100)
  SetHealthPercent(Troop.POW4, 100)
  SetHealthPercent(Troop.POW5, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.POW1, 100)
  SetHealthPercent(Troop.POW2, 100)
  SetHealthPercent(Troop.POW3, 100)
  SetHealthPercent(Troop.POW4, 100)
  SetHealthPercent(Troop.POW5, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.POW1, 100)
  SetHealthPercent(Troop.POW2, 100)
  SetHealthPercent(Troop.POW3, 100)
  SetHealthPercent(Troop.POW4, 100)
  SetHealthPercent(Troop.POW5, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.POW1, 100)
  SetHealthPercent(Troop.POW2, 100)
  SetHealthPercent(Troop.POW3, 100)
  SetHealthPercent(Troop.POW4, 100)
  SetHealthPercent(Troop.POW5, 100)
  WaitFor(0.2)
  SetHealthPercent(Troop.POW1, 100)
  SetHealthPercent(Troop.POW2, 100)
  SetHealthPercent(Troop.POW3, 100)
  SetHealthPercent(Troop.POW4, 100)
  SetHealthPercent(Troop.POW5, 100)
  WaitFor(0.2)
  ClearMessageQueue()
  PhoneMessage(13, constant.ID_NONE, 0, 9, SpriteID.CO_WF_Austin_Happy)
end

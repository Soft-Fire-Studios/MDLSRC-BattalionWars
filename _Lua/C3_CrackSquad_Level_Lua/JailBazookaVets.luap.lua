function JailBazookaVets(owner)
  local hellfreezesover = 0
  local powtimer = 0
  SetActive(Troop.WFBazookaVet1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFBazookaVet2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFBazookaVet3, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFBazookaVet4, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFBazookaVet5, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFBazookaVet6, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFBazookaVet7, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFBazookaVet8, constant.INACTIVE, constant.ADJUST_WEAPON)
  repeat
    if IsDead(Destroyable_Object.BazookaPOW1) or IsDead(Destroyable_Object.BazookaPOW2) or IsDead(Destroyable_Object.BazookaPOW3) or IsDead(Destroyable_Object.BazookaPOW4) or IsDead(Destroyable_Object.BazookaPOW5) or IsDead(Destroyable_Object.BazookaPOW6) or IsDead(Destroyable_Object.BazookaPOW7) or IsDead(Destroyable_Object.BazookaPOW8) or IsDead(Destroyable_Object.BazookaPOW9) or IsDead(Destroyable_Object.BazookaPOW10) or IsDead(Destroyable_Object.BazookaPOW11) or IsDead(Destroyable_Object.BazookaPOW12) then
      SetActive(Troop.WFBazookaVet1, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFBazookaVet2, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFBazookaVet3, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFBazookaVet4, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFBazookaVet5, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFBazookaVet6, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFBazookaVet7, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFBazookaVet8, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetObjectiveData(Objective.JailBazooka, constant.OBJECTIVE_DATA_STATE, 1)
      hellfreezesover = 1
    end
    EndFrame()
  until hellfreezesover == 1
  Kill(Destroyable_Object.BazookaPOW1)
  Kill(Destroyable_Object.BazookaPOW2)
  Kill(Destroyable_Object.BazookaPOW3)
  Kill(Destroyable_Object.BazookaPOW4)
  Kill(Destroyable_Object.BazookaPOW5)
  Kill(Destroyable_Object.BazookaPOW6)
  Kill(Destroyable_Object.BazookaPOW7)
  Kill(Destroyable_Object.BazookaPOW8)
  Kill(Destroyable_Object.BazookaPOW9)
  Kill(Destroyable_Object.BazookaPOW10)
  Kill(Destroyable_Object.BazookaPOW11)
  Kill(Destroyable_Object.BazookaPOW12)
  bazookavetsfree = 1
  powtimer = GetTime()
  repeat
    SetHealthPercent(Troop.WFBazookaVet1, 100)
    SetHealthPercent(Troop.WFBazookaVet2, 100)
    SetHealthPercent(Troop.WFBazookaVet3, 100)
    SetHealthPercent(Troop.WFBazookaVet4, 100)
    SetHealthPercent(Troop.WFBazookaVet5, 100)
    SetHealthPercent(Troop.WFBazookaVet6, 100)
    SetHealthPercent(Troop.WFBazookaVet7, 100)
    SetHealthPercent(Troop.WFBazookaVet8, 100)
    EndFrame()
  until GetTime() > powtimer + 2
  AttackTarget(Ground_Vehicle.XLightAttack1, GetPlayerUnit())
  AttackTarget(Ground_Vehicle.XLightAttack2, GetPlayerUnit())
  AttackTarget(Ground_Vehicle.XLightAttack3, GetPlayerUnit())
  AttackTarget(Ground_Vehicle.XLightAttack4, GetPlayerUnit())
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
end

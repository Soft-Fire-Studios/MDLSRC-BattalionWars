function JailMissileVets(owner)
  local hellfreezesover = 0
  local powtimer = 0
  SetActive(Troop.WFMissileVet1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFMissileVet2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFMissileVet3, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFMissileVet4, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFMissileVet5, constant.INACTIVE, constant.ADJUST_WEAPON)
  repeat
    if IsDead(Destroyable_Object.CommsTowerPOWFence1) or IsDead(Destroyable_Object.CommsTowerPOWFence2) or IsDead(Destroyable_Object.CommsTowerPOWFence3) or IsDead(Destroyable_Object.CommsTowerPOWFence4) or IsDead(Destroyable_Object.CommsTowerPOWFence5) or IsDead(Destroyable_Object.CommsTowerPOWFence6) or IsDead(Destroyable_Object.CommsTowerPOWFence7) or IsDead(Destroyable_Object.CommsTowerPOWFence8) or IsDead(Destroyable_Object.CommsTowerPOWFence9) or IsDead(Destroyable_Object.CommsTowerPOWFence10) or IsDead(Destroyable_Object.CommsTowerPOWFence11) or IsDead(Destroyable_Object.CommsTowerPOWFence12) then
      SetActive(Troop.WFMissileVet1, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFMissileVet2, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFMissileVet3, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFMissileVet4, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFMissileVet5, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetObjectiveData(Objective.JailMissile, constant.OBJECTIVE_DATA_STATE, 1)
      hellfreezesover = 1
    end
    EndFrame()
  until hellfreezesover == 1
  Kill(Destroyable_Object.CommsTowerPOWFence1)
  Kill(Destroyable_Object.CommsTowerPOWFence2)
  Kill(Destroyable_Object.CommsTowerPOWFence3)
  Kill(Destroyable_Object.CommsTowerPOWFence4)
  Kill(Destroyable_Object.CommsTowerPOWFence5)
  Kill(Destroyable_Object.CommsTowerPOWFence6)
  Kill(Destroyable_Object.CommsTowerPOWFence7)
  Kill(Destroyable_Object.CommsTowerPOWFence8)
  Kill(Destroyable_Object.CommsTowerPOWFence9)
  Kill(Destroyable_Object.CommsTowerPOWFence10)
  Kill(Destroyable_Object.CommsTowerPOWFence11)
  Kill(Destroyable_Object.CommsTowerPOWFence12)
  missilevetsfree = 1
  powtimer = GetTime()
  repeat
    SetHealthPercent(Troop.WFMissileVet1, 100)
    SetHealthPercent(Troop.WFMissileVet2, 100)
    SetHealthPercent(Troop.WFMissileVet3, 100)
    SetHealthPercent(Troop.WFMissileVet4, 100)
    SetHealthPercent(Troop.WFMissileVet5, 100)
    EndFrame()
  until GetTime() > powtimer + 2
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  if GetState(Capture_Point.CommunicationsTower) == 0 then
    chopperstatus = 1
  end
end

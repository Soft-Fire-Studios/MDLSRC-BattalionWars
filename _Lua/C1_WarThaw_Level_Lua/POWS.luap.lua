function POWS(owner)
  local loop = 0
  local text = 0
  SetActive(Troop.WFPOW1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFPOW2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFPOW3, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFPOW4, constant.INACTIVE, constant.ADJUST_WEAPON)
  while finish == 0 do
    if IsDead(Destroyable_Object.Fence1) or IsDead(Destroyable_Object.Fence2) or IsDead(Destroyable_Object.Fence3) or IsDead(Destroyable_Object.Fence4) or IsDead(Destroyable_Object.Fence5) or IsDead(Destroyable_Object.Fence6) then
      finish = 1
    end
    if text == 0 and IsInArea(GetPlayerUnit(), Map_Zone.TankTrig1) then
      PhoneMessage(78, 0, 0, 4, SpriteID.CO_WF_Herman_Sad)
      PhoneMessage(17, 0, 0, 5, SpriteID.CO_WF_Herman_Happy)
      text = 1
    end
    EndFrame()
  end
  SetObjectiveData(Objective.Pows, constant.OBJECTIVE_DATA_STATE, 1)
  SetActive(Troop.WFPOW1, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFPOW2, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFPOW3, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFPOW4, constant.ACTIVE, constant.ADJUST_WEAPON)
  FollowUnit(Troop.WFPOW1, GetPlayerUnit(), 4, 4, constant.ORDER_NORMAL)
  FollowUnit(Troop.WFPOW2, GetPlayerUnit(), 4, 4, constant.ORDER_NORMAL)
  FollowUnit(Troop.WFPOW3, GetPlayerUnit(), 4, 4, constant.ORDER_NORMAL)
  FollowUnit(Troop.WFPOW4, GetPlayerUnit(), 4, 4, constant.ORDER_NORMAL)
  powsfree = 1
  if text == 0 then
    PhoneMessage(17, 0, 0, 5, SpriteID.CO_WF_Herman_Happy)
    EndFrame()
  end
  Kill(Destroyable_Object.Fence1)
  Kill(Destroyable_Object.Fence2)
  Kill(Destroyable_Object.Fence3)
  Kill(Destroyable_Object.Fence4)
  Kill(Destroyable_Object.Fence5)
  Kill(Destroyable_Object.Fence6)
  while loop < 4 do
    loop = loop + 1
    SetHealthPercent(Troop.WFPOW1, 100)
    SetHealthPercent(Troop.WFPOW2, 100)
    SetHealthPercent(Troop.WFPOW3, 100)
    SetHealthPercent(Troop.WFPOW4, 100)
    WaitFor(0.5)
    EndFrame()
  end
  EndFrame()
  DebugOut("loop = f in POWS")
end

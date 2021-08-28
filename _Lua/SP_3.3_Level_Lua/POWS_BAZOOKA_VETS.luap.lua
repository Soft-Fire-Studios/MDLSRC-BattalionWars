function POWS_BAZOOKA_VETS(owner)
  POWTROOPS = owner
  SetActive(Troop.AIbazooka1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.AIbazooka2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.AIbazooka3, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.AIbazooka4, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetUnitInvulnerable(Troop.AIbazooka1, true)
  SetUnitInvulnerable(Troop.AIbazooka2, true)
  SetUnitInvulnerable(Troop.AIbazooka3, true)
  SetUnitInvulnerable(Troop.AIbazooka4, true)
  while true do
    if IsDead(Destroyable_Object.powfence1) or IsDead(Destroyable_Object.powfence2) or IsDead(Destroyable_Object.powfence3) or IsDead(Destroyable_Object.powfence4) or IsDead(Destroyable_Object.powfence5) or IsDead(Destroyable_Object.powfence6) or IsDead(Destroyable_Object.powfence7) or IsDead(Destroyable_Object.powfence8) or IsDead(Destroyable_Object.powfence9) or IsDead(Destroyable_Object.powfence10) or IsDead(Destroyable_Object.powfence11) or IsDead(Destroyable_Object.powfence12) or IsDead(Building.POWCAMPdump1) then
      break
    else
      EndFrame()
    end
  end
  STALLALLUNITSDEADCHECK = 1
  AddToGroup(Unit_Group.AIarmy, Troop.AIbazooka1)
  AddToGroup(Unit_Group.AIarmy, Troop.AIbazooka2)
  AddToGroup(Unit_Group.AIarmy, Troop.AIbazooka3)
  AddToGroup(Unit_Group.AIarmy, Troop.AIbazooka4)
  if MidCutscene1start == false then
    SetActive(Troop.AIbazooka1, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.AIbazooka2, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.AIbazooka3, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.AIbazooka4, constant.ACTIVE, constant.ADJUST_WEAPON)
    Kill(Destroyable_Object.powfence1)
    Kill(Destroyable_Object.powfence2)
    Kill(Destroyable_Object.powfence3)
    Kill(Destroyable_Object.powfence4)
    Kill(Destroyable_Object.powfence5)
    Kill(Destroyable_Object.powfence6)
    Kill(Destroyable_Object.powfence7)
    Kill(Destroyable_Object.powfence8)
    Kill(Destroyable_Object.powfence9)
    Kill(Destroyable_Object.powfence10)
    Kill(Destroyable_Object.powfence11)
    Kill(Destroyable_Object.powfence12)
    Kill(Building.POWCAMPdump1)
    EndFrame()
    SetHealthPercent(Troop.AIbazooka1, 100)
    SetHealthPercent(Troop.AIbazooka2, 100)
    SetHealthPercent(Troop.AIbazooka3, 100)
    SetHealthPercent(Troop.AIbazooka4, 100)
    SetObjectiveData(Objective_Marker.POWcamp, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.POWs, constant.OBJECTIVE_DATA_STATE, 1)
    PhoneMessageWithObjective(16, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
    TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
    while true do
      if GetSpawnMode() == eModeAction.Follow then
        FollowUnit(Troop.AIbazooka1, GetPlayerUnit(), -1, constant.ORDER_FORCED)
        FollowUnit(Troop.AIbazooka2, GetPlayerUnit(), -1, constant.ORDER_FORCED)
        FollowUnit(Troop.AIbazooka3, GetPlayerUnit(), -1, constant.ORDER_FORCED)
        FollowUnit(Troop.AIbazooka4, GetPlayerUnit(), -1, constant.ORDER_FORCED)
      end
      BazookasFree = true
      SetUnitInvulnerable(Troop.AIbazooka1, false)
      SetUnitInvulnerable(Troop.AIbazooka2, false)
      SetUnitInvulnerable(Troop.AIbazooka3, false)
      SetUnitInvulnerable(Troop.AIbazooka4, false)
      STALLALLUNITSDEADCHECK = 0
      break
    end
    EndFrame()
  elseif MidCutscene1start == true then
    SetActive(Troop.AIbazooka1, constant.INACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.AIbazooka2, constant.INACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.AIbazooka3, constant.INACTIVE, constant.ADJUST_WEAPON)
    SetActive(Troop.AIbazooka4, constant.INACTIVE, constant.ADJUST_WEAPON)
    Kill(Destroyable_Object.powfence1)
    Kill(Destroyable_Object.powfence2)
    Kill(Destroyable_Object.powfence3)
    Kill(Destroyable_Object.powfence4)
    Kill(Destroyable_Object.powfence5)
    Kill(Destroyable_Object.powfence6)
    Kill(Destroyable_Object.powfence7)
    Kill(Destroyable_Object.powfence8)
    Kill(Destroyable_Object.powfence9)
    Kill(Destroyable_Object.powfence10)
    Kill(Destroyable_Object.powfence11)
    Kill(Destroyable_Object.powfence12)
    Kill(Building.POWCAMPdump1)
    WaitFor(0.5)
    EndFrame()
    EnableWeapon(Troop.AIbazooka1, 1)
    EnableWeapon(Troop.AIbazooka2, 1)
    EnableWeapon(Troop.AIbazooka3, 1)
    EnableWeapon(Troop.AIbazooka4, 1)
    SetHealthPercent(Troop.AIbazooka1, 100)
    SetHealthPercent(Troop.AIbazooka2, 100)
    SetHealthPercent(Troop.AIbazooka3, 100)
    SetHealthPercent(Troop.AIbazooka4, 100)
    while true do
      GoToArea(Troop.AIbazooka1, -800, -110, 10, constant.ORDER_FORCED)
      GoToArea(Troop.AIbazooka2, -800, -110, 10, constant.ORDER_FORCED)
      GoToArea(Troop.AIbazooka3, -800, -110, 10, constant.ORDER_FORCED)
      GoToArea(Troop.AIbazooka4, -800, -110, 10, constant.ORDER_FORCED)
      SetUnitInvulnerable(Troop.AIbazooka1, false)
      SetUnitInvulnerable(Troop.AIbazooka2, false)
      SetUnitInvulnerable(Troop.AIbazooka3, false)
      SetUnitInvulnerable(Troop.AIbazooka4, false)
      break
    end
    EndFrame()
  end
end

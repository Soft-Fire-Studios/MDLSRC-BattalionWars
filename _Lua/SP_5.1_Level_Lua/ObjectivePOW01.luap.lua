function ObjectivePOW01(owner)
  powreinforcements = owner
  SetActive(Troop.TundranBazookaVet01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.TundranBazookaVet02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.TundranBazookaVet03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.TundranBazookaVet04, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.TundranBazookaVet05, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.TundranBazookaVet06, constant.INACTIVE, constant.ADJUST_WEAPON)
  Despawn(Troop.TundranBazookaVet01, true)
  Despawn(Troop.TundranBazookaVet02, true)
  Despawn(Troop.TundranBazookaVet03, true)
  Despawn(Troop.TundranBazookaVet04, true)
  Despawn(Troop.TundranBazookaVet05, true)
  Despawn(Troop.TundranBazookaVet06, true)
  while missionend == 0 do
    if pow01 == 0 and IsDead(Destroyable_Object.POW01Fence01) or IsDead(Destroyable_Object.POW01Fence02) or IsDead(Destroyable_Object.POW01Fence03) or IsDead(Destroyable_Object.POW01Fence04) or IsDead(Destroyable_Object.POW01Fence05) or IsDead(Destroyable_Object.POW01Fence06) or IsDead(Destroyable_Object.POW01Fence07) or IsDead(Destroyable_Object.POW01Fence08) or IsDead(Destroyable_Object.POW01Fence09) or IsDead(Destroyable_Object.POW01Fence10) or IsDead(Destroyable_Object.POW01Fence11) or IsDead(Destroyable_Object.POW01Fence12) or IsDead(Destroyable_Object.POW01Fence13) or IsDead(Destroyable_Object.POW01Fence14) or IsDead(Destroyable_Object.POW01Fence15) or IsDead(Destroyable_Object.POW01Fence16) or IsDead(Building.POW01AmmoDump01) then
      Kill(Destroyable_Object.POW01Fence01)
      Kill(Destroyable_Object.POW01Fence02)
      Kill(Destroyable_Object.POW01Fence03)
      Kill(Destroyable_Object.POW01Fence04)
      Kill(Destroyable_Object.POW01Fence05)
      Kill(Destroyable_Object.POW01Fence06)
      Kill(Destroyable_Object.POW01Fence07)
      Kill(Destroyable_Object.POW01Fence08)
      Kill(Destroyable_Object.POW01Fence09)
      Kill(Destroyable_Object.POW01Fence10)
      Kill(Destroyable_Object.POW01Fence11)
      Kill(Destroyable_Object.POW01Fence12)
      Kill(Destroyable_Object.POW01Fence13)
      Kill(Destroyable_Object.POW01Fence14)
      Kill(Destroyable_Object.POW01Fence15)
      Kill(Destroyable_Object.POW01Fence16)
      Kill(Building.POW01AmmoDump01)
      SetObjectiveData(Objective.POW01, constant.OBJECTIVE_DATA_STATE, 1)
      SetActive(Troop.TundranBazookaVet01, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.TundranBazookaVet02, constant.ACTIVE, constant.ADJUST_WEAPON)
      EndFrame()
      SetActive(Troop.TundranBazookaVet03, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.TundranBazookaVet04, constant.ACTIVE, constant.ADJUST_WEAPON)
      EndFrame()
      SetActive(Troop.TundranBazookaVet05, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.TundranBazookaVet06, constant.ACTIVE, constant.ADJUST_WEAPON)
      EndFrame()
      PhoneMessageWithObjective(57, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      if GetSpawnMode() == eModeAction.Follow then
        FollowUnit(Troop.TundranBazookaVet01, GetPlayerUnit(0), 30, constant.ORDER_NORMAL)
        FollowUnit(Troop.TundranBazookaVet02, GetPlayerUnit(0), 30, constant.ORDER_NORMAL)
        FollowUnit(Troop.TundranBazookaVet03, GetPlayerUnit(0), 30, constant.ORDER_NORMAL)
        FollowUnit(Troop.TundranBazookaVet04, GetPlayerUnit(0), 30, constant.ORDER_NORMAL)
        FollowUnit(Troop.TundranBazookaVet05, GetPlayerUnit(0), 30, constant.ORDER_NORMAL)
        FollowUnit(Troop.TundranBazookaVet06, GetPlayerUnit(0), 30, constant.ORDER_NORMAL)
      end
      pow01 = 1
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      DebugOut("*ObjectivePOW01* - The player has rescued the POW Bazooka Vets")
      if IsDead(Ground_Vehicle.XylvanianLightTank05) == false or IsDead(Ground_Vehicle.XylvanianLightTank06) == false then
        WaitFor(5)
        PhoneMessage(58, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Prison_Ubel_Sad, constant.PLAYER_ONE)
        GoToArea(Ground_Vehicle.XylvanianLightTank05, -36, -314, 10)
        GoToArea(Ground_Vehicle.XylvanianLightTank06, -36, -314, 10)
        DebugOut("*ObjectivePOW01* - The Xylvanian Light Tanks are on the way to attack the Bazooka Vet POWs")
        do break end
        EndFrame()
      end
    end
  end
end

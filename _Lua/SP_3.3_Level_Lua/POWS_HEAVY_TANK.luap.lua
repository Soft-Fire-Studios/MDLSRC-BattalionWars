function POWS_HEAVY_TANK(owner)
  POWTANK = owner
  SetActive(Troop.AIhtank2driver1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.AIhtank2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetUnitInvulnerable(Ground_Vehicle.AIhtank2, true)
  while true do
    if IsDead(Destroyable_Object.powfence13) or IsDead(Destroyable_Object.powfence14) or IsDead(Destroyable_Object.powfence15) or IsDead(Destroyable_Object.powfence16) or IsDead(Destroyable_Object.powfence17) or IsDead(Destroyable_Object.powfence18) or IsDead(Destroyable_Object.powfence19) or IsDead(Destroyable_Object.powfence20) or IsDead(Destroyable_Object.powfence21) or IsDead(Destroyable_Object.powfence22) or IsDead(Destroyable_Object.powfence23) or IsDead(Destroyable_Object.powfence24) or IsDead(Destroyable_Object.powfence25) or IsDead(Destroyable_Object.powfence26) or IsDead(Destroyable_Object.powfence27) or IsDead(Destroyable_Object.powfence28) or IsDead(Destroyable_Object.powfence29) or IsDead(Building.POWtankCAMPdump1) or IsDead(Building.POWtankCAMPdump2) then
      break
    else
      EndFrame()
    end
  end
  STALLALLUNITSDEADCHECK = 1
  Kill(Destroyable_Object.powfence13)
  Kill(Destroyable_Object.powfence14)
  Kill(Destroyable_Object.powfence15)
  Kill(Destroyable_Object.powfence16)
  Kill(Destroyable_Object.powfence17)
  Kill(Destroyable_Object.powfence18)
  Kill(Destroyable_Object.powfence19)
  Kill(Destroyable_Object.powfence20)
  Kill(Destroyable_Object.powfence21)
  Kill(Destroyable_Object.powfence22)
  Kill(Destroyable_Object.powfence23)
  Kill(Destroyable_Object.powfence24)
  Kill(Destroyable_Object.powfence25)
  Kill(Destroyable_Object.powfence26)
  Kill(Destroyable_Object.powfence27)
  Kill(Destroyable_Object.powfence28)
  Kill(Destroyable_Object.powfence29)
  Kill(Building.POWtankCAMPdump1)
  Kill(Building.POWtankCAMPdump2)
  EndFrame()
  if MidCutscene1start == false then
    SetHealthPercent(Troop.AIhtank2driver1, 100)
    SetHealthPercent(Ground_Vehicle.AIhtank2, 100)
    SetObjectiveData(Objective_Marker.POWtank, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.POWtank, constant.OBJECTIVE_DATA_STATE, 1)
    TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
    PhoneMessageWithObjective(22, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
    EnterVehicle(Troop.AIhtank2driver1, Ground_Vehicle.AIhtank2, constant.ORDER_FORCED)
    AddToGroup(Unit_Group.AIarmy, Ground_Vehicle.AIhtank2)
    repeat
      EndFrame()
    until NumPassengersInUnit(Ground_Vehicle.AIhtank2) == 1
    while true do
      SetActive(Ground_Vehicle.AIhtank2, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetHealthPercent(Ground_Vehicle.AIhtank2, 100)
      if GetSpawnMode() == eModeAction.Follow then
        FollowUnit(Ground_Vehicle.AIhtank2, GetPlayerUnit(), -1, constant.ORDER_FORCED)
      end
      SetUnitInvulnerable(Ground_Vehicle.AIhtank2, false)
      STALLALLUNITSDEADCHECK = 0
      break
    end
    EndFrame()
    TankFree = true
  elseif MidCutscene1start == true then
    SetHealthPercent(Troop.AIhtank2driver1, 100)
    SetHealthPercent(Ground_Vehicle.AIhtank2, 100)
    EnterVehicle(Troop.AIhtank2driver1, Ground_Vehicle.AIhtank2, constant.ORDER_FORCED)
    AddToGroup(Unit_Group.AIarmy, Ground_Vehicle.AIhtank2)
    repeat
      EndFrame()
    until NumPassengersInUnit(Ground_Vehicle.AIhtank2) == 1
    while true do
      SetActive(Ground_Vehicle.AIhtank2, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetHealthPercent(Ground_Vehicle.AIhtank2, 100)
      SetUnitInvulnerable(Ground_Vehicle.AIhtank2, false)
      EndFrame()
      EnableWeapon(Ground_Vehicle.AIhtank2, 1)
      break
    end
    EndFrame()
    GoToArea(Ground_Vehicle.AIhtank2, -784, -92, 10, constant.ORDER_FORCED)
    EndFrame()
  end
end

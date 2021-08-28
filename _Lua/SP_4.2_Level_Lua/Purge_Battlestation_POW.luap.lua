function Purge_Battlestation_POW(owner)
  Despawn(Air_Vehicle.SolarGunship01, true)
  Despawn(Air_Vehicle.SolarGunship02, true)
  SetActive(Troop.LegionBattlestationTroop01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.LegionBattlestationTroop02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.LegionBattlestationTroop03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.LegionBattlestationTroop04, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.LegionBattlestationTroop05, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.LegionBattlestationTroop06, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.ILtank02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.ILtank03, constant.INACTIVE, constant.ADJUST_WEAPON)
  local POWFence = {
    Destroyable_Object.POWFence01,
    Destroyable_Object.POWFence02,
    Destroyable_Object.POWFence03,
    Destroyable_Object.POWFence04,
    Destroyable_Object.POWFence05,
    Destroyable_Object.POWFence06,
    Destroyable_Object.POWFence07,
    Destroyable_Object.POWFence08,
    Destroyable_Object.POWFence09,
    Destroyable_Object.POWFence10,
    Destroyable_Object.POWFence11,
    Destroyable_Object.POWFence12,
    Destroyable_Object.POWFence13,
    Destroyable_Object.POWFence14,
    Destroyable_Object.POWFence15,
    Destroyable_Object.POWFence16,
    Destroyable_Object.POWFence17,
    Destroyable_Object.POWFence18,
    Destroyable_Object.POWFence19,
    Destroyable_Object.POWFence20,
    Destroyable_Object.POWFence21,
    Destroyable_Object.POWFence22,
    Destroyable_Object.POWFence23,
    Destroyable_Object.POWFence24,
    Destroyable_Object.POWFence25,
    Destroyable_Object.POWFence26,
    Building.POWAmmoDump01
  }
  local POWs = 0
  POWCamp(POWs, 0, POWFence, 27, 0)
  Kill(Destroyable_Object.POWFence01)
  Kill(Destroyable_Object.POWFence02)
  Kill(Destroyable_Object.POWFence03)
  Kill(Destroyable_Object.POWFence04)
  Kill(Destroyable_Object.POWFence05)
  Kill(Destroyable_Object.POWFence06)
  Kill(Destroyable_Object.POWFence07)
  Kill(Destroyable_Object.POWFence08)
  Kill(Destroyable_Object.POWFence09)
  Kill(Destroyable_Object.POWFence10)
  WaitFor(1)
  Kill(Destroyable_Object.POWFence11)
  Kill(Destroyable_Object.POWFence12)
  Kill(Destroyable_Object.POWFence13)
  Kill(Destroyable_Object.POWFence14)
  Kill(Destroyable_Object.POWFence15)
  Kill(Destroyable_Object.POWFence16)
  Kill(Destroyable_Object.POWFence17)
  Kill(Destroyable_Object.POWFence18)
  Kill(Destroyable_Object.POWFence19)
  Kill(Destroyable_Object.POWFence20)
  WaitFor(1)
  Kill(Destroyable_Object.POWFence21)
  Kill(Destroyable_Object.POWFence22)
  Kill(Destroyable_Object.POWFence23)
  Kill(Destroyable_Object.POWFence24)
  Kill(Destroyable_Object.POWFence25)
  Kill(Destroyable_Object.POWFence26)
  Kill(Building.POWAmmoDump01)
  SetObjectiveData(Objective.SolarFuelStation01, constant.OBJECTIVE_DATA_STATE, 1)
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  EnterVehicle(Troop.LegionBattlestationTroop01, Ground_Vehicle.ILtank02, constant.ORDER_FORCED)
  EnterVehicle(Troop.LegionBattlestationTroop02, Ground_Vehicle.ILtank02, constant.ORDER_FORCED)
  EnterVehicle(Troop.LegionBattlestationTroop03, Ground_Vehicle.ILtank02, constant.ORDER_FORCED)
  EnterVehicle(Troop.LegionBattlestationTroop04, Ground_Vehicle.ILtank03, constant.ORDER_FORCED)
  EnterVehicle(Troop.LegionBattlestationTroop05, Ground_Vehicle.ILtank03, constant.ORDER_FORCED)
  EnterVehicle(Troop.LegionBattlestationTroop06, Ground_Vehicle.ILtank03, constant.ORDER_FORCED)
  SetActive(Ground_Vehicle.ILtank02, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.ILtank03, constant.ACTIVE, constant.ADJUST_WEAPON)
  WaitFor(2)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Ground_Vehicle.ILtank02, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Ground_Vehicle.ILtank03, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
  end
  PhoneMessageWithObjective(24, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  fuelstation = 1
  AttackTarget(Air_Vehicle.SolarGunship03, Ground_Vehicle.ILtank02, constant.ORDER_FORCED)
  AttackTarget(Air_Vehicle.SolarGunship04, Ground_Vehicle.ILtank03, constant.ORDER_FORCED)
end

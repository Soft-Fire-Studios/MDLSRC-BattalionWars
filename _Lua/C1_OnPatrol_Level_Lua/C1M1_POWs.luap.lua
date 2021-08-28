function C1M1_POWs(owner)
  SetActive(Troop.WFgruntRecon0001, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFgruntRecon0002, constant.INACTIVE, constant.ADJUST_WEAPON)
  while true do
    if IsDead(Building.AmmoTent0001) then
      break
    end
    if IsDead(Destroyable_Object.WireA0001) or IsDead(Destroyable_Object.WireA0002) or IsDead(Destroyable_Object.WireA0003) or IsDead(Destroyable_Object.WireA0004) or IsDead(Destroyable_Object.WireA0005) or IsDead(Destroyable_Object.WireA0006) or IsDead(Destroyable_Object.WireA0007) or IsDead(Destroyable_Object.WireA0008) then
      break
    end
    EndFrame()
  end
  Kill(Building.AmmoTent0001)
  Kill(Destroyable_Object.WireA0001)
  Kill(Destroyable_Object.WireA0002)
  Kill(Destroyable_Object.WireA0003)
  Kill(Destroyable_Object.WireA0004)
  Kill(Destroyable_Object.WireA0005)
  Kill(Destroyable_Object.WireA0006)
  Kill(Destroyable_Object.WireA0007)
  Kill(Destroyable_Object.WireA0008)
  SetHealthPercent(Troop.WFgruntRecon0001, 100)
  SetHealthPercent(Troop.WFgruntRecon0002, 100)
  SetHealthPercent(Ground_Vehicle.WFrecon0001, 100)
  C1M1_POWs_Freed = 1
  DebugOut("C1M1_POWs_Freed = ", C1M1_POWs_Freed)
  if IsInArea(Troop.WFgruntStart, Map_Zone.MissionBoundary0014) or IsInArea(Troop.WFgruntStart, Map_Zone.MissionBoundary0013) or IsInArea(Troop.WFgruntStart, Map_Zone.MissionBoundary0012) or IsInArea(Troop.WFgruntStart, Map_Zone.MissionBoundary0011) or IsInArea(Troop.WFgruntStart, Map_Zone.MissionBoundary0010) or IsInArea(Troop.WFgruntStart, Map_Zone.MissionBoundary0009) or IsInArea(Troop.WFgruntStart, Map_Zone.MissionBoundary0008) or IsInArea(Troop.WFgruntStart, Map_Zone.MissionBoundary0007) or IsInArea(Troop.WFgruntStart, Map_Zone.MissionBoundary0006) or IsInArea(Troop.WFgruntStart, Map_Zone.MissionBoundary0005) or IsInArea(Troop.WFgruntStart, Map_Zone.MissionBoundary0004) or IsInArea(Troop.WFgruntStart, Map_Zone.MissionBoundary0003) or IsInArea(Troop.WFgruntStart, Map_Zone.MissionBoundary0002) or IsInArea(Troop.WFgruntStart, Map_Zone.MissionBoundary0001) or IsInArea(Troop.WFgruntStart, Map_Zone.Entity0028) or IsInArea(Troop.WFgruntStart, Map_Zone.Entity0021) then
    SetActive(Troop.WFgruntStart, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  end
  if IsInArea(Troop.WFgrunt0001, Map_Zone.MissionBoundary0014) or IsInArea(Troop.WFgrunt0001, Map_Zone.MissionBoundary0013) or IsInArea(Troop.WFgrunt0001, Map_Zone.MissionBoundary0012) or IsInArea(Troop.WFgrunt0001, Map_Zone.MissionBoundary0011) or IsInArea(Troop.WFgrunt0001, Map_Zone.MissionBoundary0010) or IsInArea(Troop.WFgrunt0001, Map_Zone.MissionBoundary0009) or IsInArea(Troop.WFgrunt0001, Map_Zone.MissionBoundary0008) or IsInArea(Troop.WFgrunt0001, Map_Zone.MissionBoundary0007) or IsInArea(Troop.WFgrunt0001, Map_Zone.MissionBoundary0006) or IsInArea(Troop.WFgrunt0001, Map_Zone.MissionBoundary0005) or IsInArea(Troop.WFgrunt0001, Map_Zone.MissionBoundary0004) or IsInArea(Troop.WFgrunt0001, Map_Zone.MissionBoundary0003) or IsInArea(Troop.WFgrunt0001, Map_Zone.MissionBoundary0002) or IsInArea(Troop.WFgrunt0001, Map_Zone.MissionBoundary0001) or IsInArea(Troop.WFgrunt0001, Map_Zone.Entity0028) or IsInArea(Troop.WFgrunt0001, Map_Zone.Entity0021) then
    SetActive(Troop.WFgrunt0001, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  end
  if IsInArea(Troop.WFgrunt0002, Map_Zone.MissionBoundary0014) or IsInArea(Troop.WFgrunt0002, Map_Zone.MissionBoundary0013) or IsInArea(Troop.WFgrunt0002, Map_Zone.MissionBoundary0012) or IsInArea(Troop.WFgrunt0002, Map_Zone.MissionBoundary0011) or IsInArea(Troop.WFgrunt0002, Map_Zone.MissionBoundary0010) or IsInArea(Troop.WFgrunt0002, Map_Zone.MissionBoundary0009) or IsInArea(Troop.WFgrunt0002, Map_Zone.MissionBoundary0008) or IsInArea(Troop.WFgrunt0002, Map_Zone.MissionBoundary0007) or IsInArea(Troop.WFgrunt0002, Map_Zone.MissionBoundary0006) or IsInArea(Troop.WFgrunt0002, Map_Zone.MissionBoundary0005) or IsInArea(Troop.WFgrunt0002, Map_Zone.MissionBoundary0004) or IsInArea(Troop.WFgrunt0002, Map_Zone.MissionBoundary0003) or IsInArea(Troop.WFgrunt0002, Map_Zone.MissionBoundary0002) or IsInArea(Troop.WFgrunt0002, Map_Zone.MissionBoundary0001) or IsInArea(Troop.WFgrunt0002, Map_Zone.Entity0028) or IsInArea(Troop.WFgrunt0002, Map_Zone.Entity0021) then
    SetActive(Troop.WFgrunt0002, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  end
  if IsInArea(Troop.WFgrunt0003, Map_Zone.MissionBoundary0014) or IsInArea(Troop.WFgrunt0003, Map_Zone.MissionBoundary0013) or IsInArea(Troop.WFgrunt0003, Map_Zone.MissionBoundary0012) or IsInArea(Troop.WFgrunt0003, Map_Zone.MissionBoundary0011) or IsInArea(Troop.WFgrunt0003, Map_Zone.MissionBoundary0010) or IsInArea(Troop.WFgrunt0003, Map_Zone.MissionBoundary0009) or IsInArea(Troop.WFgrunt0003, Map_Zone.MissionBoundary0008) or IsInArea(Troop.WFgrunt0003, Map_Zone.MissionBoundary0007) or IsInArea(Troop.WFgrunt0003, Map_Zone.MissionBoundary0006) or IsInArea(Troop.WFgrunt0003, Map_Zone.MissionBoundary0005) or IsInArea(Troop.WFgrunt0003, Map_Zone.MissionBoundary0004) or IsInArea(Troop.WFgrunt0003, Map_Zone.MissionBoundary0003) or IsInArea(Troop.WFgrunt0003, Map_Zone.MissionBoundary0002) or IsInArea(Troop.WFgrunt0003, Map_Zone.MissionBoundary0001) or IsInArea(Troop.WFgrunt0003, Map_Zone.Entity0028) or IsInArea(Troop.WFgrunt0003, Map_Zone.Entity0021) then
    SetActive(Troop.WFgrunt0003, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  end
  if IsInArea(Troop.WFgrunt0004, Map_Zone.MissionBoundary0014) or IsInArea(Troop.WFgrunt0004, Map_Zone.MissionBoundary0013) or IsInArea(Troop.WFgrunt0004, Map_Zone.MissionBoundary0012) or IsInArea(Troop.WFgrunt0004, Map_Zone.MissionBoundary0011) or IsInArea(Troop.WFgrunt0004, Map_Zone.MissionBoundary0010) or IsInArea(Troop.WFgrunt0004, Map_Zone.MissionBoundary0009) or IsInArea(Troop.WFgrunt0004, Map_Zone.MissionBoundary0008) or IsInArea(Troop.WFgrunt0004, Map_Zone.MissionBoundary0007) or IsInArea(Troop.WFgrunt0004, Map_Zone.MissionBoundary0006) or IsInArea(Troop.WFgrunt0004, Map_Zone.MissionBoundary0005) or IsInArea(Troop.WFgrunt0004, Map_Zone.MissionBoundary0004) or IsInArea(Troop.WFgrunt0004, Map_Zone.MissionBoundary0003) or IsInArea(Troop.WFgrunt0004, Map_Zone.MissionBoundary0002) or IsInArea(Troop.WFgrunt0004, Map_Zone.MissionBoundary0001) or IsInArea(Troop.WFgrunt0004, Map_Zone.Entity0028) or IsInArea(Troop.WFgrunt0004, Map_Zone.Entity0021) then
    SetActive(Troop.WFgrunt0004, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  end
  EnterVehicle(Troop.WFgruntRecon0001, Ground_Vehicle.WFrecon0001, constant.ORDER_FORCED)
  EnterVehicle(Troop.WFgruntRecon0002, Ground_Vehicle.WFrecon0001, constant.ORDER_FORCED)
  WaitFor(1)
  SetHealthPercent(Troop.WFgruntRecon0001, 100)
  SetHealthPercent(Troop.WFgruntRecon0002, 100)
  SetHealthPercent(Ground_Vehicle.WFrecon0001, 100)
  EnableControllerItem(constant.CONTROL_TRANSFER, 1)
  EnableControllerItem(constant.CONTROL_HUD_TRANSFER, 1)
  SetActive(Troop.WFgruntRecon0001, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.WFgruntRecon0002, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.WFrecon0001, constant.ACTIVE, constant.ADJUST_WEAPON)
  Spawn(Building.Entity0007)
  Spawn(Building.Entity0008)
  EndFrame()
  return
end

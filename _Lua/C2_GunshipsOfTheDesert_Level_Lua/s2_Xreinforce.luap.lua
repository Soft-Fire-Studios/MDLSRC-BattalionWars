function s2_Xreinforce(owner)
  local messageplayed = 0
  local rangeGunship01 = 0
  local rangeGunship02 = 0
  local rangeGunship03 = 0
  WaitFor(8)
  while true do
    if AirbaseAttacked == 1 then
      DebugOut("exiting script s2 Xreinforce")
      break
    end
    if 1 <= NumItemsInArea(-35, 250, 120, flag.TYPE_WFRONTIER) then
      GunshipReinforced = 1
      SetObjectiveData(Objective.Primary_Airbase, constant.OBJECTIVE_DATA_STATE, 1)
      FollowWaypoint(Air_Vehicle.Xgunship0002, Waypoint.Entity0053, 5, 5, constant.ORDER_NORMAL)
      Spawn(Troop.XgruntPilot0001)
      Spawn(Troop.XgruntPilot0002)
      Spawn(Troop.XgruntPilot0004)
      Spawn(Troop.XgruntPilot0005)
      Spawn(Troop.XgruntPilot0006)
      break
    end
    EndFrame()
  end
  if AirbaseAttacked == 0 then
    if messageplayed == 0 then
      messageplayed = 1
      PhoneMessage(8, constant.ID_NONE, 1, 8, SpriteID.CO_X_Ingrid_Sad)
      WaitFor(8)
    end
    if 1 <= GetHealthPercent(Air_Vehicle.Xgunship0003) then
      EnterVehicle(Troop.XgruntPilot0002, Air_Vehicle.Xgunship0003, constant.ORDER_FORCED)
    end
    if 1 <= GetHealthPercent(Air_Vehicle.Xgunship0001) then
      EnterVehicle(Troop.XgruntPilot0001, Air_Vehicle.Xgunship0001, constant.ORDER_FORCED)
    end
    if 1 <= GetHealthPercent(Air_Vehicle.Xgunship0004) then
      EnterVehicle(Troop.XgruntPilot0004, Air_Vehicle.Xgunship0004, constant.ORDER_FORCED)
    end
    if 1 <= GetHealthPercent(Air_Vehicle.Xgunship0005) then
      EnterVehicle(Troop.XgruntPilot0005, Air_Vehicle.Xgunship0005, constant.ORDER_FORCED)
    end
    if 1 <= GetHealthPercent(Air_Vehicle.Xgunship0006) then
      EnterVehicle(Troop.XgruntPilot0006, Air_Vehicle.Xgunship0006, constant.ORDER_FORCED)
    end
  end
  EndFrame()
  return
end

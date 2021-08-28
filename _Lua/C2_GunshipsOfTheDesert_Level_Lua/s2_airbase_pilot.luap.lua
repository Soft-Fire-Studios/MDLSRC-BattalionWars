function s2_airbase_pilot(owner)
  local messageplayed = 0
  Despawn(Troop.XgruntPilot0001)
  Despawn(Troop.XgruntPilot0002)
  Despawn(Troop.XgruntPilot0004)
  Despawn(Troop.XgruntPilot0005)
  Despawn(Troop.XgruntPilot0006)
  while true do
    if GunshipReinforced == 1 then
      DebugOut("exiting script s2 airbase pilot")
      break
    end
    if GetHealthPercent(Air_Vehicle.Xgunship0001) <= 80 then
      break
    end
    if 80 >= GetHealthPercent(Air_Vehicle.Xgunship0002) then
      break
    end
    if 80 >= GetHealthPercent(Air_Vehicle.Xgunship0003) then
      break
    end
    if 80 >= GetHealthPercent(Air_Vehicle.Xgunship0004) then
      break
    end
    if 80 >= GetHealthPercent(Air_Vehicle.Xgunship0005) then
      break
    end
    if 80 >= GetHealthPercent(Air_Vehicle.Xgunship0006) then
      break
    end
    EndFrame()
  end
  Spawn(Troop.XgruntPilot0001)
  Spawn(Troop.XgruntPilot0002)
  Spawn(Troop.XgruntPilot0004)
  Spawn(Troop.XgruntPilot0005)
  Spawn(Troop.XgruntPilot0006)
  if GunshipReinforced == 0 then
    AirbaseAttacked = 1
    DebugOut("AirbaseAttacked = ", AirbaseAttacked)
    if messageplayed == 0 then
      messageplayed = 1
      PhoneMessage(8, constant.ID_NONE, 1, 8, SpriteID.CO_X_Ingrid_Sad)
      PhoneMessage(9, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Happy)
    end
    WaitFor(10)
    if 1 <= GetHealthPercent(Air_Vehicle.Xgunship0004) then
      EnterVehicle(Troop.XgruntPilot0004, Air_Vehicle.Xgunship0004, constant.ORDER_FORCED)
    end
    if 1 <= GetHealthPercent(Air_Vehicle.Xgunship0005) then
      EnterVehicle(Troop.XgruntPilot0005, Air_Vehicle.Xgunship0005, constant.ORDER_FORCED)
    end
    if 1 <= GetHealthPercent(Air_Vehicle.Xgunship0006) then
      EnterVehicle(Troop.XgruntPilot0006, Air_Vehicle.Xgunship0006, constant.ORDER_FORCED)
    end
    WaitFor(20)
    if 1 <= GetHealthPercent(Air_Vehicle.Xgunship0003) then
      EnterVehicle(Troop.XgruntPilot0002, Air_Vehicle.Xgunship0003, constant.ORDER_FORCED)
    end
    if 1 <= GetHealthPercent(Air_Vehicle.Xgunship0001) then
      EnterVehicle(Troop.XgruntPilot0001, Air_Vehicle.Xgunship0001, constant.ORDER_FORCED)
    end
  end
  EndFrame()
  return
end

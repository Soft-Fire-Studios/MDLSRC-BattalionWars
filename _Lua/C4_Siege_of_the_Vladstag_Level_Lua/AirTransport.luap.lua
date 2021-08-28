function AirTransport(owner)
  DebugOut("Air vehcile script is working!")
  while true do
    if GetMovementState(Air_Vehicle.WFAirTransport1) == constant.MOVEMENT_STATE_ON_GROUND then
      PhoneMessage(29, 0, 0, 5, SpriteID.CO_WF_Betty_Happy)
      DebugOut("Air vehcile sxiting!")
      WaitFor(7)
      ExitVehicle(Ground_Vehicle.WFlightTank0004, Air_Vehicle.WFAirTransport1)
      ExitVehicle(Troop.WFChainGun7, Air_Vehicle.WFAirTransport1)
      ExitVehicle(Troop.WFMortar7, Air_Vehicle.WFAirTransport1)
      ExitVehicle(Troop.WFMortar8, Air_Vehicle.WFAirTransport1)
      ExitVehicle(Troop.WFMissile7, Air_Vehicle.WFAirTransport1)
      WaitFor(1)
      SetActive(Ground_Vehicle.WFlightTank0004, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFChainGun7, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFChainGun7, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFMortar7, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFMortar8, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFMissile7, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFMissile8, constant.ACTIVE, constant.ADJUST_WEAPON)
      WaitFor(15)
      LandAirUnit(Air_Vehicle.WFAirTransport1, -153, -790, constant.ORDER_FORCED)
      break
    end
    EndFrame()
  end
  return
end

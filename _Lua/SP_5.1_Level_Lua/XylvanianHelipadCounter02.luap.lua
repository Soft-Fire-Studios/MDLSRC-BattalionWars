function XylvanianHelipadCounter02(owner)
  helipadowner02 = owner
  while true do
    if NumItemsInArea(Map_Zone.POW02ScriptedAttack, flag.TYPE_TUNDRAN) > 0 then
      Spawn(Air_Vehicle.XPOW2Transport02)
      SetActive(Air_Vehicle.XPOW2Transport02, constant.ACTIVE)
      SetActive(Troop.XPOW2Transport02Troop01, constant.ACTIVE)
      SetActive(Troop.XPOW2Transport02Troop02, constant.ACTIVE)
      SetActive(Troop.XPOW2Transport02Troop03, constant.ACTIVE)
      SetActive(Troop.XPOW2Transport02Troop04, constant.ACTIVE)
      LandAirUnit(Air_Vehicle.XPOW2Transport02, 281, 57, constant.ORDER_FORCED, false, 20, 150)
      DebugOut("*XylvanianHelipadCounter02* - The XPOW2Transport02 has landed")
    else
      WaitFor(0.1)
      EndFrame()
      while true do
        if IsInArea(Air_Vehicle.XPOW2Transport02, 281, 57, 25) and GetMovementState(Air_Vehicle.XPOW2Transport02) == constant.MOVEMENT_STATE_ON_GROUND then
        else
          EndFrame()
          while NumPassengersInUnit(Air_Vehicle.XPOW2Transport02) > 3 do
            ExitVehicle(GetUnitInSeat(Air_Vehicle.XPOW2Transport02, 3), Air_Vehicle.XPOW2Transport02)
            WaitFor(0.2)
            ExitVehicle(GetUnitInSeat(Air_Vehicle.XPOW2Transport02, 4), Air_Vehicle.XPOW2Transport02)
            WaitFor(0.2)
            ExitVehicle(GetUnitInSeat(Air_Vehicle.XPOW2Transport02, 5), Air_Vehicle.XPOW2Transport02)
            WaitFor(0.2)
            ExitVehicle(GetUnitInSeat(Air_Vehicle.XPOW2Transport02, 6), Air_Vehicle.XPOW2Transport02)
            WaitFor(0.2)
            EndFrame()
          end
        end
      end
    end
  end
  GoToArea(Air_Vehicle.XPOW2Transport02, -193, 1007, 10, 0, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until IsInArea(Air_Vehicle.XPOW2Transport02, -193, 1007, 20)
  Despawn(Air_Vehicle.XPOW2Transport02)
  DebugOut("*XylvanianHelipadCounter02* - Helipad 02 Scripted Attack 02 complete")
end

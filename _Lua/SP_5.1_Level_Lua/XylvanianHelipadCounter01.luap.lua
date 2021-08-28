function XylvanianHelipadCounter01(owner)
  helipadowner01 = owner
  while true do
    if NumItemsInArea(Map_Zone.POW02ScriptedAttack, flag.TYPE_TUNDRAN) > 0 then
      Spawn(Air_Vehicle.XPOW2Transport01)
      SetActive(Air_Vehicle.XPOW2Transport01, constant.ACTIVE)
      SetActive(Troop.XPOW2Transport01Troop01, constant.ACTIVE)
      SetActive(Troop.XPOW2Transport01Troop02, constant.ACTIVE)
      SetActive(Troop.XPOW2Transport01Troop03, constant.ACTIVE)
      SetActive(Troop.XPOW2Transport01Troop04, constant.ACTIVE)
      PhoneMessage(52, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Prison_Ubel_Sad, constant.PLAYER_ONE)
      PhoneMessage(53, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_ONE)
      LandAirUnit(Air_Vehicle.XPOW2Transport01, 225, 98, constant.ORDER_FORCED, false, 20, 240)
      DebugOut("*XylvanianHelipadCounter01* - The XPOW2Transport01 has landed")
    else
      WaitFor(0.1)
      EndFrame()
      while true do
        if IsInArea(Air_Vehicle.XPOW2Transport01, 225, 98, 25) and GetMovementState(Air_Vehicle.XPOW2Transport01) == constant.MOVEMENT_STATE_ON_GROUND then
        else
          EndFrame()
          while NumPassengersInUnit(Air_Vehicle.XPOW2Transport01) > 3 do
            ExitVehicle(GetUnitInSeat(Air_Vehicle.XPOW2Transport01, 3), Air_Vehicle.XPOW2Transport01)
            WaitFor(0.2)
            ExitVehicle(GetUnitInSeat(Air_Vehicle.XPOW2Transport01, 4), Air_Vehicle.XPOW2Transport01)
            WaitFor(0.2)
            ExitVehicle(GetUnitInSeat(Air_Vehicle.XPOW2Transport01, 5), Air_Vehicle.XPOW2Transport01)
            WaitFor(0.2)
            ExitVehicle(GetUnitInSeat(Air_Vehicle.XPOW2Transport01, 6), Air_Vehicle.XPOW2Transport01)
            WaitFor(0.2)
            EndFrame()
          end
        end
      end
    end
  end
  GoToArea(Troop.XPOW2Transport01Troop01, 258, 101, 5)
  GoToArea(Troop.XPOW2Transport01Troop02, 258, 101, 5)
  GoToArea(Troop.XPOW2Transport01Troop03, 258, 101, 5)
  GoToArea(Troop.XPOW2Transport01Troop04, 258, 101, 5)
  GoToArea(Air_Vehicle.XPOW2Transport01, -193, 1007, 10, 0, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until IsInArea(Air_Vehicle.XPOW2Transport01, -193, 1007, 20)
  Despawn(Air_Vehicle.XPOW2Transport01)
  DebugOut("*XylvanianHelipadCounter01* - Helipad 01 Scripted Attack 01 complete")
end

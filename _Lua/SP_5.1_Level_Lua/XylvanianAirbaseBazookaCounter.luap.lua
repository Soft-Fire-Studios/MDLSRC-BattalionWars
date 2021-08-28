function XylvanianAirbaseBazookaCounter(owner)
  bazookacounter = owner
  while missionend == 0 do
    if airbase < 2 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.XAirTransport01) and TestFlags(GetPlayerUnit(constant.PLAYER_ONE), flag.GTYPE_GUNSHIP, constant.GTYPE) == false then
      Spawn(Air_Vehicle.XAirTransport)
      SetActive(Air_Vehicle.XAirTransport, constant.ACTIVE)
      SetActive(Troop.XTransportTroop02, constant.ACTIVE)
      SetActive(Troop.XTransportTroop03, constant.ACTIVE)
      SetActive(Troop.XTransportTroop04, constant.ACTIVE)
      SetActive(Troop.XTransportTroop05, constant.ACTIVE)
      SetActive(Troop.XTransportTroop06, constant.ACTIVE)
      LandAirUnit(Air_Vehicle.XAirTransport, -14, -152, constant.ORDER_FORCED)
      PhoneMessage(62, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
      DebugOut("*XylvanianAirbaseBazookaCounter* - The player has triggered XAirTransport01 script")
    else
      EndFrame()
      while missionend == 0 do
        if IsInArea(Air_Vehicle.XAirTransport, -14, -152, 25) and GetMovementState(Air_Vehicle.XAirTransport) == constant.MOVEMENT_STATE_ON_GROUND then
        else
          EndFrame()
          while NumPassengersInUnit(Air_Vehicle.XAirTransport) > 3 do
            ExitVehicle(GetUnitInSeat(Air_Vehicle.XAirTransport, 3), Air_Vehicle.XAirTransport)
            WaitFor(0.2)
            ExitVehicle(GetUnitInSeat(Air_Vehicle.XAirTransport, 4), Air_Vehicle.XAirTransport)
            WaitFor(0.2)
            ExitVehicle(GetUnitInSeat(Air_Vehicle.XAirTransport, 5), Air_Vehicle.XAirTransport)
            WaitFor(0.2)
            ExitVehicle(GetUnitInSeat(Air_Vehicle.XAirTransport, 6), Air_Vehicle.XAirTransport)
            WaitFor(0.2)
            ExitVehicle(GetUnitInSeat(Air_Vehicle.XAirTransport, 7), Air_Vehicle.XAirTransport)
            WaitFor(0.2)
            EndFrame()
          end
        end
      end
    end
  end
  GoToArea(Troop.XTransportTroop01, -19, -140, 10)
  GoToArea(Troop.XTransportTroop02, -19, -140, 10)
  GoToArea(Troop.XTransportTroop03, -19, -140, 10)
  GoToArea(Troop.XTransportTroop04, -19, -140, 10)
  GoToArea(Troop.XTransportTroop05, -19, -140, 10)
  GoToArea(Air_Vehicle.XAirTransport, -1226, 540, 10, 0, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until IsInArea(Air_Vehicle.XAirTransport, -1226, 540, 20)
  Despawn(Air_Vehicle.XAirTransport)
  DebugOut("*XylvanianAirbaseBazookaCounter* - XAirTransport01 complete")
end

function MP3_WFInvasion_Transport(owner)
  local WFtransportTimer = 0
  while true do
    if IsInArea(owner, Map_Zone.InvasionDropZone01) then
      if owner == Air_Vehicle.WFtransport03 then
        LandAirUnit(owner, WFtransport03XLandingCoord, WFtransport03ZLandingCoord, constant.ORDER_FORCED, true)
      end
      if owner == Air_Vehicle.WFtransport04 then
        LandAirUnit(owner, WFtransport04XLandingCoord, WFtransport04ZLandingCoord, constant.ORDER_FORCED, true)
      end
      if owner == Air_Vehicle.WFtransport05 then
        LandAirUnit(owner, WFtransport05XLandingCoord, WFtransport05ZLandingCoord, constant.ORDER_FORCED, true)
      end
      if owner == Air_Vehicle.WFtransport06 then
        LandAirUnit(owner, WFtransport06XLandingCoord, WFtransport06ZLandingCoord, constant.ORDER_FORCED, true)
      end
    else
      EndFrame()
      while true do
        if GetMovementState(owner) == constant.MOVEMENT_STATE_ON_GROUND then
        else
          EndFrame()
          while true do
            if NumPassengersInUnit(owner) == 6 then
              ExitVehicle(GetUnitInSeat(owner, 5), owner)
              WaitFor(0.5)
            end
            if NumPassengersInUnit(owner) == 5 then
              ExitVehicle(GetUnitInSeat(owner, 4), owner)
              WaitFor(0.5)
            end
            if NumPassengersInUnit(owner) == 4 then
              ExitVehicle(GetUnitInSeat(owner, 3), owner)
              WaitFor(0.5)
            end
            if NumPassengersInUnit(owner) == 3 then
              ExitVehicle(GetUnitInSeat(owner, 2), owner)
              WaitFor(0.5)
            end
            if NumPassengersInUnit(owner) == 2 then
              ExitVehicle(GetUnitInSeat(owner, 1), owner)
              WaitFor(0.5)
            end
            if NumPassengersInUnit(owner) <= 1 then
              if owner == Air_Vehicle.WFtransport03 then
                WFtransportTimer = GetTime() + 60
                WaitFor(3)
                GoToArea(owner, 0, 1300, 50, 0, constant.ORDER_FORCED)
              elseif owner == Air_Vehicle.WFtransport04 then
                WFtransportTimer = GetTime() + 60
                WaitFor(4)
                GoToArea(owner, 0, 1300, 50, 0, constant.ORDER_FORCED)
              elseif owner == Air_Vehicle.WFtransport05 then
                WFtransportTimer = GetTime() + 60
                WaitFor(5)
                GoToArea(owner, 0, 1300, 50, 0, constant.ORDER_FORCED)
              elseif owner == Air_Vehicle.WFtransport06 then
                WFtransportTimer = GetTime() + 60
                WaitFor(2)
                GoToArea(owner, 0, 1300, 50, 0, constant.ORDER_FORCED)
              end
            else
              EndFrame()
              while true do
                if WFtransportTimer < GetTime() then
                  Despawn(owner)
                  break
                end
                EndFrame()
              end
            end
          end
        end
      end
    end
  end
end

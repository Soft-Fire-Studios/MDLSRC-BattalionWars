function JW_Capture_Grunts(owner)
  repeat
    if IsPassengerInUnit(owner, Air_Vehicle.AI_AirTransport01) == false and IsPassengerInUnit(owner, Air_Vehicle.AI_AirTransport02) == false and IsPassengerInUnit(owner, Air_Vehicle.AI_AirTransport03) == false and IsPassengerInUnit(owner, Air_Vehicle.AI_AirTransport04) == false then
      EnterVehicle(owner, Capture_Point.SE_Airbase_CP, constant.ORDER_FORCED)
      break
    end
    EndFrame()
  until IsDead(owner)
end

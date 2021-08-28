function CapturingFuelRefinery(owner)
  repeat
    EndFrame()
  until NumPassengersInUnit(Capture_Point.FuelRefinery) > 0
  PhoneMessage(28, 0, 1, 5, SpriteID.CO_X_Ubel_Happy)
  chopperstatus = 0
  GoToArea(Air_Vehicle.XGunship1, 74, -24, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.XGunship2, 78, -120, constant.ORDER_FORCED)
end

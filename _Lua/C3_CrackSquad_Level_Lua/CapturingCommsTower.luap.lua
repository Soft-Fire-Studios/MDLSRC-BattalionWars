function CapturingCommsTower(owner)
  repeat
    EndFrame()
  until NumPassengersInUnit(Capture_Point.CommunicationsTower) > 0 or chopperstatus == 1
  chopperstatus = 1
  PhoneMessage(18, 0, 1, 5, SpriteID.CO_X_Ubel_Happy)
  WaitFor(5)
  GoToArea(Air_Vehicle.XGunship1, 430, -60, 5, constant.ORDER_NORMAL)
  GoToArea(Air_Vehicle.XGunship2, 430, -60, 5, constant.ORDER_NORMAL)
end

function C1Bonus_Tcopter(owner)
  Despawn(Air_Vehicle.Tgunship0001)
  while true do
    if GetPlayerUnit() == Air_Vehicle.Tgunship0001 then
      PhoneMessage(40, constant.ID_NONE, 2, 6, SpriteID.CO_Nova_Happy)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end

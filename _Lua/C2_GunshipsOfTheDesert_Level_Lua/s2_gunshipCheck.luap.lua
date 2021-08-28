function s2_gunshipCheck(owner)
  local GunshipsInAirMessageDone = 0
  while true do
    if 0 >= GetHealthPercent(Air_Vehicle.Xgunship0001) and 0 >= GetHealthPercent(Air_Vehicle.Xgunship0002) and 0 >= GetHealthPercent(Air_Vehicle.Xgunship0003) and 0 >= GetHealthPercent(Air_Vehicle.Xgunship0004) and 0 >= GetHealthPercent(Air_Vehicle.Xgunship0005) and 0 >= GetHealthPercent(Air_Vehicle.Xgunship0006) then
      PhoneMessage(10, constant.ID_NONE, 1, 6, SpriteID.CO_X_Ingrid_Sad)
      PhoneMessage(11, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end

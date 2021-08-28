function Hints_AntiAir(owner)
  local advance = 0
  WaitFor(10)
  AAHintScript = owner
  repeat
    if GetHealthPercent(Ground_Vehicle.AntiAirVehicle) < 40 then
      PhoneMessage(49, 0, 0, 5, SpriteID.CO_WF_Herman_Sad)
      WaitFor(5)
      advance = 1
    end
    EndFrame()
  until advance == 1
end

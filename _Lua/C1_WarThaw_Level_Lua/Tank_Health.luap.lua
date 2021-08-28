function Tank_Health(owner)
  local loop = 0
  while loop == 0 do
    if GetHealthPercent(Ground_Vehicle.WFLightTank) < 50 then
      WaitFor(2)
      if IsDead(Ground_Vehicle.WFLightTank) == false then
        PhoneMessage(76, 0, 0, 5, SpriteID.CO_WF_Herman_Sad)
        loop = 1
      end
      EndFrame()
    end
    EndFrame()
  end
end

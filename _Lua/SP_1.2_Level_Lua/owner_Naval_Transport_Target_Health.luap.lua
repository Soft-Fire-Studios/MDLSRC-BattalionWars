function owner_Naval_Transport_Target_Health(owner)
  while true do
    if GetHealthPercent(owner) < 25 then
      WaitFor(0.5)
      Kill(owner)
    end
    EndFrame()
  end
end

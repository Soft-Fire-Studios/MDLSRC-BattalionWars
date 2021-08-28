function owner_Naval_Transport_Health(owner)
  repeat
    if NumPassengersInUnit(owner) < 1 and GetHealthPercent(owner) < 25 then
      WaitFor(0.5)
      Kill(owner)
    end
    if NumPassengersInUnit(owner) < 1 and IsInArea(owner, Map_Zone.KillBoats) then
      Kill(owner)
    end
    EndFrame()
  until IsDead(owner)
end

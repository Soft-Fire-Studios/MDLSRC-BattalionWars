function owner_Despawn_Naval_Transport(owner)
  while true do
    if IsInArea(owner, Map_Zone.DespawnBoats) and NumPassengersInUnit(owner) < 1 then
      Kill(owner)
      EndFrame()
      break
    end
    EndFrame()
  end
end

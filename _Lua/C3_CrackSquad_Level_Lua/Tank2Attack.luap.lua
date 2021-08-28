function Tank2Attack(owner)
  repeat
    EndFrame()
  until NumPassengersInUnit(Ground_Vehicle.XTank2) > 0
  AttackTarget(Ground_Vehicle.XTank2, GetPlayerUnit())
end

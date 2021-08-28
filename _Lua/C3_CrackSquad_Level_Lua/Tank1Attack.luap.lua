function Tank1Attack(owner)
  repeat
    EndFrame()
  until NumPassengersInUnit(Ground_Vehicle.XTank1) > 0
  AttackTarget(Ground_Vehicle.XTank1, GetPlayerUnit())
end

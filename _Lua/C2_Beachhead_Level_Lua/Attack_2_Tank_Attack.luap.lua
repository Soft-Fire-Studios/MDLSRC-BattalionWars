function Attack_2_Tank_Attack(owner)
  WaitFor(10)
  while IsPassengerInUnit(owner, Air_Vehicle.XAirTrans0) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans1) do
    EndFrame()
  end
  WaitFor(5)
  GoToArea(owner, 100, 200, 10)
  repeat
    EndFrame()
  until IsInArea(owner, 100, 200, 15)
  GoToArea(owner, 100, 145, 10)
end

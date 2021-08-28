function C1M1_Spy_Balloons_Hill(owner)
  Despawn(Air_Vehicle.TspyBlimp0007)
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.ObjectiveTwo) then
      Spawn(Air_Vehicle.TspyBlimp0007)
      WaitFor(5)
    else
      EndFrame()
      while true do
        FollowUnit(Air_Vehicle.TspyBlimp0007, GetPlayerUnit(), 5, 0, constant.ORDER_FORCED)
        WaitFor(1)
        GoToArea(Air_Vehicle.TspyBlimp0007, 405, 105, 10)
        WaitFor(4)
        FollowUnit(Air_Vehicle.TspyBlimp0007, GetPlayerUnit(), 10, 0, constant.ORDER_FORCED)
        WaitFor(1)
        GoToArea(Air_Vehicle.TspyBlimp0007, 405, 60, 10)
        WaitFor(4)
        FollowUnit(Air_Vehicle.TspyBlimp0007, GetPlayerUnit(), 7, 0, constant.ORDER_FORCED)
        WaitFor(1)
        GoToArea(Air_Vehicle.TspyBlimp0007, 360, 115, 10)
        WaitFor(4)
        EndFrame()
      end
    end
  end
  EndFrame()
  return
end

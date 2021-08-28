function C1M1_Spy_Balloon_Movement(owner)
  while true do
    if C1M1_SpyBalloons == 1 then
      GoToArea(Air_Vehicle.TspyBlimp0001, 466, -98, 10)
      GoToArea(Air_Vehicle.TspyBlimp0002, 499, -55, 10)
    else
      EndFrame()
      while true do
        WaitFor(1)
        FollowUnit(Air_Vehicle.TspyBlimp0001, GetPlayerUnit(), 15, 0, constant.ORDER_FORCED)
        FollowUnit(Air_Vehicle.TspyBlimp0002, GetPlayerUnit(), 12, 0, constant.ORDER_FORCED)
        WaitFor(1)
        GoToArea(Air_Vehicle.TspyBlimp0001, 466, -98, 10)
        GoToArea(Air_Vehicle.TspyBlimp0002, 499, -55, 10)
        WaitFor(4)
        FollowUnit(Air_Vehicle.TspyBlimp0001, GetPlayerUnit(), 5, 0, constant.ORDER_FORCED)
        FollowUnit(Air_Vehicle.TspyBlimp0002, GetPlayerUnit(), 8, 0, constant.ORDER_FORCED)
        WaitFor(1)
        GoToArea(Air_Vehicle.TspyBlimp0001, 510, -88, 10)
        GoToArea(Air_Vehicle.TspyBlimp0002, 547, -64, 10)
        WaitFor(4)
        EndFrame()
      end
    end
  end
  EndFrame()
  return
end

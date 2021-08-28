function Trans_Open_Air(owner)
  WaitFor(1)
  repeat
    EndFrame()
    SetHealthPercent(owner, 99)
  until LevelState == 2
  WaitFor(1)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.Start_Zone) == false
  GoToArea(Air_Vehicle.XAirTransOpen, 220, 48, 5, nil, constant.ORDER_FORCED)
  WaitFor(4)
  GoToArea(Air_Vehicle.XAirTransOpen, 115, 0, nil, constant.ORDER_FORCED)
  WaitFor(3)
  GoToArea(Air_Vehicle.XAirTransOpen, -20, 37, 5, nil, constant.ORDER_FORCED)
  WaitFor(3)
  GoToArea(Air_Vehicle.XAirTransOpen, -43, 700, 5, nil, constant.ORDER_FORCED)
  WaitFor(18)
  GoToArea(Air_Vehicle.XAirTransOpen, -600, 800, 5, nil, constant.ORDER_FORCED)
  WaitFor(60)
  Despawn(owner)
end

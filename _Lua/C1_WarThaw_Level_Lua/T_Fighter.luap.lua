function T_Fighter(owner)
  Despawn(Air_Vehicle.T2_Fighter)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.Trigger11)
  Spawn(Air_Vehicle.T2_Fighter)
  EndFrame()
  WaitFor(1)
  GoToArea(Air_Vehicle.T2_Fighter, -449, -390, 10, nil, constant.ORDER_FORCED)
  AttackTarget(Air_Vehicle.T2_Fighter, Air_Vehicle.WF1_Bomber, constant.ORDER_FORCED)
  WaitFor(10)
  FollowUnit(Air_Vehicle.T2_Fighter, Air_Vehicle.WF1_Bomber, 20, 20, constant.ORDER_FORCED)
  EndFrame()
end

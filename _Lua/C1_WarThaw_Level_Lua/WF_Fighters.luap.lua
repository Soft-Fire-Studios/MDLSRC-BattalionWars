function WF_Fighters(owner)
  repeat
    EndFrame()
  until cutscene == 1
  EndFrame()
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.Trigger11)
  EndFrame()
  SetHealthPercent(Air_Vehicle.T2_Fighter, 75)
  Spawn(Air_Vehicle.WF1_Fighter)
  Spawn(Air_Vehicle.WF2_Fighter)
  EndFrame()
  AttackTarget(Air_Vehicle.WF1_Fighter, Air_Vehicle.T2_Fighter)
  AttackTarget(Air_Vehicle.WF2_Fighter, Air_Vehicle.T2_Fighter)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.T2_Fighter)
  GoToArea(Air_Vehicle.WF1_Fighter, -871, -190, 10, nil, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.WF2_Fighter, -449, -190, 10, nil, constant.ORDER_FORCED)
  EndFrame()
end

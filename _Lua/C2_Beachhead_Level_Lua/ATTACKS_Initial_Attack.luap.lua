function ATTACKS_Initial_Attack(owner)
  WaitFor(1)
  repeat
    EndFrame()
  until LevelState == 2
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.Start_Zone) == false
  WaitFor(1)
  GoToArea(Ground_Vehicle.XLTank0, 200, 150, 5)
  WaitFor(3)
  AttackTarget(Troop.WF_Bazooka1, Ground_Vehicle.XLTank0)
  AttackTarget(Troop.WF_Bazooka2, Ground_Vehicle.XLTank0)
  AttackTarget(Troop.WF_Bazooka3, Ground_Vehicle.XLTank0)
  GoToArea(Troop.WF_Rifle6, 115, 235, 10, nil, constant.ORDER_FORCED)
  GoToArea(Troop.WF_Rifle7, 150, 260, 10, nil, constant.ORDER_FORCED)
  GoToArea(Troop.WF_Rifle8, 125, 240, 10, nil, constant.ORDER_FORCED)
  GoToArea(Troop.WF_Rifle9, 115, 220, 10, nil, constant.ORDER_FORCED)
  GoToArea(Troop.WF_Rifle10, 115, 220, 10, nil, constant.ORDER_FORCED)
  WaitFor(6)
  GoToArea(Troop.WF_Rifle1, 85, 235, 10, nil, constant.ORDER_FORCED)
  GoToArea(Troop.WF_Rifle2, 75, 240, 10, nil, constant.ORDER_FORCED)
  GoToArea(Troop.WF_Rifle3, 95, 230, 10, nil, constant.ORDER_FORCED)
  GoToArea(Troop.WF_Rifle4, 85, 220, 10, nil, constant.ORDER_FORCED)
  GoToArea(Troop.WF_Rifle5, 85, 220, 10, nil, constant.ORDER_FORCED)
  WaitFor(6)
  Trans0Go = 1
  WaitFor(45)
  Trans1Go = 1
end

function Gunships_attack(owner)
  local loop = 0
  Despawn(Ground_Vehicle.XAA1)
  Despawn(Ground_Vehicle.XAA3)
  while loop == 0 do
    if NumItemsInArea(Map_Zone.EnterTheStag, flag.TYPE_WFRONTIER) >= 1 then
      Spawn(Ground_Vehicle.XAA1)
      Spawn(Ground_Vehicle.XAA3)
      PhoneMessage(44, 0, 2, 5, SpriteID.CO_T_Nova_Happy)
      PhoneMessage(38, 0, 0, 5, SpriteID.CO_WF_Betty_Sad)
      AttackTarget(Air_Vehicle.TGunship1, Ground_Vehicle.XBatStat1, constant.ORDER_FORCED)
      AttackTarget(Air_Vehicle.TGunship2, Ground_Vehicle.XBatStat2, constant.ORDER_FORCED)
      AttackTarget(Air_Vehicle.TGunship3, Ground_Vehicle.XBatStat1, constant.ORDER_FORCED)
      AttackTarget(Air_Vehicle.TGunship4, Ground_Vehicle.XBatStat2, constant.ORDER_FORCED)
      WaitFor(20)
      GoToArea(Ground_Vehicle.XAA1, -57, 312, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Ground_Vehicle.XAA3, 37, 321, 5, 0, constant.ORDER_NORMAL)
      EndFrame()
      loop = 1
    end
    EndFrame()
  end
  EndFrame()
  while loop == 1 do
    if NumItemsInArea(Map_Zone.EnterTheStag, flag.TYPE_WFRONTIER) >= 1 then
      AttackTarget(Air_Vehicle.TGunship1, Ground_Vehicle.XBatStat1, constant.ORDER_FORCED)
      AttackTarget(Air_Vehicle.TGunship2, Ground_Vehicle.XBatStat2, constant.ORDER_FORCED)
      AttackTarget(Air_Vehicle.TGunship3, Ground_Vehicle.XBatStat1, constant.ORDER_FORCED)
      AttackTarget(Air_Vehicle.TGunship4, Ground_Vehicle.XBatStat2, constant.ORDER_FORCED)
      WaitFor(5)
    end
    EndFrame()
  end
end

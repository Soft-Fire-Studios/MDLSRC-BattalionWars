function AttackMunitionsDump(owner)
  repeat
    WaitFor(0.5)
    EndFrame()
  until lookoutmuntionsdump == 1
  if munitionsdump == 0 then
    ClearMessageQueue()
    PhoneMessage(23, 0, 1, 5, SpriteID.CO_X_Ubel_Happy)
  end
  local theplayer = GetPlayerUnit()
  DebugOut("munitions dump tanks barracks grunts sent to attack")
  EnterVehicle(Troop.XGruntDriver1, Ground_Vehicle.XTank1, constant.ORDER_FORCED)
  EnterVehicle(Troop.XGruntDriver2, Ground_Vehicle.XTank1, constant.ORDER_FORCED)
  EnterVehicle(Troop.XGruntDriver3, Ground_Vehicle.XTank2, constant.ORDER_FORCED)
  EnterVehicle(Troop.XGruntDriver4, Ground_Vehicle.XTank2, constant.ORDER_FORCED)
  repeat
    WaitFor(1)
    if 0 >= GetHealthPercent(theplayer) then
      theplayer = GetPlayerUnit()
    end
    AttackTarget(Ground_Vehicle.XTank1, theplayer)
    AttackTarget(Ground_Vehicle.XTank2, theplayer)
  until IsDead(Ground_Vehicle.XTank1) and IsDead(Ground_Vehicle.XTank2)
  EndFrame()
end

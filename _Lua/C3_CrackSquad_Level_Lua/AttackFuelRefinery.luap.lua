function AttackFuelRefinery(owner)
  repeat
    WaitFor(0.5)
    EndFrame()
  until lookoutfuelrefinery == 1
  ClearMessageQueue()
  PhoneMessage(34, 0, 1, 6, SpriteID.CO_X_Ubel_Happy)
  EnterVehicle(Troop.XGruntFuelRefinery1, Building.FuelRefineryBuilding1, constant.ORDER_FORCED)
  EnterVehicle(Troop.XGruntFuelRefinery4, Building.FuelRefineryBuilding4, constant.ORDER_FORCED)
  EnterVehicle(Troop.XGruntFuelRefinery5, Building.FuelRefineryBuilding5, constant.ORDER_FORCED)
  EnterVehicle(Troop.XGruntFuelRefinery6, Building.FuelRefineryBuilding6, constant.ORDER_FORCED)
  EnterVehicle(Troop.XGruntGuard3, Ground_Vehicle.XLightAttack5, constant.ORDER_FORCED)
  EnterVehicle(Troop.XGruntGuard4, Ground_Vehicle.XLightAttack5, constant.ORDER_FORCED)
  EnterVehicle(Troop.XGruntGuard5, Ground_Vehicle.XLightAttack5, constant.ORDER_FORCED)
end

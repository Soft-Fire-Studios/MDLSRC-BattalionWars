function CAPTURE_THE_FACTORY_TUNDRAN_DEFENCE(owner)
  local Tcapturingfactory = false
  scriptFactoryDefence = owner
  repeat
    if Factorystate == 2 and FactoryCutsceneOn == false and BarracksCutsceneOn == false and GetHealthPercent(Capture_Point.FactoryCP) < 100 and NumPassengersInUnit(Capture_Point.FactoryCP) == 0 then
      WaitFor(2)
      EnterVehicle(Troop.Tflame13, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tflame14, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tflame15, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tflame16, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tgrunt28, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tgrunt29, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tgrunt30, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tgrunt31, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      DebugOut("Enemy unit is defending factory flag!")
      WaitFor(6)
    end
    EndFrame()
    if Factorystate == 1 and FactoryCutsceneOn == false and BarracksCutsceneOn == false and NumPassengersInUnit(Capture_Point.FactoryCP) == 0 then
      WaitFor(6)
      EnterVehicle(Troop.Tflame13, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tflame14, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tflame15, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tflame16, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tgrunt28, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tgrunt29, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tgrunt30, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tgrunt31, Capture_Point.FactoryCP, constant.ORDER_FORCED)
      DebugOut("Enemy unit is retaking factory flag!")
      WaitFor(3)
    end
    EndFrame()
    if Factorystate == 1 and FactoryCutsceneOn == false and BarracksCutsceneOn == false and Tcapturingfactory == false and NumPassengersInUnit(Capture_Point.FactoryCP) > 0 then
      if TestFlags(Capture_Point.FactoryCP, flag.TYPE_TUNDRAN, constant.TYPE) then
        PhoneMessage(12, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        DebugOut("FACTORY FLAG CAPTURING WARNING")
        Tcapturingfactory = true
      end
      EndFrame()
    end
    EndFrame()
    if Tcapturingfactory == true and NumPassengersInUnit(Capture_Point.FactoryCP) == 0 and 1 > NumItemsInArea(Map_Zone.factoryflag, CombineFlags(flag.TYPE_INFANTRY, flag.TYPE_TUNDRAN), 1) then
      Tcapturingfactory = false
    end
    EndFrame()
    WaitFor(1)
  until WFwin == true or Factorystate == 1 and IsDead(Troop.Tflame13) and IsDead(Troop.Tflame14) and IsDead(Troop.Tflame15) and IsDead(Troop.Tflame16) and IsDead(Troop.Tgrunt28) and IsDead(Troop.Tgrunt29) and IsDead(Troop.Tgrunt30) and IsDead(Troop.Tgrunt31)
end

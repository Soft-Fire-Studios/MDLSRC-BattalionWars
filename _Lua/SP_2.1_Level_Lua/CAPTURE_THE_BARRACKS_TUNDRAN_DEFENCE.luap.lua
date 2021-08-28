function CAPTURE_THE_BARRACKS_TUNDRAN_DEFENCE(owner)
  local Tcapturingbarracks = false
  scriptBarracksDefence = owner
  repeat
    if Barracksstate == 2 and FactoryCutsceneOn == false and BarracksCutsceneOn == false and GetHealthPercent(Capture_Point.BarracksCP) < 100 and NumPassengersInUnit(Capture_Point.BarracksCP) == 0 then
      WaitFor(2)
      EnterVehicle(Troop.Tgrunt20, Capture_Point.BarracksCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tgrunt21, Capture_Point.BarracksCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tgrunt22, Capture_Point.BarracksCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tgrunt23, Capture_Point.BarracksCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tbazooka01, Capture_Point.BarracksCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tflame12, Capture_Point.BarracksCP, constant.ORDER_FORCED)
      DebugOut("Enemy unit is defending barracks flag!")
      WaitFor(6)
    end
    EndFrame()
    if Barracksstate == 1 and FactoryCutsceneOn == false and BarracksCutsceneOn == false and BarracksCaptured == true and NumPassengersInUnit(Capture_Point.BarracksCP) == 0 then
      WaitFor(4)
      EnterVehicle(Troop.Tgrunt20, Capture_Point.BarracksCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tgrunt21, Capture_Point.BarracksCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tgrunt22, Capture_Point.BarracksCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tgrunt23, Capture_Point.BarracksCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tbazooka01, Capture_Point.BarracksCP, constant.ORDER_FORCED)
      EnterVehicle(Troop.Tflame12, Capture_Point.BarracksCP, constant.ORDER_FORCED)
      DebugOut("Enemy unit is capturing barracks flag!")
      WaitFor(4)
    end
    EndFrame()
    if Barracksstate == 1 and FactoryCutsceneOn == false and BarracksCutsceneOn == false and BarracksCaptured == true and Tcapturingbarracks == false and NumPassengersInUnit(Capture_Point.BarracksCP) > 0 then
      if TestFlags(Capture_Point.BarracksCP, flag.TYPE_TUNDRAN, constant.TYPE) then
        PhoneMessage(10, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        DebugOut("BARRACKS FLAG CAPTURING WARNING")
        Tcapturingbarracks = true
      end
      EndFrame()
    end
    EndFrame()
    if Tcapturingbarracks == true and NumPassengersInUnit(Capture_Point.BarracksCP) == 0 and 1 > NumItemsInArea(Map_Zone.barracksflag, CombineFlags(flag.TYPE_INFANTRY, flag.TYPE_TUNDRAN), 1) then
      Tcapturingbarracks = false
    end
    EndFrame()
    WaitFor(1)
  until WFwin == true or Barracksstate == 1 and IsDead(Troop.Tgrunt20) and IsDead(Troop.Tgrunt21) and IsDead(Troop.Tgrunt22) and IsDead(Troop.Tgrunt23) and IsDead(Troop.Tbazooka01) and IsDead(Troop.Tflame12)
end

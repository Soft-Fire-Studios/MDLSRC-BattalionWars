function AngloRuinsReinforcements(owner)
  scriptAngloRuinsReinforcements = owner
  Despawn(Air_Vehicle.AngloRuinsChopper)
  repeat
    EndFrame()
  until IsInRange(GetPlayerUnit(), Capture_Point.SolarRecon, 100)
  repeat
    WaitFor(0.1)
    EndFrame()
  until NumItemsInArea(Map_Zone.RuinsCentralPerimeter, flag.TYPE_ANGLO) < 3
  foundmarker = 1
  Spawn(Air_Vehicle.AngloRuinsChopper)
  WaitFor(0.2)
  LandAirUnit(Air_Vehicle.AngloRuinsChopper, 309, 244, constant.ORDER_FORCED, 1, 5, 225)
  AttackTarget(Troop.RuinsGrunt1, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
  AttackTarget(Troop.RuinsGrunt2, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
  AttackTarget(Troop.RuinsGrunt3, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
  DebugOut("Sending Anglo ruins grunts")
  while true do
    if IsDead(Air_Vehicle.AngloRuinsChopper) then
      return
    end
    if GetMovementState(Air_Vehicle.AngloRuinsChopper) == constant.MOVEMENT_STATE_ON_GROUND then
      WaitFor(0.5)
      if IsDead(Air_Vehicle.AngloRuinsChopper) then
        return
      end
      ExitVehicle(constant.ID_NONE, Air_Vehicle.AngloRuinsChopper)
      WaitFor(0.5)
      DebugOut("Troops leaving chopper")
      break
    end
    EndFrame()
  end
  GoToArea(Troop.RuinsGruntReinforcements1, 237, 221, 15, 0, constant.ORDER_NORMAL)
  GoToArea(Troop.RuinsGruntReinforcements2, 237, 221, 15, 0, constant.ORDER_NORMAL)
  GoToArea(Troop.RuinsGruntReinforcements3, 237, 221, 15, 0, constant.ORDER_NORMAL)
  GoToArea(Troop.RuinsGruntReinforcements4, 237, 221, 15, 0, constant.ORDER_NORMAL)
  GoToArea(Troop.RuinsGruntReinforcements5, 237, 221, 15, 0, constant.ORDER_NORMAL)
  GoToArea(Troop.RuinsGruntReinforcements6, 237, 221, 15, 0, constant.ORDER_NORMAL)
  GoToArea(Air_Vehicle.AngloRuinsChopper, 999, 25, 30, 0, constant.ORDER_FORCED)
  DebugOut("Ruins grunts Chopper has landed")
  while true do
    if IsInArea(Air_Vehicle.AngloRuinsChopper, 999, 25, 30) then
      Despawn(Air_Vehicle.AngloRuinsChopper)
      break
    end
    EndFrame()
  end
end

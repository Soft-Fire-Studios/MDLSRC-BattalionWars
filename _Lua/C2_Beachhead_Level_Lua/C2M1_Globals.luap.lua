function C2M1_Globals(owner)
  LevelState = 0
  Trans1Go = 0
  Trans2Go = 0
  Trans3Go = 0
  Trans4Go = 0
  Trans5Go = 0
  Trans6Go = 0
  Trans7Go = 0
  Trans8Go = 0
  Trans9Go = 0
  Trans0Go = 0
  BombGo = 0
  TransWF1Go = 0
  TransWF2Go = 0
  FlagHintScript = 0
  AAHintScript = 0
  cutscene = 0
  cutscenes = 0
  OutOfBoundsMessageInfo(62, 0, 5, SpriteID.CO_WF_Herman_Happy)
  function PrintState()
    DebugOut("Level State is currently...", LevelState)
  end
  function DropOff(unit, x, z, pass1, pass2, pass3, pass4, pass5, pass6)
    DebugOut("DropOff Called")
    DebugOut("TargetsExcluded")
    GoToArea(unit, x, z, 20, nil, constant.ORDER_FORCED)
    WaitFor(3)
    LandAirUnit(unit, x, z, constant.ORDER_FORCED)
    DebugOut("working")
    repeat
      EndFrame()
    until GetMovementState(unit) == constant.MOVEMENT_STATE_ON_GROUND
    DebugOut("dropping passengers")
    if pass6 == 0 == false then
      ExitVehicle(pass6, unit)
    end
    if pass5 == 1 then
      ExitVehicle(GetUnitInSeat(unit, 5))
    end
    if pass4 == 1 then
      ExitVehicle(GetUnitInSeat(unit, 4))
    end
    if pass3 == 1 then
      ExitVehicle(GetUnitInSeat(unit, 3))
    end
    if pass2 == 1 then
      ExitVehicle(GetUnitInSeat(unit, 2))
    end
    if pass1 == 1 then
      ExitVehicle(GetUnitInSeat(unit, 1))
    end
    DebugOut("going home")
    GoToArea(unit, 750, 1335, 10, nil, constant.ORDER_FORCED)
    WaitFor(10)
    GoToArea(unit, 1000, 1335, 10, nil, constant.ORDER_FORCED)
    WaitFor(10)
  end
end

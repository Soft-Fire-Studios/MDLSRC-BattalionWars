function ObjectiveHelipadReinforcements(owner)
  Reinforcements = owner
  while missionend == 0 do
    if GetState(Capture_Point.HelipadCapturePoint) == flag.TYPE_TUNDRAN then
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessageWithObjective(54, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      SetObjectiveData(Objective_Marker.HelipadReinforcementsObjectiveMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.HelipadReinforcementsObjective, constant.OBJECTIVE_DATA_STATE, 1)
      helipad01 = 2
      if IsDead(Building.XylvanianAATower03) == false or IsDead(Building.XylvanianAATower04) == false then
        PhoneMessage(50, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
        WaitFor(12)
      end
      Spawn(Air_Vehicle.HelipadChopper01)
      SetActive(Air_Vehicle.HelipadChopper01, constant.ACTIVE)
      SetActive(Troop.HelipadChopper01Grunt01, constant.ACTIVE)
      SetActive(Troop.HelipadChopper01Grunt02, constant.ACTIVE)
      SetActive(Troop.HelipadChopper01AA01, constant.ACTIVE)
      SetActive(Troop.HelipadChopper02AA01, constant.ACTIVE)
      SetActive(Troop.HelipadChopper02Flame01, constant.ACTIVE)
      SetActive(Troop.HelipadChopper02Flame02, constant.ACTIVE)
      WaitFor(0.2)
      LandAirUnit(Air_Vehicle.HelipadChopper01, 294, 137, constant.ORDER_FORCED, false, 10)
      DebugOut("*ObjectiveHelipadReinforcements* - The player has raised the helipad flag")
      break
    end
    EndFrame()
  end
  DebugOut("1.")
  while missionend == 0 do
    if IsInArea(Air_Vehicle.HelipadChopper01, 294, 137, 10) then
      DebugOut("2.")
      if GetMovementState(Air_Vehicle.HelipadChopper01) == constant.MOVEMENT_STATE_ON_GROUND then
        DebugOut("3.")
        break
      end
      EndFrame()
    end
    EndFrame()
  end
  DebugOut("4.")
  while NumPassengersInUnit(Air_Vehicle.HelipadChopper01) > 3 do
    DebugOut("5.")
    ExitVehicle(GetUnitInSeat(Air_Vehicle.HelipadChopper01, 3), Air_Vehicle.HelipadChopper01)
    ExitVehicle(GetUnitInSeat(Air_Vehicle.HelipadChopper01, 4), Air_Vehicle.HelipadChopper01)
    ExitVehicle(GetUnitInSeat(Air_Vehicle.HelipadChopper01, 5), Air_Vehicle.HelipadChopper01)
    ExitVehicle(GetUnitInSeat(Air_Vehicle.HelipadChopper01, 6), Air_Vehicle.HelipadChopper01)
    ExitVehicle(GetUnitInSeat(Air_Vehicle.HelipadChopper01, 7), Air_Vehicle.HelipadChopper01)
    ExitVehicle(GetUnitInSeat(Air_Vehicle.HelipadChopper01, 8), Air_Vehicle.HelipadChopper01)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.HelipadChopper01Grunt01, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
      FollowUnit(Troop.HelipadChopper01Grunt02, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
      FollowUnit(Troop.HelipadChopper01AA01, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
      FollowUnit(Troop.HelipadChopper02AA01, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
      FollowUnit(Troop.HelipadChopper02Flame01, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
      FollowUnit(Troop.HelipadChopper02Flame02, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    end
    GoToArea(Air_Vehicle.HelipadChopper01, 701, -316, 10, 0, constant.ORDER_FORCED)
    StopCapturePointSounds(Capture_Point.HelipadCapturePoint)
    helipad01 = 1
    DebugOut("6.")
    EndFrame()
  end
  DebugOut("7.")
  repeat
    EndFrame()
  until IsInArea(Air_Vehicle.HelipadChopper01, 701, -316, 20)
  Despawn(Air_Vehicle.HelipadChopper01)
  DebugOut("*ObjectiveHelipadReinforcements* - 1. Tundran Grunt reinforcements complete")
end

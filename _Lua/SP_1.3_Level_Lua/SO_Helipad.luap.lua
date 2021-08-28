function SO_Helipad(owner)
  Script04 = owner
  Despawn(Air_Vehicle.SE_Air_Transport)
  repeat
    EndFrame()
  until CheckCapturePoint(Capture_Point.Helipad, constant.ARMY_SOLAR, 100, 1, constant.CAPTUREPOINTFLAG_RAISING)
  SetObjectiveData(Objective.SO_Helipad, constant.OBJECTIVE_DATA_STATE, 1)
  PhoneMessageWithObjective(89, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
  repeat
    EndFrame()
  until PauseTimerActive == 0
  Spawn(Air_Vehicle.SE_Air_Transport)
  DebugOut("Sending SE Air Transport to the small Helipad")
  WaitFor(1)
  LandAirUnit(Air_Vehicle.SE_Air_Transport, -32, 350, constant.ORDER_FORCED, 1, 2, 0)
  repeat
    EndFrame()
  until PauseTimerActive == 0
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.SE_Air_Transport) == 1
  repeat
    EndFrame()
  until PauseTimerActive == 0
  DebugOut("SE Air Transport has landed")
  WaitFor(1)
  StopCapturePointSounds(Capture_Point.Helipad)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.SE_Grunt_6, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    FollowUnit(Troop.SE_Grunt_7, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    FollowUnit(Troop.SE_Baz_4, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    FollowUnit(Troop.SE_Baz_5, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
  end
  repeat
    EndFrame()
  until PauseTimerActive == 0
  AddToGroup(Unit_Group.Player_Army, Troop.SE_Grunt_6)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_Grunt_7)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_Baz_4)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_Baz_5)
  SetActive(Troop.SE_Grunt_6, constant.ACTIVE)
  SetActive(Troop.SE_Grunt_7, constant.ACTIVE)
  SetActive(Troop.SE_Baz_4, constant.ACTIVE)
  SetActive(Troop.SE_Baz_5, constant.ACTIVE)
  repeat
    EndFrame()
  until PauseTimerActive == 0
  PhoneMessage(90, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  WaitFor(1)
  DebugOut("Send SE Air Transport away from the playing area")
  GoToArea(Air_Vehicle.SE_Air_Transport, 170, -800, 10)
  WaitFor(35)
  Despawn(Air_Vehicle.SE_Air_Transport)
  DebugOut("Despawn SE Air Transport ")
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
end

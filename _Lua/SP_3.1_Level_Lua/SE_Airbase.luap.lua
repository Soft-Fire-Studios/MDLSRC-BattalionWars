function SE_Airbase(owner)
  Spawn(Air_Vehicle.SE_Gunship_14)
  Kill(Air_Vehicle.SE_Gunship_14)
  script07 = owner
  capt = 0
  Despawn(Air_Vehicle.AI_Fighter_1)
  Despawn(Air_Vehicle.AI_Fighter_2)
  Despawn(Water_Vehicle.AI_Battleship_1)
  Despawn(Water_Vehicle.AI_Battleship_2)
  Despawn(Ground_Vehicle.SE_Light_Tank_2, true)
  Despawn(Troop.SE_Grunt_5, true)
  Despawn(Troop.SE_Grunt_6, true)
  Despawn(Troop.SE_Grunt_7, true)
  Despawn(Troop.SE_Grunt_8, true)
  Despawn(Air_Vehicle.SE_Gunship_11)
  Despawn(Air_Vehicle.SE_Gunship_12)
  Despawn(Air_Vehicle.SE_Gunship_13)
  Despawn(Air_Vehicle.SE_Gunship_14)
  repeat
    EndFrame()
    if CheckCapturePoint(Capture_Point.SE_Dock_CP, constant.ARMY_ANGLO, 99, 1, constant.CAPTUREPOINTFLAG_RAISING) and 0 < NumPassengersInUnit(Capture_Point.SE_Airbase_CP) then
      ExitVehicle(constant.ID_NONE, Capture_Point.SE_Airbase_CP)
      return
    end
  until CheckCapturePoint(Capture_Point.SE_Airbase_CP, constant.ARMY_ANGLO, 100, 1, constant.CAPTUREPOINTFLAG_RAISING)
  if mid == 1 then
    repeat
      EndFrame()
    until mid == 2
    WaitFor(3)
  end
  DebugOut("SE Airbase has been captured by the Anglo Isles")
  SetObjectiveData(Objective.SO_Airbase, constant.OBJECTIVE_DATA_STATE, 1)
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  captured = 1
  airbase = 1
  fightermid = 1
  capt = 0
  Kill(Building.SE_Fighter_1)
  Kill(Building.SE_Fighter_2)
  Kill(Building.SE_Fighter_3)
  repeat
    EndFrame()
  until 2 < fightermid
  DebugOut("Spawning AI Fighters")
  Despawn(Air_Vehicle.CS_AI_Fighter)
  Spawn(Air_Vehicle.AI_Fighter_1)
  Spawn(Air_Vehicle.AI_Fighter_2)
  repeat
    EndFrame()
  until 3 < fightermid
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Air_Vehicle.AI_Fighter_1, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.AI_Fighter_2, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
  else
  end
  EndFrame()
  AddToGroup(Unit_Group.Player_Army, Air_Vehicle.AI_Fighter_1)
  AddToGroup(Unit_Group.Player_Army, Air_Vehicle.AI_Fighter_2)
  if bridge == 0 then
    PhoneMessage(16, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  else
    StoreSummaryMessage(16, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Happy)
  end
  DebugOut("Sending in SE Gunships")
  Teleport(Air_Vehicle.SE_Gunship_11, -910, 850, 180, 2)
  Teleport(Air_Vehicle.SE_Gunship_12, -620, 735, 235, 2)
  GoToArea(Ground_Vehicle.SE_Light_Tank_2, -945, 445, 10)
  GoToArea(Troop.SE_Grunt_5, -945, 440, 10)
  GoToArea(Troop.SE_Grunt_6, -945, 440, 10)
  GoToArea(Troop.SE_Grunt_7, -945, 440, 10)
  GoToArea(Troop.SE_Grunt_8, -945, 440, 10)
  Spawn(Air_Vehicle.SE_Gunship_11)
  Spawn(Air_Vehicle.SE_Gunship_12)
  GoToArea(Air_Vehicle.SE_Gunship_11, -900, 320, 10)
  GoToArea(Air_Vehicle.SE_Gunship_12, -900, 310, 10)
  WaitFor(4)
  GoToArea(Ground_Vehicle.SE_Light_Tank_2, -950, 340, 10)
  EnterVehicle(Troop.SE_Grunt_5, Capture_Point.SE_Airbase_CP, constant.ORDER_FORCED)
  EnterVehicle(Troop.SE_Grunt_6, Capture_Point.SE_Airbase_CP, constant.ORDER_FORCED)
  EnterVehicle(Troop.SE_Grunt_7, Capture_Point.SE_Airbase_CP, constant.ORDER_FORCED)
  EnterVehicle(Troop.SE_Grunt_8, Capture_Point.SE_Airbase_CP, constant.ORDER_FORCED)
  repeat
    if artcut == 1 then
      repeat
        EndFrame()
      until artcut == 0
    elseif capt == 0 and TestFlags(Capture_Point.SE_Airbase_CP, flag.TYPE_SOLAR, constant.TYPE) then
      PhoneMessage(19, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
      capt = 1
    elseif capt == 1 and GetState(Capture_Point.SE_Airbase_CP) == flag.TYPE_SOLAR then
      airbase = 0
      PhoneMessageWithObjective(20, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE, 0, constant.NEW_SECONDARY_OBJECTIVE)
      capt = 2
      SetObjectiveData(Objective.SO_Airbase, constant.OBJECTIVE_DATA_STATE, 0)
      SetObjectiveData(Objective_Marker.SO_Airbase_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted - 1
    elseif capt == 2 and GetState(Capture_Point.SE_Airbase_CP) == flag.TYPE_ANGLO then
      EnterVehicle(Troop.SE_Grunt_5, Capture_Point.SE_Airbase_CP, constant.ORDER_FORCED)
      EnterVehicle(Troop.SE_Grunt_6, Capture_Point.SE_Airbase_CP, constant.ORDER_FORCED)
      EnterVehicle(Troop.SE_Grunt_7, Capture_Point.SE_Airbase_CP, constant.ORDER_FORCED)
      EnterVehicle(Troop.SE_Grunt_8, Capture_Point.SE_Airbase_CP, constant.ORDER_FORCED)
      SetObjectiveData(Objective.SO_Airbase, constant.OBJECTIVE_DATA_STATE, 1)
      PhoneMessageWithObjective(21, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      capt = 0
      airbase = 1
    else
      EndFrame()
    end
  until airbase == 1 and capt == 0 and GetGroupHealthPercent(Unit_Group.Airbase_Ref) == 0
end

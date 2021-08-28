function JW_Events_Part_2_The_Airbase(owner)
  script05 = owner
  local logtext = 0
  local calltext
  local flagtext = 0
  local textcounter = 0
  local bomber02 = 0
  local bomber03 = 0
  local airbasereminder = 0
  local Timer = 0
  local AirTransportTime = 0
  local objectivecurrent = 0
  local objectivetotal = 0
  repeat
    EndFrame()
  until flamershot == 4
  WaitFor(30)
  Despawn(Pickup.Pickup_01)
  WaitFor(0.3)
  Despawn(Pickup.Pickup_02)
  WaitFor(0.3)
  Despawn(Pickup.Pickup_03)
  WaitFor(0.3)
  Despawn(Pickup.Pickup_04)
  WaitFor(0.3)
  Despawn(Pickup.Pickup_05)
  repeat
    EndFrame()
  until AirbaseReady == 1
  ClearMessageQueue()
  PhoneMessage(144, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    withinpt = 1
    SetFunctionIndicatorState(false)
    PauseTutorialShow()
    ClearMessageQueue(constant.PLAYER_ONE)
    PhoneMessage(145, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, true)
    SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_TRANSFER_LOCK_ON, true, Ground_Vehicle.SE_AATank01)
    SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, true)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_FLASH, 99999)
    SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, true)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 99999)
    WaitForPTText(2)
    repeat
      EndFrame()
    until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
    SetupPauseTutorialStack(false, constant.HUD_FUNC_INDICATOR_NONE, true, Ground_Vehicle.SE_AATank01)
    SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, false)
    SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, false)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_OFF)
    ClearMessageQueue(constant.PLAYER_ONE)
    PauseTutorialExit()
    SetFunctionIndicatorState(true)
    withinpt = 0
  end
  transferready = 1
  PhoneMessageWithObjective(147, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessage(148, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  WaitFor(1.5)
  repeat
    if textcounter < 700 then
      textcounter = textcounter + 1
    end
    if textcounter == 650 then
      textcounter = 0
      if logtext == 0 then
        PhoneMessage(147, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
        logtext = 1
      else
        PhoneMessage(149, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
        logtext = 0
      end
    end
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) == Ground_Vehicle.SE_AATank01
  textcounter = 0
  ClearMessageQueue()
  PhoneMessageWithObjective(62, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  SetObjectiveData(Objective_Marker.AA_Vehicle_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Control_Transfer, constant.OBJECTIVE_DATA_STATE, 1)
  DebugOut("Opening final gates and setting up Airbase Objective")
  DestroyablePlayAnim(Destroyable_Object.IronGate2, 1, 2)
  DebugOut("Gate Open")
  SetDamageZoneDamage(Damage_Zone.Airfield_Damage, 0)
  WaitFor(3)
  ResetPathBlocking(Destroyable_Object.IronGate2)
  objectivecurrent = 0
  objectivetotal = 0
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  WaitFor(4)
  Spawn(Air_Vehicle.AI_Bomber02)
  Spawn(Air_Vehicle.AI_Bomber03)
  PhoneMessage(65, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  PhoneMessageWithObjective(66, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessage(64, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  SetObjectiveData(Objective.Barrier, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Bombers_02, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Bomber_2_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Bomber_3_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  AttackTarget(Air_Vehicle.AI_Bomber02, Building.SE_Ground_Fighter_1, constant.ORDER_FORCED)
  AttackTarget(Air_Vehicle.AI_Bomber03, Building.SE_Ground_Fighter_2, constant.ORDER_FORCED)
  WaitFor(2)
  repeat
    if bomber02 == 0 and IsDead(Air_Vehicle.AI_Bomber02) then
      DebugOut("Bomber 2 destroyed")
      SetObjectiveData(Objective_Marker.Bomber_2_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      bomber02 = 1
      objectivecurrent = objectivecurrent + 1
    end
    if bomber03 == 0 and IsDead(Air_Vehicle.AI_Bomber03) then
      DebugOut("Bomber 3 destroyed")
      SetObjectiveData(Objective_Marker.Bomber_3_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      bomber03 = 1
      objectivecurrent = objectivecurrent + 1
    end
    if objectivecurrent == 1 and objectivetotal ~= 1 then
      objectivetotal = 1
      ClearMessageQueue()
      PhoneMessage(72, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
      SetObjectiveData(Objective.Bombers_02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Bombers_12, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if objectivecurrent == 2 and objectivetotal ~= 2 then
      objectivetotal = 2
      SetObjectiveData(Objective.Bombers_12, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Bombers_22, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    EndFrame()
  until objectivetotal == 2
  DebugOut("Bomber Bombers destroyed")
  ClearMessageQueue()
  PhoneMessageWithObjective(73, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  SetObjectiveData(Objective.Bombers_22, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Anglo_Grunts, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Breadcrumb_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  repeat
    if airbasereminder == 900 then
      PhoneMessage(69, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      airbasereminder = 0
    else
      airbasereminder = airbasereminder + 1
    end
    EndFrame()
  until GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE)) < -55 and GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) < -270
  SetObjectiveData(Objective_Marker.Breadcrumb_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Airbase_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  DebugOut("Number of Items at the Airbase currently is", NumItemsInArea(Map_Zone.Airbase_Zone, flag.TYPE_SOLAR))
  DebugOut("Checking for player at Airbase")
  airbasereminder = 0
  repeat
    if airbasereminder == 1200 then
      PhoneMessage(69, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      airbasereminder = 0
    else
      airbasereminder = airbasereminder + 1
    end
    EndFrame()
  until 0 < NumItemsInArea(Map_Zone.Airbase_Zone, flag.TYPE_SOLAR)
  DebugOut("Player at Airbase")
  ClearMessageQueue()
  PhoneMessageWithObjective(75, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  SetObjectiveData(Objective.Reinforce_Airbase, constant.OBJECTIVE_DATA_STATE, 1)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    PhoneMessage(76, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
  else
    PhoneMessageWithObjective(76, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
    SetObjectiveData(Objective.Raise_Flag, constant.OBJECTIVE_DATA_VISIBLE, 1)
  end
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    withinpt = 1
    SetFunctionIndicatorState(false)
    PauseTutorialShow()
    ClearMessageQueue(constant.PLAYER_ONE)
    PhoneMessage(154, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, true)
    SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_CAPTURE, false, Troop.SE_Grunt01)
    SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, true)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_FLASH, 99999)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 99999)
    WaitForPTText(2)
    repeat
      EndFrame()
    until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
    SetupPauseTutorialStack(false, constant.HUD_FUNC_INDICATOR_CAPTURE, false, Troop.SE_Grunt01)
    SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, false)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_FLICK, constant.HUD_ITEM_OFF)
    ClearMessageQueue(constant.PLAYER_ONE)
    PauseTutorialExit()
    SetFunctionIndicatorState(true)
    PhoneMessageWithObjective(158, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
    SetObjectiveData(Objective.Raise_Flag, constant.OBJECTIVE_DATA_VISIBLE, 1)
    withinpt = 0
  end
  Vanish(Destroyable_Object.Fake)
  Spawn(Capture_Point.SE_Airbase_CP)
  SetActive(Capture_Point.SE_Airbase_CP, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Morphing_Building.SE_Airbase01, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
  flagwarning = 1
  repeat
    EndFrame()
  until CheckCapturePoint(Capture_Point.SE_Airbase_CP, constant.ARMY_SOLAR, 99, 2, constant.CAPTUREPOINTFLAG_RAISING) or 99 < GetHealthPercent(Capture_Point.SE_Airbase_CP)
  flagwarning = 2
  SetObjectiveData(Objective.Raise_Flag, constant.OBJECTIVE_DATA_STATE, 1)
  textcounter = 0
  PhoneMessageWithObjective(82, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  airbase = 1
  SetObjectiveData(Objective.Protect_Airbase, constant.OBJECTIVE_DATA_VISIBLE, 1)
  DebugOut("Airbase Captured by Solars, Tutorial Completed")
  repeat
    EndFrame()
  until ReadyForCutscene04 == 1
  LandAirUnit(Air_Vehicle.AI_AirTransport02, GetObjectXPosition(Waypoint.AI_AirTransport02), GetObjectZPosition(Waypoint.AI_AirTransport02), constant.ORDER_FORCED)
  LandAirUnit(Air_Vehicle.AI_AirTransport03, GetObjectXPosition(Waypoint.AI_AirTransport03), GetObjectZPosition(Waypoint.AI_AirTransport03), constant.ORDER_FORCED)
  repeat
    EndFrame()
  until Cutscene04Finished == 1
  SetObjectiveData(Objective_Marker.Airbase_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  sirencount = 1
  WaitFor(1)
  Teleport(Air_Vehicle.AI_AirTransport02, -315, 170, 180)
  Teleport(Air_Vehicle.AI_AirTransport03, -295, 150, 180)
  WaitFor(1)
  ClearMessageQueue(constant.PLAYER_ONE)
  PhoneMessageWithObjective(84, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  AirTransportTime = GetTime()
  repeat
    EndFrame()
  until IsDead(Troop.AI_AirTransport02_Grunt01) and IsDead(Troop.AI_AirTransport02_Grunt02) and IsDead(Troop.AI_AirTransport02_Grunt03) and IsDead(Troop.AI_AirTransport02_Grunt04) and IsDead(Troop.AI_AirTransport03_Grunt01) and IsDead(Troop.AI_AirTransport03_Grunt02) and IsDead(Troop.AI_AirTransport03_Grunt03) and IsDead(Troop.AI_AirTransport03_AntiArmour01) or GetTime() > AirTransportTime + 60
  DebugOut("The first two AI HELI waves have perished")
  ClearMessageQueue(constant.PLAYER_ONE)
  PhoneMessage(85, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  PhoneMessage(86, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  WaitFor(3)
  sirencount = 2
  repeat
    if IsDead(Air_Vehicle.AI_Bomber04) then
      DebugOut("AI Bomber04 IS DEAD")
    end
    EndFrame()
    if IsDead(Air_Vehicle.AI_Bomber05) then
      DebugOut("AI Bomber05 IS DEAD")
    end
    EndFrame()
    if IsReadyToRevive(Air_Vehicle.AI_Bomber04) then
      DebugOut("AI Bomber04 IS READY TO REVIVE")
    end
    EndFrame()
    if IsReadyToRevive(Air_Vehicle.AI_Bomber05) then
      DebugOut("AI Bomber05 IS READY TO REVIVE")
    end
    EndFrame()
  until IsDead(Air_Vehicle.AI_Bomber04) and IsReadyToRevive(Air_Vehicle.AI_Bomber04) and IsDead(Air_Vehicle.AI_Bomber05) and IsReadyToRevive(Air_Vehicle.AI_Bomber05)
  DebugOut("The AI Bomber wave is well dead")
  ReviveDeadUnit(Air_Vehicle.AI_Bomber04, GetObjectXPosition(Waypoint.AI_Bomber04_Revive), GetObjectZPosition(Waypoint.AI_Bomber04_Revive), 180, 25)
  ReviveDeadUnit(Air_Vehicle.AI_Bomber05, GetObjectXPosition(Waypoint.AI_Bomber05_Revive), GetObjectZPosition(Waypoint.AI_Bomber05_Revive), 180, 25)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.AI_Bomber04) == false and IsDead(Troop.AI_Bomber04_Pilot01) == false and IsDead(Air_Vehicle.AI_Bomber05) == false and IsDead(Troop.AI_Bomber05_Pilot01) == false
  PutUnitInVehicle(Troop.AI_Bomber04_Pilot01, Air_Vehicle.AI_Bomber04, 0)
  PutUnitInVehicle(Troop.AI_Bomber05_Pilot01, Air_Vehicle.AI_Bomber05, 0)
  AirTransportTime = GetTime()
  GoToArea(Air_Vehicle.AI_Bomber04, GetObjectXPosition(Waypoint.AI_Bomber04), GetObjectZPosition(Waypoint.AI_Bomber04), 5, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.AI_Bomber05, GetObjectXPosition(Waypoint.AI_Bomber01), GetObjectZPosition(Waypoint.AI_Bomber01), 5, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.AI_Bomber04) and IsDead(Air_Vehicle.AI_Bomber05)
  ClearMessageQueue(constant.PLAYER_ONE)
  EndFrame()
  PhoneMessage(87, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  PhoneMessage(88, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  WaitFor(3)
  sirencount = 3
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.AI_Bomber04) and IsReadyToRevive(Air_Vehicle.AI_Bomber04) and IsDead(Air_Vehicle.AI_Bomber05) and IsReadyToRevive(Air_Vehicle.AI_Bomber05) and IsDead(Troop.AI_Bomber04_Pilot01) and IsReadyToRevive(Troop.AI_Bomber04_Pilot01) and IsDead(Troop.AI_Bomber05_Pilot01) and IsReadyToRevive(Troop.AI_Bomber05_Pilot01)
  ReviveDeadUnit(Air_Vehicle.AI_Bomber04, GetObjectXPosition(Waypoint.AI_Bomber04_Revive), GetObjectZPosition(Waypoint.AI_Bomber04_Revive), 180, 25)
  ReviveDeadUnit(Air_Vehicle.AI_Bomber05, GetObjectXPosition(Waypoint.AI_Bomber05_Revive), GetObjectZPosition(Waypoint.AI_Bomber05_Revive), 180, 25)
  ReviveDeadUnit(Troop.AI_Bomber04_Pilot01, GetObjectXPosition(Waypoint.AI_Respawner), GetObjectZPosition(Waypoint.AI_Respawner), 0, 25)
  ReviveDeadUnit(Troop.AI_Bomber05_Pilot01, GetObjectXPosition(Waypoint.AI_Respawner), GetObjectZPosition(Waypoint.AI_Respawner), 0, 25)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.AI_Bomber04) == false and IsDead(Troop.AI_Bomber04_Pilot01) == false and IsDead(Air_Vehicle.AI_Bomber05) == false and IsDead(Troop.AI_Bomber05_Pilot01) == false
  PutUnitInVehicle(Troop.AI_Bomber04_Pilot01, Air_Vehicle.AI_Bomber04, 0)
  PutUnitInVehicle(Troop.AI_Bomber05_Pilot01, Air_Vehicle.AI_Bomber05, 0)
  Spawn(Air_Vehicle.AI_AirTransport04)
  Spawn(Air_Vehicle.AI_AirTransport05)
  LandAirUnit(Air_Vehicle.AI_AirTransport04, GetObjectXPosition(Waypoint.AI_AirTransport04), GetObjectZPosition(Waypoint.AI_AirTransport04), constant.ORDER_FORCED)
  LandAirUnit(Air_Vehicle.AI_AirTransport05, GetObjectXPosition(Waypoint.AI_AirTransport05), GetObjectZPosition(Waypoint.AI_AirTransport05), constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.AI_Bomber04, GetObjectXPosition(Waypoint.AI_Bomber04), GetObjectZPosition(Waypoint.AI_Bomber04), 5, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.AI_Bomber05, GetObjectXPosition(Waypoint.AI_Bomber01), GetObjectZPosition(Waypoint.AI_Bomber01), 5, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until IsDead(Troop.AI_AirTransport04_Grunt01) and IsDead(Troop.AI_AirTransport04_Grunt02) and IsDead(Troop.AI_AirTransport04_Grunt03) and IsDead(Troop.AI_AirTransport04_AntiArmour01) and IsDead(Troop.AI_AirTransport05_Grunt01) and IsDead(Troop.AI_AirTransport05_Grunt02) and IsDead(Troop.AI_AirTransport05_Grunt03) and IsDead(Troop.AI_AirTransport05_AntiArmour01) and IsDead(Air_Vehicle.AI_Bomber04) and IsDead(Air_Vehicle.AI_Bomber05)
  DebugOut("Mission Complete becoming 1")
  MissionComplete = 1
end

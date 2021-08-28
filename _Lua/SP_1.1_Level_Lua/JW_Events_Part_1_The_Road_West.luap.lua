function JW_Events_Part_1_The_Road_West(owner)
  script04 = owner
  SetEnableGuardMode(constant.PLAYER_ONE, false)
  SetFunctionIndicatorState(false)
  local textcounter = 0
  local wrecktext = 0
  local grunt02 = 0
  local grunt03 = 0
  local grunt04 = 0
  local grunt05 = 0
  local Timer = 0
  local AirTransportTime = 0
  local objectivecurrent = 0
  local objectivetotal = 0
  SetCapturePointHeight(Capture_Point.SE_Airbase_CP, constant.ARMY_ANGLO, 20)
  Despawn(Capture_Point.SE_Airbase_CP)
  SetActive(Capture_Point.SE_Airbase_CP, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Morphing_Building.SE_Airbase01, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Building.Gates02, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.SE_Grunt02, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.SE_Grunt03, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.SE_Grunt04, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.SE_Grunt05, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.SE_Hose01, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.SE_Hose02, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.SE_Hose03, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.SE_Hose04, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.SE_Hose05, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  Despawn(Troop.AI_AT_a_Pilot)
  Despawn(Troop.AI_AT_1_Driver)
  Despawn(Air_Vehicle.AI_Bomber02)
  Despawn(Air_Vehicle.AI_Bomber03)
  Kill(Air_Vehicle.AI_Bomber04)
  Kill(Air_Vehicle.AI_Bomber05)
  Despawn(Air_Vehicle.AI_Air_Transport_Fake)
  Despawn(Air_Vehicle.AI_AirTransport02)
  Despawn(Air_Vehicle.AI_AirTransport03)
  Despawn(Air_Vehicle.AI_AirTransport04)
  Despawn(Air_Vehicle.AI_AirTransport05)
  Despawn(Troop.SE_Grunt06)
  Despawn(Troop.SE_Grunt07)
  Despawn(Troop.SE_Grunt08)
  Despawn(Troop.SE_Grunt09)
  Despawn(Troop.SE_Grunt10)
  Despawn(Troop.AI_AntiArmour01)
  SetActive(Ground_Vehicle.SE_AATank01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.SE_AATank02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_AATank01_Pilot01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_AATank01_Pilot02, constant.INACTIVE, constant.ADJUST_WEAPON)
  Despawn(Ground_Vehicle.SE_AATank01, true)
  Despawn(Ground_Vehicle.SE_AATank02, true)
  Despawn(Troop.SE_AATank01_Pilot01)
  Despawn(Troop.SE_AATank01_Pilot02)
  Despawn(Troop.SE_Hose01, true)
  Despawn(Troop.SE_Hose02, true)
  Despawn(Troop.SE_Hose03, true)
  Despawn(Troop.SE_Hose04, true)
  Despawn(Troop.SE_Hose05, true)
  Despawn(Air_Vehicle.AI_Air_Transport_a)
  Despawn(Air_Vehicle.AI_AirTransport01)
  Despawn(Troop.AI_AirTransport01_Pilot01)
  SetActive(Building.Barrier01, constant.INACTIVE)
  SetUnitInvulnerable(Building.Barrier01, true)
  SetActive(Building.Barrier02, constant.INACTIVE)
  SetUnitInvulnerable(Building.Barrier01, true)
  repeat
    EndFrame()
  until ReadyToBegin == 1
  repeat
    if grunt02 == 0 and IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Troop.SE_Grunt02, 20) then
      objectivecurrent = objectivecurrent + 1
      grunt02 = 1
      SetObjectiveData(Objective_Marker.Grunt_2_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      DebugOut("Player has reached Grunt 02, Setting him to follow and become active")
      FollowUnit(Troop.SE_Grunt02, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      SetActive(Troop.SE_Grunt02, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
    end
    if grunt03 == 0 and IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Troop.SE_Grunt03, 15) then
      objectivecurrent = objectivecurrent + 1
      SetObjectiveData(Objective_Marker.Grunt_3_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      grunt03 = 1
      DebugOut("Player has reached Grunt 03, Setting him to follow and become active")
      FollowUnit(Troop.SE_Grunt03, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      SetActive(Troop.SE_Grunt03, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
    end
    if grunt04 == 0 and IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Troop.SE_Grunt04, 15) then
      objectivecurrent = objectivecurrent + 1
      SetObjectiveData(Objective_Marker.Grunt_4_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      grunt04 = 1
      DebugOut("Player has reached Grunt 04, Setting him to follow and become active")
      FollowUnit(Troop.SE_Grunt04, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      SetActive(Troop.SE_Grunt04, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
    end
    if grunt05 == 0 and IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Troop.SE_Grunt05, 15) then
      objectivecurrent = objectivecurrent + 1
      SetObjectiveData(Objective_Marker.Grunt_5_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      grunt05 = 1
      DebugOut("Player has reached Grunt 05, Setting him to follow and become active")
      FollowUnit(Troop.SE_Grunt05, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      SetActive(Troop.SE_Grunt05, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
    end
    if objectivecurrent == 1 and objectivetotal == 0 then
      SetFunctionIndicatorState(true)
      objectivetotal = 1
      SetObjectiveData(Objective.Grunts_04, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Grunts_14, constant.OBJECTIVE_DATA_VISIBLE, 1)
      ClearMessageQueue()
      if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
        PhoneMessage(20, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
        WaitFor(8)
        repeat
          EndFrame()
        until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.PT_Zone)
        ClearMessageQueue(constant.PLAYER_ONE)
        UnfreezePlayer(constant.PLAYER_ONE)
        SetFunctionIndicatorState(false)
        PauseTutorialShow()
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessage(57, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, true)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_RETURN, constant.HUD_ITEM_FLASH, 99999)
        WaitForPTText(2)
        repeat
          EndFrame()
        until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_RETURN, constant.HUD_ITEM_OFF)
        ClearMessageQueue(constant.PLAYER_ONE)
        PauseTutorialExit()
        SetFunctionIndicatorState(true)
      end
      PhoneMessage(60, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, true)
    end
    if objectivecurrent == 2 and objectivetotal == 1 then
      objectivetotal = 2
      SetObjectiveData(Objective.Grunts_14, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Grunts_24, constant.OBJECTIVE_DATA_VISIBLE, 1)
      ClearMessageQueue()
      PhoneMessage(21, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
    end
    if objectivecurrent == 3 and objectivetotal == 2 then
      objectivetotal = 3
      SetObjectiveData(Objective.Grunts_24, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Grunts_34, constant.OBJECTIVE_DATA_VISIBLE, 1)
      ClearMessageQueue()
      PhoneMessage(22, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
    end
    if objectivecurrent == 4 and objectivetotal == 3 then
      objectivetotal = 4
      ClearMessageQueue()
      PhoneMessageWithObjective(23, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
    end
    EndFrame()
    if wrecktext == 0 and objectivetotal ~= 4 and IsInRange(Building.Barrier01, GetPlayerUnit(constant.PLAYER_ONE), 35) then
      wrecktext = 1
      PhoneMessage(34, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
    end
  until objectivetotal == 4
  objectivecurrent = 0
  objectivetotal = 0
  SetHudState(constant.PLAYER_ONE, constant.HUD_COMMANDBAR, constant.HUD_ITEM_ON)
  SetObjectiveData(Objective.Grunts_34, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Grunts_44, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Grunts_44, constant.OBJECTIVE_DATA_STATE, 1)
  DebugOut("Setting up Barrier")
  SetObjectiveData(Objective_Marker.Barrier_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetActive(Building.Barrier01, constant.ACTIVE)
  SetUnitInvulnerable(Building.Barrier01, false)
  repeat
    EndFrame()
  until IsInRange(Building.Barrier01, GetPlayerUnit(constant.PLAYER_ONE), 50) or GetHealthPercent(Building.Barrier01) < 100
  PhoneMessageWithObjective(26, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  SetObjectiveData(Objective.Barrier, constant.OBJECTIVE_DATA_VISIBLE, 1)
  WaitFor(1)
  repeat
    EndFrame()
  until IsDead(Building.Barrier01)
  SetUnitInvulnerable(Building.Barrier02, false)
  Kill(Building.Barrier02)
  SetObjectiveData(Objective.Barrier, constant.OBJECTIVE_DATA_STATE, 1)
  ClearMessageQueue()
  PhoneMessageWithObjective(35, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  SetObjectiveData(Objective_Marker.Bamboo_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  Spawn(Air_Vehicle.AI_Air_Transport_Fake)
  LandAirUnit(Air_Vehicle.AI_Air_Transport_Fake, 130, -95, constant.ORDER_NORMAL, 1, 10, 90)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  flamer = 1
  SetInvulnerable(flag.TYPE_SOLAR, true)
  repeat
    EndFrame()
  until 0 < flamershot
  repeat
    EndFrame()
  until 1 < flamershot
  Spawn(Troop.SE_Hose01)
  Spawn(Troop.SE_Hose02)
  Spawn(Troop.SE_Hose03)
  Spawn(Troop.SE_Hose04)
  Spawn(Troop.SE_Hose05)
  EndFrame()
  Spawn(Air_Vehicle.AI_AirTransport01)
  repeat
    EndFrame()
  until Cutscene02Finished == 1
  SetInvulnerable(flag.TYPE_SOLAR, false)
  repeat
    EndFrame()
  until flamershot == 4
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    PhoneMessage(114, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
  else
    PhoneMessageWithObjective(114, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
    SetObjectiveData(Objective.Bamboo, constant.OBJECTIVE_DATA_VISIBLE, 1)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.SE_Hose01, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.SE_Hose02, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.SE_Hose03, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.SE_Hose04, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.SE_Hose05, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
    end
    SetActive(Troop.SE_Hose01, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
    SetActive(Troop.SE_Hose02, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
    SetActive(Troop.SE_Hose03, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
    SetActive(Troop.SE_Hose04, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
    SetActive(Troop.SE_Hose05, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
  end
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    SetFunctionIndicatorState(false)
    PauseTutorialShow()
    ClearMessageQueue(constant.PLAYER_ONE)
    PhoneMessage(116, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, true)
    SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_ATTACK, true, Troop.SE_Hose01)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_DPAD, constant.HUD_ITEM_FLASH, 99999)
    WaitForPTText(2)
    repeat
      EndFrame()
    until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
    SetupPauseTutorialStack(false, constant.HUD_FUNC_INDICATOR_ATTACK, true, Troop.SE_Hose01)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_DPAD, constant.HUD_ITEM_OFF)
    SetRenderHUDComponent(constant.PLAYER_ONE, constant.HUD_COMMANDBAR, false)
    ClearMessageQueue(constant.PLAYER_ONE)
    PauseTutorialExit()
    SetFunctionIndicatorState(true)
    PhoneMessageWithObjective(119, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
    SetObjectiveData(Objective.Bamboo, constant.OBJECTIVE_DATA_VISIBLE, 1)
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Troop.SE_Hose01, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.SE_Hose02, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.SE_Hose03, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.SE_Hose04, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Troop.SE_Hose05, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
    end
    SetActive(Troop.SE_Hose01, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
    SetActive(Troop.SE_Hose02, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
    SetActive(Troop.SE_Hose03, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
    SetActive(Troop.SE_Hose04, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
    SetActive(Troop.SE_Hose05, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
  end
  repeat
    if textcounter < 700 then
      textcounter = textcounter + 1
    end
    if textcounter == 650 then
      textcounter = 0
      PhoneMessage(119, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
    end
    EndFrame()
  until IsDead(Building.Gates01)
  ClearMessageQueue()
  textcounter = 0
  ClearMessageQueue()
  PhoneMessage(36, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  SetObjectiveData(Objective.Bamboo, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.Bamboo_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetActive(Building.Gates02, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
  Despawn(Air_Vehicle.AI_Air_Transport_Fake)
  Spawn(Ground_Vehicle.SE_AATank01)
  Spawn(Ground_Vehicle.SE_AATank02)
  SetObjectiveData(Objective_Marker.Gate_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  repeat
    EndFrame()
  until 0 < NumItemsInArea(Map_Zone.Gate01, CombineFlags(flag.TYPE_INFANTRY, flag.TYPE_SOLAR), 1) or GetHealthPercent(Air_Vehicle.AI_AirTransport01) < 100
  WaitFor(1)
  PhoneMessage(28, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  ExitVehicle(constant.ID_NONE, Air_Vehicle.AI_AirTransport01)
  WaitFor(3)
  PutUnitInVehicle(Troop.AI_AirTransport01_Pilot01, Air_Vehicle.AI_AirTransport01, 0)
  WaitFor(1)
  GoToArea(Air_Vehicle.AI_AirTransport01, GetObjectXPosition(Waypoint.AI_AirTransport01_Despawn), GetObjectZPosition(Waypoint.AI_AirTransport01_Despawn), 5, 0, constant.ORDER_FORCED)
  GoToArea(Troop.AI_Grunt04, GetObjectXPosition(Waypoint.AI_Grunt04), GetObjectZPosition(Waypoint.AI_Grunt04), 5, 0, constant.ORDER_NORMAL)
  GoToArea(Troop.AI_Grunt05, GetObjectXPosition(Waypoint.AI_Grunt05), GetObjectZPosition(Waypoint.AI_Grunt05), 5, 0, constant.ORDER_NORMAL)
  GoToArea(Troop.AI_Grunt06, GetObjectXPosition(Waypoint.AI_Grunt06), GetObjectZPosition(Waypoint.AI_Grunt06), 5, 0, constant.ORDER_NORMAL)
  GoToArea(Troop.AI_Grunt07, GetObjectXPosition(Waypoint.AI_Grunt07), GetObjectZPosition(Waypoint.AI_Grunt07), 5, 0, constant.ORDER_NORMAL)
  GoToArea(Troop.AI_Grunt08, GetObjectXPosition(Waypoint.AI_Grunt08), GetObjectZPosition(Waypoint.AI_Grunt08), 5, 0, constant.ORDER_NORMAL)
  repeat
    EndFrame()
  until IsDead(Building.Gates02)
  Despawn(Air_Vehicle.AI_Air_Transport_a)
  ClearMessageQueue()
  PhoneMessage(43, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until 0 < NumItemsInArea(Map_Zone.Gate02, CombineFlags(flag.TYPE_INFANTRY, flag.TYPE_SOLAR), 1)
  ClearMessageQueue(constant.PLAYER_ONE)
  aavehicle = 1
  SetObjectiveData(Objective_Marker.Gate_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  repeat
    EndFrame()
  until ReadyForCutscene03 == 1
  Despawn(Air_Vehicle.AI_AirTransport01)
  SetObjectiveData(Objective_Marker.AA_Vehicle_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  Spawn(Troop.AI_AntiArmour01)
  SetHealthPercent(Ground_Vehicle.SE_AATank02, 25)
  repeat
    EndFrame()
  until Cutscene03Finished == 1
  SetObjectiveData(Objective.Protect_AA_Vehicle, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.AA_Vehicle_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  WaitFor(1)
  SetHealthPercent(Ground_Vehicle.SE_AATank01, 100)
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    WaitFor(1)
    SetFunctionIndicatorState(false)
    PauseTutorialShow()
    ClearMessageQueue(constant.PLAYER_ONE)
    PhoneMessage(126, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, true)
    SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_NONE, true)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_DPAD, constant.HUD_ITEM_FLASH, 99999)
    WaitForPTText(2)
    repeat
      EndFrame()
    until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
    SetupPauseTutorialStack(false, constant.HUD_FUNC_INDICATOR_ATTACK, true)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_DPAD, constant.HUD_ITEM_OFF)
    ClearMessageQueue(constant.PLAYER_ONE)
    PauseTutorialExit()
    SetFunctionIndicatorState(true)
  end
  SetObjectiveData(Objective_Marker.AA_Vehicle_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  UnfreezePlayer(constant.PLAYER_ONE)
  WaitFor(1)
  PhoneMessage(127, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
  Kill(Ground_Vehicle.SE_AATank02)
  AttackTarget(Troop.AI_AntiArmour01, Ground_Vehicle.SE_AATank01)
  repeat
    EndFrame()
  until IsDead(Troop.AI_AntiArmour01)
  ClearMessageQueue()
  PhoneMessage(54, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  SetActive(Troop.SE_AATank01_Pilot01, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_AATank01_Pilot02, constant.ACTIVE, constant.ADJUST_WEAPON)
  Spawn(Troop.SE_AATank01_Pilot01)
  Spawn(Troop.SE_AATank01_Pilot02)
  PutUnitInVehicle(Troop.SE_AATank01_Pilot01, Ground_Vehicle.SE_AATank01, 0)
  PutUnitInVehicle(Troop.SE_AATank01_Pilot02, Ground_Vehicle.SE_AATank01, 1)
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Ground_Vehicle.SE_AATank01, GetPlayerUnit(constant.PLAYER_ONE), 5, 10, constant.ORDER_NORMAL)
  end
  SetActive(Troop.SE_AATank01_Pilot01, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SE_AATank01_Pilot02, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.SE_AATank01, constant.ACTIVE, constant.ADJUST_WEAPON)
  oob = 1
  PhoneMessage(55, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  SetObjectiveData(Objective_Marker.AA_Vehicle_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Destroy_Bomber, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Bomber_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  PhoneMessage(135, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(1)
  Spawn(Air_Vehicle.AI_Bomber01)
  EndFrame()
  SetUnitInvulnerable(Air_Vehicle.AI_Bomber01, true)
  SetHealthPercent(Air_Vehicle.AI_Bomber01, 100)
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
  GoToArea(Air_Vehicle.AI_Bomber01, -300, -25, 15, 0, constant.ORDER_FORCED)
  bomberweapon = 1
  WaitFor(2)
  SetUnitInvulnerable(Air_Vehicle.AI_Bomber01, false)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.AI_Bomber01)
  ClearMessageQueue(constant.PLAYER_ONE)
  PhoneMessageWithObjective(139, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  SetObjectiveData(Objective.Destroy_Bomber, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.Bomber_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  WaitFor(7)
  SetObjectiveData(Objective_Marker.AA_Vehicle_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Control_Transfer, constant.OBJECTIVE_DATA_VISIBLE, 1)
  AirbaseReady = 1
end

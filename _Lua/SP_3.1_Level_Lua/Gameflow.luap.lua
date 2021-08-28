function Gameflow(owner)
  Kill(Troop.AI_Driver_1)
  Kill(Troop.AI_Driver_2)
  Kill(Troop.AI_Driver_3)
  Kill(Troop.AI_Driver_4)
  AngloIsles = FriendlyArmy
  SolarEmpire = EnemyArmy
  Tundra = EnemyArmy
  MinLevelTime = 540
  MaxLevelTime = 1080
  TechniqueObjectives = 3
  TechniqueWeighting = 15
  local bsdead = 0
  local inftext = 0
  StartIntro()
  FreezePlayer()
  WaitFor(1)
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      DebugOut("intro cutscene skipped")
      ClearMessageQueue()
      Kill(cutkiller)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      cutscene = 1
      break
    else
    end
    EndFrame()
  end
  Kill(Troop.CS_Troop_1)
  Kill(Troop.CS_Troop_2)
  Kill(Troop.CS_Troop_3)
  Kill(Troop.CS_Troop_4)
  Kill(Troop.CS_Troop_5)
  Kill(Troop.CS_Troop_6)
  Spawn(Air_Vehicle.SE_Gunship_13)
  Spawn(Air_Vehicle.SE_Gunship_14)
  Kill(Air_Vehicle.SE_Gunship_13)
  Kill(Air_Vehicle.SE_Gunship_14)
  SetObjectiveData(Objective.SO_Airbase, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.SO_Airbase_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Dock, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Dock_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  shot = 2
  StartScoringTimer()
  EndIntro()
  ClearMessageQueue()
  SetCamera(Camera.Player_Camera)
  EndFrame()
  ResetCommandBar()
  cutscene = 0
  StoreSummaryMessage(1, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Sad)
  StoreSummaryMessage(2, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Sad)
  StoreSummaryMessage(3, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Sad)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  ResetHealthAndScoreTotals()
  PhoneMessage(4, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  DebugOut("Mission has begun, star first win / lose loop")
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  while missionend == 0 do
    if bridge == 0 and (0 < NumItemsInArea(Map_Zone.Bridge, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_GVEHICLE), 1) or 0 < NumItemsInArea(Map_Zone.Bridge, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_INFANTRY), 1)) then
      DebugOut("Player at bridge")
      bridge = 1
    else
      EndFrame()
    end
    if bridge == 0 and (0 < NumItemsInArea(Map_Zone.Air_Bridge, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_GVEHICLE), 1) or 0 < NumItemsInArea(Map_Zone.Air_Bridge, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_INFANTRY), 1)) then
      DebugOut("Player swimming across water")
      bridge = 1
    else
      EndFrame()
    end
    if bridge == 1 and mid == 0 then
      if 0 < fightermid and fightermid ~= 4 then
        DebugOut("Win / Lose loop waiting for Fighter cutscene to end")
        repeat
          EndFrame()
        until fightermid == 4
        WaitFor(3)
      end
      DebugOut("Triggering Artillery Cutsene")
      ClearMessageQueue()
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      FreezePlayer()
      StartOutro()
      PauseTimerActive = 1
      airbase = 2
      cutscene = 0
      mid = 1
      repeat
        EndFrame()
      until mid == 2
    end
    if fightermid == 1 then
      DebugOut("Win / Lose loop waiting for Fighter cutscene to end")
      repeat
        EndFrame()
      until fightermid == 4
    end
    if AllPlayerUnitsDead(constant.PLAYER_ONE) then
      DebugOut("Player has lost all their units, waiting for 2 seconds and double checking the situation before officially failing it")
      WaitFor(2)
      if AllPlayerUnitsDead(constant.PLAYER_ONE) and GetInstallationOwner(Strategic_Installation.SE_Airbase) == constant.ARMY_SOLAR then
        Kill(script07)
        missionend = 1
        ClearMessageQueue()
        DebugOut("player has lost all of their units")
        PhoneMessage(73, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
        if GetPlayerUnit(constant.PLAYER_ONE) == Air_Vehicle.AI_Fighter_1 or GetPlayerUnit(constant.PLAYER_ONE) == Air_Vehicle.AI_Fighter_2 then
          EnableControllerItem(constant.CONTROL_TRANSFER, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_HUD_TRANSFER, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_TOGGLE_MAP, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_PAUSE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_CALL, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_SEND, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_DISMISS, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_FIRE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_JUMP, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_NEXT_UNIT_TYPE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_NEXT_UNIT_TYPE_ALT, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_PREV_UNIT_TYPE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_NEXT_UNIT, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_PREV_UNIT, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_LOCAL_CALL, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_ROLL, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_GLOBAL_TOGGLE, 0, constant.PLAYER_ONE)
          SetHudState(constant.PLAYER_ONE, constant.HUD_FUNCTIONINDICATOR, constant.HUD_ITEM_OFF)
        else
          DeclareVictory(constant.ARMY_SOLAR)
        end
        repeat
          EndFrame()
        until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(131)
      elseif IsReadyToRevive(Air_Vehicle.AI_Fighter_1) and GetInstallationOwner(Strategic_Installation.SE_Airbase) == constant.ARMY_ANGLO then
        WaitFor(1)
        DebugOut("Dock Win / Lose Check. Reviving Fighter")
        ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Fighter_1, -910, 300, 0, 25)
      elseif IsReadyToRevive(Air_Vehicle.AI_Fighter_2) and GetInstallationOwner(Strategic_Installation.SE_Airbase) == constant.ARMY_ANGLO then
        WaitFor(1)
        DebugOut("Dock Win / Lose Check. Reviving Fighter")
        ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Fighter_2, -910, 300, 0, 25)
      end
    else
      EndFrame()
    end
    if CountRemainingPlayerTroops(constant.PLAYER_ONE) == 0 then
      if mortars == 2 then
        Kill(script07)
        missionend = 1
        ClearMessageQueue()
        DebugOut("player has lost all of their Infantry")
        PhoneMessage(72, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
        if GetPlayerUnit(constant.PLAYER_ONE) == Air_Vehicle.AI_Fighter_1 or GetPlayerUnit(constant.PLAYER_ONE) == Air_Vehicle.AI_Fighter_2 then
          EnableControllerItem(constant.CONTROL_TRANSFER, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_HUD_TRANSFER, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_TOGGLE_MAP, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_PAUSE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_CALL, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_SEND, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_DISMISS, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_FIRE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_JUMP, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_NEXT_UNIT_TYPE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_NEXT_UNIT_TYPE_ALT, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_PREV_UNIT_TYPE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_NEXT_UNIT, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_PREV_UNIT, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_LOCAL_CALL, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_ROLL, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_GLOBAL_TOGGLE, 0, constant.PLAYER_ONE)
          SetHudState(constant.PLAYER_ONE, constant.HUD_FUNCTIONINDICATOR, constant.HUD_ITEM_OFF)
        else
          DeclareVictory(constant.ARMY_SOLAR)
        end
        repeat
          EndFrame()
        until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(132)
      elseif inftext == 0 and mortars == 0 then
        if powintro == 0 then
          PhoneMessageWithObjective(57, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE, 0, constant.NEW_SECONDARY_OBJECTIVE)
        else
          PhoneMessage(57, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
        end
        inftext = 1
        SetObjectiveData(Objective.Mortars, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Mortars_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      EndFrame()
    else
      WaitFor(0.5)
    end
    if mid == 2 and fightermid == 4 then
      DebugOut("Both Cutscenes Complete, moving onto Dock Win / Lose Loop")
      break
    end
    if CheckCapturePoint(Capture_Point.SE_Dock_CP, constant.ARMY_ANGLO, 100, 1, constant.CAPTUREPOINTFLAG_RAISING) or GetState(Capture_Point.SE_Dock_CP) == flag.TYPE_ANGLO then
      Kill(script07)
      DebugOut("Player has captured the SE Naval Base, begin next objective")
      SetObjectiveData(Objective.Dock, constant.OBJECTIVE_DATA_STATE, 1)
      fighterskip = 1
      break
    end
  end
  DebugOut("Airfield win / lose loop broken")
  repeat
    EndFrame()
  until missionend == 0
  while missionend == 0 and dock == 0 and fighterskip == 0 do
    if CheckCapturePoint(Capture_Point.SE_Dock_CP, constant.ARMY_ANGLO, 100, 1, constant.CAPTUREPOINTFLAG_RAISING) or GetState(Capture_Point.SE_Dock_CP) == flag.TYPE_ANGLO then
      Kill(script07)
      DebugOut("Player has captured the SE Naval Base, begin next objective")
      SetObjectiveData(Objective.Dock, constant.OBJECTIVE_DATA_STATE, 1)
      Kill(Ground_Vehicle.CS_Artillery_1)
      Kill(Ground_Vehicle.CS_Artillery_2)
      Kill(Ground_Vehicle.CS_Artillery_3)
      break
    end
    if AllPlayerUnitsDead(constant.PLAYER_ONE) then
      DebugOut("Player has lost all their units, waiting for 2 seconds and double checking the situation before officially failing it")
      WaitFor(2)
      if AllPlayerUnitsDead(constant.PLAYER_ONE) and GetInstallationOwner(Strategic_Installation.SE_Airbase) == constant.ARMY_SOLAR then
        Kill(script07)
        missionend = 1
        ClearMessageQueue()
        DebugOut("player has lost all of their units")
        PhoneMessage(73, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
        if GetPlayerUnit(constant.PLAYER_ONE) == Air_Vehicle.AI_Fighter_1 or GetPlayerUnit(constant.PLAYER_ONE) == Air_Vehicle.AI_Fighter_2 then
          EnableControllerItem(constant.CONTROL_TRANSFER, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_HUD_TRANSFER, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_TOGGLE_MAP, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_PAUSE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_CALL, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_SEND, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_DISMISS, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_FIRE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_JUMP, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_NEXT_UNIT_TYPE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_NEXT_UNIT_TYPE_ALT, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_PREV_UNIT_TYPE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_NEXT_UNIT, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_PREV_UNIT, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_LOCAL_CALL, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_ROLL, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_GLOBAL_TOGGLE, 0, constant.PLAYER_ONE)
          SetHudState(constant.PLAYER_ONE, constant.HUD_FUNCTIONINDICATOR, constant.HUD_ITEM_OFF)
        else
          DeclareVictory(constant.ARMY_SOLAR)
        end
        repeat
          EndFrame()
        until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(131)
      elseif IsReadyToRevive(Air_Vehicle.AI_Fighter_1) and GetInstallationOwner(Strategic_Installation.SE_Airbase) == constant.ARMY_ANGLO then
        WaitFor(1)
        DebugOut("Dock Win / Lose Check. Reviving Fighter")
        ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Fighter_1, -910, 300, 0, 25)
      elseif IsReadyToRevive(Air_Vehicle.AI_Fighter_2) and GetInstallationOwner(Strategic_Installation.SE_Airbase) == constant.ARMY_ANGLO then
        WaitFor(1)
        DebugOut("Dock Win / Lose Check. Reviving Fighter")
        ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Air_Vehicle.AI_Fighter_2, -910, 300, 0, 25)
      end
    else
      EndFrame()
    end
    if CountRemainingPlayerTroops(constant.PLAYER_ONE) == 0 then
      if mortars == 2 then
        Kill(script07)
        missionend = 1
        ClearMessageQueue()
        DebugOut("player has lost all of their Infantry")
        PhoneMessage(72, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
        if GetPlayerUnit(constant.PLAYER_ONE) == Air_Vehicle.AI_Fighter_1 or GetPlayerUnit(constant.PLAYER_ONE) == Air_Vehicle.AI_Fighter_2 then
          EnableControllerItem(constant.CONTROL_TRANSFER, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_HUD_TRANSFER, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_TOGGLE_MAP, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_PAUSE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_CALL, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_SEND, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_DISMISS, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_FIRE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_JUMP, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_NEXT_UNIT_TYPE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_NEXT_UNIT_TYPE_ALT, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_PREV_UNIT_TYPE, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_NEXT_UNIT, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_PREV_UNIT, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_LOCAL_CALL, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_ROLL, 0, constant.PLAYER_ONE)
          EnableControllerItem(constant.CONTROL_GLOBAL_TOGGLE, 0, constant.PLAYER_ONE)
          SetHudState(constant.PLAYER_ONE, constant.HUD_FUNCTIONINDICATOR, constant.HUD_ITEM_OFF)
        else
          DeclareVictory(constant.ARMY_SOLAR)
        end
        repeat
          EndFrame()
        until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(132)
      elseif inftext == 0 and mortars == 0 then
        if powintro == 0 then
          PhoneMessageWithObjective(57, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE, 0, constant.NEW_SECONDARY_OBJECTIVE)
        else
          PhoneMessage(57, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
        end
        inftext = 1
        SetObjectiveData(Objective.Mortars, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Mortars_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      EndFrame()
    else
      WaitFor(0.5)
    end
  end
  if missionend == 0 then
    DebugOut("checking for Sea Fort win / lose conditions")
  end
  Kill(Air_Vehicle.CS_Gunship_1, false)
  Kill(Air_Vehicle.CS_Gunship_2, false)
  ClearMessageQueue()
  PhoneMessageWithObjective(69, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  FreezePlayer()
  SetInvulnerable(flag.TYPE_ANGLO, true)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Kill(script07)
  StartOutro()
  dock = 1
  PauseTimerActive = 1
  SetObjectiveData(Objective.SO_Airbase, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SO_Airbase_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  Kill(Building.Entity260024107, false)
  Kill(Building.Entity260024108, false)
  Kill(Troop.Entity260020638, false)
  Kill(Troop.Entity260020639, false)
  Kill(Troop.Entity260020640, false)
  if IsDead(Ground_Vehicle.CS_Artillery_1) then
    repeat
      EndFrame()
    until IsReadyToRevive(Ground_Vehicle.CS_Artillery_1)
    ReviveDeadUnit(Ground_Vehicle.CS_Artillery_1, 1060, 770, 180, 5)
  else
    Spawn(Ground_Vehicle.CS_Artillery_1)
    Teleport(Ground_Vehicle.CS_Artillery_1, 1060, 770, 180, 5)
  end
  if IsDead(Ground_Vehicle.CS_Artillery_2) then
    repeat
      EndFrame()
    until IsReadyToRevive(Ground_Vehicle.CS_Artillery_2)
    ReviveDeadUnit(Ground_Vehicle.CS_Artillery_2, 1085, 765, 180, 5)
  else
    Spawn(Ground_Vehicle.CS_Artillery_2)
    Teleport(Ground_Vehicle.CS_Artillery_2, 1085, 765, 180, 5)
  end
  if IsDead(Ground_Vehicle.CS_Artillery_3) then
    repeat
      EndFrame()
    until IsReadyToRevive(Ground_Vehicle.CS_Artillery_3)
    ReviveDeadUnit(Ground_Vehicle.CS_Artillery_3, 1245, 570, 270, 5)
  else
    Spawn(Ground_Vehicle.CS_Artillery_3)
    Teleport(Ground_Vehicle.CS_Artillery_3, 1230, 570, 270, 5)
  end
  Teleport(Air_Vehicle.AI_Fighter_1, 620, 650, 90, 10)
  Teleport(Air_Vehicle.AI_Fighter_2, 620, 630, 90, 10)
  repeat
    EndFrame()
  until cutscene == 0
  WaitFor(1)
  DebugOut("Starting SF Cutscene Kill check")
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      DebugOut("mid level cutscene skipped")
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      cutscene = 1
      break
    else
    end
    EndFrame()
  end
  ClearMessageQueue()
  DebugOut("Killing Cutscene")
  Kill(cutkiller)
  dock = 2
  SetCamera(Camera.Player_Camera)
  if IsDead(Air_Vehicle.AI_Fighter_1) and airbase == 1 then
    DebugOut("Reviving AI Fighter 1")
    repeat
      EndFrame()
    until IsReadyToRevive(Air_Vehicle.AI_Fighter_1)
    ReviveDeadUnit(Air_Vehicle.AI_Fighter_1, 620, 650, 90, 10)
  else
    Teleport(Air_Vehicle.AI_Fighter_1, 620, 650, 90, 10)
  end
  if IsDead(Air_Vehicle.AI_Fighter_2) and airbase == 1 then
    DebugOut("Reviving AI Fighter 2")
    repeat
      EndFrame()
    until IsReadyToRevive(Air_Vehicle.AI_Fighter_2)
    ReviveDeadUnit(Air_Vehicle.AI_Fighter_2, 620, 630, 90, 10)
  else
    Teleport(Air_Vehicle.AI_Fighter_2, 620, 630, 90, 10)
  end
  if bridge == 0 then
    Spawn(Water_Vehicle.AI_Battleship_1)
    Spawn(Water_Vehicle.AI_Battleship_2)
  end
  SetActive(Water_Vehicle.AI_Battleship_1, constant.ACTIVE)
  SetActive(Water_Vehicle.AI_Battleship_2, constant.ACTIVE)
  if IsDead(Water_Vehicle.AI_Battleship_1) then
    repeat
      EndFrame()
    until IsReadyToRevive(Water_Vehicle.AI_Battleship_1)
    ReviveDeadUnit(Water_Vehicle.AI_Battleship_1, 870, 670, 90, 10)
  else
    SetHealthPercent(Water_Vehicle.AI_Battleship_1, 100)
    Teleport(Water_Vehicle.AI_Battleship_1, 870, 670, 90, 10)
  end
  if IsReadyToRevive(Water_Vehicle.AI_Battleship_2) then
    ReviveDeadUnit(Water_Vehicle.AI_Battleship_2, 870, 590, 90, 10)
  else
    SetHealthPercent(Water_Vehicle.AI_Battleship_2, 100)
    Teleport(Water_Vehicle.AI_Battleship_2, 870, 590, 90, 10)
  end
  if IsDead(Air_Vehicle.AI_Fighter_1) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Air_Vehicle.AI_Fighter_1 and airbase == 1 then
    DebugOut("Player is now AI Fighter 1")
    ForceUnitTransfer(constant.PLAYER_ONE, Air_Vehicle.AI_Fighter_1, true)
    if GetSpawnMode() == eModeAction.Follow then
      repeat
        EndFrame()
      until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
      if GetSpawnMode() == eModeAction.Follow then
        FollowUnit(Air_Vehicle.AI_Fighter_2, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
        FollowUnit(Water_Vehicle.AI_Battleship_1, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
        FollowUnit(Water_Vehicle.AI_Battleship_2, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
      end
    end
  elseif IsDead(Air_Vehicle.AI_Fighter_2) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Air_Vehicle.AI_Fighter_2 and airbase == 1 then
    DebugOut("Player is now AI Fighter 2")
    ForceUnitTransfer(constant.PLAYER_ONE, Air_Vehicle.AI_Fighter_2, true)
    if GetSpawnMode() == eModeAction.Follow then
      repeat
        EndFrame()
      until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
      FollowUnit(Air_Vehicle.AI_Fighter_1, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Water_Vehicle.AI_Battleship_1, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
      FollowUnit(Water_Vehicle.AI_Battleship_2, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    end
  else
    ForceUnitTransfer(constant.PLAYER_ONE, Water_Vehicle.AI_Battleship_1, true)
    if GetSpawnMode() == eModeAction.Follow then
      repeat
        EndFrame()
      until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
      FollowUnit(Water_Vehicle.AI_Battleship_2, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    end
  end
  DebugOut("Teleporting the Player's units")
  Teleport(Air_Vehicle.AI_Fighter_1, 620, 650, 90, 10)
  Teleport(Air_Vehicle.AI_Fighter_2, 620, 630, 90, 10)
  EndFrame()
  if IsDead(Ground_Vehicle.AI_Light_Tank_1) == false then
    SetActive(Ground_Vehicle.AI_Light_Tank_1, constant.INACTIVE)
  end
  if IsDead(Ground_Vehicle.AI_Light_Tank_2) == false then
    SetActive(Ground_Vehicle.AI_Light_Tank_2, constant.INACTIVE)
  end
  if IsDead(Ground_Vehicle.POW_LT) == false then
    SetActive(Ground_Vehicle.POW_LT, constant.INACTIVE)
  end
  EndFrame()
  if IsDead(Troop.AI_Grunt_1) == false then
    SetActive(Troop.AI_Grunt_1, constant.INACTIVE)
  end
  if IsDead(Troop.AI_Grunt_2) == false then
    SetActive(Troop.AI_Grunt_2, constant.INACTIVE)
  end
  if IsDead(Troop.AI_Grunt_3) == false then
    SetActive(Troop.AI_Grunt_3, constant.INACTIVE)
  end
  if IsDead(Troop.AI_Grunt_4) == false then
    SetActive(Troop.AI_Grunt_4, constant.INACTIVE)
  end
  if IsDead(Troop.AI_Grunt_5) == false then
    SetActive(Troop.AI_Grunt_5, constant.INACTIVE)
  end
  if IsDead(Troop.AI_Grunt_6) == false then
    SetActive(Troop.AI_Grunt_6, constant.INACTIVE)
  end
  EndFrame()
  if IsDead(Troop.AI_Mortar_1) == false then
    SetActive(Troop.AI_Mortar_1, constant.INACTIVE)
  end
  if IsDead(Troop.AI_Mortar_2) == false then
    SetActive(Troop.AI_Mortar_2, constant.INACTIVE)
  end
  if IsDead(Troop.AI_Mortar_3) == false then
    SetActive(Troop.AI_Mortar_3, constant.INACTIVE)
  end
  if IsDead(Troop.Entity260024592) == false then
    SetActive(Troop.Entity260024592, constant.INACTIVE)
  end
  if IsDead(Troop.Entity260024593) == false then
    SetActive(Troop.Entity260024593, constant.INACTIVE)
  end
  if IsDead(Troop.POW1) == false then
    SetActive(Troop.POW1, constant.INACTIVE)
  end
  if IsDead(Troop.POW2) == false then
    SetActive(Troop.POW2, constant.INACTIVE)
  end
  EndFrame()
  if IsDead(Troop.POW3) == false then
    SetActive(Troop.POW3, constant.INACTIVE)
  end
  if IsDead(Troop.POW4) == false then
    SetActive(Troop.POW4, constant.INACTIVE)
  end
  if IsDead(Troop.POW5) == false then
    SetActive(Troop.POW5, constant.INACTIVE)
  end
  EndFrame()
  GoToArea(Ground_Vehicle.CS_Artillery_2, 1085, 735, 10)
  WaitFor(1)
  GoToArea(Ground_Vehicle.CS_Artillery_1, 1060, 725, 10)
  SetObjectiveData(Objective_Marker.SO_Airbase_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetViewDistanceAdjustment(550, 30)
  Despawn(Air_Vehicle.Fake_GS_1)
  Despawn(Air_Vehicle.Fake_GS_2)
  Despawn(Troop.Fake_Pilot_1)
  Despawn(Troop.Fake_Pilot_2)
  SetInvulnerable(flag.TYPE_ANGLO, false)
  SetHealthPercent(Water_Vehicle.AI_Battleship_1, 100)
  SetHealthPercent(Water_Vehicle.AI_Battleship_2, 100)
  SetHealthPercent(Air_Vehicle.AI_Fighter_1, 100)
  SetHealthPercent(Air_Vehicle.AI_Fighter_2, 100)
  Spawn(Building.Sea_Fort)
  Vanish(Destroyable_Object.Dummy_Sea_Fort)
  Spawn(Building.AA1)
  Spawn(Building.AA2)
  Spawn(Building.AA3)
  Spawn(Building.AA4)
  Spawn(Building.AA5)
  Spawn(Building.AA6)
  PauseTimerActive = 0
  EndIntro()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  if fightermid == 0 or 0 < fightermid and airbase == 0 and IsDead(Air_Vehicle.AI_Fighter_1) and IsDead(Air_Vehicle.AI_Fighter_2) then
    PhoneMessageWithObjective(94, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  else
    PhoneMessageWithObjective(97, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  end
  PhoneMessage(100, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
  SetObjectiveData(Objective.Sea_Fort, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Sea_Fort_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  WaitFor(5)
  SetTimer(120)
  ShowTimer(1)
  while missionend == 0 do
    if IsDead(Building.Sea_Fort) then
      DebugOut("Sea Fort has been Destroyed")
      ClearMessageQueue()
      missionend = 1
      ShowTimer(0)
      SetObjectiveData(Objective.Sea_Fort, constant.OBJECTIVE_DATA_STATE, 1)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Spawn(Air_Vehicle.CS_Gunship_1)
      Spawn(Air_Vehicle.CS_Gunship_2)
      Spawn(Air_Vehicle.CS_Gunship_3)
      Spawn(Air_Vehicle.CS_Gunship_4)
      EndFrame()
      Kill(Air_Vehicle.CS_Gunship_1)
      Kill(Air_Vehicle.CS_Gunship_2)
      Kill(Air_Vehicle.CS_Gunship_3)
      Kill(Air_Vehicle.CS_Gunship_4)
      EndFrame()
      StopScoringTimer()
      StartOutro()
      ListScoringUnits()
      Kill(Building.AA1)
      Kill(Building.AA2)
      Kill(Building.AA3)
      Kill(Building.AA4)
      Kill(Building.AA5)
      Kill(Building.AA6)
      Despawn(Building.AA1)
      Despawn(Building.AA2)
      Despawn(Building.AA3)
      Despawn(Building.AA4)
      Despawn(Building.AA5)
      Despawn(Building.AA6)
      Vanish(Building.Sea_Fort)
      Spawn(Building.Outro_Sea_Fort)
      SetInvulnerable(flag.TYPE_ANGLO, true)
      wincutscene = 1
      repeat
        EndFrame()
      until cutscene == 0
      while cutscene == 0 do
        if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
          DebugOut("mid level cutscene skipped")
          ClearMessageQueue()
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          cutscene = 1
        end
        EndFrame()
      end
      ClearMessageQueue()
      Kill(cutkiller)
      EndOutro()
      WinMission()
    elseif 1 > GetTimeLeft() then
      missionend = 1
      ClearMessageQueue()
      DeclareVictory(constant.ARMY_SOLAR)
      PhoneMessage(99, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(142)
    else
      EndFrame()
    end
    if AllPlayerUnitsDead(constant.PLAYER_ONE) or GetTimeLeft() < 60 and IsDead(Water_Vehicle.AI_Battleship_1) and IsDead(Water_Vehicle.AI_Battleship_2) then
      if IsReadyToRevive(Water_Vehicle.AI_Battleship_1) then
        ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Water_Vehicle.AI_Battleship_1, 865, 690, 90, 25)
        WaitFor(0.2)
      elseif IsReadyToRevive(Water_Vehicle.AI_Battleship_2) then
        ReviveFullUnitCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, Water_Vehicle.AI_Battleship_2, 865, 690, 90, 25)
        WaitFor(0.2)
      end
    else
      EndFrame()
    end
  end
end

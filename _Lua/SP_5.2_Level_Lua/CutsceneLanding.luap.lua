function CutsceneLanding(owner)
  cutscenelanding = owner
  scriptCutsceneLanding = owner
  local numTowers = 0
  local updateobjectives = 0
  local tower1 = 0
  local tower2 = 0
  local tower3 = 0
  local tower4 = 0
  local tower5 = 0
  local objectiveloop = 0
  local chopper1 = 0
  local chopper2 = 0
  local attackplayer = 0
  local timer = 0
  while true do
    if GetHealthPercent(Water_Vehicle.Battleship6) + GetHealthPercent(Water_Vehicle.Battleship7) < 75 or IsAttacking(Water_Vehicle.XDreadnought1) then
      GoToArea(Water_Vehicle.XDreadnought1, -25, -152, 5, 0, constant.ORDER_NORMAL)
      if IsDead(Water_Vehicle.XDreadnought1) == false then
        PhoneMessage(2, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
        WaitFor(7)
      end
      break
    end
    EndFrame()
  end
  DebugOut("Beach clear, checking for all objectives being complete")
  while battleshipobjective + submarineobjective + frigateobjective + dreadnoughtobjective < 4 do
    if objectiveloop == 0 then
      ClearMessageQueue()
      PhoneMessage(41, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      PhoneMessage(42, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      objectiveloop = 1
    end
    EndFrame()
    if IsDead(Water_Vehicle.Battleship6) and IsDead(Water_Vehicle.Battleship7) and IsDead(Water_Vehicle.XDreadnought1) and attackplayer == 0 then
      AttackTarget(Water_Vehicle.Battleship1, GetPlayerUnit(constant.PLAYER_ONE))
      AttackTarget(Water_Vehicle.Battleship2, GetPlayerUnit(constant.PLAYER_ONE))
      AttackTarget(Water_Vehicle.Battleship4, GetPlayerUnit(constant.PLAYER_ONE))
      AttackTarget(Water_Vehicle.Battleship5, GetPlayerUnit(constant.PLAYER_ONE))
      AttackTarget(Water_Vehicle.Frigate1, GetPlayerUnit(constant.PLAYER_ONE))
      AttackTarget(Water_Vehicle.Frigate2, GetPlayerUnit(constant.PLAYER_ONE))
      AttackTarget(Water_Vehicle.Frigate3, GetPlayerUnit(constant.PLAYER_ONE))
      AttackTarget(Water_Vehicle.Submarine1, GetPlayerUnit(constant.PLAYER_ONE))
      AttackTarget(Water_Vehicle.Submarine2, GetPlayerUnit(constant.PLAYER_ONE))
      AttackTarget(Water_Vehicle.Submarine3, GetPlayerUnit(constant.PLAYER_ONE))
      AttackTarget(Water_Vehicle.Submarine4, GetPlayerUnit(constant.PLAYER_ONE))
      AttackTarget(Water_Vehicle.Submarine5, GetPlayerUnit(constant.PLAYER_ONE))
      AttackTarget(Water_Vehicle.Submarine6, GetPlayerUnit(constant.PLAYER_ONE))
      AttackTarget(Water_Vehicle.Submarine7, GetPlayerUnit(constant.PLAYER_ONE))
      attackplayer = 1
    end
  end
  notincutscene = 1
  ClearMessageQueue()
  PhoneMessageWithObjective(59, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  WaitFor(7)
  DebugOut("Water objectives complete, going to landing cutscene")
  StartIntro()
  PauseTimerActive = 1
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  PlayEffect(Scripted_Effect.Null, 3, 0, 0, 0)
  Spawn(Troop.DummyGrunt)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.DummyGrunt, true, true)
  Despawn(Water_Vehicle.TDreadnought)
  Despawn(Water_Vehicle.TundranSubmarine1)
  Despawn(Water_Vehicle.TundranSubmarine2)
  Despawn(Water_Vehicle.TundranFrigate1)
  Despawn(Water_Vehicle.TundranFrigate2)
  Despawn(Water_Vehicle.TundranFrigate3)
  GunshipPatrol = 3
  if IsDead(Air_Vehicle.XGunship1) then
    ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship1, -922, 278, 90, 20)
  end
  if IsDead(Air_Vehicle.XGunship2) == false then
    Kill(Air_Vehicle.XGunship2)
  end
  Teleport(Air_Vehicle.XGunship1, -922, 278, 90, 20)
  Despawn(Air_Vehicle.XGunship1)
  Despawn(Air_Vehicle.XGunship2)
  SetViewDistanceAdjustment(500, 5)
  SetObjectiveData(Objective_Marker.Helipad, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.AATower1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.AATower2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetInvulnerable(flag.TYPE_TUNDRAN, true)
  SetInvulnerable(flag.TYPE_XYLVANIAN, true)
  FreezePlayer(constant.PLAYER_ONE)
  SetCamera(Camera.CutsceneCam, constant.PLAYER_ONE)
  Spawn(Water_Vehicle.CaveDreadnought1)
  Spawn(Water_Vehicle.CaveDreadnought2)
  Spawn(Water_Vehicle.CaveDreadnought3)
  Spawn(Water_Vehicle.CaveDreadnought4)
  Spawn(Building.ScatteredAATower4)
  Spawn(Building.ScatteredAATower5)
  Spawn(Troop.EndMissionUnit1)
  Spawn(Troop.EndMissionUnit2)
  Spawn(Troop.EndMissionUnit3)
  Spawn(Troop.EndMissionUnit4)
  CameraSetTarget(Camera.CutsceneCam, Waypoint.CameraLandingCutsceneTarget1)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.CameraLandingCutsceneSpline1)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  ClearMessageQueue()
  PhoneMessage(61, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
  PhoneMessageWithObjective(62, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(1)
  cutscenelandingskippable = 1
  PlayEffect(Scripted_Effect.IndoorLightningSound, 3, 0, 0, 0)
  WaitFor(1)
  PlayEffect(Scripted_Effect.IndoorLightningSound, 3, 0, 0, 0)
  WaitFor(1)
  PlayEffect(Scripted_Effect.IndoorLightningSound, 3, 0, 0, 0)
  WaitFor(1)
  PlayEffect(Scripted_Effect.IndoorLightningSound, 3, 0, 0, 0)
  WaitFor(1)
  PlayEffect(Scripted_Effect.IndoorLightningSound, 3, 0, 0, 0)
  WaitFor(1)
  PlayEffect(Scripted_Effect.IndoorLightningSound, 3, 0, 0, 0)
  WaitFor(1)
  PlayEffect(Scripted_Effect.IndoorLightningSound, 3, 0, 0, 0)
  WaitFor(1)
  PlayEffect(Scripted_Effect.IndoorLightningSound, 3, 0, 0, 0)
  WaitFor(1)
  PlayEffect(Scripted_Effect.IndoorLightningSound, 3, 0, 0, 0)
  WaitFor(1)
  PlayEffect(Scripted_Effect.IndoorLightningSound, 3, 0, 0, 0)
  WaitFor(1)
  PlayEffect(Scripted_Effect.Lightning, 3, 0, 0, 0)
  WaitFor(9)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetViewDistanceAdjustment(310, 5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  ClearMessageQueue()
  CameraSetTarget(Camera.CutsceneCam, Waypoint.CameraLandingCutsceneTarget3)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.CameraLandingCutsceneSpline3)
  Teleport(Air_Vehicle.TAirTransport1, 171, 4, 270, 20)
  Teleport(Air_Vehicle.TAirTransport2, 171, 37, 270, 20)
  Spawn(Air_Vehicle.TAirTransport1)
  Spawn(Air_Vehicle.TAirTransport2)
  LandAirUnit(Air_Vehicle.TAirTransport1, GetObjectXPosition(Destroyable_Object.LandingPad1), GetObjectZPosition(Destroyable_Object.LandingPad1), constant.ORDER_FORCED, false, 5, 210)
  LandAirUnit(Air_Vehicle.TAirTransport2, GetObjectXPosition(Destroyable_Object.LandingPad2), GetObjectZPosition(Destroyable_Object.LandingPad2), constant.ORDER_FORCED, false, 5, 30)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  ClearMessageQueue()
  PhoneMessage(63, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
  WaitFor(4)
  SetObjectiveData(Objective.SolarAA, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.SolarAA, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.SolarMortar, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.SolarMortar, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  timer = GetTime()
  repeat
    if chopper1 == 0 and GetMovementState(Air_Vehicle.TAirTransport1) == constant.MOVEMENT_STATE_ON_GROUND then
      DebugOut("Chopper 1 landed")
      Despawn(Air_Vehicle.XGunship1)
      Despawn(Air_Vehicle.XGunship2)
      ExitVehicle(Ground_Vehicle.TLightTank1, constant.ID_NONE)
      WaitFor(2)
      ExitVehicle(Troop.TAirTransport1Pilot2, constant.ID_NONE)
      GoToArea(Troop.TAirTransport1Pilot2, -163, -60, 5, 0, constant.ORDER_NORMAL)
      WaitFor(0.2)
      ExitVehicle(Troop.TAirTransport1Pilot3, constant.ID_NONE)
      GoToArea(Troop.TAirTransport1Pilot3, -163, -60, 5, 0, constant.ORDER_NORMAL)
      WaitFor(0.2)
      ExitVehicle(Troop.TAirTransport1Pilot4, constant.ID_NONE)
      GoToArea(Troop.TAirTransport1Pilot4, -163, -60, 5, 0, constant.ORDER_NORMAL)
      WaitFor(0.2)
      ExitVehicle(Troop.TAirTransport1Pilot5, constant.ID_NONE)
      GoToArea(Troop.TAirTransport1Pilot5, -163, -60, 5, 0, constant.ORDER_NORMAL)
      WaitFor(0.2)
      ExitVehicle(Troop.TAirTransport1Pilot6, constant.ID_NONE)
      GoToArea(Troop.TAirTransport1Pilot6, -163, -60, 5, 0, constant.ORDER_NORMAL)
      chopper1 = 1
    end
    if chopper2 == 0 and GetMovementState(Air_Vehicle.TAirTransport2) == constant.MOVEMENT_STATE_ON_GROUND then
      DebugOut("Chopper 2 landed")
      ExitVehicle(Troop.TAirTransport2Pilot2, constant.ID_NONE)
      ExitVehicle(Troop.TAirTransport2Pilot3, constant.ID_NONE)
      ExitVehicle(Troop.TAirTransport2Pilot4, constant.ID_NONE)
      chopper2 = 1
    end
    EndFrame()
  until chopper1 == 1 and chopper2 == 1
  while GetTime() < timer + 14 do
    EndFrame()
  end
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  cutscenelandingfinished = 1
end

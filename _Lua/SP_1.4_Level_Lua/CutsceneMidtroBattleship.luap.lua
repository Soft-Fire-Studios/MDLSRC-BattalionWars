function CutsceneMidtroBattleship(owner)
  scriptCutsceneMidtroBattleship = owner
  Despawn(Building.BoatTarget1)
  Despawn(Building.BoatTarget2)
  Despawn(Water_Vehicle.SolarBattleshipCutscene)
  repeat
    if tellrecontostop == 1 then
      StopAndGuard(Ground_Vehicle.SolarRecon)
    end
    EndFrame()
  until battleshipcutscenestart == 1
  DebugOut("Sending extraction chopper to landing zone")
  Despawn(Building.BoatTarget1)
  Despawn(Building.BoatTarget2)
  Spawn(Air_Vehicle.ExtractionChopper)
  SetUnitInvulnerable(Air_Vehicle.ExtractionChopper, true)
  WaitFor(0.2)
  LandAirUnit(Air_Vehicle.ExtractionChopper, GetObjectXPosition(Destroyable_Object.Helipad) + 3, GetObjectZPosition(Destroyable_Object.Helipad), constant.ORDER_FORCED, 0, 5, 270)
  while true do
    if IsInArea(Troop.Admiral, Map_Zone.ExtractionChopper) and GetMovementState(Air_Vehicle.ExtractionChopper) == constant.MOVEMENT_STATE_ON_GROUND then
      DebugOut("Munitions expert is in area of extraction chopper")
      dontneedrecon = 1
      SetObjectiveData(Objective.EscortAdmiral, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.HQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
      break
    end
    EndFrame()
  end
  PauseTimerActive = 1
  StartIntro()
  FreezePlayer(constant.PLAYER_ONE)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  gotrecon = 0
  Spawn(Troop.TransferMonkey)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.TransferMonkey, true, true)
  PutUnitInVehicle(Ground_Vehicle.SolarRecon, Air_Vehicle.ExtractionChopper, 6)
  if IsDead(Ground_Vehicle.SolarLightTank) then
    ReviveFullUnitCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Ground_Vehicle.SolarLightTank, 179, 206, 270, 15)
    perishedunits = 1
  end
  EndFrame()
  Teleport(Ground_Vehicle.SolarLightTank, 179, 204, 270, 5)
  if IsDead(Troop.Grunt1) then
    ReviveDeadUnit(Troop.Grunt1, 183, 206, 270, 15)
    perishedunits = 1
  end
  if IsDead(Troop.Grunt2) then
    ReviveDeadUnit(Troop.Grunt2, 183, 206, 270, 15)
    perishedunits = 1
  end
  if IsDead(Troop.Grunt3) then
    ReviveDeadUnit(Troop.Grunt3, 183, 206, 270, 15)
    perishedunits = 1
  end
  if IsDead(Troop.Grunt4) then
    ReviveDeadUnit(Troop.Grunt4, 183, 206, 270, 15)
    perishedunits = 1
  end
  if IsDead(Troop.Grunt5) then
    ReviveDeadUnit(Troop.Grunt5, 183, 206, 270, 15)
    perishedunits = 1
  end
  if IsDead(Troop.Grunt6) then
    ReviveDeadUnit(Troop.Grunt6, 183, 206, 270, 15)
    perishedunits = 1
  end
  if IsDead(Troop.Grunt7) then
    ReviveDeadUnit(Troop.Grunt7, 183, 206, 270, 15)
    perishedunits = 1
  end
  if IsDead(Troop.Grunt8) then
    ReviveDeadUnit(Troop.Grunt8, 183, 206, 270, 15)
    perishedunits = 1
  end
  if IsDead(Troop.Grunt9) then
    ReviveDeadUnit(Troop.Grunt9, 183, 206, 270, 15)
    perishedunits = 1
  end
  if IsDead(Troop.Grunt10) then
    ReviveDeadUnit(Troop.Grunt10, 183, 206, 270, 15)
    perishedunits = 1
  end
  if IsDead(Troop.SolarAssault1) then
    ReviveDeadUnit(Troop.SolarAssault1, 183, 206, 270, 15)
    perishedunits = 1
  end
  if IsDead(Troop.SolarAssault2) then
    ReviveDeadUnit(Troop.SolarAssault2, 183, 206, 270, 15)
    perishedunits = 1
  end
  if IsDead(Troop.SolarAssault3) then
    ReviveDeadUnit(Troop.SolarAssault3, 183, 206, 270, 15)
    perishedunits = 1
  end
  if IsDead(Troop.SolarAssault4) then
    ReviveDeadUnit(Troop.SolarAssault4, 183, 206, 270, 15)
    perishedunits = 1
  end
  if IsDead(Troop.SolarAssault5) then
    ReviveDeadUnit(Troop.SolarAssault5, 183, 206, 270, 15)
    perishedunits = 1
  end
  SetUnitInvulnerable(Troop.Grunt1, false)
  SetUnitInvulnerable(Troop.Grunt2, false)
  SetUnitInvulnerable(Troop.Grunt3, false)
  SetUnitInvulnerable(Troop.Grunt4, false)
  SetUnitInvulnerable(Troop.Grunt5, false)
  SetUnitInvulnerable(Troop.Grunt6, false)
  SetUnitInvulnerable(Troop.Grunt7, false)
  SetUnitInvulnerable(Troop.Grunt8, false)
  SetUnitInvulnerable(Troop.Grunt9, false)
  SetUnitInvulnerable(Troop.Grunt10, false)
  SetUnitInvulnerable(Troop.SolarAssault1, false)
  SetUnitInvulnerable(Troop.SolarAssault2, false)
  SetUnitInvulnerable(Troop.SolarAssault3, false)
  SetUnitInvulnerable(Troop.SolarAssault4, false)
  SetUnitInvulnerable(Troop.SolarAssault5, false)
  SetUnitInvulnerable(Ground_Vehicle.SolarLightTank, false)
  SetActive(Troop.SolarAssault1, constant.ACTIVE)
  SetActive(Troop.SolarAssault2, constant.ACTIVE)
  SetActive(Troop.SolarAssault3, constant.ACTIVE)
  SetActive(Troop.SolarAssault4, constant.ACTIVE)
  SetActive(Troop.SolarAssault5, constant.ACTIVE)
  SetActive(Troop.Grunt1, constant.ACTIVE)
  SetActive(Troop.Grunt2, constant.ACTIVE)
  SetActive(Troop.Grunt3, constant.ACTIVE)
  SetActive(Troop.Grunt4, constant.ACTIVE)
  SetActive(Troop.Grunt5, constant.ACTIVE)
  SetActive(Troop.Grunt6, constant.ACTIVE)
  SetActive(Troop.Grunt7, constant.ACTIVE)
  SetActive(Troop.Grunt8, constant.ACTIVE)
  SetActive(Troop.Grunt9, constant.ACTIVE)
  SetActive(Troop.Grunt10, constant.ACTIVE)
  SetActive(Ground_Vehicle.SolarLightTank, constant.ACTIVE)
  SetHealthPercent(Troop.SolarAssault1, 100)
  SetHealthPercent(Troop.SolarAssault2, 100)
  SetHealthPercent(Troop.SolarAssault3, 100)
  SetHealthPercent(Troop.SolarAssault4, 100)
  SetHealthPercent(Troop.SolarAssault5, 100)
  SetHealthPercent(Troop.Grunt1, 100)
  SetHealthPercent(Troop.Grunt2, 100)
  SetHealthPercent(Troop.Grunt3, 100)
  SetHealthPercent(Troop.Grunt4, 100)
  SetHealthPercent(Troop.Grunt5, 100)
  SetHealthPercent(Troop.Grunt6, 100)
  SetHealthPercent(Troop.Grunt7, 100)
  SetHealthPercent(Troop.Grunt8, 100)
  SetHealthPercent(Troop.Grunt9, 100)
  SetHealthPercent(Troop.Grunt10, 100)
  SetHealthPercent(Ground_Vehicle.SolarLightTank, 100)
  ForceUnitTransfer(constant.PLAYER_ONE, Ground_Vehicle.SolarLightTank, true)
  GoToArea(Air_Vehicle.ExtractionChopper, -506, 573, 5, 0, constant.ORDER_FORCED)
  SetCamera(Camera.CutsceneCam, constant.PLAYER_ONE)
  CameraSetTarget(Camera.CutsceneCam, Air_Vehicle.ExtractionChopper)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.BattleshipMidtroCutsceneSpline1)
  ClearMessageQueue()
  PhoneMessageWithObjective(58, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  Despawn(Ground_Vehicle.SolarRecon)
  Despawn(Troop.Admiral)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  GoToArea(Air_Vehicle.ExtractionChopper, -506, 573, 5, 0, constant.ORDER_FORCED)
  WaitFor(1)
  CutsceneBattleshipCanNowBeSkipped = 1
  WaitFor(8.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Building.BoatTarget1)
  Spawn(Building.BoatTarget2)
  Despawn(Air_Vehicle.ExtractionChopper)
  ExitVehicle(Troop.RPGTower1)
  ExitVehicle(Troop.RPGTower2)
  ExitVehicle(Troop.RPGTower4)
  Despawn(Troop.RPGTower1)
  Despawn(Troop.RPGTower2)
  Despawn(Troop.RPGTower4)
  Spawn(Building.BoatTarget1)
  Spawn(Water_Vehicle.SolarBattleshipCutscene)
  SetUnitInvulnerable(Building.RPGTower3, true)
  AttackTarget(Water_Vehicle.SolarBattleshipCutscene, Building.RPGTower3, constant.ORDER_FORCED)
  CameraSetTarget(Camera.CutsceneCam, Waypoint.BattleshipMidtroCutsceneTarget2)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.BattleshipMidtroCutsceneSpline2)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(59, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  WaitFor(0.5)
  AttackTarget(Water_Vehicle.SolarBattleshipCutscene, Building.BoatTarget1, constant.ORDER_FORCED)
  WaitFor(5.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  ClearMessageQueue()
  Spawn(Building.BoatTarget2)
  CameraSetTarget(Camera.CutsceneCam, Waypoint.BattleshipMidtroCutsceneTarget4)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.BattleshipMidtroCutsceneSpline4)
  CameraSetFOV(Camera.CutsceneCam, 45, constant.IMMEDIATE, 45, constant.NO_WAIT)
  Teleport(Water_Vehicle.SolarBattleshipCutscene, -58, 234, 200)
  SetHealthPercent(Building.RPGTower3, 100)
  SetHealthPercent(Building.RPGTower2, 100)
  AttackTarget(Water_Vehicle.SolarBattleshipCutscene, Building.BoatTarget2, constant.ORDER_FORCED)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  GoToArea(Troop.MainBaseFlamer1, -49, 182, 5, 0, constant.ORDER_FORCED)
  GoToArea(Troop.MainBaseFlamer2, -49, 182, 5, 0, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.AngloLightTank3, -49, 182, 5, 0, constant.ORDER_FORCED)
  SetUnitInvulnerable(Building.RPGTower3, false)
  local timer = GetTime()
  repeat
    EndFrame()
  until IsDead(Building.BoatTarget1) and IsDead(Building.BoatTarget2) or GetTime() > timer + 7
  SetUnitInvulnerable(Building.Portcullis1, false)
  SetUnitInvulnerable(Building.Portcullis2, false)
  Kill(Destroyable_Object.Portcullis1)
  Kill(Destroyable_Object.Portcullis2)
  Kill(Destroyable_Object.DropOffPortcullis)
  PhoneMessageWithObjective(60, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(7.5)
  CutsceneBattleshipFinished = 1
end

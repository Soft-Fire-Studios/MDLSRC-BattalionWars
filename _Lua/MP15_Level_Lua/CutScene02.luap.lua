function CutScene02(owner)
  cutscene02 = owner
  repeat
    EndFrame()
  until aatowers == 2
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    FreezePlayer(constant.PLAYER_ONE)
    SetInvulnerable(flag.TYPE_TUNDRAN, 1)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    FreezePlayer(constant.PLAYER_TWO)
    SetInvulnerable(flag.TYPE_WFRONTIER, 1)
  end
  inacutscene = true
  Kill(startup)
  Kill(killgunship01)
  WaitFor(2)
  PauseTimerActive = 1
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Kill(Air_Vehicle.XylvanianGunship01)
  Kill(Air_Vehicle.XylvanianGunship02)
  Despawn(Troop.XMortarVet01)
  Despawn(Troop.XMortarVet02)
  Despawn(Troop.XMortarVet03)
  Despawn(Troop.XMortarVet04)
  Despawn(Troop.XMortarVet05)
  Despawn(Troop.XAssaultVet05)
  Despawn(Troop.XAssaultVet09)
  Despawn(Troop.XAssaultVet10)
  Despawn(Troop.XAssaultVet11)
  Despawn(Troop.XAssaultVet12)
  Despawn(Ground_Vehicle.XylvanianFuelStationHeavyTank01)
  Despawn(Ground_Vehicle.XylvanianFuelStationHeavyTank02)
  Despawn(Ground_Vehicle.XylvanianFuelStationHeavyTank03)
  Despawn(Ground_Vehicle.XylvanianFuelStationHeavyTank04)
  Despawn(Ground_Vehicle.XylvanianFuelStationHeavyTank05)
  Despawn(Ground_Vehicle.XylvanianFuelStationHeavyTank06)
  Despawn(Ground_Vehicle.XHeavyTank01)
  Despawn(Ground_Vehicle.XHeavyTank02)
  Despawn(Troop.Entity330101289)
  Despawn(Troop.Entity330101290)
  Despawn(Troop.Entity330101291)
  Despawn(Troop.Entity330101292)
  Despawn(Troop.Entity330101285)
  Despawn(Troop.Entity330101286)
  Despawn(Troop.Entity330101287)
  Despawn(Troop.Entity330101288)
  Despawn(Troop.Entity330101308)
  Despawn(Troop.Entity330101309)
  Despawn(Troop.Entity330101310)
  Despawn(Troop.Entity330101311)
  Despawn(Troop.Entity330102577)
  Despawn(Troop.Entity330102578)
  Despawn(Troop.Entity330102579)
  Despawn(Troop.Entity330102580)
  Despawn(Troop.Entity330102581)
  Despawn(Building.XylvanianMGNest01)
  Despawn(Building.XylvanianMGNest03)
  Despawn(Building.XylvanianMGNest05)
  Despawn(Building.XylvanianMGNest06)
  Despawn(Building.XylvanianMGNest09)
  Despawn(Building.XylvanianMGNest10)
  Despawn(Building.XylvanianMGNest11)
  Despawn(Building.RPGTower04)
  Despawn(Building.RPGTower03)
  Despawn(Building.Entity330105173)
  Despawn(Building.Entity330105174)
  Despawn(Building.XAmmoDump01)
  Spawn(Troop.TundranCutSceneTroop)
  Spawn(Troop.WFCutSceneTroop)
  Spawn(Air_Vehicle.TundranFighter02)
  Spawn(Air_Vehicle.TundranFighter03)
  Spawn(Air_Vehicle.TundranFighter01)
  Spawn(Air_Vehicle.TundranBomber01)
  Spawn(Air_Vehicle.TundranBomber02)
  Spawn(Air_Vehicle.WFFighter01)
  Spawn(Air_Vehicle.WFFighter02)
  Spawn(Air_Vehicle.WFFighter03)
  Spawn(Air_Vehicle.WFBomber01)
  Spawn(Air_Vehicle.WFBomber02)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ForceUnitTransfer(constant.PLAYER_ONE, Troop.TundranCutSceneTroop, true, true)
    SetCamera(Camera.FlyoverCutsceneP1, constant.PLAYER_ONE)
    ClearMessageQueue(constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ForceUnitTransfer(constant.PLAYER_TWO, Troop.WFCutSceneTroop, true, true)
    SetCamera(Camera.FlyoverCutsceneP2, constant.PLAYER_TWO)
    ClearMessageQueue(constant.PLAYER_TWO)
  end
  Despawn(Ground_Vehicle.TundranBattlestation01)
  Despawn(Troop.TundranMortarVet01)
  Despawn(Troop.TundranMortarVet02)
  Despawn(Troop.TundranMortarVet03)
  Despawn(Troop.TundranMortarVet04)
  Despawn(Ground_Vehicle.WFAAVehicle01)
  Despawn(Ground_Vehicle.WFAAVehicle02)
  Despawn(Troop.WFBazookaVet01)
  Despawn(Troop.WFBazookaVet02)
  Despawn(Troop.WFBazookaVet03)
  Despawn(Troop.WFBazookaVet04)
  Despawn(Troop.WFBazookaVet05)
  StartOutro()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  aatowers = 3
  PhoneMessageWithObjective(28, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  PhoneMessageWithObjective(28, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  PhoneMessage(31, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
  PhoneMessage(32, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_TWO)
  WaitFor(8)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    RollAirUnit(Air_Vehicle.TundranFighter03)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    RollAirUnit(Air_Vehicle.WFFighter01)
  end
  WaitFor(0.75)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    RollAirUnit(Air_Vehicle.TundranFighter02)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    RollAirUnit(Air_Vehicle.WFFighter02)
  end
  WaitFor(0.75)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    RollAirUnit(Air_Vehicle.TundranFighter01)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    RollAirUnit(Air_Vehicle.WFFighter03)
  end
  WaitFor(3)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Air_Vehicle.TundranFighter01)
  Despawn(Air_Vehicle.TundranFighter02)
  Despawn(Air_Vehicle.TundranFighter03)
  Despawn(Air_Vehicle.TundranBomber01)
  Despawn(Air_Vehicle.TundranBomber02)
  Despawn(Air_Vehicle.WFFighter01)
  Despawn(Air_Vehicle.WFFighter02)
  Despawn(Air_Vehicle.WFFighter03)
  Despawn(Air_Vehicle.WFBomber01)
  Despawn(Air_Vehicle.WFBomber02)
  Spawn(Air_Vehicle.XylvanianFighter01)
  Spawn(Air_Vehicle.XylvanianFighter02)
  Spawn(Air_Vehicle.XylvanianFighter03)
  Spawn(Air_Vehicle.XylvanianFighter04)
  Spawn(Water_Vehicle.XDreadnought01)
  Spawn(Water_Vehicle.XDreadnought02)
  Spawn(Building.VladsBigDrill)
  Spawn(Building.SpiderGun01)
  Spawn(Building.SpiderGun02)
  Spawn(Building.SpiderGun03)
  Spawn(Building.SpiderGun04)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.FlyoverCutsceneP1, constant.PLAYER_ONE)
    CameraSetTarget(Camera.FlyoverCutsceneP1, Waypoint.BigDrillTarget)
    CameraSetWaypoint(Camera.FlyoverCutsceneP1, Waypoint.Entity330101151)
    ClearMessageQueue(constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.FlyoverCutsceneP2, constant.PLAYER_TWO)
    CameraSetTarget(Camera.FlyoverCutsceneP2, Waypoint.BigDrillTarget)
    CameraSetWaypoint(Camera.FlyoverCutsceneP2, Waypoint.Entity330101151)
    ClearMessageQueue(constant.PLAYER_TWO)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    PlayEffect(Scripted_Effect.MiningSpiderStart, flag.SOUND, Camera.FlyoverCutsceneP1)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    PlayEffect(Scripted_Effect.MiningSpiderStart, flag.SOUND, Camera.FlyoverCutsceneP2)
  end
  PhoneMessage(27, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad)
  PhoneMessage(35, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy)
  PhoneMessage(36, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy)
  WaitFor(28)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  cutscenefinished02 = 1
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.skip02 = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    netvariable.player2.skip02 = 1
  end
end

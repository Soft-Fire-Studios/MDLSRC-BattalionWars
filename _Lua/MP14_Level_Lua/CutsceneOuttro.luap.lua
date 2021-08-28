function CutsceneOuttro(owner)
  Despawn(Air_Vehicle.EscapeChopper)
  Despawn(Troop.CutsceneGrunt1)
  Despawn(Troop.CutsceneGrunt2)
  Despawn(Troop.CutsceneGrunt3)
  Despawn(Troop.CutsceneGrunt4)
  Despawn(Troop.CutsceneGrunt5)
  Despawn(Troop.CutsceneGrunt6)
  Despawn(Troop.CutsceneGrunt7)
  Despawn(Troop.CutsceneGrunt8)
  Despawn(Troop.CutsceneGrunt9)
  Despawn(Troop.CutsceneGrunt10)
  Despawn(Troop.WFDummyGrunt)
  Despawn(Troop.SEDummyGrunt)
  cutsceneouttro = owner
  scriptCutsceneOutro = owner
  repeat
    EndFrame()
  until netvariable.player1.missioncomplete == 1
  if IsNetworkHost() then
    SetNetworkMissionComplete(1, true, 100)
    SetNetworkMissionComplete(2, true, 100)
  end
  WaitFor(1)
  startouttro = 1
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Ground_Vehicle.XLightTank1)
  Despawn(Building.ExitTower3)
  Despawn(Building.ExitTower4)
  Despawn(Troop.AcidGas4)
  Despawn(Troop.AcidGas5)
  Despawn(Troop.Bazooka1)
  Despawn(Troop.Bazooka2)
  Despawn(Troop.Bazooka3)
  Despawn(Troop.ExtractionPointDefender1)
  Despawn(Troop.ExtractionPointDefender2)
  Despawn(Troop.ExtractionPointDefender3)
  Spawn(Troop.WFDummyGrunt)
  Spawn(Troop.SEDummyGrunt)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ForceUnitTransfer(constant.PLAYER_ONE, Troop.WFDummyGrunt, true)
    FreezePlayer(constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ForceUnitTransfer(constant.PLAYER_TWO, Troop.SEDummyGrunt, true)
    FreezePlayer(constant.PLAYER_TWO)
  end
  Spawn(Air_Vehicle.EscapeChopper)
  Spawn(Troop.CutsceneGrunt1)
  Spawn(Troop.CutsceneGrunt2)
  Spawn(Troop.CutsceneGrunt3)
  Spawn(Troop.CutsceneGrunt4)
  Spawn(Troop.CutsceneGrunt5)
  Spawn(Troop.CutsceneGrunt6)
  Spawn(Troop.CutsceneGrunt7)
  Spawn(Troop.CutsceneGrunt8)
  Spawn(Troop.CutsceneGrunt9)
  Spawn(Troop.CutsceneGrunt10)
  Despawn(Air_Vehicle.XGunship1)
  Despawn(Air_Vehicle.XGunship2)
  LandAirUnit(Air_Vehicle.EscapeChopper, GetObjectXPosition(Destroyable_Object.Helipad), GetObjectZPosition(Destroyable_Object.Helipad), constant.ORDER_FORCED, false, 5, 90)
  StartOutro()
  SetObjectiveData(Objective.Escape, constant.OBJECTIVE_DATA_STATE, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.Cam1)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.Cam2)
  end
  Despawn(Troop.Grenadier1)
  Despawn(Troop.Grenadier2)
  Despawn(Troop.Grenadier3)
  Despawn(Troop.Grenadier4)
  Despawn(Troop.WFGrunt1)
  Despawn(Troop.WFGrunt2)
  Despawn(Troop.WFGrunt3)
  Despawn(Troop.SolarGrunt1)
  Despawn(Troop.SolarGrunt2)
  Despawn(Troop.SolarGrunt3)
  Despawn(Troop.SolarHoseVet1)
  Despawn(Troop.SolarHoseVet2)
  Despawn(Troop.SolarHoseVet3)
  Despawn(Troop.SolarHoseVet4)
  Despawn(Troop.WFMissileVet1)
  Despawn(Troop.WFMissileVet2)
  Despawn(Troop.WFMissileVet3)
  Despawn(Troop.WFMissileVet4)
  Despawn(Troop.SolarChainVet1)
  Despawn(Troop.SolarChainVet2)
  Despawn(Troop.SolarChainVet3)
  Despawn(Troop.SolarChainVet4)
  Despawn(Ground_Vehicle.SELightTank)
  Despawn(Ground_Vehicle.WFLightTank)
  WaitFor(1)
  VictoryDance(constant.ARMY_WF, true)
  VictoryDance(constant.ARMY_SOLAR, true)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    CameraSetTarget(Camera.Cam1, Air_Vehicle.EscapeChopper)
    CameraSetWaypoint(Camera.Cam1, Waypoint.OuttroCam1Spline)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    CameraSetTarget(Camera.Cam2, Air_Vehicle.EscapeChopper)
    CameraSetWaypoint(Camera.Cam2, Waypoint.OuttroCam1Spline)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  PhoneMessage(22, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE)
  PhoneMessage(22, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO)
  WaitFor(6)
  GoToArea(Air_Vehicle.EscapeChopper, 129, -95, constant.ORDER_FORCED)
  WaitFor(1)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    CameraSetWaypoint(Camera.Cam1, Waypoint.OuttroCam2Spline)
    CameraSetFOV(Camera.Cam1, 45, constant.IMMEDIATE, 2, constant.NO_WAIT)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    CameraSetWaypoint(Camera.Cam2, Waypoint.OuttroCam2Spline)
    CameraSetFOV(Camera.Cam2, 45, constant.IMMEDIATE, 2, constant.NO_WAIT)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  PhoneMessage(60, 0, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
  PhoneMessage(60, 0, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_TWO)
  WaitFor(13)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    netvariable.player1.skippedoutro = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    netvariable.player2.skippedoutro = 1
  end
end

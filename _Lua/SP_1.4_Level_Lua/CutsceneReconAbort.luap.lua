function CutsceneReconAbort(owner)
  repeat
    EndFrame()
  until CutsceneReconCanNowBeSkipped == 1
  PrepareSkipCutscene()
  repeat
    if GetCurrentMissionAttempted() == true and CheckSkipCutscene() then
      Kill(scriptCutsceneSolarReconReinforcements)
      CutsceneReconFinished = 1
      DebugOut("Killed recon cutscene")
    end
    EndFrame()
  until CutsceneReconFinished == 1
  AddToGroup(Unit_Group.PlayerControlledUnits, Ground_Vehicle.SolarRecon)
  AddToGroup(Unit_Group.Player_Army, Ground_Vehicle.SolarRecon)
  StoreSummaryMessage(10, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  StoreSummaryMessage(12, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  StoreSummaryMessage(40, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndIntro()
  SetFunctionIndicatorState(false)
  Despawn(Ground_Vehicle.TransportRecon)
  Spawn(Ground_Vehicle.SolarRecon)
  StopCapturePointSounds(Capture_Point.SolarRecon)
  CameraSetFOV(Camera.CutsceneCam, 45, constant.IMMEDIATE, 2, constant.NO_WAIT)
  SetCamera(Camera.Player, constant.PLAYER_ONE)
  SetObjectiveData(Objective.SolarRecon, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Admiral, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.RaceRoute1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  Teleport(Air_Vehicle.SolarReconChopper, 545, 446, 5, 145)
  Teleport(Ground_Vehicle.SolarRecon, 239, 177, 180, 5)
  if assaultvets == 1 then
    Teleport(Troop.SolarAssault1, 183, 206, 270, 15)
    Teleport(Troop.SolarAssault2, 183, 206, 270, 15)
    Teleport(Troop.SolarAssault3, 183, 206, 270, 15)
    Teleport(Troop.SolarAssault4, 183, 206, 270, 15)
    Teleport(Troop.SolarAssault5, 183, 206, 270, 15)
  end
  Teleport(Troop.Grunt1, 183, 206, 270, 15)
  Teleport(Troop.Grunt2, 183, 206, 270, 15)
  Teleport(Troop.Grunt3, 183, 206, 270, 15)
  Teleport(Troop.Grunt4, 183, 206, 270, 15)
  Teleport(Troop.Grunt5, 183, 206, 270, 15)
  Teleport(Troop.Grunt6, 183, 206, 270, 15)
  Teleport(Troop.Grunt7, 183, 206, 270, 15)
  Teleport(Troop.Grunt8, 183, 206, 270, 15)
  Teleport(Troop.Grunt9, 183, 206, 270, 15)
  Teleport(Troop.Grunt10, 183, 206, 270, 15)
  Teleport(Ground_Vehicle.SolarLightTank, 183, 206, 270, 15)
  Despawn(Air_Vehicle.SolarReconChopper)
  Despawn(Troop.BridgeGoon1)
  Despawn(Troop.BridgeGoon2)
  Spawn(Troop.ReconRunGrunt1)
  Spawn(Troop.ReconRunGrunt2)
  Spawn(Troop.ReconRunGrunt3)
  Spawn(Troop.ReconRunGrunt4)
  Spawn(Troop.ReconRunGrunt5)
  Spawn(Troop.ReconRunGrunt6)
  Spawn(Troop.ReconRunGrunt7)
  Spawn(Troop.ReconRunGrunt8)
  Spawn(Troop.ReconRunGrunt9)
  Spawn(Troop.ReconRunGrunt10)
  Spawn(Troop.ReconRunGrunt11)
  Spawn(Troop.ReconRunGrunt12)
  Spawn(Troop.ReconRunGrunt13)
  Spawn(Troop.ReconRunGrunt14)
  Spawn(Troop.ReconRunGrunt15)
  SetActive(Ground_Vehicle.SolarRecon, constant.ACTIVE)
  ForceUnitTransfer(constant.PLAYER_ONE, Ground_Vehicle.SolarRecon, true, true)
  Despawn(Troop.TransferMonkey)
  SetInvulnerable(flag.TYPE_ANGLO, 0)
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  gotrecon = 1
  ClearMessageQueue()
  PhoneMessageWithObjective(41, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessage(44, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  if IsDead(Troop.Grunt1) == false then
    SetActive(Troop.Grunt1, constant.INACTIVE)
    SetUnitInvulnerable(Troop.Grunt1, true)
    StopAndGuard(Troop.Grunt1)
  end
  if IsDead(Troop.Grunt2) == false then
    SetActive(Troop.Grunt2, constant.INACTIVE)
    SetUnitInvulnerable(Troop.Grunt2, true)
    StopAndGuard(Troop.Grunt2)
  end
  if IsDead(Troop.Grunt3) == false then
    SetActive(Troop.Grunt3, constant.INACTIVE)
    SetUnitInvulnerable(Troop.Grunt3, true)
    StopAndGuard(Troop.Grunt3)
  end
  if IsDead(Troop.Grunt4) == false then
    SetActive(Troop.Grunt4, constant.INACTIVE)
    SetUnitInvulnerable(Troop.Grunt4, true)
    StopAndGuard(Troop.Grunt4)
  end
  if IsDead(Troop.Grunt5) == false then
    SetActive(Troop.Grunt5, constant.INACTIVE)
    SetUnitInvulnerable(Troop.Grunt5, true)
    StopAndGuard(Troop.Grunt5)
  end
  if IsDead(Troop.Grunt6) == false then
    SetActive(Troop.Grunt6, constant.INACTIVE)
    SetUnitInvulnerable(Troop.Grunt6, true)
    StopAndGuard(Troop.Grunt6)
  end
  if IsDead(Troop.Grunt7) == false then
    SetActive(Troop.Grunt7, constant.INACTIVE)
    SetUnitInvulnerable(Troop.Grunt7, true)
    StopAndGuard(Troop.Grunt7)
  end
  if IsDead(Troop.Grunt8) == false then
    SetActive(Troop.Grunt8, constant.INACTIVE)
    SetUnitInvulnerable(Troop.Grunt8, true)
    StopAndGuard(Troop.Grunt8)
  end
  if IsDead(Troop.Grunt9) == false then
    SetActive(Troop.Grunt9, constant.INACTIVE)
    SetUnitInvulnerable(Troop.Grunt9, true)
    StopAndGuard(Troop.Grunt9)
  end
  if IsDead(Troop.Grunt10) == false then
    SetActive(Troop.Grunt10, constant.INACTIVE)
    SetUnitInvulnerable(Troop.Grunt10, true)
    StopAndGuard(Troop.Grunt10)
  end
  if IsDead(Ground_Vehicle.SolarLightTank) == false then
    SetActive(Ground_Vehicle.SolarLightTank, constant.INACTIVE)
    SetUnitInvulnerable(Ground_Vehicle.SolarLightTank, true)
    StopAndGuard(Ground_Vehicle.SolarLightTank)
  end
  if assaultvets == 1 then
    if IsDead(Troop.SolarAssault1) == false then
      SetActive(Troop.SolarAssault1, constant.INACTIVE)
      SetUnitInvulnerable(Troop.SolarAssault1, true)
      StopAndGuard(Troop.SolarAssault1)
    end
    if IsDead(Troop.SolarAssault2) == false then
      SetActive(Troop.SolarAssault2, constant.INACTIVE)
      SetUnitInvulnerable(Troop.SolarAssault2, true)
      StopAndGuard(Troop.SolarAssault2)
    end
    if IsDead(Troop.SolarAssault3) == false then
      SetActive(Troop.SolarAssault3, constant.INACTIVE)
      SetUnitInvulnerable(Troop.SolarAssault3, true)
      StopAndGuard(Troop.SolarAssault3)
    end
    if IsDead(Troop.SolarAssault4) == false then
      SetActive(Troop.SolarAssault4, constant.INACTIVE)
      SetUnitInvulnerable(Troop.SolarAssault4, true)
      StopAndGuard(Troop.SolarAssault4)
    end
    if IsDead(Troop.SolarAssault5) == false then
      SetActive(Troop.SolarAssault5, constant.INACTIVE)
      SetUnitInvulnerable(Troop.SolarAssault5, true)
      StopAndGuard(Troop.SolarAssault5)
    end
  end
  PhoneMessage(45, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  PhoneMessage(46, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  WaitFor(0.5)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PauseTimerActive = 0
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
  WaitFor(5)
  SetTimer(360)
  ShowTimer(1)
  WaitFor(10)
  Despawn(Air_Vehicle.SolarReconChopper)
  repeat
    if 1 > GetTimeLeft() and thirdsilocutscenestart == 0 then
      rocketsobjectivefailed = 1
    end
    EndFrame()
  until ruinsrockets == 1 and tophillrockets == 1 and bottomhillrockets == 1
  DebugOut("Rocket mission failed test has ceased checking")
end

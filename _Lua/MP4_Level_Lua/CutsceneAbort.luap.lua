function CutsceneAbort(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    WesternFrontier = FriendlyArmy
    Xylvania = EnemyArmy
    MinLevelTime = 0
    MaxLevelTime = 360
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    Xylvania = FriendlyArmy
    WesternFrontier = EnemyArmy
    MinLevelTime = 0
    MaxLevelTime = 360
  end
  Despawn(Troop.WFFlamer2)
  cutsceneabort = owner
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      if CheckSkipCutscene() then
        Kill(cutscene)
        netvariable.player1.skip = 1
        DebugOut("Killed cutscene")
      end
      EndFrame()
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      if CheckSkipCutscene() then
        Kill(cutscene)
        netvariable.player2.skip = 1
        DebugOut("Killed cutscene")
      end
      EndFrame()
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true then
      if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) then
        Kill(cutscene)
        cutscenefinished = 1
        DebugOut(" In split screen - killed cutscene")
      end
      EndFrame()
    end
    EndFrame()
  until netvariable.player1.skip == 1 and netvariable.player2.skip == 1 or cutscenefinished == 1
  Kill(cutscene)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CleanupSkipCutscene()
  Teleport(Troop.XGrunt1, -112, 419, 0, 10)
  Teleport(Troop.XGrunt2, -109, 419, 0, 10)
  Teleport(Troop.XGrunt3, -106, 419, 0, 10)
  Teleport(Troop.XGrunt4, -103, 419, 0, 10)
  Teleport(Troop.XGrunt5, -100, 419, 0, 10)
  Teleport(Troop.XGrunt6, -97, 419, 0, 10)
  Teleport(Troop.XChainVet1, -112, 414, 0, 10)
  Teleport(Troop.XChainVet2, -109, 414, 0, 10)
  Teleport(Troop.XChainVet3, -106, 414, 0, 10)
  Teleport(Troop.XBazooka1, -103, 414, 0, 10)
  Teleport(Troop.XBazooka2, -100, 414, 0, 10)
  Teleport(Troop.XBazooka3, -97, 414, 0, 10)
  Teleport(Air_Vehicle.XGunship, -101, 419, 0, 10)
  Teleport(Ground_Vehicle.XLightTank1, -120, 410, 0, 20)
  Teleport(Ground_Vehicle.XLightTank2, -85, 410, 0, 20)
  Teleport(Troop.WFGrunt1, -49, 734, 180, 10)
  Teleport(Troop.WFGrunt2, -52, 732, 180, 10)
  Teleport(Troop.WFGrunt3, -55, 730, 180, 10)
  Teleport(Troop.WFGrunt4, -58, 728, 180, 10)
  Teleport(Troop.WFGrunt5, -61, 726, 180, 10)
  Teleport(Troop.WFGrunt6, -64, 724, 180, 10)
  Teleport(Troop.WFFlamer1, -49, 730, 180, 10)
  Teleport(Troop.WFBazooka1, -55, 726, 180, 10)
  Teleport(Troop.WFBazooka2, -58, 724, 180, 10)
  Teleport(Troop.WFBazooka3, -61, 722, 180, 10)
  Teleport(Ground_Vehicle.SolarLightTank1, -57, 752, 180, 10)
  Teleport(Ground_Vehicle.WFAntiAir, -67, 749, 180, 10)
  SetObjectiveData(Objective_Marker.Objective1Battery1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Objective1Battery2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Objective1Battery3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Objective3HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.Player1Cam, constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.Player2Cam, constant.PLAYER_TWO)
  end
  EndIntro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    StoreSummaryMessage(0, 6, constant.ARMY_WF, SpriteID.CO_WF_Herman_Sad)
    StoreSummaryMessage(0, 7, constant.ARMY_WF, SpriteID.CO_WF_Herman_Sad)
    StoreSummaryMessage(0, 8, constant.ARMY_WF, SpriteID.CO_WF_Herman_Sad)
    PhoneMessage(9, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    StoreSummaryMessage(1, 1, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Ubel_Sad)
    StoreSummaryMessage(1, 2, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Ubel_Sad)
    StoreSummaryMessage(1, 3, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Ubel_Sad)
    PhoneMessage(4, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_TWO)
    PhoneMessage(5, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_TWO)
  end
  StartScoringTimer()
  SetObjectiveData(Objective_Marker.Objective3HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  EndFrame()
  ResetCommandBar()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  SetTimer(360)
  ShowTimer(1)
  CutsceneHasEnded = 1
  WaitFor(0.5)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    UnfreezePlayer(constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    UnfreezePlayer(constant.PLAYER_TWO)
  end
  WaitFor(5)
  repeat
    EndFrame()
  until GetInstallationOwner(Strategic_Installation.HQ) == constant.ARMY_XYLVANIAN or 0 >= GetTimeLeft()
  StopScoringTimer()
  ExitVehicle(constant.ID_NONE, Capture_Point.HQ)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    FreezePlayer(constant.PLAYER_ONE)
    ClearMessageQueue(constant.PLAYER_ONE)
    WinMissionMP()
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    FreezePlayer(constant.PLAYER_TWO)
    ClearMessageQueue(constant.PLAYER_TWO)
    WinMissionMP()
  end
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Kill(scriptMessages)
  Spawn(Troop.CutSceneGrunt01)
  Spawn(Troop.CutSceneGrunt02)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    ForceUnitTransfer(constant.PLAYER_ONE, Troop.CutSceneGrunt01, false, true)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    ForceUnitTransfer(constant.PLAYER_TWO, Troop.CutSceneGrunt02, false, true)
  end
  Despawn(Troop.XGrunt1)
  Despawn(Troop.XGrunt2)
  Despawn(Troop.XGrunt3)
  Despawn(Troop.XGrunt4)
  Despawn(Troop.XGrunt5)
  Despawn(Troop.XGrunt6)
  Despawn(Troop.XChainVet1)
  Despawn(Troop.XChainVet2)
  Despawn(Troop.XChainVet3)
  Despawn(Troop.XBazooka1)
  Despawn(Troop.XBazooka2)
  Despawn(Troop.XBazooka3)
  Despawn(Air_Vehicle.XGunship)
  Despawn(Ground_Vehicle.XLightTank1)
  Despawn(Ground_Vehicle.XLightTank2)
  Despawn(Troop.WFGrunt1)
  Despawn(Troop.WFGrunt2)
  Despawn(Troop.WFGrunt3)
  Despawn(Troop.WFGrunt4)
  Despawn(Troop.WFGrunt5)
  Despawn(Troop.WFGrunt6)
  Despawn(Troop.WFFlamer1)
  Despawn(Troop.WFFlamer2)
  Despawn(Troop.WFBazooka1)
  Despawn(Troop.WFBazooka2)
  Despawn(Troop.WFBazooka3)
  Despawn(Ground_Vehicle.SolarLightTank1)
  Despawn(Ground_Vehicle.WFAntiAir)
  WaitFor(1)
  if 0 >= GetTimeLeft() and GetInstallationOwner(Strategic_Installation.HQ) ~= constant.ARMY_XYLVANIAN then
    DebugOut("WF WIN")
    Spawn(Troop.XOutroGrunt01)
    Spawn(Troop.XOutroGrunt02)
    Spawn(Troop.XOutroGrunt03)
    Spawn(Troop.XOutroGrunt04)
    Spawn(Troop.XOutroAssault01)
    Spawn(Troop.XOutroAssault02)
    Spawn(Troop.XOutroBazooka01)
    Spawn(Troop.XOutroBazooka02)
    Spawn(Troop.WFOutroGrunt01)
    Spawn(Troop.WFOutroGrunt02)
    Spawn(Troop.WFOutroGrunt03)
    Spawn(Troop.WFOutroGrunt04)
    Spawn(Troop.WFOutroFlamer01)
    Spawn(Troop.WFOutroFlamer02)
    Spawn(Troop.WFOutroBazooka01)
    Spawn(Troop.WFOutroBazooka02)
    DeclareVictory(constant.ARMY_WF)
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      SetNetworkMissionComplete(1, true, 1)
      SetNetworkMissionComplete(2, false, 1)
      FreezePlayer(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_ONE)
      WinMissionMP()
      netvariable.player1.player1wins = 1
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      FreezePlayer(constant.PLAYER_TWO)
      ClearMessageQueue(constant.PLAYER_TWO)
      WinMissionMP()
    end
    missionend = 1
  else
    DebugOut("XYLVANIANS WIN")
    Spawn(Troop.XOutroGrunt01)
    Spawn(Troop.XOutroGrunt02)
    Spawn(Troop.XOutroGrunt03)
    Spawn(Troop.XOutroGrunt04)
    Spawn(Troop.XOutroAssault01)
    Spawn(Troop.XOutroAssault02)
    Spawn(Troop.XOutroBazooka01)
    Spawn(Troop.XOutroBazooka02)
    Spawn(Troop.WFOutroGrunt01)
    Spawn(Troop.WFOutroGrunt02)
    Spawn(Troop.WFOutroGrunt03)
    Spawn(Troop.WFOutroGrunt04)
    Spawn(Troop.WFOutroFlamer01)
    Spawn(Troop.WFOutroFlamer02)
    Spawn(Troop.WFOutroBazooka01)
    Spawn(Troop.WFOutroBazooka02)
    DeclareVictory(constant.ARMY_XYLVANIAN)
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      SetObjectivesResult(false, false, false)
      FreezePlayer(constant.PLAYER_ONE)
      SetNetworkMissionComplete(1, false, 1)
      SetNetworkMissionComplete(2, true, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      WinMissionMP()
      netvariable.player1.player2wins = 1
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      SetObjectivesResult(true, true, true)
      FreezePlayer(constant.PLAYER_TWO)
      ClearMessageQueue(constant.PLAYER_TWO)
      WinMissionMP()
    end
    SetObjectiveData(Objective_Marker.Objective3HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    missionend = 1
  end
end

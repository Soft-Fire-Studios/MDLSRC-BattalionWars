function Win_Lose_Conditions(owner)
  scriptWinLoseConditions = owner
  Despawn(Troop.OutroTTGrunt01)
  Despawn(Troop.OutroTTGrunt02)
  Despawn(Troop.OutroTTGrunt03)
  Despawn(Troop.OutroTTGrunt04)
  Despawn(Troop.OutroTTGrunt05)
  Despawn(Troop.OutroTTFlamer01)
  Despawn(Troop.OutroTTFlamer02)
  Despawn(Troop.OutroXGrunt01)
  Despawn(Troop.OutroXGrunt02)
  Despawn(Troop.OutroXGrunt03)
  Despawn(Troop.OutroXAssault01)
  Despawn(Troop.OutroXAssault02)
  Despawn(Troop.OutroXBazooka01)
  Despawn(Troop.OutroXBazooka02)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    Xylvania = FriendlyArmy
    Tundra = EnemyArmy
    MinLevelTime = 0
    MaxLevelTime = 600
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    Tundra = FriendlyArmy
    Xylvania = EnemyArmy
    MinLevelTime = 0
    MaxLevelTime = 600
  end
  repeat
    EndFrame()
  until CutsceneHasEnded == 1
  WaitFor(5)
  repeat
    EndFrame()
  until 0 >= GetTimeLeft() or GetInstallationOwner(Strategic_Installation.HQ) == constant.ARMY_XYLVANIAN
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetInvulnerable(flag.TYPE_TUNDRAN, 1)
  end
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    WinMissionMP()
    ClearMessageQueue(constant.PLAYER_ONE)
    FreezePlayer(constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    WinMissionMP()
    ClearMessageQueue(constant.PLAYER_TWO)
    FreezePlayer(constant.PLAYER_TWO)
  end
  Kill(scriptMessages)
  Kill(scriptObjectives)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Troop.XDummy)
  Spawn(Troop.TTDummy)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.XDummy, true, true)
  ForceUnitTransfer(constant.PLAYER_TWO, Troop.TTDummy, true, true)
  WaitFor(1)
  while true do
    if 0 >= GetTimeLeft() and GetInstallationOwner(Strategic_Installation.HQ) ~= constant.ARMY_XYLVANIAN then
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        WinMissionMP()
        ClearMessageQueue(constant.PLAYER_ONE)
        SetNetworkMissionComplete(2, true, 1)
        SetNetworkMissionComplete(1, false, 1)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        WinMissionMP()
        ClearMessageQueue(constant.PLAYER_TWO)
        FreezePlayer(constant.PLAYER_TWO)
      end
      Spawn(Troop.OutroTTGrunt01)
      Spawn(Troop.OutroTTGrunt02)
      Spawn(Troop.OutroTTGrunt03)
      Spawn(Troop.OutroTTGrunt04)
      Spawn(Troop.OutroTTGrunt05)
      Spawn(Troop.OutroTTFlamer01)
      Spawn(Troop.OutroTTFlamer02)
      Spawn(Troop.OutroXGrunt01)
      Spawn(Troop.OutroXGrunt02)
      Spawn(Troop.OutroXGrunt03)
      Spawn(Troop.OutroXAssault01)
      Spawn(Troop.OutroXAssault02)
      Spawn(Troop.OutroXBazooka01)
      Spawn(Troop.OutroXBazooka02)
      Teleport(Ground_Vehicle.XArtillery1, -50, -920, 0, 20)
      Teleport(Ground_Vehicle.XArtillery2, -50, -920, 0, 20)
      Teleport(Ground_Vehicle.AntiAir, -50, -920, 0, 20)
      Teleport(Troop.XBazooka1, -50, -920, 0, 20)
      Teleport(Troop.XBazooka2, -50, -920, 0, 20)
      Teleport(Troop.XBazooka3, -50, -920, 0, 20)
      Teleport(Troop.XAssault1, -50, -920, 0, 20)
      Teleport(Troop.XAssault2, -50, -920, 0, 20)
      Teleport(Troop.XAssault3, -50, -920, 0, 20)
      Teleport(Troop.XAssault4, -50, -920, 0, 20)
      Teleport(Troop.XGrunt1, -50, -920, 0, 20)
      Teleport(Troop.XGrunt2, -50, -920, 0, 20)
      Teleport(Troop.XGrunt3, -50, -920, 0, 20)
      Teleport(Troop.XGrunt4, -50, -920, 0, 20)
      Teleport(Troop.XGrunt5, -50, -920, 0, 20)
      Teleport(Ground_Vehicle.TLightTank1, -50, -920, 0, 20)
      Teleport(Ground_Vehicle.TLightTank2, -50, -920, 0, 20)
      Teleport(Air_Vehicle.TGunship1, -50, -920, 0, 20)
      Teleport(Troop.TGrunt1, -50, -920, 0, 20)
      Teleport(Troop.TGrunt2, -50, -920, 0, 20)
      Teleport(Troop.TGrunt3, -50, -920, 0, 20)
      Teleport(Troop.TGrunt4, -50, -920, 0, 20)
      Teleport(Troop.TGrunt5, -50, -920, 0, 20)
      Teleport(Troop.TFlamer1, -50, -920, 0, 20)
      Teleport(Troop.TFlamer2, -50, -920, 0, 20)
      DeclareVictory(constant.ARMY_TUNDRAN)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetCamera(Camera.CutsceneCam1, constant.PLAYER_ONE)
        CameraSetTarget(Camera.CutsceneCam1, Waypoint.OutroXShot01Target)
        CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.OutroXShot01Spline)
        CameraSetFOV(Camera.CutsceneCam1, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetCamera(Camera.CutsceneCam2, constant.PLAYER_TWO)
        CameraSetTarget(Camera.CutsceneCam2, Waypoint.OutroTTShot01Target)
        CameraSetWaypoint(Camera.CutsceneCam2, Waypoint.OutroTTShot01Spline)
        CameraSetFOV(Camera.CutsceneCam2, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
      end
      StartOutro()
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(39, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
      PhoneMessage(40, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
      WaitFor(1)
      OutroCutsceneCanBeSkipped = 1
      WaitFor(9)
      EndOutro()
      MissionOver = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.skipoutro = 1
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.skipoutro = 1
      end
      break
    end
    if GetInstallationOwner(Strategic_Installation.HQ) == constant.ARMY_XYLVANIAN then
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        ClearMessageQueue(constant.PLAYER_ONE)
        FreezePlayer(constant.PLAYER_ONE)
        SetNetworkMissionComplete(1, true, 1)
        SetNetworkMissionComplete(2, false, 1)
        WinMissionMP()
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        ClearMessageQueue(constant.PLAYER_TWO)
        FreezePlayer(constant.PLAYER_TWO)
        WinMissionMP()
      end
      SetObjectiveData(Objective.TNHQ, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.WFHQ, constant.OBJECTIVE_DATA_STATE, 1)
      Spawn(Troop.OutroTTGrunt01)
      Spawn(Troop.OutroTTGrunt02)
      Spawn(Troop.OutroTTGrunt03)
      Spawn(Troop.OutroTTGrunt04)
      Spawn(Troop.OutroTTGrunt05)
      Spawn(Troop.OutroTTFlamer01)
      Spawn(Troop.OutroTTFlamer02)
      Spawn(Troop.OutroXGrunt01)
      Spawn(Troop.OutroXGrunt02)
      Spawn(Troop.OutroXGrunt03)
      Spawn(Troop.OutroXAssault01)
      Spawn(Troop.OutroXAssault02)
      Spawn(Troop.OutroXBazooka01)
      Spawn(Troop.OutroXBazooka02)
      Teleport(Ground_Vehicle.XArtillery1, -50, -920, 0, 20)
      Teleport(Ground_Vehicle.XArtillery2, -50, -920, 0, 20)
      Teleport(Ground_Vehicle.AntiAir, -50, -920, 0, 20)
      Teleport(Troop.XBazooka1, -50, -920, 0, 20)
      Teleport(Troop.XBazooka2, -50, -920, 0, 20)
      Teleport(Troop.XBazooka3, -50, -920, 0, 20)
      Teleport(Troop.XAssault1, -50, -920, 0, 20)
      Teleport(Troop.XAssault2, -50, -920, 0, 20)
      Teleport(Troop.XAssault3, -50, -920, 0, 20)
      Teleport(Troop.XAssault4, -50, -920, 0, 20)
      Teleport(Troop.XGrunt1, -50, -920, 0, 20)
      Teleport(Troop.XGrunt2, -50, -920, 0, 20)
      Teleport(Troop.XGrunt3, -50, -920, 0, 20)
      Teleport(Troop.XGrunt4, -50, -920, 0, 20)
      Teleport(Troop.XGrunt5, -50, -920, 0, 20)
      Teleport(Ground_Vehicle.TLightTank1, -50, -920, 0, 20)
      Teleport(Ground_Vehicle.TLightTank2, -50, -920, 0, 20)
      Teleport(Air_Vehicle.TGunship1, -50, -920, 0, 20)
      Teleport(Troop.TGrunt1, -50, -920, 0, 20)
      Teleport(Troop.TGrunt2, -50, -920, 0, 20)
      Teleport(Troop.TGrunt3, -50, -920, 0, 20)
      Teleport(Troop.TGrunt4, -50, -920, 0, 20)
      Teleport(Troop.TGrunt5, -50, -920, 0, 20)
      Teleport(Troop.TFlamer1, -50, -920, 0, 20)
      Teleport(Troop.TFlamer2, -50, -920, 0, 20)
      DeclareVictory(constant.ARMY_XYLVANIAN)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetCamera(Camera.CutsceneCam1, constant.PLAYER_ONE)
        CameraSetTarget(Camera.CutsceneCam1, Waypoint.OutroXShot01Target)
        CameraSetWaypoint(Camera.CutsceneCam1, Waypoint.OutroXShot01Spline)
        CameraSetFOV(Camera.CutsceneCam1, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetCamera(Camera.CutsceneCam2, constant.PLAYER_TWO)
        CameraSetTarget(Camera.CutsceneCam2, Waypoint.OutroTTShot01Target)
        CameraSetWaypoint(Camera.CutsceneCam2, Waypoint.OutroTTShot01Spline)
        CameraSetFOV(Camera.CutsceneCam2, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
      end
      SetObjectiveData(Objective_Marker.THQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      ShowTimer(0)
      StartOutro()
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(1, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
      PhoneMessage(41, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      WaitFor(1)
      OutroCutsceneCanBeSkipped = 1
      WaitFor(9)
      EndOutro()
      MissionOver = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.skipoutro = 1
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.skipoutro = 1
      end
      break
    end
    EndFrame()
  end
end

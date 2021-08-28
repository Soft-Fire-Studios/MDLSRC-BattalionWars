function MP3_WinLose(owner)
  repeat
    EndFrame()
  until cutsceneStart == 1
  WaitFor(2)
  repeat
    EndFrame()
  until GetInstallationOwner(Strategic_Installation.HQ) == constant.ARMY_WF or GetTimeLeft() <= 0 and TimerShown == 1
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetInvulnerable(flag.TYPE_WFRONTIER, 1)
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
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Troop.OutroWFGrunt01)
  Spawn(Troop.OutroWFGrunt02)
  Spawn(Troop.OutroWFGrunt03)
  Spawn(Troop.OutroWFGrunt04)
  Spawn(Troop.OutroWFBazookaVet01)
  Spawn(Troop.OutroWFBazookaVet02)
  Spawn(Troop.OutroWFFlameVet01)
  Spawn(Troop.OutroWFFlameVet02)
  Spawn(Troop.OutroTTGrunt01)
  Spawn(Troop.OutroTTGrunt02)
  Spawn(Troop.OutroTTGrunt03)
  Spawn(Troop.OutroTTGrunt04)
  if netvariable.player2.Helipad01Captured == 0 and netvariable.player2.Helipad02Captured == 0 then
    Spawn(Troop.OutroTTGrunt05)
    Spawn(Troop.OutroTTGrunt06)
  end
  if netvariable.player2.Helipad01Captured == 1 and netvariable.player2.Helipad02Captured == 0 then
    Spawn(Troop.OutroTTAAVet01)
    Spawn(Troop.OutroTTAAVet02)
    Spawn(Troop.OutroTTGrunt05)
    Spawn(Troop.OutroTTGrunt06)
  end
  if netvariable.player2.Helipad01Captured == 0 and netvariable.player2.Helipad02Captured == 1 then
    Spawn(Troop.OutroTTFlameVet01)
    Spawn(Troop.OutroTTFlameVet02)
    Spawn(Troop.OutroTTGrunt05)
    Spawn(Troop.OutroTTGrunt06)
  end
  if netvariable.player2.Helipad01Captured == 1 and netvariable.player2.Helipad02Captured == 1 then
    Spawn(Troop.OutroTTAAVet01)
    Spawn(Troop.OutroTTAAVet02)
    Spawn(Troop.OutroTTFlameVet01)
    Spawn(Troop.OutroTTFlameVet02)
    Teleport(Troop.OutroTTFlameVet01, GetObjectXPosition(Troop.OutroTTGrunt05), GetObjectZPosition(Troop.OutroTTGrunt05), 0, 0)
    Teleport(Troop.OutroTTFlameVet02, GetObjectXPosition(Troop.OutroTTGrunt06), GetObjectZPosition(Troop.OutroTTGrunt06), 0, 0)
  end
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.OutroWFGrunt01, true)
  ForceUnitTransfer(constant.PLAYER_TWO, Troop.OutroTTGrunt01, true)
  Vanish(Destroyable_Object.HQSandbag01)
  Vanish(Destroyable_Object.HQSandbag02)
  Despawn(Troop.WFgrunt1)
  Despawn(Troop.WFgrunt3)
  Despawn(Troop.WFgrunt5)
  Despawn(Troop.WFgrunt6)
  Despawn(Troop.WFgrunt7)
  Despawn(Troop.WFbazooka01)
  Despawn(Troop.WFbazooka02)
  Despawn(Troop.WFbazooka03)
  Despawn(Troop.WFbazooka04)
  Despawn(Troop.WFmortar01)
  Despawn(Troop.WFmortar02)
  Despawn(Troop.WFmortar03)
  Despawn(Troop.WFmortar04)
  Despawn(Troop.WFmortar05)
  Despawn(Troop.WFmortar06)
  Despawn(Air_Vehicle.WFbomber03)
  Despawn(Troop.TTgrunt1)
  Despawn(Troop.TTgrunt2)
  Despawn(Troop.TTgrunt3)
  Despawn(Troop.TTgrunt4)
  Despawn(Troop.TTgrunt5)
  Despawn(Troop.TTgrunt6)
  Despawn(Troop.TThose01)
  Despawn(Troop.TThose02)
  Despawn(Troop.TTchain03)
  Despawn(Troop.TTassault01)
  Despawn(Troop.TTassault02)
  Despawn(Troop.TTassault03)
  Despawn(Troop.TTassault04)
  Despawn(Troop.TTassault05)
  Despawn(Troop.TTassault06)
  Despawn(Ground_Vehicle.TTantiair01)
  Despawn(Ground_Vehicle.TTtank01)
  if GetTimeLeft() <= 0 and GetInstallationOwner(Strategic_Installation.HQ) ~= constant.ARMY_WF then
    DeclareVictory(constant.ARMY_TUNDRAN)
  else
    DeclareVictory(constant.ARMY_WF)
  end
  WaitFor(1)
  while true do
    if IsNetworkPlayer(constant.PLAYER_ONE) and GetInstallationOwner(Strategic_Installation.HQ) == constant.ARMY_WF and missionend == 0 then
      missionend = 1
      SetObjectivesResult(true, true, true)
      StopScoringTimer()
      WinMissionMP()
      SetInvulnerable(flag.TYPE_WFRONTIER, true)
      FreezePlayer(constant.PLAYER_ONE)
      ShowTimer(0)
      netvariable.player1.winner = 1
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player1.winner == 1 and missionend == 0 then
      missionend = 1
      SetObjectivesResult(false, false, false)
      WinMissionMP()
      SetInvulnerable(flag.TYPE_TUNDRAN, true)
      FreezePlayer(constant.PLAYER_TWO)
      ShowTimer(0)
      StopScoringTimer()
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and GetTimeLeft() <= 0 and TimerShown == 1 and GetInstallationOwner(Strategic_Installation.HQ) ~= constant.ARMY_WF and missionend == 0 then
      missionend = 1
      SetInvulnerable(flag.TYPE_WFRONTIER, true)
      WinMissionMP()
      FreezePlayer(constant.PLAYER_ONE)
      ShowTimer(0)
      StopScoringTimer()
      netvariable.player1.winner = 2
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player1.winner == 2 and missionend == 0 then
      missionend = 1
      StopScoringTimer()
      WinMissionMP()
      SetInvulnerable(flag.TYPE_TUNDRAN, true)
      FreezePlayer(constant.PLAYER_TWO)
      ShowTimer(0)
    end
    EndFrame()
  end
end

function CUTSCENE_SKIP(owner)
  cutsceneabort = owner
  FreezePlayer(constant.PLAYER_ONE)
  FreezePlayer(constant.PLAYER_TWO)
  WaitFor(1)
  DebugOut("players frozen")
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.cutsceneskipped = 1
      DebugOut("Killed cutscene player1")
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.cutsceneskipped = 1
      DebugOut("Killed cutscene player2")
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true then
      if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) then
        Kill(cutscene)
        netvariable.player1.cutsceneskipped = 1
        netvariable.player2.cutsceneskipped = 1
        DebugOut(" In split screen - killed cutscene")
      end
      EndFrame()
    end
    EndFrame()
  until netvariable.player1.cutsceneskipped == 1 and netvariable.player2.cutsceneskipped == 1
  Kill(cutscene)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Air_Vehicle.CutsceneXYGunship1)
  Despawn(Air_Vehicle.CutsceneXYGunship2)
  Despawn(Air_Vehicle.CutsceneTTGunship1)
  Despawn(Air_Vehicle.CutsceneTTGunship2)
  Despawn(Troop.CutsceneXYGunship1pilot1)
  Despawn(Troop.CutsceneXYGunship2pilot1)
  Despawn(Troop.CutsceneTTGunship1pilot)
  Despawn(Troop.CutsceneTTGunship2pilot)
  Despawn(Troop.TintrocutsceneGrunt1)
  Despawn(Troop.TintrocutsceneGrunt2)
  Despawn(Troop.TintrocutsceneGrunt3)
  Despawn(Troop.TintrocutsceneGrunt4)
  Despawn(Troop.TintrocutsceneGrunt5)
  Despawn(Troop.TintrocutsceneGrunt6)
  Despawn(Troop.TintrocutsceneGrunt7)
  Despawn(Troop.TintrocutsceneGrunt8)
  Despawn(Troop.TintrocutsceneGrunt9)
  Despawn(Troop.TintrocutsceneGrunt10)
  Despawn(Troop.TintrocutsceneGrunt11)
  Despawn(Troop.TintrocutsceneGrunt12)
  Despawn(Troop.XintrocutsceneGrunt1)
  Despawn(Troop.XintrocutsceneGrunt2)
  Despawn(Troop.XintrocutsceneGrunt3)
  Despawn(Troop.XintrocutsceneGrunt4)
  Despawn(Troop.XintrocutsceneGrunt5)
  Despawn(Troop.XintrocutsceneGrunt6)
  Despawn(Troop.XintrocutsceneGrunt7)
  Despawn(Troop.XintrocutsceneGrunt8)
  Despawn(Troop.XintrocutsceneGrunt9)
  Despawn(Troop.XintrocutsceneGrunt10)
  Despawn(Troop.XintrocutsceneGrunt11)
  Despawn(Troop.XintrocutsceneGrunt12)
  Spawn(Troop.Xgrunt2)
  Spawn(Troop.Tgrunt2)
  EndFrame()
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.Xgrunt2, true, true)
  ForceUnitTransfer(constant.PLAYER_TWO, Troop.Tgrunt2, true, true)
  EndFrame()
  Despawn(Troop.Player1TransferUnit)
  Despawn(Troop.Player2TransferUnit)
  Spawn(Troop.Xgrunt1)
  Spawn(Troop.Xgrunt3)
  Spawn(Troop.Xgrunt4)
  Spawn(Troop.Xgrunt5)
  Spawn(Troop.Xgrunt6)
  Spawn(Troop.Xgrunt7)
  Spawn(Troop.Xbazooka01)
  Spawn(Troop.Xbazooka02)
  Spawn(Troop.Xbazooka03)
  Spawn(Troop.Xbazooka04)
  Spawn(Troop.Xbazooka05)
  Spawn(Troop.Tgrunt1)
  Spawn(Troop.Tgrunt3)
  Spawn(Troop.Tgrunt4)
  Spawn(Troop.Tgrunt5)
  Spawn(Troop.Tgrunt6)
  Spawn(Troop.Tgrunt7)
  Spawn(Troop.Tbazooka1)
  Spawn(Troop.Tbazooka2)
  Spawn(Troop.Tbazooka3)
  Spawn(Troop.Tbazooka4)
  Spawn(Troop.Tbazooka5)
  EndIntro()
  CleanupSkipCutscene()
  ResetHealthAndScoreTotals()
  StartScoringTimer()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    StoreSummaryMessage(0, 2, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Ubel_Happy)
    StoreSummaryMessage(0, 8, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Ubel_Happy)
    StoreSummaryMessage(0, 4, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Ubel_Happy)
    StoreSummaryMessage(0, 6, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Ubel_Happy)
    SetCamera(Camera.Player1Cam)
    EndFrame()
    ResetCommandBar()
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    WaitFor(0.5)
    UnfreezePlayer(constant.PLAYER_ONE)
  end
  EndFrame()
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    StoreSummaryMessage(1, 1, constant.ARMY_TUNDRAN, SpriteID.CO_T_Ghost_Gorgi_Happy)
    StoreSummaryMessage(1, 7, constant.ARMY_TUNDRAN, SpriteID.CO_T_Ghost_Gorgi_Happy)
    StoreSummaryMessage(1, 3, constant.ARMY_TUNDRAN, SpriteID.CO_T_Ghost_Gorgi_Happy)
    StoreSummaryMessage(1, 5, constant.ARMY_TUNDRAN, SpriteID.CO_T_Ghost_Gorgi_Happy)
    SetCamera(Camera.Player2Cam)
    EndFrame()
    ResetCommandBar()
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    WaitFor(0.5)
    UnfreezePlayer(constant.PLAYER_TWO)
  end
  EndFrame()
  SetTimer(480)
  ShowTimer(1)
  TimerStarted = true
end

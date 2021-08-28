function CutScene04(owner)
  cutscene04 = owner
  repeat
    EndFrame()
  until vladsbigdrill == 1
  while missionend == 0 do
    if IsNetworkPlayer(constant.PLAYER_ONE) and GetHealthPercent(Building.TundranMausoleum) < 10 and netvariable.player1.maushealth == 0 then
      netvariable.player1.maushealth = 1
    end
    if netvariable.player1.maushealth == 1 then
      missionend = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        ClearMessageQueue(constant.PLAYER_ONE)
        FreezePlayer(0)
        SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
        SetUnitInvulnerable(Building.TundranMausoleum, true)
        SetNetworkMissionComplete(1, false, 150)
        SetNetworkMissionComplete(2, false, 150)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        ClearMessageQueue(constant.PLAYER_TWO)
        FreezePlayer(1)
        SetInvulnerable(flag.TYPE_WFRONTIER, 1)
      end
      inacutscene = true
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Spawn(Troop.TundranCutSceneTroop)
      Spawn(Troop.WFCutSceneTroop)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        ForceUnitTransfer(constant.PLAYER_ONE, Troop.TundranCutSceneTroop, true, true)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        ForceUnitTransfer(constant.PLAYER_TWO, Troop.WFCutSceneTroop, true, true)
      end
      Despawn(Air_Vehicle.XylvanianFighter01)
      Despawn(Air_Vehicle.XylvanianFighter02)
      Despawn(Air_Vehicle.XylvanianFighter03)
      Despawn(Air_Vehicle.XylvanianFighter04)
      Despawn(Air_Vehicle.WFFighter01)
      Despawn(Air_Vehicle.WFFighter02)
      Despawn(Air_Vehicle.WFFighter03)
      Despawn(Air_Vehicle.WFBomber01)
      Despawn(Air_Vehicle.WFBomber02)
      Despawn(Air_Vehicle.TundranFighter01)
      Despawn(Air_Vehicle.TundranFighter02)
      Despawn(Air_Vehicle.TundranFighter03)
      Despawn(Air_Vehicle.TundranBomber01)
      Despawn(Air_Vehicle.TundranBomber02)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetCamera(Camera.FlyoverCutsceneP1, constant.PLAYER_ONE)
        CameraSetTarget(Camera.FlyoverCutsceneP1, Waypoint.Entity330105188)
        CameraSetWaypoint(Camera.FlyoverCutsceneP1, Waypoint.Entity330105186)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetCamera(Camera.FlyoverCutsceneP2, constant.PLAYER_TWO)
        CameraSetTarget(Camera.FlyoverCutsceneP2, Waypoint.Entity330105188)
        CameraSetWaypoint(Camera.FlyoverCutsceneP2, Waypoint.Entity330105186)
      end
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      SetHealthPercent(Building.TundranMausoleum, 2)
      SetUnitInvulnerable(Building.TundranMausoleum, false)
      cutscene04skip = 1
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      repeat
        EndFrame()
      until IsDead(Building.TundranMausoleum)
      PhoneMessage(48, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad)
      WaitFor(2)
      DeclareVictory(constant.ARMY_XYLVANIAN)
      WaitFor(5)
      cutscenefinished04 = 1
      break
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      if netvariable.player1.xbscamera == 0 and GetHealthPercent(Ground_Vehicle.XylvanianBattlestation01) < 15 and IsDead(Ground_Vehicle.XylvanianBattlestation02) and IsDead(Ground_Vehicle.XylvanianBattlestation03) and IsDead(Ground_Vehicle.XylvanianBattlestation04) then
        SetUnitInvulnerable(Ground_Vehicle.XylvanianBattlestation01, true)
        netvariable.player1.xbscamera = 1
        DebugOut("*CutScene04* - 1. XylvanianBattlestation01 is about to die.")
      elseif netvariable.player1.xbscamera == 0 and 15 > GetHealthPercent(Ground_Vehicle.XylvanianBattlestation02) and IsDead(Ground_Vehicle.XylvanianBattlestation01) and IsDead(Ground_Vehicle.XylvanianBattlestation03) and IsDead(Ground_Vehicle.XylvanianBattlestation04) then
        SetUnitInvulnerable(Ground_Vehicle.XylvanianBattlestation02, true)
        netvariable.player1.xbscamera = 2
        DebugOut("*CutScene04* - 2. XylvanianBattlestation02 is about to die.")
      elseif netvariable.player1.xbscamera == 0 and 15 > GetHealthPercent(Ground_Vehicle.XylvanianBattlestation03) and IsDead(Ground_Vehicle.XylvanianBattlestation01) and IsDead(Ground_Vehicle.XylvanianBattlestation02) and IsDead(Ground_Vehicle.XylvanianBattlestation04) then
        SetUnitInvulnerable(Ground_Vehicle.XylvanianBattlestation03, true)
        netvariable.player1.xbscamera = 3
        DebugOut("*CutScene04* - 3. XylvanianBattlestation03 is about to die.")
      elseif netvariable.player1.xbscamera == 0 and 15 > GetHealthPercent(Ground_Vehicle.XylvanianBattlestation04) and IsDead(Ground_Vehicle.XylvanianBattlestation01) and IsDead(Ground_Vehicle.XylvanianBattlestation02) and IsDead(Ground_Vehicle.XylvanianBattlestation03) then
        SetUnitInvulnerable(Ground_Vehicle.XylvanianBattlestation04, true)
        netvariable.player1.xbscamera = 4
        DebugOut("*CutScene04* - 4. XylvanianBattlestation04 is about to die.")
      end
    end
    if 0 < netvariable.player1.xbscamera then
      missionend = 1
      SetObjectiveData(Objective.Battlestation00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation04, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Battlestation04, constant.OBJECTIVE_DATA_STATE, 1)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        ClearMessageQueue(constant.PLAYER_ONE)
        FreezePlayer(0)
        SetInvulnerable(flag.TYPE_TUNDRAN, 1)
        SetHealthPercent(Building.TundranMausoleum, 100)
        SetNetworkMissionComplete(1, true)
        SetNetworkMissionComplete(2, true)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        ClearMessageQueue(constant.PLAYER_TWO)
        FreezePlayer(1)
        SetInvulnerable(flag.TYPE_WFRONTIER, 1)
      end
      inacutscene = true
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Spawn(Troop.TundranCutSceneTroop)
      Spawn(Troop.WFCutSceneTroop)
      Spawn(Troop.CutSceneTroop01)
      Spawn(Troop.CutSceneTroop02)
      Spawn(Troop.CutSceneTroop03)
      Spawn(Troop.CutSceneTroop04)
      Spawn(Troop.CutSceneTroop05)
      Spawn(Troop.CutSceneTroop06)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        ForceUnitTransfer(constant.PLAYER_ONE, Troop.TundranCutSceneTroop, true, true)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        ForceUnitTransfer(constant.PLAYER_TWO, Troop.WFCutSceneTroop, true, true)
      end
      Kill(Air_Vehicle.XylvanianFighter01)
      Kill(Air_Vehicle.XylvanianFighter02)
      Kill(Air_Vehicle.XylvanianFighter03)
      Kill(Air_Vehicle.XylvanianFighter04)
      Despawn(Air_Vehicle.WFFighter01)
      Despawn(Air_Vehicle.WFFighter02)
      Despawn(Air_Vehicle.WFFighter03)
      Despawn(Air_Vehicle.WFBomber01)
      Despawn(Air_Vehicle.WFBomber02)
      Despawn(Air_Vehicle.TundranFighter01)
      Despawn(Air_Vehicle.TundranFighter02)
      Despawn(Air_Vehicle.TundranFighter03)
      Despawn(Air_Vehicle.TundranBomber01)
      Despawn(Air_Vehicle.TundranBomber02)
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      if netvariable.player1.xbscamera == 1 then
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          SetCamera(Camera.BattlestationCam01Player1, constant.PLAYER_ONE)
          DebugOut("*CutScene04* - 5. P1 - Focus the camera on Battlestation01")
        end
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          SetCamera(Camera.BattlestationCam01Player2, constant.PLAYER_TWO)
          DebugOut("*CutScene04* - 6. P2 - Focus the camera on Battlestation01")
        end
        SetUnitInvulnerable(Ground_Vehicle.XylvanianBattlestation01, false)
        SetHealthPercent(Ground_Vehicle.XylvanianBattlestation01, 5)
      elseif netvariable.player1.xbscamera == 2 then
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          SetCamera(Camera.BattlestationCam02Player1, constant.PLAYER_ONE)
          DebugOut("*CutScene04* - 7. P1 - Focus the camera on Battlestation02")
        end
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          SetCamera(Camera.BattlestationCam02Player2, constant.PLAYER_TWO)
          DebugOut("*CutScene04* - 8. P2 - Focus the camera on Battlestation02")
        end
        SetUnitInvulnerable(Ground_Vehicle.XylvanianBattlestation02, false)
        SetHealthPercent(Ground_Vehicle.XylvanianBattlestation02, 5)
      elseif netvariable.player1.xbscamera == 3 then
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          SetCamera(Camera.BattlestationCam03Player1, constant.PLAYER_ONE)
          DebugOut("*CutScene04* - 9. P1 - Focus the camera on Battlestation03")
        end
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          SetCamera(Camera.BattlestationCam03Player2, constant.PLAYER_TWO)
          DebugOut("*CutScene04* - 10. P2 - Focus the camera on Battlestation03")
        end
        SetUnitInvulnerable(Ground_Vehicle.XylvanianBattlestation03, false)
        SetHealthPercent(Ground_Vehicle.XylvanianBattlestation03, 5)
      elseif netvariable.player1.xbscamera == 4 then
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          SetCamera(Camera.BattlestationCam04Player1, constant.PLAYER_ONE)
          DebugOut("*CutScene04* - 11. P1 - Focus the camera on Battlestation04")
        end
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          SetCamera(Camera.BattlestationCam04Player2, constant.PLAYER_TWO)
          DebugOut("*CutScene04* - 12. P2 - Focus the camera on Battlestation04")
        end
        SetUnitInvulnerable(Ground_Vehicle.XylvanianBattlestation04, false)
        SetHealthPercent(Ground_Vehicle.XylvanianBattlestation04, 5)
      end
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      cutscene04skip = 1
      WaitFor(1.5)
      DeclareVictory(constant.ARMY_WF)
      DeclareVictory(constant.ARMY_TUNDRAN)
      WaitFor(1.5)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetCamera(Camera.FlyoverCutsceneP1, constant.PLAYER_ONE)
        CameraSetTarget(Camera.FlyoverCutsceneP1, Waypoint.Entity330105191)
        CameraSetWaypoint(Camera.FlyoverCutsceneP1, Waypoint.Entity330105194)
        ClearMessageQueue(constant.PLAYER_ONE)
        StopScoringTimer()
        WinMissionCOOP()
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetCamera(Camera.FlyoverCutsceneP2, constant.PLAYER_TWO)
        CameraSetTarget(Camera.FlyoverCutsceneP2, Waypoint.Entity330105191)
        CameraSetWaypoint(Camera.FlyoverCutsceneP2, Waypoint.Entity330105194)
        ClearMessageQueue(constant.PLAYER_TWO)
        StopScoringTimer()
        WinMissionCOOP()
      end
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(55, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy)
      PhoneMessage(66, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy)
      PhoneMessage(67, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy)
      WaitFor(30)
      cutscenefinished04 = 1
      break
    end
    EndFrame()
  end
end

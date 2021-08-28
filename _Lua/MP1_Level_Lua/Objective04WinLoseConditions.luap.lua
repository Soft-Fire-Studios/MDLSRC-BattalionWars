function Objective04WinLoseConditions(owner)
  cutscene02 = owner
  repeat
    EndFrame()
  until cutscenefinished01 == 2
  repeat
    EndFrame()
  until GetInstallationOwner(Strategic_Installation.SolarHQ01) == constant.ARMY_UNDERWORLD or GetTimeLeft() <= 0
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
    ClearMessageQueue(constant.PLAYER_ONE)
    FreezePlayer(constant.PLAYER_ONE)
    WinMissionMP()
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetInvulnerable(flag.TYPE_SOLAR, 1)
    ClearMessageQueue(constant.PLAYER_TWO)
    FreezePlayer(constant.PLAYER_TWO)
    WinMissionMP()
  end
  StopScoringTimer()
  ShowTimer(0)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Troop.P1CutsceneTroop)
  Spawn(Troop.P2CutsceneTroop)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.P1CutsceneTroop, true, true)
  ForceUnitTransfer(constant.PLAYER_TWO, Troop.P2CutsceneTroop, true, true)
  Despawn(Ground_Vehicle.LegionBattlestation01)
  Despawn(Troop.LegionChainVet01)
  Despawn(Troop.LegionChainVet02)
  Despawn(Troop.LegionChainVet03)
  Despawn(Troop.LegionChainVet04)
  Despawn(Troop.LegionChainVet05)
  Despawn(Troop.LegionGrunt01)
  Despawn(Troop.LegionGrunt02)
  Despawn(Troop.LegionGrunt03)
  Despawn(Troop.LegionGrunt04)
  Despawn(Troop.LegionGrunt05)
  Despawn(Troop.LegionMortarVet01)
  Despawn(Troop.LegionMortarVet02)
  Despawn(Troop.LegionMortarVet03)
  Despawn(Troop.LegionMortarVet04)
  Despawn(Troop.LegionMortarVet05)
  Despawn(Ground_Vehicle.SolarHeavyTank01)
  Despawn(Troop.SolarBazookaVet01)
  Despawn(Troop.SolarBazookaVet02)
  Despawn(Troop.SolarBazookaVet03)
  Despawn(Troop.SolarBazookaVet04)
  Despawn(Troop.SolarAAVet01)
  Despawn(Troop.SolarAAVet02)
  Despawn(Troop.SolarAAVet03)
  Despawn(Troop.SolarGrunt01)
  Despawn(Troop.SolarGrunt02)
  Despawn(Troop.SolarGrunt03)
  Despawn(Troop.SolarGrunt04)
  Despawn(Troop.SolarGrunt05)
  Despawn(Troop.SolarGrunt06)
  Despawn(Troop.SolarGrunt07)
  WaitFor(1)
  while missionend == 0 do
    if GetInstallationOwner(Strategic_Installation.SolarHQ01) == constant.ARMY_UNDERWORLD then
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        ClearMessageQueue(constant.PLAYER_ONE)
        SetObjectivesResult(true, true, true)
        FreezePlayer(constant.PLAYER_ONE)
        WinMissionMP()
        SetNetworkMissionComplete(2, false, 175)
        SetNetworkMissionComplete(1, true, 1)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        ClearMessageQueue(constant.PLAYER_TWO)
        SetObjectivesResult(false, false, false)
        FreezePlayer(constant.PLAYER_TWO)
        WinMissionMP()
      end
      missionend = 1
      SetObjectiveData(Objective_Marker.LegionSpawnZoneMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SolarSpawnZoneMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.LegionSpawnZoneMarker04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.LegionSpawnZone03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SolarSpawnZone03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.LegionSpawnZone04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.AttackSolarHQ01Objective, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.DefendSolarHQ01Objective, constant.OBJECTIVE_DATA_STATE, 1)
      Spawn(Troop.CutsceneSolarGrunt01)
      Spawn(Troop.CutsceneSolarGrunt02)
      Spawn(Troop.CutsceneSolarGrunt03)
      Spawn(Troop.CutsceneSolarGrunt04)
      Spawn(Troop.CutsceneSolarAAVet01)
      Spawn(Troop.CutsceneSolarAAVet02)
      Spawn(Troop.CutsceneSolarBazookaVet01)
      Spawn(Troop.CutsceneSolarBazookaVet02)
      Spawn(Troop.CutsceneLegionGrunt01)
      Spawn(Troop.CutsceneLegionGrunt02)
      Spawn(Troop.CutsceneLegionGrunt03)
      Spawn(Troop.CutsceneLegionGrunt04)
      Spawn(Troop.CutsceneLegionChainVet01)
      Spawn(Troop.CutsceneLegionChainVet02)
      if pow01 == 1 then
        Spawn(Troop.CutsceneLegionMortarVet01)
        Spawn(Troop.CutsceneLegionMortarVet02)
      else
        Spawn(Troop.CutsceneLegionGrunt05)
        Spawn(Troop.CutsceneLegionGrunt06)
      end
      DeclareVictory(constant.ARMY_UNDERWORLD)
      StartOutro()
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetCamera(Camera.Cutscene02Player01Camera02, constant.PLAYER_ONE)
        CameraSetFOV(Camera.Cutscene02Player01Camera02, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
        ClearMessageQueue(constant.PLAYER_ONE)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetCamera(Camera.Cutscene02Player02Camera02, constant.PLAYER_TWO)
        CameraSetFOV(Camera.Cutscene02Player02Camera02, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
        ClearMessageQueue(constant.PLAYER_ONE)
      end
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(88, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      PhoneMessage(89, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
      WaitFor(10)
      cutscenefinished02 = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.skip02 = 1
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.skip02 = 1
        do break end
        EndFrame()
        if cutscenefinished01 == 2 and GetTimeLeft() <= 0 then
          missionend = 1
          if IsNetworkPlayer(constant.PLAYER_ONE) then
            FreezePlayer(constant.PLAYER_ONE)
            ClearMessageQueue(constant.PLAYER_ONE)
            SetNetworkMissionComplete(2, true, 1)
            SetNetworkMissionComplete(1, false, 176)
            WinMissionMP()
          end
          if IsNetworkPlayer(constant.PLAYER_TWO) then
            FreezePlayer(constant.PLAYER_TWO)
            ClearMessageQueue(constant.PLAYER_TWO)
            WinMissionMP()
          end
          StartOutro()
          if IsNetworkPlayer(constant.PLAYER_ONE) then
            SetCamera(Camera.Cutscene02Player01Camera02, constant.PLAYER_ONE)
            CameraSetFOV(Camera.Cutscene02Player01Camera02, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
            ClearMessageQueue(constant.PLAYER_ONE)
          end
          if IsNetworkPlayer(constant.PLAYER_TWO) then
            SetCamera(Camera.Cutscene02Player02Camera02, constant.PLAYER_TWO)
            CameraSetFOV(Camera.Cutscene02Player02Camera02, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
            ClearMessageQueue(constant.PLAYER_TWO)
          end
          Spawn(Troop.CutsceneSolarGrunt01)
          Spawn(Troop.CutsceneSolarGrunt02)
          Spawn(Troop.CutsceneSolarGrunt03)
          Spawn(Troop.CutsceneSolarGrunt04)
          Spawn(Troop.CutsceneSolarAAVet01)
          Spawn(Troop.CutsceneSolarAAVet02)
          Spawn(Troop.CutsceneSolarBazookaVet01)
          Spawn(Troop.CutsceneSolarBazookaVet02)
          Spawn(Troop.CutsceneLegionGrunt01)
          Spawn(Troop.CutsceneLegionGrunt02)
          Spawn(Troop.CutsceneLegionGrunt03)
          Spawn(Troop.CutsceneLegionGrunt04)
          Spawn(Troop.CutsceneLegionChainVet01)
          Spawn(Troop.CutsceneLegionChainVet02)
          if pow01 == 1 then
            Spawn(Troop.CutsceneLegionMortarVet01)
            Spawn(Troop.CutsceneLegionMortarVet02)
          else
            Spawn(Troop.CutsceneLegionGrunt05)
            Spawn(Troop.CutsceneLegionGrunt06)
          end
          DeclareVictory(constant.ARMY_SOLAR)
          CameraFade(constant.FADE_IN, constant.WAIT, 1)
          PhoneMessage(91, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
          PhoneMessage(92, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_TWO)
          WaitFor(10)
          cutscenefinished02 = 1
          if IsNetworkPlayer(constant.PLAYER_ONE) then
            netvariable.player1.skip02 = 1
          end
          if IsNetworkPlayer(constant.PLAYER_TWO) then
            netvariable.player2.skip02 = 1
            do break end
            EndFrame()
          end
        end
      end
    end
  end
end

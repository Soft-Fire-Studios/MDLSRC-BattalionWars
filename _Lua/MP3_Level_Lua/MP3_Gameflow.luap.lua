function MP3_Gameflow(owner)
  WaitFor(0.1)
  Despawn(Air_Vehicle.WFstratofortress01)
  Despawn(Air_Vehicle.WFbomber02)
  Despawn(Air_Vehicle.WFfighter3)
  Despawn(Troop.WFgrunt2)
  Despawn(Troop.WFgrunt4)
  Despawn(Troop.WFgrunt8)
  Despawn(Ground_Vehicle.TTtank02)
  Despawn(Ground_Vehicle.WFtank01)
  Despawn(Ground_Vehicle.WFtank02)
  Despawn(Air_Vehicle.WFbomberCutscene01)
  Despawn(Air_Vehicle.WFbomber01)
  Despawn(Air_Vehicle.WFbomber03)
  Despawn(Air_Vehicle.WFtransport03)
  Despawn(Air_Vehicle.WFtransport04)
  Despawn(Air_Vehicle.WFtransport05)
  Despawn(Air_Vehicle.WFtransport06)
  Despawn(Troop.WFbazooka01)
  Despawn(Troop.WFgrunt5)
  Despawn(Troop.WFgrunt6)
  Despawn(Troop.WFbazooka03)
  Despawn(Troop.WFhose01)
  Despawn(Troop.WFhose02)
  Despawn(Troop.TTgrunt1)
  Despawn(Troop.TTgrunt2)
  Despawn(Troop.TTgrunt3)
  Despawn(Troop.TTgrunt4)
  Despawn(Troop.TTgrunt5)
  Despawn(Ground_Vehicle.TTtank01)
  Despawn(Ground_Vehicle.TTantiair01)
  Despawn(Troop.TThose01)
  Despawn(Troop.TThose02)
  Despawn(Troop.TTchain03)
  Despawn(Troop.TTgrunt6)
  SetActive(Building.Entity550041894, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.Entity550041896, constant.INACTIVE, constant.ADJUST_WEAPON)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetObjectivesResult(false, false, false)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetObjectivesResult(true, true, true)
  end
  WaitFor(1)
  while true do
    if IsDead(Air_Vehicle.TBlimp01) and IsDead(Air_Vehicle.TBlimp02) and IsDead(Air_Vehicle.TBlimp03) and IsDead(Air_Vehicle.TBlimp04) and IsDead(Air_Vehicle.TBlimp05) and IsDead(Air_Vehicle.TBlimp06) and IsDead(Air_Vehicle.TBlimp07) and ObjectiveOneIsDone == 0 then
      ObjectiveOneIsDone = 1
      CurrentPlayer1SpawnX = 65
      CurrentPlayer1SpawnZ = -105
      CurrentPlayer2SpawnX = -25
      CurrentPlayer2SpawnZ = -350
      CurrentPlayer1Direction = 180
      CurrentPlayer2Direction = 0
      SetInstallationOwner(Strategic_Installation.Airbase, constant.ARMY_WF)
      SetObjectiveData(Objective_Marker.SpawnZoneWF01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SpawnZoneFXWF01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SpawnZoneT01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SpawnZoneFXT01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SpawnZoneWF02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.SpawnZoneFXWF02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.SpawnZoneT02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.SpawnZoneFXT02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      if ObjectiveTwoIsDone == 0 then
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          SetObjectivesResult(true, false, false)
          SetObjectiveData(Objective_Marker.P1Blimp, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.P1Refuel, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.P1Refuel, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          SetObjectiveData(Objective_Marker.P1tower01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.P1tower02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.P1tower03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        end
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          SetObjectivesResult(false, true, true)
          SetObjectiveData(Objective_Marker.P2Blimp, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.P2Refuel, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.P2Refuel, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          SetObjectiveData(Objective_Marker.P2tower01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.P2tower02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.P2tower03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        end
      end
    end
    if NumberOfRefuelStationDead >= 3 and ObjectiveTwoIsDone == 0 then
      ObjectiveTwoIsDone = 1
      if ObjectiveOneIsDone == 0 then
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          SetObjectiveData(Objective_Marker.P1Refuel, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        end
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          SetObjectiveData(Objective_Marker.P2Refuel, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        end
      end
    end
    if ObjectiveOneIsDone == 1 and ObjectiveTwoIsDone == 1 and BothObjectivesAreDone == 0 then
      BothObjectivesAreDone = 1
      WaitFor(1)
      CurrentPlayer1SpawnX = 172
      CurrentPlayer1SpawnZ = -271
      CurrentPlayer2SpawnX = -45
      CurrentPlayer2SpawnZ = -608
      CurrentPlayer1Direction = 180
      CurrentPlayer2Direction = 90
      Player1UnitTimer = 15
      Player1GruntTimer = 10
      Player2UnitTimer = 30
      Player2GruntTimer = 15
      SetObjectiveData(Objective_Marker.SpawnZoneWF02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SpawnZoneFXWF02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SpawnZoneT02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SpawnZoneFXT02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.SpawnZoneWF03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.SpawnZoneFXWF03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.SpawnZoneT03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.SpawnZoneFXT03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        if netvariable.player1.Helipad01Captured == 0 and netvariable.player2.Helipad01Captured == 0 then
          SetObjectiveData(Objective.P1Helipad02, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.P1Helipad02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        end
        SetObjectivesResult(true, true, false)
        SetObjectiveData(Objective.P1HQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.P1HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        if netvariable.player1.Helipad01Captured == 0 and netvariable.player2.Helipad01Captured == 0 then
          SetObjectiveData(Objective.P2Helipad02, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.P2Helipad02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        end
        SetObjectivesResult(false, false, true)
        SetObjectiveData(Objective.P2HQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.P2HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
    end
    EndFrame()
  end
end

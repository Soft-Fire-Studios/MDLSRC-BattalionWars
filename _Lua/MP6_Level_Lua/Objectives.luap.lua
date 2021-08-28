function Objectives(owner)
  KillObjectives = owner
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetObjectivesResult(false, false, false)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetObjectivesResult(true, true, true)
  end
  SetActive(Building.TT_FuelTank01, constant.INACTIVE)
  SetActive(Building.TT_FuelTank02, constant.INACTIVE)
  SetActive(Building.TT_FuelTank03, constant.INACTIVE)
  SetUnitInvulnerable(Building.TT_FuelTank01, true)
  SetUnitInvulnerable(Building.TT_FuelTank02, true)
  SetUnitInvulnerable(Building.TT_FuelTank03, true)
  SetActive(Morphing_Building.TT_HQ01, constant.INACTIVE)
  while true do
    if gamestate == 0 then
      repeat
        EndFrame()
      until IsDead(Building.TT_BridgeBarrier01)
      gamestate = 1
      DebugOut(gamestate)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetObjectivesResult(true, false, false)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetObjectivesResult(false, true, true)
      end
      CurrentPlayer1SpawnX = GetObjectXPosition(Waypoint.XNSpawnLand02)
      DebugOut("CurrentPlayer1SpawnX =", CurrentPlayer1SpawnX)
      CurrentPlayer1SpawnZ = GetObjectZPosition(Waypoint.XNSpawnLand02)
      DebugOut("CurrentPlayer1SpawnZ =", CurrentPlayer1SpawnZ)
      CurrentPlayer1WaterSpawnX = GetObjectXPosition(Waypoint.XNSpawnWater02)
      DebugOut("CurrentPlayer1WaterSpawnX =", CurrentPlayer1WaterSpawnX)
      CurrentPlayer1WaterSpawnZ = GetObjectZPosition(Waypoint.XNSpawnWater02)
      DebugOut("CurrentPlayer1WaterSpawnZ =", CurrentPlayer1WaterSpawnZ)
      CurrentPlayer2SpawnX = GetObjectXPosition(Waypoint.TTSpawnLand02)
      DebugOut("CurrentPlayer2SpawnX =", CurrentPlayer2SpawnX)
      CurrentPlayer2SpawnZ = GetObjectZPosition(Waypoint.TTSpawnLand02)
      DebugOut("CurrentPlayer2SpawnZ =", CurrentPlayer2SpawnZ)
      CurrentPlayer1Direction = 110
      CurrentPlayer2Direction = 180
      SetObjectiveData(Objective_Marker.TT_BridgeBarricade, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.XN_BridgeBarricade, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.XN_BridgeBarricade, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.TT_BridgeBarricade, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TT_BridgeBarricade_FAILED, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.TT_BridgeBarricade_FAILED, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.TT_Spawn01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.XN_Spawn01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.TT_Spawn01_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.XN_Spawn01_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.TT_Spawn02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.XN_Spawn02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.TT_Spawn02_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.XN_Spawn02_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      PhoneMessageWithObjective(25, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      PhoneMessageWithObjective(24, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
      PhoneMessage(14, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      PhoneMessage(15, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      PhoneMessage(14, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_TWO)
      PhoneMessage(15, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      SetObjectiveData(Objective_Marker.XN_FuelTankDefence01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.TT_FuelTankDefence01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.XN_FuelTankDefence02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.TT_FuelTankDefence02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.XN_FuelTankDefence03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.TT_FuelTankDefence03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.XN_Fuel_0_3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.TT_Fuel_3_3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetActive(Building.TT_FuelTank01, constant.ACTIVE)
      SetActive(Building.TT_FuelTank02, constant.ACTIVE)
      SetActive(Building.TT_FuelTank03, constant.ACTIVE)
      SetUnitInvulnerable(Building.TT_FuelTank01, false)
      SetUnitInvulnerable(Building.TT_FuelTank02, false)
      SetUnitInvulnerable(Building.TT_FuelTank03, false)
      repeat
        if IsDead(Building.TT_FuelTank01) and TT_FuelTank01Dead == 0 then
          DebugOut("TT FuelTank01 is dead")
          SetObjectiveData(Objective_Marker.XN_FuelTankDefence01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          SetObjectiveData(Objective_Marker.TT_FuelTankDefence01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          DeadTTFuel = DeadTTFuel + 1
          TT_FuelTank01Dead = 1
        end
        if IsDead(Building.TT_FuelTank02) and TT_FuelTank02Dead == 0 then
          DebugOut("TT FuelTank02 is dead")
          SetObjectiveData(Objective_Marker.XN_FuelTankDefence02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          SetObjectiveData(Objective_Marker.TT_FuelTankDefence02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          DeadTTFuel = DeadTTFuel + 1
          TT_FuelTank02Dead = 1
        end
        if IsDead(Building.TT_FuelTank03) and TT_FuelTank03Dead == 0 then
          DebugOut("TT FuelTank03 is dead")
          SetObjectiveData(Objective_Marker.XN_FuelTankDefence03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          SetObjectiveData(Objective_Marker.TT_FuelTankDefence03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          DeadTTFuel = DeadTTFuel + 1
          TT_FuelTank03Dead = 1
        end
        if DeadTTFuel == 1 and DeadTTFuelMessage01 == 0 then
          ClearMessageQueue(constant.PLAYER_ONE)
          ClearMessageQueue(constant.PLAYER_TWO)
          PhoneMessage(26, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
          PhoneMessage(29, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
          DeadTTFuelMessage01 = 1
        end
        if DeadTTFuel == 2 and DeadTTFuelMessage02 == 0 then
          ClearMessageQueue(constant.PLAYER_ONE)
          ClearMessageQueue(constant.PLAYER_TWO)
          PhoneMessage(27, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
          PhoneMessage(30, constant.ID_NONE, 2, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
          DeadTTFuelMessage02 = 1
        end
        if DeadTTFuel == 1 and DeadTTFuelObjective01 == 0 then
          SetObjectiveData(Objective.XN_Fuel_0_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.TT_Fuel_3_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.XN_Fuel_1_3, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective.TT_Fuel_2_3, constant.OBJECTIVE_DATA_VISIBLE, 1)
          DeadTTFuelObjective01 = 1
        end
        if DeadTTFuel == 2 and DeadTTFuelObjective02 == 0 then
          SetObjectiveData(Objective.XN_Fuel_1_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.TT_Fuel_2_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.XN_Fuel_2_3, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective.TT_Fuel_1_3, constant.OBJECTIVE_DATA_VISIBLE, 1)
          DeadTTFuelObjective02 = 1
        end
        EndFrame()
      until IsDead(Building.TT_FuelTank01) and IsDead(Building.TT_FuelTank02) and IsDead(Building.TT_FuelTank03)
      gamestate = 2
      DebugOut(gamestate)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetObjectivesResult(true, true, false)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetObjectivesResult(false, false, true)
      end
      CurrentPlayer1SpawnX = GetObjectXPosition(Waypoint.XNSpawnLand03)
      DebugOut("CurrentPlayer1SpawnX =", CurrentPlayer1SpawnX)
      CurrentPlayer1SpawnZ = GetObjectZPosition(Waypoint.XNSpawnLand03)
      DebugOut("CurrentPlayer1SpawnZ =", CurrentPlayer1SpawnZ)
      CurrentPlayer1WaterSpawnX = GetObjectXPosition(Waypoint.XNSpawnWater03)
      DebugOut("CurrentPlayer1WaterSpawnX =", CurrentPlayer1WaterSpawnX)
      CurrentPlayer1WaterSpawnZ = GetObjectZPosition(Waypoint.XNSpawnWater03)
      DebugOut("CurrentPlayer1WaterSpawnZ =", CurrentPlayer1WaterSpawnZ)
      CurrentPlayer2SpawnX = GetObjectXPosition(Waypoint.TTSpawnLand03)
      DebugOut("CurrentPlayer2SpawnX =", CurrentPlayer2SpawnX)
      CurrentPlayer2SpawnZ = GetObjectZPosition(Waypoint.TTSpawnLand03)
      DebugOut("CurrentPlayer2SpawnZ =", CurrentPlayer2SpawnZ)
      CurrentPlayer1Direction = 80
      CurrentPlayer2Direction = 180
      SetObjectiveData(Objective.XN_Fuel_2_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TT_Fuel_1_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.XN_Fuel_3_3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.XN_Fuel_3_3, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.TT_Fuel_FAILED, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.TT_Fuel_FAILED, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.XN_FuelTankDefence01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.XN_FuelTankDefence02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.XN_FuelTankDefence03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.TT_FuelTankDefence01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.TT_FuelTankDefence02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.TT_FuelTankDefence03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.TT_Spawn02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.XN_Spawn02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.TT_Spawn02_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.XN_Spawn02_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.TT_Spawn03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.XN_Spawn03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.TT_Spawn03_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.XN_Spawn03_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessageWithObjective(35, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      PhoneMessageWithObjective(34, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
      Despawn(Building.TT_HQ01)
      Spawn(Capture_Point.TT_HQ01)
      SetActive(Morphing_Building.TT_HQ01, constant.ACTIVE)
      SetObjectiveData(Objective_Marker.TT_HQ01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.XN_HQ01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.TT_HQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.XN_HQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
      break
    end
    EndFrame()
  end
end

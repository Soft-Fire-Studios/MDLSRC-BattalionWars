function RAT_Respawn_Tanks_X(owner)
  local Xtank04Revived = 0
  local Xtank05Revived = 0
  local Xtank06Revived = 0
  local X_Heavy_Tank_1Revived = 0
  local X_Heavy_Tank_2Revived = 0
  local X_Heavy_Tank_3Revived = 0
  local Xtank04X = -390
  local Xtank04Z = 395
  local Xtank05X = -240
  local Xtank05Z = 965
  local Xtank06X = -200
  local Xtank06Z = 950
  local X_Heavy_Tank_1X = -160
  local X_Heavy_Tank_1Z = 320
  local X_Heavy_Tank_2X = -5
  local X_Heavy_Tank_2Z = 1287
  local X_Heavy_Tank_3X = -120
  local X_Heavy_Tank_3Z = 1309
  repeat
    EndFrame()
  until cutscene == 1
  WaitFor(10)
  while missionend == 0 do
    if not IsInArea(GetPlayerUnit(), Map_Zone.AdvancedUpMap) then
      if IsDead(Ground_Vehicle.Xtank05) and IsReadyToRevive(Ground_Vehicle.Xtank05) and IsDead(Troop.Entity550038513) and IsReadyToRevive(Troop.Entity550038513) and IsDead(Troop.Entity550038514) and IsReadyToRevive(Troop.Entity550038514) and Xtank05Revived == 0 then
        Xtank05Revived = 1
        WaitFor(1)
        ReviveDeadUnit(Ground_Vehicle.Xtank05, Xtank05X, Xtank05Z, 235, 25)
        ReviveDeadUnit(Troop.Entity550038513, Xtank05X, Xtank05Z, 235, 25)
        ReviveDeadUnit(Troop.Entity550038514, Xtank05X, Xtank05Z, 235, 25)
        repeat
          EndFrame()
        until IsDead(Ground_Vehicle.Xtank05) == false and IsDead(Troop.Entity550038513) == false and IsDead(Troop.Entity550038514) == false
        PutUnitInVehicle(Troop.Entity550038513, Ground_Vehicle.Xtank05, 1)
        PutUnitInVehicle(Troop.Entity550038514, Ground_Vehicle.Xtank05, 2)
        StopAndGuard(Ground_Vehicle.Xtank05)
      end
      if IsDead(Ground_Vehicle.Xtank06) and IsReadyToRevive(Ground_Vehicle.Xtank06) and IsDead(Troop.Entity550038510) and IsReadyToRevive(Troop.Entity550038510) and IsDead(Troop.Entity550038511) and IsReadyToRevive(Troop.Entity550038511) and Xtank06Revived == 0 then
        Xtank06Revived = 1
        Xtank06HasBeenRespawned = 1
        WaitFor(1)
        ReviveDeadUnit(Ground_Vehicle.Xtank06, Xtank06X, Xtank06Z, 235, 25)
        ReviveDeadUnit(Troop.Entity550038510, Xtank06X, Xtank06Z, 235, 25)
        ReviveDeadUnit(Troop.Entity550038511, Xtank06X, Xtank06Z, 235, 25)
        repeat
          EndFrame()
        until IsDead(Ground_Vehicle.Xtank06) == false and IsDead(Troop.Entity550038510) == false and IsDead(Troop.Entity550038511) == false
        PutUnitInVehicle(Troop.Entity550038510, Ground_Vehicle.Xtank06, 1)
        PutUnitInVehicle(Troop.Entity550038511, Ground_Vehicle.Xtank06, 2)
        StopAndGuard(Ground_Vehicle.Xtank06)
      end
      if IsDead(Ground_Vehicle.X_Heavy_Tank_3) and IsReadyToRevive(Ground_Vehicle.X_Heavy_Tank_3) and IsDead(Troop.X_HT_3_Driver_2) and IsReadyToRevive(Troop.X_HT_3_Driver_2) and IsDead(Troop.X_HT_3_Driver_3) and IsReadyToRevive(Troop.X_HT_3_Driver_3) and X_Heavy_Tank_3Revived == 0 then
        X_Heavy_Tank_3Revived = 1
        X_Heavy_Tank_3HasBeenRespawned = 1
        WaitFor(1)
        ReviveDeadUnit(Ground_Vehicle.X_Heavy_Tank_3, X_Heavy_Tank_3X, X_Heavy_Tank_3Z, 225, 25)
        ReviveDeadUnit(Troop.X_HT_3_Driver_2, X_Heavy_Tank_3X, X_Heavy_Tank_3Z, 225, 25)
        ReviveDeadUnit(Troop.X_HT_3_Driver_3, X_Heavy_Tank_3X, X_Heavy_Tank_3Z, 225, 25)
        repeat
          EndFrame()
        until IsDead(Ground_Vehicle.X_Heavy_Tank_3) == false and IsDead(Troop.X_HT_3_Driver_2) == false and IsDead(Troop.X_HT_3_Driver_3) == false
        PutUnitInVehicle(Troop.X_HT_3_Driver_2, Ground_Vehicle.X_Heavy_Tank_3, 1)
        PutUnitInVehicle(Troop.X_HT_3_Driver_3, Ground_Vehicle.X_Heavy_Tank_3, 2)
        StopAndGuard(Ground_Vehicle.X_Heavy_Tank_3)
      end
      EndFrame()
    end
    EndFrame()
  end
end

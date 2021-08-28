function RAT_Respawn_X_Gunship(owner)
  local WestGunshipMoved01 = 0
  local WestGunshipMoved02 = 0
  local WestGunshipMoved03 = 0
  local WestGunshipMoved04 = 0
  local WestGunshipMoved05 = 0
  local EastGunshipMoved06 = 0
  local EastGunshipMoved07 = 0
  local Xgunship01Revived = 0
  local Xgunship02Revived = 0
  local Xgunship03Revived = 0
  local Xgunship04Revived = 0
  local Xgunship05Revived = 0
  local Xgunship06Revived = 0
  local Xgunship07Revived = 0
  local WaveTimerDone = 0
  local WestGunshipWaveOneTimer = 0
  local WestGunshipWaveTwoTimer = 0
  local Xgunship01X = -530
  local Xgunship01Z = 815
  local Xgunship02X = -560
  local Xgunship02Z = 800
  local Xgunship03X = -520
  local Xgunship03Z = 745
  local Xgunship04X = -525
  local Xgunship04Z = 675
  local Xgunship05X = -617
  local Xgunship05Z = 623
  local Xgunship06X = 45
  local Xgunship06Z = 535
  local Xgunship07X = 70
  local Xgunship07Z = 490
  while missionend == 0 do
    if IsInArea(GetPlayerUnit(), Map_Zone.GE_Middle) and WaveTimerDone == 0 then
      WaveTimerDone = 1
      WestGunshipWaveOneTimer = GetTime() + 10
      WestGunshipWaveTwoTimer = GetTime() + 35
    end
    if WaveTimerDone > 0 then
      if WestGunshipWaveOneTimer < GetTime() then
        if WestGunshipMoved01 == 0 and not IsDead(Air_Vehicle.Xgunship01) then
          WestGunshipMoved01 = 1
          GoToArea(Air_Vehicle.Xgunship01, -260, 600, 10)
        end
        if WestGunshipMoved02 == 0 and not IsDead(Air_Vehicle.Xgunship02) then
          WestGunshipMoved02 = 1
          GoToArea(Air_Vehicle.Xgunship02, -240, 620, 10)
        end
      end
      if WestGunshipWaveTwoTimer < GetTime() then
        if WestGunshipMoved03 == 0 and not IsDead(Air_Vehicle.Xgunship03) then
          WestGunshipMoved03 = 1
          GoToArea(Air_Vehicle.Xgunship03, -220, 540, 10)
        end
        if WestGunshipMoved04 == 0 and not IsDead(Air_Vehicle.Xgunship04) then
          WestGunshipMoved04 = 1
          GoToArea(Air_Vehicle.Xgunship04, -285, 625, 10)
        end
      end
    end
    if IsDead(Air_Vehicle.Xgunship01) and IsReadyToRevive(Air_Vehicle.Xgunship01) and IsDead(Troop.Entity550038841) and IsReadyToRevive(Troop.Entity550038841) and IsDead(Troop.Entity550038842) and IsReadyToRevive(Troop.Entity550038842) and Xgunship01Revived == 0 then
      Xgunship01Revived = 1
      WaitFor(1)
      ReviveDeadUnit(Air_Vehicle.Xgunship01, Xgunship01X, Xgunship01Z, 135, 25)
      ReviveDeadUnit(Troop.Entity550038841, Xgunship01X, Xgunship01Z, 135, 25)
      ReviveDeadUnit(Troop.Entity550038842, Xgunship01X, Xgunship01Z, 135, 25)
      repeat
        EndFrame()
      until IsDead(Air_Vehicle.Xgunship01) == false and IsDead(Troop.Entity550038841) == false and IsDead(Troop.Entity550038842) == false
      PutUnitInVehicle(Troop.Entity550038841, Air_Vehicle.Xgunship01, 1)
      PutUnitInVehicle(Troop.Entity550038842, Air_Vehicle.Xgunship01, 2)
    end
    if IsDead(Air_Vehicle.Xgunship02) and IsReadyToRevive(Air_Vehicle.Xgunship02) and IsDead(Troop.Entity550038834) and IsReadyToRevive(Troop.Entity550038834) and IsDead(Troop.Entity550038835) and IsReadyToRevive(Troop.Entity550038835) and Xgunship02Revived == 0 then
      Xgunship02Revived = 1
      Xgunship02HasBeenRespawned = 1
      WaitFor(1)
      ReviveDeadUnit(Air_Vehicle.Xgunship02, Xgunship02X, Xgunship02Z, 90, 25)
      ReviveDeadUnit(Troop.Entity550038834, Xgunship02X, Xgunship02Z, 90, 25)
      ReviveDeadUnit(Troop.Entity550038835, Xgunship02X, Xgunship02Z, 90, 25)
      repeat
        EndFrame()
      until IsDead(Air_Vehicle.Xgunship02) == false and IsDead(Troop.Entity550038834) == false and IsDead(Troop.Entity550038835) == false
      PutUnitInVehicle(Troop.Entity550038834, Air_Vehicle.Xgunship02, 1)
      PutUnitInVehicle(Troop.Entity550038835, Air_Vehicle.Xgunship02, 2)
    end
    if IsDead(Air_Vehicle.Xgunship03) and IsReadyToRevive(Air_Vehicle.Xgunship03) and IsDead(Troop.Entity550038839) and IsReadyToRevive(Troop.Entity550038839) and IsDead(Troop.Entity550038840) and IsReadyToRevive(Troop.Entity550038840) and Xgunship03Revived == 0 then
      Xgunship03Revived = 1
      Xgunship03HasBeenRespawned = 1
      WaitFor(1)
      ReviveDeadUnit(Air_Vehicle.Xgunship03, Xgunship03X, Xgunship03Z, 60, 25)
      ReviveDeadUnit(Troop.Entity550038839, Xgunship03X, Xgunship03Z, 60, 25)
      ReviveDeadUnit(Troop.Entity550038840, Xgunship03X, Xgunship03Z, 60, 25)
      repeat
        EndFrame()
      until IsDead(Air_Vehicle.Xgunship03) == false and IsDead(Troop.Entity550038839) == false and IsDead(Troop.Entity550038840) == false
      PutUnitInVehicle(Troop.Entity550038839, Air_Vehicle.Xgunship03, 1)
      PutUnitInVehicle(Troop.Entity550038840, Air_Vehicle.Xgunship03, 2)
    end
    if IsDead(Air_Vehicle.Xgunship04) and IsReadyToRevive(Air_Vehicle.Xgunship04) and IsDead(Troop.Entity550038893) and IsReadyToRevive(Troop.Entity550038893) and IsDead(Troop.Entity550038894) and IsReadyToRevive(Troop.Entity550038894) and Xgunship04Revived == 0 then
      Xgunship04Revived = 1
      Xgunship04HasBeenRespawned = 1
      WaitFor(1)
      ReviveDeadUnit(Air_Vehicle.Xgunship04, Xgunship04X, Xgunship04Z, 100, 25)
      ReviveDeadUnit(Troop.Entity550038893, Xgunship04X, Xgunship04Z, 100, 25)
      ReviveDeadUnit(Troop.Entity550038894, Xgunship04X, Xgunship04Z, 100, 25)
      repeat
        EndFrame()
      until IsDead(Air_Vehicle.Xgunship04) == false and IsDead(Troop.Entity550038893) == false and IsDead(Troop.Entity550038894) == false
      PutUnitInVehicle(Troop.Entity550038893, Air_Vehicle.Xgunship04, 1)
      PutUnitInVehicle(Troop.Entity550038894, Air_Vehicle.Xgunship04, 2)
    end
    EndFrame()
  end
end

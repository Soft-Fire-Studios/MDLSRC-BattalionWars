function RAT_Respawn_Battlestation_X(owner)
  local KillOffX_Battlestation_1 = 0
  local KillOffXtank02 = 0
  local Xtank01Revived = 0
  local Xtank02Revived = 0
  local X_Battlestation_1Revived = 0
  local Xbattlestation01Revived = 0
  local Xbattlestation02Revived = 0
  local Xbattlestation03Revived = 0
  local Xtank01X = -185
  local Xtank01Z = 1300
  local Xtank02X = 143
  local Xtank02Z = 573
  local X_Battlestation_1X = -590
  local X_Battlestation_1Z = 720
  local Xbattlestation01X = 60
  local Xbattlestation01Z = 1285
  while missionend == 0 do
    if IsInArea(GetPlayerUnit(), Map_Zone.BattlestationRespawn) then
      if not IsInArea(Ground_Vehicle.X_Battlestation_1, Map_Zone.BattlestationRespawn) and KillOffX_Battlestation_1 == 0 then
        KillOffX_Battlestation_1 = 1
        Kill(Ground_Vehicle.X_Battlestation_1)
      end
      EndFrame()
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.BattlestationRespawn) then
      if not IsInArea(Ground_Vehicle.Xtank02, Map_Zone.BattlestationRespawn) and KillOffXtank02 == 0 then
        KillOffXtank02 = 1
        Kill(Ground_Vehicle.Xtank02)
      end
      EndFrame()
    end
    if not IsInArea(GetPlayerUnit(), Map_Zone.BattlestationRespawn) then
      if 1 <= WFRadarCompleted then
        if IsDead(Ground_Vehicle.Xtank02) and IsReadyToRevive(Ground_Vehicle.Xtank02) and IsDead(Troop.Entity550038485) and IsReadyToRevive(Troop.Entity550038485) and IsDead(Troop.Entity550038486) and IsReadyToRevive(Troop.Entity550038486) and Xtank02Revived == 0 then
          Xtank02Revived = 1
          WaitFor(1)
          ReviveDeadUnit(Ground_Vehicle.Xtank02, Xtank02X, Xtank02Z, 180, 25)
          ReviveDeadUnit(Troop.Entity550038485, Xtank02X, Xtank02Z, 180, 25)
          ReviveDeadUnit(Troop.Entity550038486, Xtank02X, Xtank02Z, 180, 25)
          repeat
            EndFrame()
          until IsDead(Ground_Vehicle.Xtank02) == false and IsDead(Troop.Entity550038485) == false and IsDead(Troop.Entity550038486) == false
          PutUnitInVehicle(Troop.Entity550038485, Ground_Vehicle.Xtank02, 3)
          PutUnitInVehicle(Troop.Entity550038486, Ground_Vehicle.Xtank02, 4)
          SetUnitInvulnerable(Ground_Vehicle.Xtank02, false)
          StopAndGuard(Ground_Vehicle.Xtank02)
        end
        if IsDead(Ground_Vehicle.X_Battlestation_1) and IsReadyToRevive(Ground_Vehicle.X_Battlestation_1) and IsDead(Troop.X_BS_1_Driver_2) and IsReadyToRevive(Troop.X_BS_1_Driver_2) and IsDead(Troop.X_BS_1_Driver_3) and IsReadyToRevive(Troop.X_BS_1_Driver_3) and X_Battlestation_1Revived == 0 then
          X_Battlestation_1Revived = 1
          WaitFor(1)
          ReviveDeadUnit(Ground_Vehicle.X_Battlestation_1, X_Battlestation_1X, X_Battlestation_1Z, 180, 25)
          ReviveDeadUnit(Troop.X_BS_1_Driver_2, X_Battlestation_1X, X_Battlestation_1Z, 180, 25)
          ReviveDeadUnit(Troop.X_BS_1_Driver_3, X_Battlestation_1X, X_Battlestation_1Z, 180, 25)
          repeat
            EndFrame()
          until IsDead(Ground_Vehicle.X_Battlestation_1) == false and IsDead(Troop.X_BS_1_Driver_2) == false and IsDead(Troop.X_BS_1_Driver_3) == false
          PutUnitInVehicle(Troop.X_BS_1_Driver_2, Ground_Vehicle.X_Battlestation_1, 3)
          PutUnitInVehicle(Troop.X_BS_1_Driver_3, Ground_Vehicle.X_Battlestation_1, 4)
          SetUnitInvulnerable(Ground_Vehicle.X_Battlestation_1, false)
          StopAndGuard(Ground_Vehicle.X_Battlestation_1)
        end
        if IsDead(Ground_Vehicle.Xbattlestation01) and IsReadyToRevive(Ground_Vehicle.Xbattlestation01) and IsDead(Troop.Entity550038809) and IsReadyToRevive(Troop.Entity550038809) and IsDead(Troop.Entity550038810) and IsReadyToRevive(Troop.Entity550038810) and Xbattlestation01Revived == 0 then
          Xbattlestation01Revived = 1
          WaitFor(1)
          ReviveDeadUnit(Ground_Vehicle.Xbattlestation01, Xbattlestation01X, Xbattlestation01Z, 225, 25)
          ReviveDeadUnit(Troop.Entity550038809, Xbattlestation01X, Xbattlestation01Z, 225, 25)
          ReviveDeadUnit(Troop.Entity550038810, Xbattlestation01X, Xbattlestation01Z, 225, 25)
          repeat
            EndFrame()
          until IsDead(Ground_Vehicle.Xbattlestation01) == false and IsDead(Troop.Entity550038809) == false and IsDead(Troop.Entity550038810) == false
          PutUnitInVehicle(Troop.Entity550038809, Ground_Vehicle.Xbattlestation01, 3)
          PutUnitInVehicle(Troop.Entity550038810, Ground_Vehicle.Xbattlestation01, 4)
          SetUnitInvulnerable(Ground_Vehicle.Xbattlestation01, false)
        end
      end
      EndFrame()
    end
    EndFrame()
  end
end

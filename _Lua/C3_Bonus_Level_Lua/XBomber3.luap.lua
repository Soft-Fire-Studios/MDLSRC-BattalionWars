function XBomber3(owner)
  repeat
    EndFrame()
  until LevelState >= 4
  local GotTarget = 0
  repeat
    if IsDead(Air_Vehicle.XBomber3) and NumTimesBombersDead < TotalBombersToKill then
      if LevelState >= 4 then
        SetObjectiveData(Objective_Marker.XBomber3Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      if LevelState >= 4 then
        NumTimesBombersDead = NumTimesBombersDead + 1
      end
      DebugOut(NumTimesBombersDead, "Respawns out of", TotalBombersToKill)
      repeat
        if IsReadyToRevive(Air_Vehicle.XBomber3) then
          DebugOut("Aircraft Ready")
        end
        WaitFor(1)
      until IsReadyToRevive(Air_Vehicle.XBomber3)
      WaitFor(2)
      if IsInArea(GetPlayerUnit(), 510, -775, 650) then
        Teleport(Air_Vehicle.XBomber3, -1000, -400, 90)
      else
        Teleport(Air_Vehicle.XBomber3, 510, -775, 315)
      end
      EndFrame()
      ReviveDeadUnit(Air_Vehicle.XBomber3)
      DebugOut("Respawned Aircraft")
      EndFrame()
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XBomber3)
      GotTarget = 0
      if LevelState >= 4 then
        SetObjectiveData(Objective_Marker.XBomber3Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
    end
    if IsDead(Ground_Vehicle.SHeavyTank1) == false and GotTarget == 0 then
      AttackTarget(Air_Vehicle.XBomber3, Ground_Vehicle.SHeavyTank1)
      GotTarget = 1
    end
    if IsDead(Ground_Vehicle.SHeavyTank2) == false and GotTarget == 0 then
      AttackTarget(Air_Vehicle.XBomber3, Ground_Vehicle.SHeavyTank2)
      GotTarget = 2
    end
    if IsDead(Ground_Vehicle.SHeavyTank3) == false and GotTarget == 0 then
      AttackTarget(Air_Vehicle.XBomber3, Ground_Vehicle.SHeavyTank3)
      GotTarget = 3
    end
    if IsDead(Ground_Vehicle.SHeavyTank4) == false and GotTarget == 0 then
      AttackTarget(Air_Vehicle.XBomber3, Ground_Vehicle.SHeavyTank4)
      GotTarget = 4
    end
    if IsDead(Ground_Vehicle.SHeavyTank5) == false and GotTarget == 0 then
      AttackTarget(Air_Vehicle.XBomber3, Ground_Vehicle.SHeavyTank5)
      GotTarget = 5
    end
    if IsDead(Ground_Vehicle.SHeavyTank6) == false and GotTarget == 0 then
      AttackTarget(Air_Vehicle.XBomber3, Ground_Vehicle.SHeavyTank6)
      GotTarget = 6
    end
    if GotTarget > 0 then
      if GotTarget == 1 and IsDead(Ground_Vehicle.SHeavyTank1) then
        GotTarget = 0
      end
      if GotTarget == 2 and IsDead(Ground_Vehicle.SHeavyTank2) then
        GotTarget = 0
      end
      if GotTarget == 3 and IsDead(Ground_Vehicle.SHeavyTank3) then
        GotTarget = 0
      end
      if GotTarget == 4 and IsDead(Ground_Vehicle.SHeavyTank4) then
        GotTarget = 0
      end
      if GotTarget == 5 and IsDead(Ground_Vehicle.SHeavyTank5) then
        GotTarget = 0
      end
      if GotTarget == 6 and IsDead(Ground_Vehicle.SHeavyTank6) then
        GotTarget = 0
      end
    end
    EndFrame()
  until IsDead(Air_Vehicle.XBomber3) and NumTimesBombersDead == TotalBombersToKill
  Kill(Air_Vehicle.XBomber3)
  SetObjectiveData(Objective_Marker.XBomber3Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
end

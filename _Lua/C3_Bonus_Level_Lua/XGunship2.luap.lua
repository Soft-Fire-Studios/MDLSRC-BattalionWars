function XGunship2(owner)
  repeat
    EndFrame()
  until LevelState >= 4
  local GotTarget = 0
  repeat
    if IsDead(Air_Vehicle.XGunship2) and NumTimesGunshipsDead < TotalGunshipsToKill then
      if LevelState >= 4 then
        SetObjectiveData(Objective_Marker.XGunship2Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      if LevelState >= 4 then
        NumTimesGunshipsDead = NumTimesGunshipsDead + 1
      end
      DebugOut(NumTimesGunshipsDead, "Respawns out of", TotalGunshipsToKill)
      repeat
        if IsReadyToRevive(Air_Vehicle.XGunship2) then
          DebugOut("Aircraft Ready")
        end
        WaitFor(1)
      until IsReadyToRevive(Air_Vehicle.XGunship2)
      WaitFor(2)
      if IsInArea(GetPlayerUnit(), -742, -528, 650) then
        Teleport(Air_Vehicle.XGunship2, -600, 630, 135)
      else
        Teleport(Air_Vehicle.XGunship2, -742, -528, 45)
      end
      EndFrame()
      ReviveDeadUnit(Air_Vehicle.XGunship2)
      DebugOut("Respawned Aircraft")
      EndFrame()
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship2)
      GotTarget = 0
      if LevelState >= 4 then
        SetObjectiveData(Objective_Marker.XGunship2Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
    end
    if IsDead(Ground_Vehicle.SHeavyTank1) == false and GotTarget == 0 then
      AttackTarget(Air_Vehicle.XGunship2, Ground_Vehicle.SHeavyTank1)
      GotTarget = 1
    end
    if IsDead(Ground_Vehicle.SHeavyTank2) == false and GotTarget == 0 then
      AttackTarget(Air_Vehicle.XGunship2, Ground_Vehicle.SHeavyTank2)
      GotTarget = 2
    end
    if IsDead(Ground_Vehicle.SHeavyTank3) == false and GotTarget == 0 then
      AttackTarget(Air_Vehicle.XGunship2, Ground_Vehicle.SHeavyTank3)
      GotTarget = 3
    end
    if IsDead(Ground_Vehicle.SHeavyTank4) == false and GotTarget == 0 then
      AttackTarget(Air_Vehicle.XGunship2, Ground_Vehicle.SHeavyTank4)
      GotTarget = 4
    end
    if IsDead(Ground_Vehicle.SHeavyTank5) == false and GotTarget == 0 then
      AttackTarget(Air_Vehicle.XGunship2, Ground_Vehicle.SHeavyTank5)
      GotTarget = 5
    end
    if IsDead(Ground_Vehicle.SHeavyTank6) == false and GotTarget == 0 then
      AttackTarget(Air_Vehicle.XGunship2, Ground_Vehicle.SHeavyTank6)
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
  until IsDead(Air_Vehicle.XGunship2) and NumTimesGunshipsDead == TotalGunshipsToKill
  Kill(Air_Vehicle.XGunship2)
  SetObjectiveData(Objective_Marker.XGunship2Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
end

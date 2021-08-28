function Purge_SolarForcefield01(owner)
  local Forcefield01Dead = 0
  local Forcefield02Dead = 0
  local Forcefield03Dead = 0
  local Forcefield04Dead = 0
  local SolarGen1Dead = false
  local SolarGen2Dead = false
  repeat
    EndFrame()
  until cutscene01 >= 1
  Despawn(Ground_Vehicle.SolarHeavyTank02, true)
  Despawn(Ground_Vehicle.SolarHeavyTank03, true)
  Despawn(Ground_Vehicle.Stank10, true)
  Despawn(Ground_Vehicle.Stank12, true)
  Despawn(Ground_Vehicle.Stank01, false)
  Despawn(Ground_Vehicle.Stank11, false)
  SetUnitInvulnerable(Building.SolarForcefieldEffect01, true)
  SetUnitInvulnerable(Building.SolarForcefieldEffect02, true)
  while true do
    if IsDead(Building.Forcefield01) and Forcefield01Dead == 0 then
      Forcefield01Dead = 1
      SetObjectiveData(Objective_Marker.ForcefieldMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Building.Forcefield02) and Forcefield02Dead == 0 then
      Forcefield02Dead = 1
      SetObjectiveData(Objective_Marker.ForcefieldMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Building.Forcefield03) and Forcefield03Dead == 0 then
      Forcefield03Dead = 1
      SetObjectiveData(Objective_Marker.ForcefieldMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Building.Forcefield04) and Forcefield04Dead == 0 then
      Forcefield04Dead = 1
      SetObjectiveData(Objective_Marker.ForcefieldMarker04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Building.Forcefield01) and IsDead(Building.Forcefield02) then
      break
    end
    if IsDead(Building.Forcefield03) and IsDead(Building.Forcefield04) then
      break
    end
    EndFrame()
  end
  repeat
    WaitFor(0.1)
    if SolarGen1Dead == false and IsDead(Building.Forcefield01) == true and IsDead(Building.Forcefield02) == true then
      SetUnitInvulnerable(Building.SolarForcefieldEffect01, false)
      Kill(Building.SolarForcefieldEffect01)
      WaitFor(1)
      Kill(Building.Forcefield01)
      Kill(Building.Forcefield02)
      SetDamageZoneDamage(Damage_Zone.DeathZone01, 0)
      SolarGen1Dead = true
      if ForcefieldDown == 0 then
        ForcefieldDown = 1
        SetObjectiveData(Objective.SolarForcefieldObjective, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective_Marker.ForcefieldMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.ForcefieldMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.ForcefieldMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.ForcefieldMarker04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Saw03, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Saw03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Saw02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Saw01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetHealthPercent(Building.Saw01, 100)
        SetHealthPercent(Building.Saw02, 100)
        SetHealthPercent(Building.Saw03, 100)
        WaitFor(0.1)
        Spawn(Ground_Vehicle.SolarHeavyTank02)
        Spawn(Ground_Vehicle.SolarHeavyTank03)
        Spawn(Ground_Vehicle.Stank10)
        Spawn(Ground_Vehicle.Stank12)
      end
    end
    EndFrame()
    if SolarGen2Dead == false and IsDead(Building.Forcefield03) == true and IsDead(Building.Forcefield04) == true then
      SetUnitInvulnerable(Building.SolarForcefieldEffect02, false)
      Kill(Building.SolarForcefieldEffect02)
      WaitFor(1)
      Kill(Building.Forcefield03)
      Kill(Building.Forcefield04)
      SetDamageZoneDamage(Damage_Zone.DeathZone02, 0)
      SolarGen2Dead = true
      if ForcefieldDown == 0 then
        ForcefieldDown = 1
        SetObjectiveData(Objective.SolarForcefieldObjective, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective_Marker.ForcefieldMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.ForcefieldMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.ForcefieldMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.ForcefieldMarker04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Saw03, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Saw03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Saw02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Saw01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetHealthPercent(Building.Saw01, 100)
        SetHealthPercent(Building.Saw02, 100)
        SetHealthPercent(Building.Saw03, 100)
        WaitFor(0.1)
        Spawn(Ground_Vehicle.SolarHeavyTank02)
        Spawn(Ground_Vehicle.SolarHeavyTank03)
        Spawn(Ground_Vehicle.Stank10)
        Spawn(Ground_Vehicle.Stank12)
      end
    end
    EndFrame()
  until SolarGen1Dead == true and SolarGen2Dead == true
end

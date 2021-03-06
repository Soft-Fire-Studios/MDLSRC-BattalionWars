function Objective01SolarForcefield(owner)
  local solarforcefield = 0
  local forcefield01 = 0
  local forcefield02 = 0
  local forcefield03 = 0
  local forcefield = 0
  WaitFor(0.2)
  SetUnitInvulnerable(Building.SolarForcefieldEffect, true)
  SetUnitInvulnerable(Building.S01B01, true)
  SetUnitInvulnerable(Building.S01B02, true)
  SetUnitInvulnerable(Building.S01B03, true)
  SetUnitInvulnerable(Building.S01B04, true)
  SetUnitInvulnerable(Building.S01B05, true)
  SetUnitInvulnerable(Building.S01B06, true)
  SetUnitInvulnerable(Building.S02B01, true)
  SetUnitInvulnerable(Building.S02B02, true)
  SetUnitInvulnerable(Building.S02B03, true)
  SetUnitInvulnerable(Building.S02B04, true)
  SetUnitInvulnerable(Building.S02B05, true)
  SetUnitInvulnerable(Building.S02B06, true)
  SetUnitInvulnerable(Building.S03B01, true)
  SetUnitInvulnerable(Building.S03B02, true)
  SetUnitInvulnerable(Building.S03B03, true)
  SetUnitInvulnerable(Building.S03B04, true)
  SetUnitInvulnerable(Building.S03B05, true)
  SetUnitInvulnerable(Building.S03B06, true)
  SetUnitInvulnerable(Building.BigFuelStation01, true)
  SetUnitInvulnerable(Building.BigFuelStation02, true)
  SetUnitInvulnerable(Building.BigFuelStation03, true)
  SetActive(Building.BigFuelStation01, constant.INACTIVE)
  SetActive(Building.BigFuelStation02, constant.INACTIVE)
  SetActive(Building.BigFuelStation03, constant.INACTIVE)
  SetUnitInvulnerable(Building.POWShell01, true)
  SetActive(Building.POWShell01, constant.INACTIVE)
  SetUnitInvulnerable(Destroyable_Object.POWFence01, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence02, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence03, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence04, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence05, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence06, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence07, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence08, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence09, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence10, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence11, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence12, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence13, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence14, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence15, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence16, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence17, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence18, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence19, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence20, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence21, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence22, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence23, true)
  SetUnitInvulnerable(Destroyable_Object.POWFence24, true)
  SetActive(Building.HQRPGTower01, constant.INACTIVE)
  SetActive(Building.HQRPGTower02, constant.INACTIVE)
  SetActive(Morphing_Building.SolarGunTurret01, constant.INACTIVE)
  SetActive(Morphing_Building.SolarGunTurret02, constant.INACTIVE)
  SetActive(Morphing_Building.SolarGunTurret03, constant.INACTIVE)
  SetActive(Morphing_Building.SolarGunTurret04, constant.INACTIVE)
  SetActive(Building.HQAATower01, constant.INACTIVE)
  SetActive(Building.HQAATower02, constant.INACTIVE)
  SetActive(Building.SolarFuelStationAATower01, constant.INACTIVE)
  SetActive(Building.SolarFuelStationRPGTower01, constant.INACTIVE)
  SetActive(Building.SolarFuelStationRPGTower02, constant.INACTIVE)
  SetActive(Building.SolarFuelStationRPGTower03, constant.INACTIVE)
  SetActive(Building.SolarFuelStationMGNest03, constant.INACTIVE)
  SetActive(Morphing_Building.SolarHQ01, constant.INACTIVE)
  SetActive(Building.SolarAntiAirTower01, constant.INACTIVE)
  SetActive(Building.SolarAntiAirTower04, constant.INACTIVE)
  SetUnitInvulnerable(Building.HQRPGTower01, true)
  SetUnitInvulnerable(Building.HQRPGTower02, true)
  SetUnitInvulnerable(Morphing_Building.SolarGunTurret01, true)
  SetUnitInvulnerable(Morphing_Building.SolarGunTurret02, true)
  SetUnitInvulnerable(Morphing_Building.SolarGunTurret03, true)
  SetUnitInvulnerable(Morphing_Building.SolarGunTurret04, true)
  SetUnitInvulnerable(Building.HQAATower01, true)
  SetUnitInvulnerable(Building.HQAATower02, true)
  SetUnitInvulnerable(Building.SolarFuelStationAATower01, true)
  SetUnitInvulnerable(Building.SolarFuelStationRPGTower01, true)
  SetUnitInvulnerable(Building.SolarFuelStationRPGTower02, true)
  SetUnitInvulnerable(Building.SolarFuelStationRPGTower03, true)
  SetUnitInvulnerable(Building.SolarFuelStationMGNest03, true)
  SetUnitInvulnerable(Building.SolarAntiAirTower01, true)
  SetUnitInvulnerable(Building.SolarAntiAirTower04, true)
  SetUnitInvulnerable(Building.AmmoDump01, true)
  SetUnitInvulnerable(Building.AmmoDump02, true)
  SetUnitInvulnerable(Building.AmmoDump03, true)
  SetUnitInvulnerable(Building.AmmoDump04, true)
  SetUnitInvulnerable(Building.AmmoDump05, true)
  SetUnitInvulnerable(Building.AmmoDump06, true)
  SetActive(Building.AmmoDump01, constant.INACTIVE)
  SetActive(Building.AmmoDump02, constant.INACTIVE)
  SetActive(Building.AmmoDump03, constant.INACTIVE)
  SetActive(Building.AmmoDump04, constant.INACTIVE)
  SetActive(Building.AmmoDump05, constant.INACTIVE)
  SetActive(Building.AmmoDump06, constant.INACTIVE)
  while missionend == 0 do
    if forcefield01 == 0 and IsDead(Building.SolarForcefield01) then
      forcefield = forcefield + 1
      SetObjectiveData(Objective_Marker.SolarForcefieldObjective01Marker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.DefendSolarForcefieldObjective01Marker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      forcefield01 = 1
    end
    if forcefield02 == 0 and IsDead(Building.SolarForcefield02) then
      forcefield = forcefield + 1
      SetObjectiveData(Objective_Marker.SolarForcefieldObjective01Marker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.DefendSolarForcefieldObjective01Marker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      forcefield02 = 1
    end
    if forcefield03 == 0 and forcefield == 1 then
      PhoneMessage(59, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      PhoneMessage(60, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
      SetObjectiveData(Objective.AttackSolarForcefieldObjective0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AttackSolarForcefieldObjective01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.DefendSolarForcefieldObjective02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DefendSolarForcefieldObjective01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      forcefield03 = 1
    end
    if forcefield == 2 then
      SetObjectiveData(Objective.AttackSolarForcefieldObjective0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AttackSolarForcefieldObjective01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AttackSolarForcefieldObjective02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.AttackSolarForcefieldObjective02, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.DefendSolarForcefieldObjective02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DefendSolarForcefieldObjective01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DefendSolarForcefieldObjective0, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.DefendSolarForcefieldObjective0, constant.OBJECTIVE_DATA_STATE, 1)
      SetUnitInvulnerable(Building.SolarForcefieldEffect, false)
      Kill(Building.SolarForcefieldEffect)
      solarforcefield = 1
      solarforcefieldpow = 1
      DebugOut("Forcefield has been destroyed")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetObjectivesResult(true, false, false)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetObjectivesResult(false, true, true)
      end
    else
      EndFrame()
      while missionend == 0 do
        if solarforcefield == 1 then
          ClearMessageQueue(constant.PLAYER_ONE)
          ClearMessageQueue(constant.PLAYER_TWO)
          PhoneMessageWithObjective(19, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
          PhoneMessageWithObjective(32, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
          PhoneMessageWithObjective(8, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
          PhoneMessageWithObjective(9, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO, false, constant.NEW_SECONDARY_OBJECTIVE)
          SetObjectiveData(Objective_Marker.AttackSolarFuelStationObjectiveMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.AttackSolarFuelStationObjectiveMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.AttackSolarFuelStationObjectiveMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.DefendSolarFuelStationObjectiveMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.DefendSolarFuelStationObjectiveMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.DefendSolarFuelStationObjectiveMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.Player1POWsMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.Player2POWsMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective.AttackSolarFuelStationObjective0, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective.DefendSolarFuelStationObjective03, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective.Player1POWs, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective.Player2POWs, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.LegionSpawnZoneMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          SetObjectiveData(Objective_Marker.SolarSpawnZoneMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          SetObjectiveData(Objective_Marker.LegionSpawnZone01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          SetObjectiveData(Objective_Marker.SolarSpawnZone01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          SetObjectiveData(Objective_Marker.LegionSpawnZoneMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.SolarSpawnZoneMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.LegionSpawnZone02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.SolarSpawnZone02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetUnitInvulnerable(Building.S01B01, false)
          SetUnitInvulnerable(Building.S01B02, false)
          SetUnitInvulnerable(Building.S01B03, false)
          SetUnitInvulnerable(Building.S01B04, false)
          SetUnitInvulnerable(Building.S01B05, false)
          SetUnitInvulnerable(Building.S01B06, false)
          SetUnitInvulnerable(Building.S02B01, false)
          SetUnitInvulnerable(Building.S02B02, false)
          SetUnitInvulnerable(Building.S02B03, false)
          SetUnitInvulnerable(Building.S02B04, false)
          SetUnitInvulnerable(Building.S02B05, false)
          SetUnitInvulnerable(Building.S02B06, false)
          SetUnitInvulnerable(Building.S03B01, false)
          SetUnitInvulnerable(Building.S03B02, false)
          SetUnitInvulnerable(Building.S03B03, false)
          SetUnitInvulnerable(Building.S03B04, false)
          SetUnitInvulnerable(Building.S03B05, false)
          SetUnitInvulnerable(Building.S03B06, false)
          SetUnitInvulnerable(Building.BigFuelStation01, false)
          SetUnitInvulnerable(Building.BigFuelStation02, false)
          SetUnitInvulnerable(Building.BigFuelStation03, false)
          SetActive(Building.BigFuelStation01, constant.ACTIVE)
          SetActive(Building.BigFuelStation02, constant.ACTIVE)
          SetActive(Building.BigFuelStation03, constant.ACTIVE)
          WaitFor(0.2)
          SetUnitInvulnerable(Building.POWShell01, false)
          SetActive(Building.POWShell01, constant.ACTIVE)
          SetUnitInvulnerable(Destroyable_Object.POWFence01, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence02, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence03, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence04, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence05, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence06, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence07, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence08, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence09, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence10, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence11, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence12, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence13, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence14, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence15, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence16, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence17, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence18, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence19, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence20, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence21, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence22, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence23, false)
          SetUnitInvulnerable(Destroyable_Object.POWFence24, false)
          SetActive(Building.HQRPGTower01, constant.ACTIVE)
          SetActive(Building.HQRPGTower02, constant.ACTIVE)
          SetActive(Morphing_Building.SolarGunTurret01, constant.ACTIVE)
          SetActive(Morphing_Building.SolarGunTurret02, constant.ACTIVE)
          SetActive(Morphing_Building.SolarGunTurret03, constant.ACTIVE)
          SetActive(Morphing_Building.SolarGunTurret04, constant.ACTIVE)
          SetActive(Building.HQAATower01, constant.ACTIVE)
          SetActive(Building.HQAATower02, constant.ACTIVE)
          SetActive(Building.SolarFuelStationAATower01, constant.ACTIVE)
          SetActive(Building.SolarFuelStationRPGTower01, constant.ACTIVE)
          SetActive(Building.SolarFuelStationRPGTower02, constant.ACTIVE)
          SetActive(Building.SolarFuelStationRPGTower03, constant.ACTIVE)
          SetActive(Building.SolarFuelStationMGNest03, constant.ACTIVE)
          SetActive(Morphing_Building.SolarHQ01, constant.ACTIVE)
          SetUnitInvulnerable(Building.AmmoDump01, false)
          SetUnitInvulnerable(Building.AmmoDump02, false)
          SetUnitInvulnerable(Building.AmmoDump03, false)
          SetUnitInvulnerable(Building.AmmoDump04, false)
          SetUnitInvulnerable(Building.AmmoDump05, false)
          SetUnitInvulnerable(Building.AmmoDump06, false)
          SetActive(Building.AmmoDump01, constant.ACTIVE)
          SetActive(Building.AmmoDump02, constant.ACTIVE)
          SetActive(Building.AmmoDump03, constant.ACTIVE)
          SetActive(Building.AmmoDump04, constant.ACTIVE)
          SetActive(Building.AmmoDump05, constant.ACTIVE)
          SetActive(Building.AmmoDump06, constant.ACTIVE)
          SetActive(Building.SolarAntiAirTower01, constant.ACTIVE)
          SetActive(Building.SolarAntiAirTower04, constant.ACTIVE)
          SetUnitInvulnerable(Building.HQRPGTower01, false)
          SetUnitInvulnerable(Building.HQRPGTower02, false)
          SetUnitInvulnerable(Morphing_Building.SolarGunTurret01, false)
          SetUnitInvulnerable(Morphing_Building.SolarGunTurret02, false)
          SetUnitInvulnerable(Morphing_Building.SolarGunTurret03, false)
          SetUnitInvulnerable(Morphing_Building.SolarGunTurret04, false)
          SetUnitInvulnerable(Building.HQAATower01, false)
          SetUnitInvulnerable(Building.HQAATower02, false)
          SetUnitInvulnerable(Building.SolarFuelStationAATower01, false)
          SetUnitInvulnerable(Building.SolarFuelStationRPGTower01, false)
          SetUnitInvulnerable(Building.SolarFuelStationRPGTower02, false)
          SetUnitInvulnerable(Building.SolarFuelStationRPGTower03, false)
          SetUnitInvulnerable(Building.SolarFuelStationMGNest03, false)
          SetUnitInvulnerable(Building.SolarAntiAirTower01, false)
          SetUnitInvulnerable(Building.SolarAntiAirTower04, false)
          CurrentPlayer1SpawnX = -91
          CurrentPlayer1SpawnZ = 485
          CurrentPlayer1Dir = 90
          CurrentPlayer2SpawnX = -20
          CurrentPlayer2SpawnZ = -27
          CurrentPlayer2Dir = 340
          DebugOut("*SolarForcefield01* - The respawn points, and objectives have been set for Objective 2 - Fuel Stations")
          solarforcefield = 2
          objectivezone01 = 1
          break
        end
        EndFrame()
      end
    end
  end
end

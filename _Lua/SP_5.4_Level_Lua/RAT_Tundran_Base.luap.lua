function RAT_Tundran_Base(owner)
  local timer = 0
  local RadarArrayWarning = 0
  Despawn(Ground_Vehicle.X_Battlestation_1, true)
  Despawn(Ground_Vehicle.Xtank02, true)
  Despawn(Air_Vehicle.Tgunship01)
  Despawn(Air_Vehicle.Tgunship02)
  Despawn(Air_Vehicle.Tgunship03)
  Despawn(Air_Vehicle.Tgunship04)
  Kill(Ground_Vehicle.Xtank05, true)
  Kill(Air_Vehicle.Xgunship03, true)
  while cutscene == 0 do
    EndFrame()
  end
  ResetHealthAndScoreTotals()
  wave = 1
  FollowWaypoint(Ground_Vehicle.X_Heavy_Tank_1, Waypoint.Entity260014739, 0, 0, constant.ORDER_NORMAL)
  FollowWaypoint(Ground_Vehicle.X_Heavy_Tank_3, Waypoint.Entity550038856, 0, 0, constant.ORDER_NORMAL)
  DebugOut("Sending in first wave")
  WaitFor(7)
  FollowWaypoint(Ground_Vehicle.Xtank04, Waypoint.Entity550038858, 0, 0, constant.ORDER_NORMAL)
  FollowWaypoint(Ground_Vehicle.Xtank06, Waypoint.Entity550038852, 0, 0, constant.ORDER_NORMAL)
  AttackTarget(Air_Vehicle.Xgunship02, Building.TundranRadarStation, constant.ORDER_NORMAL)
  WaitFor(5)
  AttackTarget(Air_Vehicle.Xgunship04, Building.TundranRadarStation, constant.ORDER_NORMAL)
  WaitFor(5)
  AttackTarget(Air_Vehicle.Xgunship05, Building.TundranRadarStation, constant.ORDER_NORMAL)
  WaitFor(1)
  DebugOut("Wave 3 destroyed")
  wave = 5
  while missionend == 0 do
    if GetHealthPercent(Building.TundranRadarStation) <= 60 and RadarArrayWarning == 0 then
      RadarArrayWarning = 1
      PhoneMessage(14, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
    end
    if IsDead(Building.TundranRadarStation) and TundranRadarStationDead == 0 then
      TundranRadarStationDead = 1
      GunshipBattalionOnWay = 0
      PhoneMessage(12, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      SetObjectiveData(Objective.TundranRadar, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.TundranRadar, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TundranRadarFailed, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.TundranRadarFailed, constant.OBJECTIVE_DATA_VISIBLE, 1)
      break
    end
    if X_Heavy_Tank_1DiedOnce == 1 and X_Heavy_Tank_3DiedOnce == 1 and Xtank04DiedOnce == 1 and Xtank06DiedOnce == 1 and Xgunship02DiedOnce == 1 and Xgunship04DiedOnce == 1 and Xgunship05DiedOnce == 1 and TundranRadarStationCompleted == 0 and CutsceneMidBattlestationStart == 0 and TundranRadarStationDead == 0 then
      TundranRadarStationCompleted = 1
      GunshipBattalionOnWay = 1
      PhoneMessageWithObjective(17, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
      SetObjectiveData(Objective.TundranRadar, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.TundranRadar, constant.OBJECTIVE_DATA_VISIBLE, 1)
      break
    end
    if X_Heavy_Tank_1DiedOnce == 1 and X_Heavy_Tank_3DiedOnce == 1 and Xtank04DiedOnce == 1 and Xtank06DiedOnce == 1 and Xgunship02DiedOnce == 1 and Xgunship04DiedOnce == 1 and Xgunship05DiedOnce == 1 and TundranRadarStationCompleted == 0 and CutsceneMidBattlestationStart >= 2 and TundranRadarStationDead == 0 then
      GunshipBattalionOnWay = 2
      TundranGunships01Launched = 1
      Spawn(Air_Vehicle.Tgunship01)
      Spawn(Air_Vehicle.Tgunship02)
      Spawn(Air_Vehicle.Tgunship03)
      FollowWaypoint(Air_Vehicle.Tgunship01, Waypoint.Tgunship01, 0, 0, constant.ORDER_FORCED)
      FollowWaypoint(Air_Vehicle.Tgunship02, Waypoint.Tgunship02, 0, 0, constant.ORDER_FORCED)
      FollowWaypoint(Air_Vehicle.Tgunship03, Waypoint.Tgunship03, 0, 0, constant.ORDER_FORCED)
      PhoneMessageWithObjective(13, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
      SetObjectiveData(Objective.TundranRadar, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.TundranRadar, constant.OBJECTIVE_DATA_VISIBLE, 1)
      WaitFor(5)
      SetActive(Air_Vehicle.Tgunship01, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Air_Vehicle.Tgunship02, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Air_Vehicle.Tgunship03, constant.ACTIVE, constant.ADJUST_WEAPON)
      if not IsDead(Ground_Vehicle.Xtank02) then
        FollowUnit(Air_Vehicle.Tgunship01, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Air_Vehicle.Tgunship02, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Air_Vehicle.Tgunship03, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if not IsDead(Ground_Vehicle.X_Battlestation_1) then
        FollowUnit(Air_Vehicle.Tgunship01, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Air_Vehicle.Tgunship02, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
        FollowUnit(Air_Vehicle.Tgunship03, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
      if IsDead(Ground_Vehicle.X_Battlestation_1) and IsDead(Ground_Vehicle.Xtank02) then
        FollowUnit(Air_Vehicle.Tgunship01, GetPlayerUnit(), 20, 0, constant.ORDER_NORMAL)
        FollowUnit(Air_Vehicle.Tgunship02, GetPlayerUnit(), 20, 0, constant.ORDER_NORMAL)
        FollowUnit(Air_Vehicle.Tgunship03, GetPlayerUnit(), 20, 0, constant.ORDER_NORMAL)
        do break end
        EndFrame()
      end
    end
  end
end

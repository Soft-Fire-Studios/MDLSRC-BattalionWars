function Purge_PillarBoxObjective01(owner)
  local pillbox1 = 1
  local pillbox2 = 1
  local pillbox3 = 1
  local PillBoxCount = 0
  local pillboxobjectiveshown00 = 0
  local pillboxobjectiveshown01 = 0
  local flyover01 = 0
  local flyover02 = 0
  local flyover03 = 0
  local flyover04 = 0
  local flyover05 = 0
  local BombedGates = 0
  Despawn(Ground_Vehicle.SolarLightTank01, true)
  Despawn(Ground_Vehicle.SolarLightTank02, true)
  Despawn(Ground_Vehicle.Entity550037934, true)
  Despawn(Ground_Vehicle.Entity550037940, true)
  Despawn(Air_Vehicle.SolarGunship03, true)
  Despawn(Air_Vehicle.SolarGunship04, true)
  Despawn(Troop.Schain03, true)
  Despawn(Troop.Schain04, true)
  Despawn(Troop.Schain09, true)
  Despawn(Troop.Schain10, true)
  Despawn(Troop.Schain05, true)
  Despawn(Troop.Schain06, true)
  Despawn(Troop.Schain07, true)
  Despawn(Troop.Schain08, true)
  Despawn(Troop.Sgrunt19, true)
  Despawn(Troop.Sgrunt20, true)
  Despawn(Troop.Sgrunt21, true)
  Despawn(Troop.Sgrunt22, true)
  Despawn(Troop.Sgrunt23, true)
  Despawn(Troop.Sgrunt24, true)
  Despawn(Troop.Sgrunt25, true)
  Despawn(Troop.Sgrunt26, true)
  Despawn(Troop.Sgrunt27, true)
  Despawn(Troop.Sgrunt28, true)
  Despawn(Troop.Sgrunt29, true)
  Despawn(Troop.Sgrunt30, true)
  Despawn(Troop.Sgrunt31, true)
  Despawn(Troop.Sgrunt32, true)
  Despawn(Troop.SolarGruntPatrol01, true)
  Despawn(Troop.SolarGruntPatrol02, true)
  Despawn(Troop.SolarGruntPatrol03, true)
  Despawn(Troop.SolarGruntPatrol04, true)
  Despawn(Troop.SolarGruntPatrol05, true)
  Despawn(Building.SolarMGNest06, true)
  repeat
    EndFrame()
  until 1 <= cutscene01
  while missionend == 0 do
    if pillbox1 == 1 and IsDead(Building.Pillbox01) then
      SetObjectiveData(Objective_Marker.Pillbox01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      DebugOut("The 1st Pillbox is dead. Its objective has dissapeared")
      pillbox1 = 0
      PillBoxCount = PillBoxCount + 1
    end
    if pillbox2 == 1 and IsDead(Building.Pillbox02) then
      SetObjectiveData(Objective_Marker.Pillbox02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      DebugOut("The 2nd Pillbox is dead. Its objective has dissapeared")
      pillbox2 = 0
      PillBoxCount = PillBoxCount + 1
    end
    if PillBoxCount == 1 and pillboxobjectiveshown00 == 0 then
      pillboxobjectiveshown00 = 1
      SetObjectiveData(Objective.PillboxTwoLeft, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PillboxOneLeft, constant.OBJECTIVE_DATA_VISIBLE, 1)
      PhoneMessage(10, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      DebugOut("One of the Pillboxes have been destroyed")
    end
    if PillBoxCount == 2 and pillboxobjectiveshown01 == 0 then
      pillboxobjectiveshown01 = 1
      SetObjectiveData(Objective.PillboxOneLeft, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PillboxNoneLeft, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.PillboxNoneLeft, constant.OBJECTIVE_DATA_STATE, 1)
    end
    if IsDead(Ground_Vehicle.Stank04) and IsDead(Ground_Vehicle.Stank05) and IsDead(Ground_Vehicle.Stank06) and IsDead(Ground_Vehicle.Stank07) and IsDead(Ground_Vehicle.Stank08) and IsDead(Ground_Vehicle.Stank09) and IsDead(Troop.Sgrunt16) and IsDead(Troop.Sgrunt17) and IsDead(Troop.Sbazooka01) and IsDead(Troop.Sbazooka02) and IsDead(Troop.SolarBazooka01) and IsDead(Troop.SolarHose03) and IsDead(Troop.SolarBazooka02) and IsDead(Troop.SolarGrunt04) and IsDead(Troop.SolarGrunt06) and IsDead(Troop.SolarHose02) and IsDead(Air_Vehicle.Sgunship01) and IsDead(Air_Vehicle.Sgunship02) and IsDead(Air_Vehicle.Sgunship03) and IsDead(Air_Vehicle.Sgunship04) and pillboxobjectiveshown02 == 0 and tankSent == 1 then
      pillboxobjectiveshown02 = 1
      BombersSent = 2
      PillboxNoLongerNeedsToBeDefended = 1
      ClearMessageQueue()
      PhoneMessageWithObjective(76, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
      SetObjectiveData(Objective.PillboxTwoLeft, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.PillboxOneLeft, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.Pillbox01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Pillbox02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      if cutscenebombersstart == 0 then
        cutscenebombersstart = 1
        repeat
          EndFrame()
        until 1 <= cutscenebombersend
        do break end
        do break end
        EndFrame()
      end
    end
  end
end

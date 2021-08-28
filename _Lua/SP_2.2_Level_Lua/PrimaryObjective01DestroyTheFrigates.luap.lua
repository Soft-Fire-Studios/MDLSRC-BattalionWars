function PrimaryObjective01DestroyTheFrigates(owner)
  local frigate01 = 0
  local frigate02 = 0
  local frigateobjective01 = 0
  local frigateobjective02 = 0
  local frigates = 0
  SetUnitInvulnerable(Building.TundranGenerator01, true)
  SetUnitInvulnerable(Building.TundranGenerator02, true)
  SetUnitInvulnerable(Building.TundranGenerator03, true)
  SetUnitInvulnerable(Building.TundranGenerator04, true)
  SetActive(Building.TundranGenerator01, constant.INACTIVE)
  SetActive(Building.TundranGenerator02, constant.INACTIVE)
  SetActive(Building.TundranGenerator03, constant.INACTIVE)
  SetActive(Building.TundranGenerator04, constant.INACTIVE)
  SetActive(Building.TundranSuperGunTower01, constant.INACTIVE)
  SetActive(Building.TundranAmmoDump01, constant.INACTIVE)
  SetActive(Building.Entity270013776, constant.INACTIVE)
  SetActive(Building.Entity270013775, constant.INACTIVE)
  SetActive(Building.Entity270013777, constant.INACTIVE)
  SetActive(Building.Entity270013778, constant.INACTIVE)
  SetActive(Building.Entity270013779, constant.INACTIVE)
  SetActive(Building.Entity270013780, constant.INACTIVE)
  SetActive(Building.Entity270013078, constant.INACTIVE)
  SetActive(Building.Entity270013077, constant.INACTIVE)
  SetActive(Air_Vehicle.WFGunship01, constant.INACTIVE)
  SetActive(Air_Vehicle.WFGunship02, constant.INACTIVE)
  while missionend == 0 do
    if frigate01 == 0 and IsDead(Water_Vehicle.TFrigate01) then
      SetObjectiveData(Objective_Marker.BridgeCrossing01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      frigates = frigates + 1
      frigate01 = 1
      DebugOut("*PrimaryObjective01DestroyTheFrigates* - 1. Frigate01 has been destroyed")
    end
    EndFrame()
    if frigate02 == 0 and IsDead(Water_Vehicle.TFrigate02) then
      SetObjectiveData(Objective_Marker.BridgeCrossing02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      frigates = frigates + 1
      frigate02 = 1
      DebugOut("*PrimaryObjective01DestroyTheFrigates* - 2. Frigate02 has been destroyed")
    end
    EndFrame()
    if frigates == 1 and frigateobjective01 == 0 then
      SetObjectiveData(Objective.DestroyAerialThreat, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyAerialThreat01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      frigateobjective01 = 1
      DebugOut("*PrimaryObjective01DestroyTheFrigates* - 3. A Frigate has been destroyed. 1 more to go")
    end
    EndFrame()
    if frigates == 2 and frigateobjective02 == 0 then
      FreezePlayer(0)
      SetObjectiveData(Objective.DestroyAerialThreat, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyAerialThreat01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyAerialThreat02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.DestroyAerialThreat02, constant.OBJECTIVE_DATA_STATE, 1)
      Objective01 = 1
      frigateobjective02 = 1
      DebugOut("*PrimaryObjective01DestroyTheFrigates* - 4. The Frigates have been destroyed. Objective Complete")
      break
    end
    EndFrame()
  end
end

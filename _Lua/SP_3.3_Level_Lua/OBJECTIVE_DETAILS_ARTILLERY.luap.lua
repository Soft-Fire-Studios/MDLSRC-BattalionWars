function OBJECTIVE_DETAILS_ARTILLERY(owner)
  local artillery1dead = 0
  local artillery2dead = 0
  local artillery3dead = 0
  local artillery4dead = 0
  local artillery5dead = 0
  local artillery6dead = 0
  local numartillerydead = 0
  local ArtilleryObjective1 = 0
  local ArtilleryObjective2 = 0
  local ArtilleryObjective3 = 0
  local ArtilleryObjective4 = 0
  local ArtilleryObjective5 = 0
  local ArtilleryObjective6 = 0
  repeat
    EndFrame()
  until AIControlledGruntsBegun == true
  SetObjectiveData(Objective_Marker.Artillery, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Artillery0, constant.OBJECTIVE_DATA_VISIBLE, 1)
  repeat
    if ArtilleryOrdered == true and ArtilleryDead == false then
      if artillery1dead == 0 and IsDead(Ground_Vehicle.SEartillery1) then
        numartillerydead = numartillerydead + 1
        artillery1dead = 1
      end
      if artillery2dead == 0 and IsDead(Ground_Vehicle.SEartillery2) then
        numartillerydead = numartillerydead + 1
        artillery2dead = 1
      end
      if artillery3dead == 0 and IsDead(Ground_Vehicle.SEartillery3) then
        numartillerydead = numartillerydead + 1
        artillery3dead = 1
      end
      if artillery4dead == 0 and IsDead(Ground_Vehicle.SEartillery4) then
        numartillerydead = numartillerydead + 1
        artillery4dead = 1
      end
      if artillery5dead == 0 and IsDead(Ground_Vehicle.SEartillery5) then
        numartillerydead = numartillerydead + 1
        artillery5dead = 1
      end
      if artillery6dead == 0 and IsDead(Ground_Vehicle.SEartillery6) then
        numartillerydead = numartillerydead + 1
        artillery6dead = 1
      end
      if numartillerydead == 1 and ArtilleryObjective1 == 0 then
        SetObjectiveData(Objective.Artillery0, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery0, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery1, constant.OBJECTIVE_DATA_VISIBLE, 1)
        ArtilleryObjective1 = 1
      end
      if numartillerydead == 2 and ArtilleryObjective2 == 0 then
        SetObjectiveData(Objective.Artillery1, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery0, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery1, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery0, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery2, constant.OBJECTIVE_DATA_VISIBLE, 1)
        ArtilleryObjective2 = 1
      end
      if numartillerydead == 3 and ArtilleryObjective3 == 0 then
        SetObjectiveData(Objective.Artillery2, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery1, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery0, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery2, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery1, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery0, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery3, constant.OBJECTIVE_DATA_VISIBLE, 1)
        ArtilleryObjective3 = 1
      end
      if numartillerydead == 4 and ArtilleryObjective4 == 0 then
        SetObjectiveData(Objective.Artillery3, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery2, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery1, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery0, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery3, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery2, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery1, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery0, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery4, constant.OBJECTIVE_DATA_VISIBLE, 1)
        ArtilleryObjective4 = 1
      end
      if numartillerydead == 5 and ArtilleryObjective5 == 0 then
        SetObjectiveData(Objective.Artillery4, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery3, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery2, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery1, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery0, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery4, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery3, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery2, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery1, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery0, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery5, constant.OBJECTIVE_DATA_VISIBLE, 1)
        ArtilleryObjective5 = 1
      end
      if numartillerydead == 6 and ArtilleryObjective6 == 0 then
        SetObjectiveData(Objective.Artillery5, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery4, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery3, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery2, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery1, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery0, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Artillery5, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery4, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery3, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery2, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery1, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery0, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Artillery6, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Artillery6, constant.OBJECTIVE_DATA_STATE, 1)
        ArtilleryObjective6 = 1
        PowerObjectivesCompleted = PowerObjectivesCompleted + 1
        ArtilleryDead = true
      end
    end
    EndFrame()
    WaitFor(0.1)
  until ArtilleryDead == true or missionover == 1
  WaitFor(2)
  EndFrame()
  if ArtilleryDead == true and ArtilleryDeadMessage == false and DreadnoughtTime == false then
    PhoneMessageWithObjective(126, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  end
  EndFrame()
end

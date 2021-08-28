function POWCampMortar(owner)
  scriptPOWCampMortar = owner
  local POWFence = {
    Destroyable_Object.SolarAA1,
    Destroyable_Object.SolarAA2,
    Destroyable_Object.SolarAA3,
    Destroyable_Object.SolarAA4,
    Destroyable_Object.SolarAA5,
    Destroyable_Object.SolarAA6,
    Destroyable_Object.SolarAA7,
    Destroyable_Object.SolarAA8,
    Destroyable_Object.SolarAA9,
    Destroyable_Object.SolarAA10,
    Destroyable_Object.SolarAA11,
    Destroyable_Object.SolarAA12
  }
  local POWs = {
    Troop.TundranAAPOW1,
    Troop.TundranAAPOW2,
    Troop.TundranAAPOW3,
    Troop.TundranAAPOW4,
    Troop.TundranAAPOW5
  }
  if GetSpawnMode() == eModeAction.Follow then
    POWCamp(POWs, 5, POWFence, 12, 1)
  else
    POWCamp(POWs, 5, POWFence, 12, 0)
  end
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  Spawn(Troop.TundranAAPOW1)
  Spawn(Troop.TundranAAPOW2)
  Spawn(Troop.TundranAAPOW3)
  Spawn(Troop.TundranAAPOW4)
  Spawn(Troop.TundranAAPOW5)
  DebugOut("Mortar vets have been free'd!")
  aapowcamp = 1
  PhoneMessageWithObjective(16, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  SetObjectiveData(Objective.SolarAA, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.SolarAA, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  AddToGroup(Unit_Group.LandUnits, Troop.TundranAAPOW1)
  AddToGroup(Unit_Group.LandUnits, Troop.TundranAAPOW2)
  AddToGroup(Unit_Group.LandUnits, Troop.TundranAAPOW3)
  AddToGroup(Unit_Group.LandUnits, Troop.TundranAAPOW4)
  AddToGroup(Unit_Group.LandUnits, Troop.TundranAAPOW5)
  AddToGroup(Unit_Group.Player_Army, Troop.TundranAAPOW1)
  AddToGroup(Unit_Group.Player_Army, Troop.TundranAAPOW2)
  AddToGroup(Unit_Group.Player_Army, Troop.TundranAAPOW3)
  AddToGroup(Unit_Group.Player_Army, Troop.TundranAAPOW4)
  AddToGroup(Unit_Group.Player_Army, Troop.TundranAAPOW5)
end

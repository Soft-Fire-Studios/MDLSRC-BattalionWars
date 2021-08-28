function POWCampMain(owner)
  scriptPOWCampMain = owner
  local POWFence = {
    Destroyable_Object.MainPOWCamp1,
    Destroyable_Object.MainPOWCamp2,
    Destroyable_Object.MainPOWCamp3,
    Destroyable_Object.MainPOWCamp4,
    Destroyable_Object.MainPOWCamp5,
    Destroyable_Object.MainPOWCamp6,
    Destroyable_Object.MainPOWCamp7,
    Destroyable_Object.MainPOWCamp8,
    Destroyable_Object.MainPOWCamp9,
    Destroyable_Object.MainPOWCamp10,
    Destroyable_Object.MainPOWCamp11,
    Destroyable_Object.MainPOWCamp12,
    Destroyable_Object.MainPOWCamp13,
    Destroyable_Object.MainPOWCamp14,
    Destroyable_Object.MainPOWCamp15,
    Destroyable_Object.MainPOWCamp16,
    Destroyable_Object.MainPOWCamp17,
    Destroyable_Object.MainPOWCamp18,
    Destroyable_Object.MainPOWCamp19
  }
  local POWs = {
    Troop.AAMortar1,
    Troop.AAMortar2,
    Troop.AAMortar3,
    Troop.AAVet1,
    Troop.AAVet2,
    Troop.TLightTank2Driver1,
    Troop.TLightTank2Driver2,
    Ground_Vehicle.TLightTank2
  }
  if GetSpawnMode() == eModeAction.Follow then
    POWCamp(POWs, 8, POWFence, 19, 1)
  else
    POWCamp(POWs, 8, POWFence, 19, 0)
  end
  SetActive(Troop.TLightTank2Driver1, constant.INACTIVE)
  SetActive(Troop.TLightTank2Driver2, constant.INACTIVE)
  PhoneMessageWithObjective(17, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  SetObjectiveData(Objective.SolarMortar, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.SolarMortar, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  EnterVehicle(Troop.TLightTank2Driver1, Ground_Vehicle.TLightTank2, constant.ORDER_FORCED)
  EnterVehicle(Troop.TLightTank2Driver2, Ground_Vehicle.TLightTank2, constant.ORDER_FORCED)
  AddToGroup(Unit_Group.LandUnits, Troop.AAMortar1)
  AddToGroup(Unit_Group.LandUnits, Troop.AAMortar2)
  AddToGroup(Unit_Group.LandUnits, Troop.AAMortar3)
  AddToGroup(Unit_Group.LandUnits, Troop.AAVet1)
  AddToGroup(Unit_Group.LandUnits, Troop.AAVet2)
  AddToGroup(Unit_Group.LandUnits, Ground_Vehicle.TLightTank2)
  AddToGroup(Unit_Group.Player_Army, Troop.AAMortar1)
  AddToGroup(Unit_Group.Player_Army, Troop.AAMortar2)
  AddToGroup(Unit_Group.Player_Army, Troop.AAMortar3)
  AddToGroup(Unit_Group.Player_Army, Troop.AAVet1)
  AddToGroup(Unit_Group.Player_Army, Troop.AAVet2)
  AddToGroup(Unit_Group.Player_Army, Ground_Vehicle.TLightTank2)
  mainpowcamp = 1
  while true do
    if 0 < NumPassengersInUnit(Ground_Vehicle.TLightTank2) then
      FollowUnit(Ground_Vehicle.TLightTank2, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
      break
    end
    EndFrame()
  end
  repeat
    EndFrame()
  until NumPassengersInUnit(Ground_Vehicle.TLightTank2) == 2
  DebugOut("Both troops in tank, activating")
  SetActive(Troop.TLightTank2Driver1, constant.ACTIVE)
  SetActive(Troop.TLightTank2Driver2, constant.ACTIVE)
end

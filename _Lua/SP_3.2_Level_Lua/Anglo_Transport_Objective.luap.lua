function Anglo_Transport_Objective(owner)
  script01 = owner
  local playerwho = 0
  local transcounter = 0
  local counter = 0
  DebugOut("This script belongs to", owner)
  local text = 0
  Despawn(Water_Vehicle.AI_Sea_Transport_1)
  Despawn(Water_Vehicle.AI_Sea_Transport_2)
  Despawn(Troop.Cutscene_Grunt, false)
  AddToGroup(Unit_Group.Anglo_Attack, Troop.AI_Grunt_10)
  AddToGroup(Unit_Group.Anglo_Attack, Troop.AI_Grunt_11)
  AddToGroup(Unit_Group.Anglo_Attack, Troop.AI_Grunt_12)
  AddToGroup(Unit_Group.Anglo_Attack, Troop.AI_Grunt_13)
  AddToGroup(Unit_Group.Anglo_Attack, Troop.AI_Grunt_14)
  AddToGroup(Unit_Group.Anglo_Attack, Troop.AI_Grunt_16)
  AddToGroup(Unit_Group.Anglo_Attack, Troop.AI_Grunt_17)
  AddToGroup(Unit_Group.Anglo_Attack, Troop.AI_Grunt_18)
  AddToGroup(Unit_Group.Anglo_Attack, Troop.AI_Grunt_19)
  AddToGroup(Unit_Group.Anglo_Attack, Troop.AI_Grunt_20)
  Despawn(Building.Beached_Transport_1)
  Despawn(Troop.AI_Grunt_15)
  Despawn(Building.Beached_Transport_2)
  Despawn(Troop.AI_Grunt_21)
  Despawn(Air_Vehicle.AI_Fighter_1)
  repeat
    EndFrame()
  until mid == 1
  Teleport(Water_Vehicle.AI_Battleship_1, 485, 320, 270, 2)
  Teleport(Water_Vehicle.AI_Sub_1, 505, 220, 270, 2)
  Teleport(Water_Vehicle.AI_Sub_1, 505, 420, 270, 2)
  Teleport(Water_Vehicle.AI_Frigate_1, 495, 270, 270, 2)
  Teleport(Water_Vehicle.AI_Frigate_2, 495, 370, 270, 2)
  EndFrame()
  Spawn(Water_Vehicle.AI_Sea_Transport_1)
  Spawn(Water_Vehicle.AI_Sea_Transport_2)
  mid = 1.1
  repeat
    EndFrame()
  until mid == 2
  SetObjectiveData(Objective.Transports_22, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Transports_OM_1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Transports_OM_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  WaitFor(1)
  navalwaypoints = 1
  repeat
    if IsDead(Water_Vehicle.AI_Sea_Transport_1) and IsDead(Water_Vehicle.AI_Sea_Transport_2) then
      SetObjectiveData(Objective_Marker.Transports_OM_1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Transports_OM_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      return
    elseif IsDead(Water_Vehicle.AI_Sea_Transport_1) and trans1dead == 0 then
      SetObjectiveData(Objective_Marker.Transports_OM_1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      DebugOut("Sea Transport 1 is dead")
      trans1dead = 1
    elseif IsDead(Water_Vehicle.AI_Sea_Transport_2) and trans2dead == 0 then
      SetObjectiveData(Objective_Marker.Transports_OM_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      DebugOut("Sea Transport 2 is dead")
      trans2dead = 1
    elseif text == 0 and (trans1dead == 1 or trans2dead == 1) then
      text = 1
      PhoneMessage(66, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
    elseif trans1dead + trans2dead == 1 and transcounter ~= 1 then
      SetObjectiveData(Objective.Transports_22, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Transports_12, constant.OBJECTIVE_DATA_VISIBLE, 1)
      transcounter = 1
    elseif trans1dead + trans2dead == 2 and transcounter ~= 2 then
      SetObjectiveData(Objective.Transports_12, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Transports_02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Transports_OM_1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Transports_OM_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      transcounter = 2
      return
    elseif (IsInArea(Water_Vehicle.AI_Sea_Transport_1, Map_Zone.Transports_Zone) or IsDead(Water_Vehicle.AI_Sea_Transport_1)) and (IsInArea(Water_Vehicle.AI_Sea_Transport_2, Map_Zone.Transports_Zone) or IsDead(Water_Vehicle.AI_Sea_Transport_2)) then
      counter = counter + 1
    end
    EndFrame()
  until counter > 49 and 1 > GetHealthPercent(Water_Vehicle.HQ_Battleship_1)
  beach = 1
  repeat
    EndFrame()
  until beachshot == 1
  Spawn(Troop.Cutscene_Grunt)
  SetActive(Troop.Cutscene_Grunt, constant.ACTIVE)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.Cutscene_Grunt, true)
  EndFrame()
  Teleport(Water_Vehicle.AI_Battleship_1, -530, 530, 315, 10)
  Teleport(Water_Vehicle.AI_Frigate_1, -490, 530, 315, 10)
  Teleport(Water_Vehicle.AI_Frigate_2, -450, 530, 315, 10)
  Teleport(Water_Vehicle.AI_Sub_1, -410, 530, 315, 10)
  Teleport(Water_Vehicle.AI_Sub_2, -370, 530, 315, 10)
  EndFrame()
  GoToArea(Ground_Vehicle.HQ_Heavy_Tank_1, -550, 750, 50)
  if trans1dead + trans2dead == 0 then
    Teleport(Water_Vehicle.AI_Sea_Transport_1, -440, 735, 315, 1)
    BeachWaterUnit(Water_Vehicle.AI_Sea_Transport_1, -450, 748, 315, 0)
    Teleport(Water_Vehicle.AI_Sea_Transport_2, -465, 710, 315, 1)
    BeachWaterUnit(Water_Vehicle.AI_Sea_Transport_2, -475, 725, 315, 0)
  elseif trans1dead + trans2dead == 1 and IsDead(Water_Vehicle.AI_Sea_Transport_2) then
    Teleport(Water_Vehicle.AI_Sea_Transport_1, -440, 735, 315, 1)
    BeachWaterUnit(Water_Vehicle.AI_Sea_Transport_1, -450, 748, 315, 0)
  elseif trans1dead + trans2dead == 1 and IsDead(Water_Vehicle.AI_Sea_Transport_1) then
    Teleport(Water_Vehicle.AI_Sea_Transport_2, -440, 735, 315, 1)
    BeachWaterUnit(Water_Vehicle.AI_Sea_Transport_2, -450, 748, 315, 0)
  end
  EndFrame()
  Teleport(Water_Vehicle.AI_Battleship_1, -500, 645, 315, 10)
  Teleport(Water_Vehicle.AI_Frigate_1, -470, 665, 315, 10)
  Teleport(Water_Vehicle.AI_Frigate_2, -440, 685, 315, 10)
  Teleport(Water_Vehicle.AI_Sub_1, -455, 640, 315, 10)
  Teleport(Water_Vehicle.AI_Sub_2, -435, 635, 315, 10)
  EndFrame()
  repeat
    EndFrame()
  until landing == 1
  repeat
    EndFrame()
  until landing == 1
  SetObjectiveData(Objective.Transports_02, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Transports_12, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Transports_22, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.SE_HQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
  WaitFor(2)
  if IsDead(Ground_Vehicle.HQ_Heavy_Tank_1) == false then
    GoToArea(Ground_Vehicle.HQ_Heavy_Tank_1, -550, 750, 50)
  end
  repeat
    EndFrame()
  until IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.HQ_Battleship_3, 150) or GetTargetedObject() == Water_Vehicle.HQ_Battleship_3 or IsInRange(Water_Vehicle.AI_Battleship_1, Water_Vehicle.HQ_Battleship_3, 250)
  if IsDead(Water_Vehicle.HQ_Battleship_3) == false then
    PhoneMessage(77, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  end
end

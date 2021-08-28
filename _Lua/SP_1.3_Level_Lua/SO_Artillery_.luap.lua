function SO_Artillery_(owner)
  Script03 = owner
  local star1 = 0
  local star2 = 0
  local baztext = 0
  local atext = 0
  local tower1 = 0
  local tower2 = 0
  local tower3 = 0
  local tower4 = 0
  local westbaz = 0
  local eastbaz = 0
  local text = 1
  local change = 0
  SetUnitInvulnerable(Building.SE_Gun_1, true)
  SetUnitInvulnerable(Building.SE_Gun_2, true)
  SetUnitInvulnerable(Building.SE_Gun_3, true)
  SetUnitInvulnerable(Building.SE_Gun_4, true)
  AttackTarget(Ground_Vehicle.SO_Artillery_1, Building.SE_Gun_1, constant.ORDER_FORCED)
  AttackTarget(Ground_Vehicle.SO_Artillery_2, Building.SE_Gun_3, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until 0 < midshot
  Spawn(Troop.Artillery_Baz_1)
  Spawn(Troop.Artillery_Baz_2)
  Spawn(Troop.Artillery_Baz_3)
  Spawn(Troop.Artillery_Baz_6)
  Spawn(Troop.Artillery_Baz_7)
  Spawn(Troop.Artillery_Baz_8)
  repeat
    EndFrame()
  until midshot == 3
  PhoneMessageWithObjective(105, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE, 0, constant.NEW_SECONDARY_OBJECTIVE)
  SetObjectiveData(Objective.SO_Artillery_04, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.SO_Artillery_1_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.SO_Artillery_2_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  while true do
    if star1 == 0 and IsDead(Ground_Vehicle.SO_Artillery_1) then
      star1 = 1
      DebugOut("Artillery 1 Destroyed")
      SetObjectiveData(Objective_Marker.SO_Artillery_1_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      if atext == 0 then
        ClearMessageQueue()
        PhoneMessage(106, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
        DebugOut("Artillery 1 Destroyed First, play message")
        atext = 1
        SetObjectiveData(Objective.SO_Artillery_04, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.SO_Artillery_14, constant.OBJECTIVE_DATA_VISIBLE, 1)
      else
        DebugOut("Artillery 1 Destroyed Second, objective complete")
        break
      end
    elseif star2 == 0 and IsDead(Ground_Vehicle.SO_Artillery_2) then
      star2 = 1
      DebugOut("Artillery 2 Destroyed ")
      SetObjectiveData(Objective_Marker.SO_Artillery_2_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      if atext == 0 then
        ClearMessageQueue()
        PhoneMessage(106, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
        DebugOut("Artillery 1 Destroyed First, play message")
        atext = 1
        SetObjectiveData(Objective.SO_Artillery_04, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.SO_Artillery_14, constant.OBJECTIVE_DATA_VISIBLE, 1)
      else
        DebugOut("Artillery 2 Destroyed Second, objective complete")
        break
      end
    else
      EndFrame()
    end
    if tower1 == 0 and IsDead(Building.SE_Gun_1) and IsDead(Building.SE_Gun_2) == false then
      tower1 = 1
      AttackTarget(Ground_Vehicle.SO_Artillery_1, Building.SE_Gun_2, constant.ORDER_FORCED)
    elseif tower1 == 1 and tower2 == 0 and IsDead(Building.SE_Gun_1) and IsDead(Building.SE_Gun_2) then
      tower2 = 1
      AttackTarget(Ground_Vehicle.SO_Artillery_1, GetPlayerUnit(constant.PLAYER_ONE))
    else
      EndFrame()
    end
    if tower3 == 0 and IsDead(Building.SE_Gun_4) and IsDead(Building.SE_Gun_3) == false then
      tower3 = 1
      AttackTarget(Ground_Vehicle.SO_Artillery_2, Building.SE_Gun_3, constant.ORDER_FORCED)
    elseif tower3 == 1 and tower4 == 0 and IsDead(Building.SE_Gun_3) and IsDead(Building.SE_Gun_4) then
      tower4 = 1
      AttackTarget(Ground_Vehicle.SO_Artillery_2, GetPlayerUnit(constant.PLAYER_ONE))
    else
      EndFrame()
    end
  end
  SetObjectiveData(Objective.SO_Artillery_14, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.SO_Artillery_24, constant.OBJECTIVE_DATA_VISIBLE, 1)
  DebugOut("Artillery Destroyed, Secondary Objective Complete")
  ClearMessageQueue()
  PhoneMessageWithObjective(107, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
  PowerObjectivesCompleted = 1
  SetObjectiveData(Objective.SO_Artillery_44, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.SO_Artillery_34, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.SO_Artillery_24, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.SO_Artillery_14, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.SO_Artillery_04, constant.OBJECTIVE_DATA_STATE, 1)
  if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Grounds) == false then
    PhoneMessage(114, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  end
end

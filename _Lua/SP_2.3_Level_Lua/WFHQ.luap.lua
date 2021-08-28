function WFHQ(owner)
  local mgnest01troop = 0
  local mgnest02troop = 0
  while missionend == 0 do
    if GetState(Capture_Point.WF_HQ_Capture_Point) ~= flag.TYPE_TUNDRAN and IsReadyToRevive(Troop.TT_Grunt_Barracks_1_1) and IsReadyToRevive(Troop.TT_Grunt_Barracks_1_2) and IsReadyToRevive(Troop.TT_Grunt_Barracks_1_3) and IsReadyToRevive(Troop.TT_T_Copter_Grunt_A2) and IsReadyToRevive(Troop.TT_T_Copter_Grunt_A3) and IsReadyToRevive(Troop.TT_T_Copter_Grunt_A4) and IsReadyToRevive(Troop.TT_T_Copter_Grunt_B2) and IsReadyToRevive(Troop.TT_T_Copter_Grunt_B3) and IsReadyToRevive(Troop.TT_T_Copter_Grunt_B4) then
      SetObjectiveData(Objective.Frontier_HQ, constant.OBJECTIVE_DATA_STATE, 1)
      if airbase == 1 then
        SetObjectiveData(Objective.Western_Airbase, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Western_Airbase, constant.OBJECTIVE_DATA_STATE, 1)
      else
        SetObjectiveData(Objective_Marker.Western_Airbase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Western_Airbase, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if southernbarracks == 1 then
        SetObjectiveData(Objective.Southern_Barracks, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Southern_Barracks, constant.OBJECTIVE_DATA_STATE, 1)
      else
        SetObjectiveData(Objective_Marker.Southern_Barracks, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Southern_Barracks, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if northernbarracks == 1 then
        SetObjectiveData(Objective.Northern_Barracks, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Northern_Barracks, constant.OBJECTIVE_DATA_STATE, 1)
      else
        SetObjectiveData(Objective_Marker.Northern_Barracks, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Northern_Barracks, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if factory == 1 then
        SetObjectiveData(Objective.Eastern_Factory, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Eastern_Factory, constant.OBJECTIVE_DATA_STATE, 1)
      else
        SetObjectiveData(Objective_Marker.Eastern_Factory, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Eastern_Factory, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      SetObjectiveData(Objective_Marker.Tundran_HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Tundran_HQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
      ClearMessageQueue()
      PhoneMessageWithObjective(11, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
      PhoneMessageWithObjective(13, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      PhoneMessageWithObjective(12, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      if Building.WFMGNest01 ~= GetPlayerUnit(constant.PLAYER_ONE) and GetUnitInSeat(Building.WFMGNest01, 0) ~= 0 then
        mgnest01troop = GetUnitInSeat(Building.WFMGNest01, 0)
        ExitVehicle(GetUnitInSeat(Building.WFMGNest01, 0))
        FollowUnit(mgnest01troop, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
      end
      if Building.WFMGNest02 ~= GetPlayerUnit(constant.PLAYER_ONE) and GetUnitInSeat(Building.WFMGNest02, 0) ~= 0 then
        mgnest02troop = GetUnitInSeat(Building.WFMGNest02, 0)
        ExitVehicle(GetUnitInSeat(Building.WFMGNest02, 0))
        FollowUnit(mgnest02troop, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
      end
      wfhqcomplete = 1
      break
    end
    EndFrame()
  end
end

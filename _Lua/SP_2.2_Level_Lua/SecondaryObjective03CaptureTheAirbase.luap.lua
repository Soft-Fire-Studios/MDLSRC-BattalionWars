function SecondaryObjective03CaptureTheAirbase(owner)
  SetActive(Morphing_Building.Hanger01, constant.INACTIVE)
  SetActive(Morphing_Building.Hanger02, constant.INACTIVE)
  SetActive(Morphing_Building.Airbase, constant.INACTIVE)
  SetActive(Capture_Point.AirbaseCapturePoint, constant.INACTIVE)
  repeat
    WaitFor(0.5)
  until Objective02 == 1
  SetActive(Morphing_Building.Hanger01, constant.ACTIVE)
  SetActive(Morphing_Building.Hanger02, constant.ACTIVE)
  SetActive(Morphing_Building.Airbase, constant.ACTIVE)
  SetActive(Capture_Point.AirbaseCapturePoint, constant.ACTIVE)
  while missionend == 0 do
    if GetState(Capture_Point.AirbaseCapturePoint) == flag.TYPE_WFRONTIER and airbase == 0 then
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      SetObjectiveData(Objective.CaptureAirbase, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.CaptureAirbase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      if IsDead(Troop.TundranFlamer05) == false or IsDead(Troop.TundranFlamer06) == false or IsDead(Troop.TundranFlamer07) == false or IsDead(Troop.TundranFlamer08) == false then
        PhoneMessageWithObjective(40, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
        PhoneMessage(66, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        airbasecounter = 1
      end
      PhoneMessage(67, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
      PhoneMessage(49, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      GoToArea(Ground_Vehicle.TundranHeavyTank01, 130, 50, 15, constant.ORDER_FORCED)
      GoToArea(Ground_Vehicle.TundranHeavyTank02, 100, 40, 15, constant.ORDER_FORCED)
      EnterVehicle(Troop.TundranFlamer05, Capture_Point.AirbaseCapturePoint, constant.ORDER_FORCED)
      EnterVehicle(Troop.TundranFlamer06, Capture_Point.AirbaseCapturePoint, constant.ORDER_FORCED)
      EnterVehicle(Troop.TundranFlamer07, Capture_Point.AirbaseCapturePoint, constant.ORDER_FORCED)
      EnterVehicle(Troop.TundranFlamer08, Capture_Point.AirbaseCapturePoint, constant.ORDER_FORCED)
      GoToArea(Troop.TundranChainVet05, 56, 187, 5, constant.ORDER_FORCED)
      GoToArea(Troop.TundranChainVet06, 65, 183, 5, constant.ORDER_FORCED)
      GoToArea(Troop.TundranChainVet07, 71, 191, 5, constant.ORDER_FORCED)
      GoToArea(Troop.TundranChainVet08, 78, 188, 5, constant.ORDER_FORCED)
      GoToArea(Troop.TundranChainVet09, 62, 194, 5, constant.ORDER_FORCED)
      airbase = 2
      DebugOut("*SecondaryObjective03CaptureTheAirbase* - 1. Airbase Captured by WF. Sending in Tundran units to recapture")
    end
    EndFrame()
    if GetState(Capture_Point.AirbaseCapturePoint) == flag.TYPE_TUNDRAN and airbase == 2 then
      PhoneMessageWithObjective(57, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      SetObjectiveData(Objective.CaptureAirbase, constant.OBJECTIVE_DATA_STATE, 0)
      SetObjectiveData(Objective_Marker.CaptureAirbase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted - 1
      airbase = 1
      DebugOut("*SecondaryObjective03CaptureTheAirbase* - 2. The Tundrans have successfully recaptured the Airbase")
    end
    EndFrame()
    if GetState(Capture_Point.AirbaseCapturePoint) == flag.TYPE_WFRONTIER and airbase == 1 then
      SetObjectiveData(Objective.CaptureAirbase, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.CaptureAirbase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      airbase = 2
      DebugOut("*SecondaryObjective03CaptureTheAirbase* - 3. The player has successfully recaptured the Airbase")
    end
    EndFrame()
  end
end

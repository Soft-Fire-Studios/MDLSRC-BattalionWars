function WARNINGS_AND_OBJECTIVE_TEXT(owner)
  scriptWarnings = owner
  local FlagWarningGiven = false
  local BarracksNotTakenWarning = false
  local FactoryNotTakenWarning = false
  local FacilitiesNotTakenWarning = false
  local AllFacilitiesCaptured = false
  repeat
    WaitFor(0.2)
    if FlagWarningGiven == false and NumPassengersInUnit(Capture_Point.WFHQCP) > 0 then
      if TestFlags(Capture_Point.WFHQCP, flag.TYPE_TUNDRAN, constant.TYPE) then
        PhoneMessage(28, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        DebugOut("PLAYER GETS FLAG CAPTURING WARNING")
        FlagWarningGiven = true
      end
      EndFrame()
    end
    EndFrame()
  until DefenceFinallyFinished == true
  repeat
    if WFhqstate == 2 and GetState(Capture_Point.WFHQCP) == flag.TYPE_WFRONTIER then
      WFhqstate = 1
    end
    EndFrame()
    if WFhqstate == 1 and GetState(Capture_Point.WFHQCP) == flag.TYPE_TUNDRAN then
      WFhqstate = 2
    end
    EndFrame()
    if Barracksstate == 2 and GetState(Capture_Point.BarracksCP) == flag.TYPE_WFRONTIER then
      SetObjectiveData(Objective.CaptureBarracks, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.Barracks, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      Barracksstate = 1
    end
    EndFrame()
    if Barracksstate == 1 and GetState(Capture_Point.BarracksCP) == flag.TYPE_TUNDRAN then
      SetObjectiveData(Objective.CaptureBarracks, constant.OBJECTIVE_DATA_STATE, 0)
      SetObjectiveData(Objective_Marker.Barracks, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted - 1
      Barracksstate = 3
      if FactoryCutsceneOn == false and BarracksCutsceneOn == false then
        PhoneMessageWithObjective(11, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      end
    end
    EndFrame()
    if Barracksstate == 3 and GetState(Capture_Point.BarracksCP) == flag.TYPE_WFRONTIER then
      SetObjectiveData(Objective.CaptureBarracks, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.Barracks, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      Barracksstate = 1
      if FactoryCutsceneOn == false and BarracksCutsceneOn == false and BarracksCaptured == true then
        PhoneMessageWithObjective(99, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      end
    end
    EndFrame()
    if Factorystate == 2 and GetState(Capture_Point.FactoryCP) == flag.TYPE_WFRONTIER then
      SetObjectiveData(Objective.CaptureFactory, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.Factory, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      Factorystate = 1
    end
    EndFrame()
    if Factorystate == 1 and GetState(Capture_Point.FactoryCP) == flag.TYPE_TUNDRAN then
      SetObjectiveData(Objective.CaptureFactory, constant.OBJECTIVE_DATA_STATE, 0)
      SetObjectiveData(Objective_Marker.Factory, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted - 1
      Factorystate = 3
      if FactoryCutsceneOn == false and BarracksCutsceneOn == false then
        PhoneMessageWithObjective(13, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      end
    end
    EndFrame()
    if Factorystate == 3 and GetState(Capture_Point.FactoryCP) == flag.TYPE_WFRONTIER then
      SetObjectiveData(Objective.CaptureFactory, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.Factory, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      Factorystate = 1
      if FactoryCutsceneOn == false and BarracksCutsceneOn == false and FactoryCaptured == true then
        PhoneMessageWithObjective(100, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      end
    end
    EndFrame()
    if BarracksNotTakenWarning == false and FactoryCutsceneOn == false and BarracksCutsceneOn == false and GetState(Capture_Point.BarracksCP) == flag.TYPE_TUNDRAN and GetState(Capture_Point.FactoryCP) == flag.TYPE_WFRONTIER then
      if 0 < NumItemsInArea(Map_Zone.THQwarningzone, flag.TYPE_WFRONTIER) then
        PhoneMessage(56, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        DebugOut("WF IS APPROACHING T HQ WITHOUT TAKING BARRACKS")
        BarracksNotTakenWarning = true
      end
      EndFrame()
    end
    EndFrame()
    if BarracksNotTakenWarning == true and 1 > NumItemsInArea(Map_Zone.THQwarningzone, flag.TYPE_WFRONTIER) then
      BarracksNotTakenWarning = false
    end
    EndFrame()
    if FactoryNotTakenWarning == false and FactoryCutsceneOn == false and BarracksCutsceneOn == false and GetState(Capture_Point.BarracksCP) == flag.TYPE_WFRONTIER and GetState(Capture_Point.FactoryCP) == flag.TYPE_TUNDRAN then
      if 0 < NumItemsInArea(Map_Zone.THQwarningzone, flag.TYPE_WFRONTIER) then
        PhoneMessage(57, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        DebugOut("WF IS APPROACHING T HQ WITHOUT TAKING FACTORY")
        FactoryNotTakenWarning = true
      end
      EndFrame()
    end
    EndFrame()
    if FactoryNotTakenWarning == true and 1 > NumItemsInArea(Map_Zone.THQwarningzone, flag.TYPE_WFRONTIER) then
      FactoryNotTakenWarning = false
    end
    EndFrame()
    if FacilitiesNotTakenWarning == false and FactoryCutsceneOn == false and BarracksCutsceneOn == false and GetState(Capture_Point.BarracksCP) == flag.TYPE_TUNDRAN and GetState(Capture_Point.FactoryCP) == flag.TYPE_TUNDRAN then
      if 0 < NumItemsInArea(Map_Zone.THQwarningzone, flag.TYPE_WFRONTIER) then
        PhoneMessage(58, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        DebugOut("WF IS APPROACHING T HQ WITHOUT TAKING B&F")
        FacilitiesNotTakenWarning = true
      end
      EndFrame()
    end
    EndFrame()
    if FacilitiesNotTakenWarning == true and 1 > NumItemsInArea(Map_Zone.THQwarningzone, flag.TYPE_WFRONTIER) then
      FacilitiesNotTakenWarning = false
    end
    EndFrame()
    if AllFacilitiesCaptured == false and BarracksCaptured == true and FactoryCaptured == true and FactoryCutsceneOn == false and BarracksCutsceneOn == false then
      if GetState(Capture_Point.BarracksCP) == flag.TYPE_WFRONTIER and GetState(Capture_Point.FactoryCP) == flag.TYPE_WFRONTIER then
        PhoneMessage(59, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
        DebugOut("WF HAS CAPTURED ALL FACILITIES")
        AllFacilitiesCaptured = true
      end
      EndFrame()
    end
    EndFrame()
    WaitFor(0.2)
    EndFrame()
  until GetMissionEnded()
end

function s2_COhelp(owner)
  local baseWarningDone = 0
  local bridgeTankWarningDone = 0
  local eastBridgeHelpDone = 0
  local miningbaseCapturePoint = 0
  while true do
    if eastBridgeHelpDone <= 0 and IsInArea(GetPlayerUnit(), 308, -37, 50) then
      eastBridgeHelpDone = 1
      ClearMessageQueue()
      PhoneMessage(28, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Happy)
      SetObjectiveData(Objective_Marker.ObjectiveBridgeRight, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      DebugOut("Xylvanian Attack Group back to base")
      GoToArea(Unit_Group.GroupXAttack01, -300, 225, 20)
      GoToArea(Unit_Group.GroupXAttack02, -250, 275, 20)
    end
    if baseWarningDone <= 0 and IsInArea(GetPlayerUnit(), 200, 35, 100) then
      baseWarningDone = 1
      ClearMessageQueue()
      PhoneMessage(15, constant.ID_NONE, 1, 6, SpriteID.CO_X_Ingrid_Happy)
      PhoneMessage(16, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy)
    end
    if bridgeTankWarningDone <= 0 then
      if IsInArea(Ground_Vehicle.WFheavytank0001, Map_Zone.West_Bridge) then
        bridgeTankWarningDone = 1
        ClearMessageQueue()
        PhoneMessage(12, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Sad)
      end
      if IsInArea(Ground_Vehicle.WFheavytank0002, Map_Zone.West_Bridge) then
        bridgeTankWarningDone = 1
        ClearMessageQueue()
        PhoneMessage(12, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Sad)
      end
      if IsInArea(Ground_Vehicle.WFheavytank0003, Map_Zone.West_Bridge) then
        bridgeTankWarningDone = 1
        ClearMessageQueue()
        PhoneMessage(12, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Sad)
      end
    end
    if miningbaseCapturePoint <= 0 and 1 <= NumItemsInArea(-35, 250, 120, flag.TYPE_WFRONTIER) then
      miningbaseCapturePoint = 1
      if TankReinforcements == 0 and InfantryReinforcements == 0 then
        PhoneMessage(58, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Sad)
      else
        PhoneMessage(23, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Happy)
      end
      DebugOut("Xylvanian Attack Group back to base")
      GoToArea(Unit_Group.GroupXAttack01, -300, 225, 20)
      GoToArea(Unit_Group.GroupXAttack02, -250, 250, 20)
      SetObjectiveData(Objective.Primary_MiningBaseNone, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.ObjectiveMiningBase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.ObjectiveMiningBaseB, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.ObjectiveMiningBaseC, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    end
    EndFrame()
  end
  EndFrame()
  return
end

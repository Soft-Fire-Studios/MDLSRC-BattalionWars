function s2_gameflow(owner)
  local tankWarningDone = 0
  local bridgeWarningDone = 0
  local escapeWarningDone = 0
  local tanksSent = 0
  local Timer = 0
  local acrossRiverDone = 0
  local catchDone = 0
  local bridgeJumpDone = 0
  AddToGroup(Unit_Group.GroupXAttack02, Troop.Xchain0001)
  AddToGroup(Unit_Group.GroupXAttack02, Troop.Xchain0002)
  AddToGroup(Unit_Group.GroupXAttack02, Troop.Xchain0003)
  AddToGroup(Unit_Group.GroupXAttack02, Troop.Xchain0004)
  while true do
    if AirbaseAttacked == 1 and tanksSent == 0 then
      tanksSent = 1
      Timer = GetTime()
    end
    if tanksSent == 1 and GetTime() >= Timer + 5 then
      tanksSent = 2
      DebugOut("Xylvanian Attack Group on way to Airbase")
      GoToArea(Ground_Vehicle.XlightTank0004, -275, -125, 20)
      if acrossRiverDone == 0 then
        DebugOut("Aerodrome Tank follow player")
        FollowUnit(Ground_Vehicle.XlightTank0005, GetPlayerUnit(), 20, 0, constant.ORDER_NORMAL)
      end
      if acrossRiverDone >= 1 then
        DebugOut("Aerodrome Tank goto area")
        GoToArea(Ground_Vehicle.XlightTank0005, -340, -245, 20)
      end
      GoToArea(Troop.Xchain0001, -300, -115, 20, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Xchain0002, -240, -160, 20, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Xchain0003, -335, -260, 20, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Xchain0004, -325, -140, 20, 0, constant.ORDER_NORMAL)
    end
    if (IsInArea(Ground_Vehicle.XlightTank0004, Map_Zone.XAttack) or IsInArea(Ground_Vehicle.XlightTank0005, Map_Zone.XAttack)) and tankWarningDone == 0 then
      tankWarningDone = 1
      ClearMessageQueue()
      PhoneMessage(61, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Sad)
    end
    if (IsInArea(Ground_Vehicle.XlightTank0004, -275, -125, 30) or IsInArea(Ground_Vehicle.XlightTank0005, -340, -245, 30)) and escapeWarningDone == 0 then
      escapeWarningDone = 1
      ClearMessageQueue()
      PhoneMessage(62, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Sad)
      SetObjectiveData(Objective.Primary_Airbase, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.ObjectiveAirfield, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.Bridge) and bridgeWarningDone == 0 then
      if AirbaseAttacked < 1 then
        bridgeWarningDone = 1
        if GunshipReinforced == 0 then
          ClearMessageQueue()
          PhoneMessage(7, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy)
        end
      else
        bridgeWarningDone = 1
        ClearMessageQueue()
        PhoneMessage(63, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Happy)
        SetObjectiveData(Objective.Primary_Airbase, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective_Marker.ObjectiveAirfield, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
    end
    if bridgeJumpDone <= 0 and IsInArea(GetPlayerUnit(), Map_Zone.Jump) then
      if GetPlayerUnit() == Ground_Vehicle.WFlighttrans0001 then
        bridgeJumpDone = 1
        tankWarningDone = 1
        escapeWarningDone = 1
        bridgeWarningDone = 1
        ClearMessageQueue()
        PhoneMessage(64, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Austin_Sad)
        if not IsDead(Troop.WFmissile0001) and not IsDead(Troop.WFmissile0002) and not IsDead(Troop.WFmissile0003) then
          PhoneMessage(65, constant.ID_NONE, 0, 3, SpriteID.CO_WF_Austin_Sad)
        end
      else
        bridgeJumpDone = 1
        tankWarningDone = 1
        escapeWarningDone = 1
        bridgeWarningDone = 1
        ClearMessageQueue()
        PhoneMessage(60, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Sad)
      end
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.AcrossRiver) then
      if AirbaseAttacked >= 1 and catchDone == 0 then
        catchDone = 1
        PhoneMessage(66, constant.ID_NONE, 1, 4, SpriteID.CO_X_Ingrid_Happy)
      end
      if acrossRiverDone == 0 then
        acrossRiverDone = 1
        tankWarningDone = 1
        escapeWarningDone = 1
        bridgeWarningDone = 1
        DebugOut("Xylvanian Attack Group on way to Airbase")
        GoToArea(Ground_Vehicle.XlightTank0004, -275, -125, 20)
        GoToArea(Ground_Vehicle.XlightTank0005, -340, -245, 20)
        GoToArea(Troop.Xchain0001, -300, -115, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xchain0002, -240, -160, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xchain0003, -335, -260, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xchain0004, -325, -140, 20, 0, constant.ORDER_NORMAL)
        SetObjectiveData(Objective.Primary_Airbase, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Primary_MiningBaseNone, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Secondary_Bridge, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Secondary_MainForce, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.ObjectiveAirfield, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.ObjectiveBridgeLeft, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.ObjectiveMainForce, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.ObjectiveMiningBase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
    end
    EndFrame()
  end
  EndFrame()
  return
end

function AA_Sites(owner)
  local aa1 = 0
  local aa2 = 0
  local aa3 = 0
  local aa4 = 0
  local aa5 = 0
  local loop = 0
  local aatext = 0
  local text1 = 0
  local text2 = 0
  while loop < 5 do
    WaitFor(1)
    if aa1 == 0 and GetGroupHealth(Unit_Group.aa1) == 0 then
      SetObjectiveData(Objective_Marker.aa1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      aa1 = 1
      loop = loop + 1
      aasites = aasites + 1
      DebugOut("AA1 Destroyed")
      if aatext == 0 then
        GoToArea(Troop.ref1, -550, -135, 5)
        GoToArea(Troop.ref2, -550, -145, 5)
        GoToArea(Ground_Vehicle.ref4, -575, -130, 5)
        GoToArea(Ground_Vehicle.Entity0023, -555, -165, 5)
        WaitFor(3)
        PhoneMessage(34, constant.ID_NONE, 1, 6, SpriteID.CO_X_Ubel_Sad)
        aatext = 1
      end
    end
    EndFrame()
    if aa2 == 0 and GetGroupHealthPercent(Unit_Group.aa2) == 0 then
      SetObjectiveData(Objective_Marker.aa2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      aasites = aasites + 1
      aa2 = 1
      loop = loop + 1
      DebugOut("AA2 Destroyed")
      if aatext == 0 then
        GoToArea(Troop.ref1, -425, -165, 5)
        GoToArea(Troop.ref2, -414, -175, 5)
        GoToArea(Ground_Vehicle.ref4, -395, -130, 5)
        GoToArea(Ground_Vehicle.Entity0023, -355, -120, 5)
        WaitFor(3)
        PhoneMessage(34, constant.ID_NONE, 1, 6, SpriteID.CO_X_Ubel_Sad)
        aatext = 1
      end
    end
    EndFrame()
    if aa3 == 0 and GetGroupHealthPercent(Unit_Group.aa3) == 0 then
      SetObjectiveData(Objective_Marker.aa3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      aasites = aasites + 1
      aa3 = 1
      loop = loop + 1
      DebugOut("AA3 Destroyed")
    end
    EndFrame()
    if aa4 == 0 and GetGroupHealthPercent(Unit_Group.aa4) == 0 then
      SetObjectiveData(Objective_Marker.aa4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      aasites = aasites + 1
      aa4 = 1
      loop = loop + 1
      DebugOut("AA4 Destroyed")
    end
    EndFrame()
    if aa5 == 0 and GetGroupHealthPercent(Unit_Group.aa5) == 0 then
      SetObjectiveData(Objective_Marker.aa5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      aasites = aasites + 1
      aa5 = 1
      loop = loop + 1
      DebugOut("AA5 Destroyed")
    end
    EndFrame()
    if text1 == 0 and IsInArea(GetPlayerUnit(), Map_Zone.text1) then
      PhoneMessage(43, constant.ID_NONE, 1, 6, SpriteID.CO_X_Ubel_Happy)
      text1 = 1
    end
    EndFrame()
  end
  DebugOut("All AA Destroyed")
  while levelstate == 3 do
    EndFrame()
  end
  DebugOut("the next bit")
  WaitFor(3)
  ClearMessageQueue()
  PhoneMessage(32, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
  PhoneMessage(53, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Sad)
  PhoneMessage(54, constant.ID_NONE, 1, 6, SpriteID.CO_X_Ubel_Sad)
  SetObjectiveData(Objective.AA_Units_5, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Extraction_Towers, constant.OBJECTIVE_DATA_VISIBLE, 1)
  levelstate = 1
  SetObjectiveData(Objective_Marker.bomber, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Tower1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Tower2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Tower3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Tower1, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Tower2, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Tower3, constant.OBJECTIVE_DATA_VISIBLE, 1)
  Spawn(Air_Vehicle.Bomber)
  FollowUnit(Air_Vehicle.Bomber, GetPlayerUnit(), 5, 20, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.Bomber, -296, -555, 20, nil, constant.ORDER_FORCED)
  SetActive(Troop.pilot, constant.ACTIVE)
  SetActive(Air_Vehicle.Bomber, constant.ACTIVE)
  Spawn(Air_Vehicle.Bomber2)
  FollowUnit(Air_Vehicle.Bomber2, GetPlayerUnit(), 5, 20, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.Bomber2, -296, -555, 20, nil, constant.ORDER_FORCED)
  SetActive(Troop.pilot2, constant.ACTIVE)
  SetActive(Air_Vehicle.Bomber2, constant.ACTIVE)
  GoToArea(Air_Vehicle.Bomber2, -296, -555, 20, nil, constant.ORDER_FORCED)
end

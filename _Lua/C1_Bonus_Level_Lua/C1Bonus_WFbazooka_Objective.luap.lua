function C1Bonus_WFbazooka_Objective(owner)
  local WFbazooka0001IsDead = 0
  local WFbazooka0002IsDead = 0
  local WFbazooka0003IsDead = 0
  local WFbazooka0004IsDead = 0
  local WFbazooka0005IsDead = 0
  local WFbazooka0006IsDead = 0
  local WFbazookaDeadCount = 0
  local WFbazookaOneRemainingMessageDone = 0
  local WFbazookaObjective01 = 0
  local WFbazookaObjective02 = 0
  local WFbazookaObjective03 = 0
  local WFbazookaObjective04 = 0
  local WFbazookaObjective05 = 0
  local WFbazookaObjective06 = 0
  while true do
    if IsDead(Troop.WFbazooka0001) and IsDead(Troop.WFbazooka0002) and IsDead(Troop.WFbazooka0003) and IsDead(Troop.WFbazooka0004) and IsDead(Troop.WFbazooka0005) and IsDead(Troop.WFbazooka0006) and AllBazookaDead == 0 then
      AllBazookaDead = 1
      WaitFor(1)
      DebugOut("all WF bazooka men have been killed")
      SetObjectiveData(Objective_Marker.Bazooka_Objective, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_6, constant.OBJECTIVE_DATA_STATE, 1)
      PhoneMessage(27, constant.ID_NONE, 2, 6, SpriteID.CO_Nova_Happy)
    end
    if WFbazookaDeadCount == 6 and AllBazookaDead == 0 then
      AllBazookaDead = 1
      WaitFor(1)
      DebugOut("all WF bazooka men have been killed")
      SetObjectiveData(Objective_Marker.Bazooka_Objective, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_6, constant.OBJECTIVE_DATA_STATE, 1)
      PhoneMessage(27, constant.ID_NONE, 2, 6, SpriteID.CO_Nova_Happy)
    end
    if WFbazookaDeadCount == 1 and WFbazookaObjective01 == 0 then
      WFbazookaObjective01 = 1
      SetObjectiveData(Objective.Forest_0, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Forest_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_1, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFbazookaDeadCount == 2 and WFbazookaObjective02 == 0 then
      WFbazookaObjective02 = 1
      SetObjectiveData(Objective.Forest_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_1, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Forest_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_2, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFbazookaDeadCount == 3 and WFbazookaObjective03 == 0 then
      WFbazookaObjective03 = 1
      SetObjectiveData(Objective.Forest_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_2, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Forest_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_3, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFbazookaDeadCount == 4 and WFbazookaObjective04 == 0 then
      WFbazookaObjective04 = 1
      SetObjectiveData(Objective.Forest_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_3, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Forest_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_4, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFbazookaDeadCount == 5 and WFbazookaObjective05 == 0 then
      WFbazookaObjective05 = 1
      SetObjectiveData(Objective.Forest_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_4, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Forest_4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_5, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if WFbazookaDeadCount == 6 and WFbazookaObjective06 == 0 then
      WFbazookaObjective06 = 1
      SetObjectiveData(Objective.Forest_0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_5, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Forest_5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Forest_6, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if IsDead(Troop.WFbazooka0001) and WFbazooka0001IsDead == 0 then
      WFbazooka0001IsDead = 1
      WFbazookaDeadCount = WFbazookaDeadCount + 1
      DebugOut("Number of WF bazooka dead = ", WFbazookaDeadCount)
    end
    if IsDead(Troop.WFbazooka0002) and WFbazooka0002IsDead == 0 then
      WFbazooka0002IsDead = 1
      WFbazookaDeadCount = WFbazookaDeadCount + 1
      DebugOut("Number of WF bazooka dead = ", WFbazookaDeadCount)
    end
    if IsDead(Troop.WFbazooka0003) and WFbazooka0003IsDead == 0 then
      WFbazooka0003IsDead = 1
      WFbazookaDeadCount = WFbazookaDeadCount + 1
      DebugOut("Number of WF bazooka dead = ", WFbazookaDeadCount)
    end
    if IsDead(Troop.WFbazooka0004) and WFbazooka0004IsDead == 0 then
      WFbazooka0004IsDead = 1
      WFbazookaDeadCount = WFbazookaDeadCount + 1
      DebugOut("Number of WF bazooka dead = ", WFbazookaDeadCount)
    end
    if IsDead(Troop.WFbazooka0005) and WFbazooka0005IsDead == 0 then
      WFbazooka0005IsDead = 1
      WFbazookaDeadCount = WFbazookaDeadCount + 1
      DebugOut("Number of WF bazooka dead = ", WFbazookaDeadCount)
    end
    if IsDead(Troop.WFbazooka0006) and WFbazooka0006IsDead == 0 then
      WFbazooka0006IsDead = 1
      WFbazookaDeadCount = WFbazookaDeadCount + 1
      DebugOut("Number of WF bazooka dead = ", WFbazookaDeadCount)
    end
    if WFbazookaDeadCount == 5 and WFbazookaOneRemainingMessageDone == 0 then
      PhoneMessage(32, constant.ID_NONE, 2, 6, SpriteID.CO_Nova_Happy)
      WFbazookaOneRemainingMessageDone = 1
      if not IsDead(Troop.WFbazooka0001) then
        SetObjectiveData(Objective_Marker.Bazooka_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFbazooka0001)
      end
      if not IsDead(Troop.WFbazooka0002) then
        SetObjectiveData(Objective_Marker.Bazooka_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFbazooka0002)
      end
      if not IsDead(Troop.WFbazooka0003) then
        SetObjectiveData(Objective_Marker.Bazooka_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFbazooka0003)
      end
      if not IsDead(Troop.WFbazooka0004) then
        SetObjectiveData(Objective_Marker.Bazooka_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFbazooka0004)
      end
      if not IsDead(Troop.WFbazooka0005) then
        SetObjectiveData(Objective_Marker.Bazooka_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFbazooka0005)
      end
      if not IsDead(Troop.WFbazooka0006) then
        SetObjectiveData(Objective_Marker.Bazooka_Objective, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Troop.WFbazooka0006)
      end
      SetObjectiveData(Objective_Marker.Bazooka_Objective, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    end
    EndFrame()
  end
  EndFrame()
  return
end

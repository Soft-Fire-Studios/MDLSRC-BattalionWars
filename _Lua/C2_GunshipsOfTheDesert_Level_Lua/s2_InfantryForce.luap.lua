function s2_InfantryForce(owner)
  local infantryReinforcementDone = 0
  SetHealthPercent(Air_Vehicle.WFtcopterCutscene0002, 60)
  while true do
    if infantryReinforcementDone <= 0 and IsInArea(GetPlayerUnit(), Map_Zone.InfantryForceDialog) then
      infantryReinforcementDone = 1
      ClearMessageQueue()
      PhoneMessage(68, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Happy)
      SetObjectiveData(Objective_Marker.ObjectiveInfantryForce, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Secondary_InfantryForce, constant.OBJECTIVE_DATA_VISIBLE, 1)
    else
      EndFrame()
      while true do
        if IsInArea(GetPlayerUnit(), Map_Zone.InfantryForce) then
          GoToArea(Troop.Xchain0006, 280, -388, 10, 0, constant.ORDER_FORCED)
          GoToArea(Troop.Xchain0009, 300, -370, 10, 0, constant.ORDER_FORCED)
          EnterVehicle(Troop.WFgruntTcopterCutscene0002, Air_Vehicle.WFtcopterCutscene0002)
          SetActive(Troop.WFgrunt0001, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
          SetActive(Troop.WFgrunt0002, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
          SetActive(Troop.WFgrunt0003, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
          WaitFor(1)
          SetActive(Troop.WFchain0001, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
          SetActive(Troop.WFchain0002, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
          WaitFor(1)
          InfantryReinforcements = 1
          break
        end
        EndFrame()
      end
    end
  end
  GoToArea(Air_Vehicle.WFtcopterCutscene0002, 380, -250, 20, 0, constant.ORDER_FORCED)
  WaitFor(2)
  GoToArea(Air_Vehicle.WFtcopterCutscene0002, 200, 1150, 20, 0, constant.ORDER_FORCED)
  SetActive(Troop.WFmissile0004, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
  WaitFor(1)
  SetActive(Troop.WFmissile0005, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
  WaitFor(1)
  SetObjectiveData(Objective_Marker.ObjectiveInfantryForce, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Secondary_InfantryForce, constant.OBJECTIVE_DATA_STATE, 1)
  while true do
    if IsDead(Air_Vehicle.WFtcopterCutscene0002) then
      PhoneMessage(76, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Sad)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end

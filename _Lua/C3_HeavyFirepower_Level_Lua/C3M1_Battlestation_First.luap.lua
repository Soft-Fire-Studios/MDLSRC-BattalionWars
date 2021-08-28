function C3M1_Battlestation_First(owner)
  local AntiAirObjective = function()
    if not IsDead(Troop.Xmissile0011) and not IsDead(Troop.Xmissile0012) then
      PhoneMessage(23, constant.ID_NONE, 0, 10, SpriteID.CO_WF_Betty_Happy)
    end
    if not IsDead(Troop.Xmissile0011) or not IsDead(Troop.Xmissile0012) then
      SetObjectiveData(Objective.AntiAir, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if not IsDead(Troop.Xmissile0011) then
      SetObjectiveData(Objective_Marker.AntiAir0001, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    end
    if not IsDead(Troop.Xmissile0012) then
      SetObjectiveData(Objective_Marker.AntiAir0002, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    end
  end
  local BattlestationObjective = function()
    PhoneMessage(8, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
    PhoneMessage(28, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
    FollowWaypoint(Ground_Vehicle.Xbattlestation0002, Waypoint.Entity0000, 5, 10, constant.ORDER_FORCED)
    SetObjectiveData(Objective_Marker.CounterAttack, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    SetObjectiveData(Objective_Marker.BattlestationFirstObjective, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    SetObjectiveData(Objective.CounterAttack, constant.OBJECTIVE_DATA_STATE, 1)
    SetObjectiveData(Objective.BattlestationFirst, constant.OBJECTIVE_DATA_VISIBLE, 1)
  end
  while true do
    if IsDead(Ground_Vehicle.Xbattlestation0002) then
      FirstBattlestationIsDead = 1
      BattlestationMoved = 1
      SetObjectiveData(Objective_Marker.BattlestationFirstObjective, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.CounterAttack, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.BattlestationFirst, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.CounterAttack, constant.OBJECTIVE_DATA_STATE, 1)
      if BattlestationMessageDone == 0 then
        SetObjectiveData(Objective.BeachCorridor, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.BeachCorridor, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      break
    end
    if 0 < GetPlayerUnit() and IsInRectangle(GetPlayerUnit(), -1000, -225, 1000, 1000) and FirstBattlestationMessage == 0 then
      FirstBattlestationMessage = 1
      AntiAirObjective()
    end
    if GetTargetedObject() == Troop.Xmissile0011 and FirstBattlestationMessage == 0 then
      FirstBattlestationMessage = 1
      AntiAirObjective()
    end
    if GetTargetedObject() == Troop.Xmissile0012 and FirstBattlestationMessage == 0 then
      FirstBattlestationMessage = 1
      AntiAirObjective()
    end
    if 0 < GetPlayerUnit() and (IsInRectangle(GetPlayerUnit(), -1000, -125, 1000, 1000) or IsInRectangle(GetPlayerUnit(), -170, -1000, 1000, 1000) or IsInRectangle(GetPlayerUnit(), -1000, -425, -1000, 1000)) and BattlestationMoved == 0 then
      BattlestationMoved = 1
      BattlestationObjective()
    end
    if GetTargetedObject() == Ground_Vehicle.Xbattlestation0002 and BattlestationMoved == 0 then
      BattlestationMoved = 1
      BattlestationObjective()
    end
    if IsDead(Troop.Xmissile0011) and IsDead(Troop.Xmissile0012) and BattlestationMoved == 0 then
      BattlestationMoved = 1
      BattlestationObjective()
    end
    EndFrame()
  end
  EndFrame()
  return
end

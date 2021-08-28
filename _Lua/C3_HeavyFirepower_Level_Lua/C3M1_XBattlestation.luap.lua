function C3M1_XBattlestation(owner)
  while true do
    if IsDead(Ground_Vehicle.Xbattlestation0001) then
      SetObjectiveData(Objective_Marker.BattlestationObjective, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.BattlestationSecond, constant.OBJECTIVE_DATA_STATE, 1)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end

function C3M1_XAntiAir(owner)
  while true do
    if IsDead(Troop.Xmissile0011) then
      SetObjectiveData(Objective_Marker.AntiAir0001, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Troop.Xmissile0012) then
      SetObjectiveData(Objective_Marker.AntiAir0002, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Troop.Xmissile0011) and IsDead(Troop.Xmissile0012) then
      SetObjectiveData(Objective.AntiAir, constant.OBJECTIVE_DATA_STATE, 1)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end

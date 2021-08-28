function C1M1_Listening_Posts(owner)
  while true do
    if (IsDead(Building.TlisteningPost0001) or IsDead(Building.TlisteningPost0002) or IsDead(Building.TlisteningPost0003)) and C1M1_SpyBalloons == 0 then
      SetObjectiveData(Objective_Marker.ObjectiveTwo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end

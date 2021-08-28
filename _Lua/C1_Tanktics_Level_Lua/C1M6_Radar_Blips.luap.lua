function C1M6_Radar_Blips(owner)
  local TheavyTank0001StarDone = 0
  local TheavyTank0002StarDone = 0
  local TheavyTank0003StarDone = 0
  local TheavyTank0004StarDone = 0
  local TlightTank0001StarDone = 0
  local TlightTank0002StarDone = 0
  local TlightTank0003StarDone = 0
  local TlightTank0004StarDone = 0
  local TlightTank0005StarDone = 0
  local TlightTank0006StarDone = 0
  local TheavyTank0001StarOff = 1
  local TheavyTank0002StarOff = 1
  local TheavyTank0003StarOff = 1
  local TheavyTank0004StarOff = 1
  local TlightTank0001StarOff = 1
  local TlightTank0003StarOff = 1
  local TlightTank0004StarOff = 1
  local TlightTank0005StarOff = 1
  local TlightTank0002StarOff = 1
  local TlightTank0006StarOff = 1
  while true do
    if IsDead(Ground_Vehicle.TheavyTank0001) and TheavyTank0001StarOff == 1 then
      TheavyTank0001StarOff = 2
      SetObjectiveData(Objective_Marker.MarkerOne, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Ground_Vehicle.TheavyTank0002) and TheavyTank0002StarOff == 1 then
      TheavyTank0002StarOff = 2
      SetObjectiveData(Objective_Marker.MarkerTwo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Ground_Vehicle.TheavyTank0003) and TheavyTank0003StarOff == 1 then
      TheavyTank0003StarOff = 2
      SetObjectiveData(Objective_Marker.MarkerThree, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Ground_Vehicle.TheavyTank0004) and TheavyTank0004StarOff == 1 then
      TheavyTank0004StarOff = 2
      SetObjectiveData(Objective_Marker.MarkerFour, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Ground_Vehicle.TlightTank0001) and TlightTank0001StarOff == 1 then
      TlightTank0001StarOff = 2
      SetObjectiveData(Objective_Marker.MarkerFive, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Air_Vehicle.Tgunship0001) and TlightTank0002StarOff == 1 then
      TlightTank0002StarOff = 2
      SetObjectiveData(Objective_Marker.MarkerSix, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Ground_Vehicle.TlightTank0003) and TlightTank0003StarOff == 1 then
      TlightTank0003StarOff = 2
      SetObjectiveData(Objective_Marker.MarkerSeven, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Ground_Vehicle.TlightTank0004) and TlightTank0004StarOff == 1 then
      TlightTank0004StarOff = 2
      SetObjectiveData(Objective_Marker.MarkerEight, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Ground_Vehicle.TlightTank0005) and TlightTank0005StarOff == 1 then
      TlightTank0005StarOff = 2
      SetObjectiveData(Objective_Marker.MarkerNine, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Air_Vehicle.Tgunship0002) and TlightTank0006StarOff == 1 then
      TlightTank0006StarOff = 2
      SetObjectiveData(Objective_Marker.MarkerTen, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    EndFrame()
  end
  return
end

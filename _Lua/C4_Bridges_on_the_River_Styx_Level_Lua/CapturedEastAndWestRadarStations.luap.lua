function CapturedEastAndWestRadarStations(owner)
  repeat
    if missionfailed == 1 then
      return
    end
    if easternpointcaptured == 0 then
      if GetState(Capture_Point.EasternPoint) == flag.TYPE_WFRONTIER then
        Kill(Destroyable_Object.RadarStationEast)
        SetObjectiveData(Objective_Marker.EastBridge, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        easternpointcaptured = 1
        DebugOut("Eastern Point Captured")
      end
      EndFrame()
    end
    if westernpointcaptured == 0 then
      if GetState(Capture_Point.WesternPoint) == flag.TYPE_WFRONTIER then
        Kill(Destroyable_Object.RadarStationWest)
        SetObjectiveData(Objective_Marker.WestBridge, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        westernpointcaptured = 1
        DebugOut("Western Point Captured")
      end
      EndFrame()
    end
  until easternpointcaptured == 1 and westernpointcaptured == 1
end

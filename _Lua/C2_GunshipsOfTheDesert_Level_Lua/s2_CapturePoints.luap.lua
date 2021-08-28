function s2_CapturePoints(owner)
  local CapturePointADone = 0
  local CapturePointBDone = 0
  local CapturePointCDone = 0
  while true do
    if GetState(Capture_Point.Mining_Base) == flag.TYPE_WFRONTIER and CapturePointADone == 0 then
      CapturePointADone = 1
      DebugOut("Capture Point A Done!")
      SetObjectiveData(Objective_Marker.ObjectiveMiningBase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      CapturePointsCaptured = CapturePointsCaptured + 1
      DebugOut("Number of Capture Points captured", CapturePointsCaptured)
    end
    if GetState(Capture_Point.Mining_Base_B) == flag.TYPE_WFRONTIER and CapturePointBDone == 0 then
      CapturePointBDone = 1
      DebugOut("Capture Point B Done!")
      SetObjectiveData(Objective_Marker.ObjectiveMiningBaseB, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      CapturePointsCaptured = CapturePointsCaptured + 1
      DebugOut("Number of Capture Points captured", CapturePointsCaptured)
    end
    if GetState(Capture_Point.Mining_Base_C) == flag.TYPE_WFRONTIER and CapturePointCDone == 0 then
      CapturePointCDone = 1
      DebugOut("Capture Point C Done!")
      SetObjectiveData(Objective_Marker.ObjectiveMiningBaseC, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      CapturePointsCaptured = CapturePointsCaptured + 1
      DebugOut("Number of Capture Points captured", CapturePointsCaptured)
    end
    EndFrame()
  end
  EndFrame()
  return
end

function Capture_Points(owner)
  local loop = 0
  while loop == 0 do
    if west == 0 and GetState(Capture_Point.west) == flag.TYPE_WFRONTIER then
      DebugOut("west")
      SetObjectiveData(Objective.West, constant.OBJECTIVE_DATA_STATE, 1)
      xflag = xflag + 1
      west = 1
    elseif east == 0 and GetState(Capture_Point.east) == flag.TYPE_WFRONTIER then
      DebugOut("east")
      SetObjectiveData(Objective.East, constant.OBJECTIVE_DATA_STATE, 1)
      xflag = xflag + 1
      east = 1
    else
      if east + west == 2 then
        loop = 1
      else
      end
    end
    EndFrame()
  end
end

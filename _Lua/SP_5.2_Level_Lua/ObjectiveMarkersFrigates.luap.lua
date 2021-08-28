function ObjectiveMarkersFrigates(owner)
  scriptObjectiveMarkerFrigates = owner
  local currentobjectivemarker = 0
  local oldobjectivemarker = Objective_Marker.Frigate3
  while true do
    local closestDist = 100000
    local TempDist = 0
    local closestobjectivemarker = 0
    if frigateobjective == 1 then
      SetObjectiveData(currentobjectivemarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(oldobjectivemarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      break
    end
    if IsDead(Water_Vehicle.Frigate1) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Frigate1)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Frigate1
        closestDist = TempDist
      end
    end
    if IsDead(Water_Vehicle.Frigate2) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Frigate2)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Frigate2
        closestDist = TempDist
      end
    end
    if IsDead(Water_Vehicle.Frigate3) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Frigate3)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Frigate3
        closestDist = TempDist
      end
    end
    if closestobjectivemarker ~= oldobjectivemarker then
      currentobjectivemarker = closestobjectivemarker
      DebugOut("Closest objective has changed. Now - ", currentobjectivemarker)
      SetObjectiveData(oldobjectivemarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(currentobjectivemarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      oldobjectivemarker = currentobjectivemarker
    end
    WaitFor(1)
    EndFrame()
  end
end

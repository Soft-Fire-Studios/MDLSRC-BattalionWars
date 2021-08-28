function ObjectiveMarkersBattleships(owner)
  scriptObjectiveMarkerBattleships = owner
  local currentobjectivemarker = 0
  local oldobjectivemarker = Objective_Marker.Battleship7
  while true do
    local closestDist = 100000
    local TempDist = 0
    local closestobjectivemarker = 0
    if battleshipobjective == 1 then
      SetObjectiveData(currentobjectivemarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(oldobjectivemarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      break
    end
    if IsDead(Water_Vehicle.Battleship1) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Battleship1)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Battleship1
        closestDist = TempDist
      end
    end
    if IsDead(Water_Vehicle.Battleship2) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Battleship2)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Battleship2
        closestDist = TempDist
      end
    end
    if IsDead(Water_Vehicle.Battleship4) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Battleship4)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Battleship4
        closestDist = TempDist
      end
    end
    if IsDead(Water_Vehicle.Battleship5) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Battleship5)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Battleship5
        closestDist = TempDist
      end
    end
    if IsDead(Water_Vehicle.Battleship6) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Battleship6)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Battleship6
        closestDist = TempDist
      end
    end
    if IsDead(Water_Vehicle.Battleship7) == false then
      TempDist = GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.Battleship7)
      if closestDist > TempDist then
        closestobjectivemarker = Objective_Marker.Battleship7
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

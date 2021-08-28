function Z_removed_OBJECTIVE_MARKERS_SOLAR_TANK_ARMY(owner)
  KillTanksObjectivesScript = owner
  repeat
    EndFrame()
  until SolarTankArmyOrdered == true
  repeat
    if IsDead(Ground_Vehicle.SEltankA1) == false and TankStar == 0 then
      SetObjectiveData(Objective_Marker.SEtank1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      TankStar = 1
      repeat
        if IsDead(Ground_Vehicle.SEltankA1) == true then
          SetObjectiveData(Objective_Marker.SEtank1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          TankStar = 0
        end
        EndFrame()
      until TankStar == 0
    end
    if IsDead(Ground_Vehicle.SEltankA2) == false and TankStar == 0 then
      SetObjectiveData(Objective_Marker.SEtank2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      TankStar = 1
      repeat
        if IsDead(Ground_Vehicle.SEltankA2) == true then
          SetObjectiveData(Objective_Marker.SEtank2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          TankStar = 0
        end
        EndFrame()
      until TankStar == 0
    end
    if IsDead(Ground_Vehicle.SEltankA3) == false and TankStar == 0 then
      SetObjectiveData(Objective_Marker.SEtank3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      TankStar = 1
      repeat
        if IsDead(Ground_Vehicle.SEltankA3) == true then
          SetObjectiveData(Objective_Marker.SEtank3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          TankStar = 0
        end
        EndFrame()
      until TankStar == 0
    end
    if IsDead(Ground_Vehicle.SEltankA4) == false and TankStar == 0 then
      SetObjectiveData(Objective_Marker.SEtank4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      TankStar = 1
      repeat
        if IsDead(Ground_Vehicle.SEltankA4) == true then
          SetObjectiveData(Objective_Marker.SEtank4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          TankStar = 0
        end
        EndFrame()
      until TankStar == 0
    end
    WaitFor(0.1)
    EndFrame()
  until TroopOrder2 == true or missionover == 1
end

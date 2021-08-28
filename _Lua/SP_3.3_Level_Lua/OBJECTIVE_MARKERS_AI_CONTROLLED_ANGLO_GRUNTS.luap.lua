function OBJECTIVE_MARKERS_AI_CONTROLLED_ANGLO_GRUNTS(owner)
  KillGruntScript = owner
  repeat
    EndFrame()
  until AIControlledGruntsBegun == true
  repeat
    if IsDead(Troop.AIcontrolledgrunt1) == false and StarMan == 0 then
      SetObjectiveData(Objective_Marker.Grunt1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      StarMan = 1
      repeat
        if IsDead(Troop.AIcontrolledgrunt1) == true then
          SetObjectiveData(Objective_Marker.Grunt1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          StarMan = 0
        end
        EndFrame()
      until StarMan == 0
    end
    EndFrame()
    if IsDead(Troop.AIcontrolledgrunt2) == false and StarMan == 0 then
      SetObjectiveData(Objective_Marker.Grunt2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      StarMan = 1
      repeat
        if IsDead(Troop.AIcontrolledgrunt2) == true then
          SetObjectiveData(Objective_Marker.Grunt2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          StarMan = 0
        end
        EndFrame()
      until StarMan == 0
    end
    EndFrame()
    if IsDead(Troop.AIcontrolledgrunt3) == false and StarMan == 0 then
      SetObjectiveData(Objective_Marker.Grunt3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      StarMan = 1
      repeat
        if IsDead(Troop.AIcontrolledgrunt3) == true then
          SetObjectiveData(Objective_Marker.Grunt3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          StarMan = 0
        end
        EndFrame()
      until StarMan == 0
    end
    EndFrame()
    if IsDead(Troop.AIcontrolledgrunt4) == false and StarMan == 0 then
      SetObjectiveData(Objective_Marker.Grunt4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      StarMan = 1
      repeat
        if IsDead(Troop.AIcontrolledgrunt4) == true then
          SetObjectiveData(Objective_Marker.Grunt4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          StarMan = 0
        end
        EndFrame()
      until StarMan == 0
    end
    EndFrame()
    if IsDead(Troop.AIcontrolledgrunt5) == false and StarMan == 0 then
      SetObjectiveData(Objective_Marker.Grunt5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      StarMan = 1
      repeat
        if IsDead(Troop.AIcontrolledgrunt5) == true then
          SetObjectiveData(Objective_Marker.Grunt5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          StarMan = 0
        end
        EndFrame()
      until StarMan == 0
    end
    EndFrame()
    if IsDead(Troop.AIcontrolledgrunt6) == false and StarMan == 0 then
      SetObjectiveData(Objective_Marker.Grunt6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      StarMan = 1
      repeat
        if IsDead(Troop.AIcontrolledgrunt6) == true then
          SetObjectiveData(Objective_Marker.Grunt6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          StarMan = 0
        end
        EndFrame()
      until StarMan == 0
    end
    EndFrame()
    if IsDead(Troop.AIcontrolledgrunt7) == false and StarMan == 0 then
      SetObjectiveData(Objective_Marker.Grunt7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      StarMan = 1
      repeat
        if IsDead(Troop.AIcontrolledgrunt7) == true then
          SetObjectiveData(Objective_Marker.Grunt7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          StarMan = 0
        end
        EndFrame()
      until StarMan == 0
    end
    EndFrame()
    if IsDead(Troop.AIcontrolledgrunt8) == false and StarMan == 0 then
      SetObjectiveData(Objective_Marker.Grunt8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      StarMan = 1
      repeat
        if IsDead(Troop.AIcontrolledgrunt8) == true then
          SetObjectiveData(Objective_Marker.Grunt8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          StarMan = 0
        end
        EndFrame()
      until StarMan == 0
    end
    EndFrame()
    if IsDead(Troop.AIcontrolledgrunt9) == false and StarMan == 0 then
      SetObjectiveData(Objective_Marker.Grunt9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      StarMan = 1
      repeat
        if IsDead(Troop.AIcontrolledgrunt9) == true then
          SetObjectiveData(Objective_Marker.Grunt9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          StarMan = 0
        end
        EndFrame()
      until StarMan == 0
    end
    EndFrame()
    if IsDead(Troop.AIcontrolledgrunt10) == false and StarMan == 0 then
      SetObjectiveData(Objective_Marker.Grunt10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      StarMan = 1
      repeat
        if IsDead(Troop.AIcontrolledgrunt10) == true then
          SetObjectiveData(Objective_Marker.Grunt10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          StarMan = 0
        end
        EndFrame()
      until StarMan == 0
    end
    EndFrame()
    WaitFor(0.1)
  until CutsceneStatueTriggered == true
end

function PrimaryObjective02DisableTheGenerators(owner)
  local generator01 = 0
  local generator02 = 0
  local generator03 = 0
  local generator04 = 0
  local generatorobjective01 = 0
  local generatorobjective02 = 0
  local generatorobjective03 = 0
  local generatorobjective04 = 0
  local generators = 0
  while missionend == 0 do
    if generator01 == 0 and IsDead(Building.TundranGenerator01) then
      SetObjectiveData(Objective_Marker.Generator01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      generators = generators + 1
      generator01 = 1
      DebugOut("*PrimaryObjective02DisableTheGenerators* - 1. Generator01 has been destroyed")
    end
    EndFrame()
    if generator02 == 0 and IsDead(Building.TundranGenerator02) then
      SetObjectiveData(Objective_Marker.Generator02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      generators = generators + 1
      generator02 = 1
      DebugOut("*PrimaryObjective02DisableTheGenerators* - 2. Generator02 has been destroyed")
    end
    EndFrame()
    if generator03 == 0 and IsDead(Building.TundranGenerator03) then
      SetObjectiveData(Objective_Marker.Generator03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      generators = generators + 1
      generator03 = 1
      DebugOut("*PrimaryObjective02DisableTheGenerators* - 3. Generator03 has been destroyed")
    end
    EndFrame()
    if generator04 == 0 and IsDead(Building.TundranGenerator04) then
      SetObjectiveData(Objective_Marker.Generator04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      generators = generators + 1
      generator04 = 1
      DebugOut("*PrimaryObjective02DisableTheGenerators* - 4. Generator04 has been destroyed")
    end
    EndFrame()
    if generators == 1 and generatorobjective01 == 0 then
      SetObjectiveData(Objective.DestroyGenerator, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyGenerator01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      generatorobjective01 = 1
      DebugOut("*PrimaryObjective02DisableTheGenerators* - 5. A Generator has been destroyed. 3 more to go")
    end
    EndFrame()
    if generators == 2 and generatorobjective02 == 0 then
      SetObjectiveData(Objective.DestroyGenerator, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyGenerator01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyGenerator02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      generatorobjective02 = 1
      DebugOut("*PrimaryObjective02DisableTheGenerators* - 6. 2 Generators have been destroyed. 2 more to go")
    end
    EndFrame()
    if generators == 3 and generatorobjective03 == 0 then
      SetObjectiveData(Objective.DestroyGenerator, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyGenerator01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyGenerator02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyGenerator03, constant.OBJECTIVE_DATA_VISIBLE, 1)
      generatorobjective03 = 1
      DebugOut("*PrimaryObjective02DisableTheGenerators* - 7. 3 Generators have been destroyed. 1 more to go")
    end
    EndFrame()
    if generators == 4 and generatorobjective04 == 0 then
      SetObjectiveData(Objective.DestroyGenerator, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyGenerator01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyGenerator02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyGenerator03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyGenerator04, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.DestroyGenerator04, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.DestroyTundranAirTransport, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.TundranAirBaseWaypoint, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      Objective02 = 1
      generatorobjective04 = 1
      DebugOut("*PrimaryObjective02DisableTheGenerators* - 8. All 4 Generators have been destroyed. OBJECTIVE COMPLETE")
      break
    end
    EndFrame()
  end
end

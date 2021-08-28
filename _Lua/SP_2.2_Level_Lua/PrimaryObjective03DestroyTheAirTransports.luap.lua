function PrimaryObjective03DestroyTheAirTransports(owner)
  local airtransport01 = 0
  local airtransport02 = 0
  local airtransport03 = 0
  local airtransport04 = 0
  local airtransportobjective01 = 0
  local airtransportobjective02 = 0
  local airtransportobjective03 = 0
  local airtransportobjective04 = 0
  local airtransports = 0
  SetUnitInvulnerable(Air_Vehicle.TundranAirTransport01, true)
  SetUnitInvulnerable(Air_Vehicle.TundranAirTransport02, true)
  SetUnitInvulnerable(Air_Vehicle.TundranAirTransport03, true)
  SetUnitInvulnerable(Air_Vehicle.TundranAirTransport04, true)
  repeat
    EndFrame()
  until EndCutscene04 == 1
  while missionend == 0 do
    if airtransport01 == 0 and IsDead(Air_Vehicle.TundranAirTransport01) then
      SetObjectiveData(Objective_Marker.TundranAirTransport01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Kill(Building.TundranAirTransport01RefuelingStation)
      airtransports = airtransports + 1
      airtransport01 = 1
      DebugOut("*PrimaryObjective03DestroyTheAirTransports* - 1. AirTransport01 has been destroyed")
    end
    EndFrame()
    if airtransport02 == 0 and IsDead(Air_Vehicle.TundranAirTransport02) then
      SetObjectiveData(Objective_Marker.TundranAirTransport02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Kill(Building.TundranAirTransport02RefuelingStation)
      airtransports = airtransports + 1
      airtransport02 = 1
      DebugOut("*PrimaryObjective03DestroyTheAirTransports* - 2. AirTransport02 has been destroyed")
    end
    EndFrame()
    if airtransport03 == 0 and IsDead(Air_Vehicle.TundranAirTransport03) then
      SetObjectiveData(Objective_Marker.TundranAirTransport03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Kill(Building.TundranAirTransport03RefuelingStation)
      airtransports = airtransports + 1
      airtransport03 = 1
      DebugOut("*PrimaryObjective03DestroyTheAirTransports* - 3. AirTransport03 has been destroyed")
    end
    EndFrame()
    if airtransport04 == 0 and IsDead(Air_Vehicle.TundranAirTransport04) then
      SetObjectiveData(Objective_Marker.TundranAirTransport04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Kill(Building.TundranAirTransport04RefuelingStation)
      airtransports = airtransports + 1
      airtransport04 = 1
      DebugOut("*PrimaryObjective03DestroyTheAirTransports* - 4. AirTransport04 has been destroyed")
    end
    EndFrame()
    if airtransports == 1 and airtransportobjective01 == 0 then
      GoToArea(Troop.TundranAACounterTroop01, -17, 543, 10, constant.ORDER_NORMAL)
      GoToArea(Troop.TundranAACounterTroop02, -17, 543, 10, constant.ORDER_NORMAL)
      GoToArea(Ground_Vehicle.TundranHeavyTank03, -17, 543, 20, constant.ORDER_NORMAL)
      GoToArea(Ground_Vehicle.TundranHeavyTank04, -17, 543, 20, constant.ORDER_NORMAL)
      SetObjectiveData(Objective.DestroyTundranAirTransport, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyTundranAirTransport01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      airtransportobjective01 = 1
      DebugOut("*PrimaryObjective03DestroyTheAirTransports* - 5. An Air Transport has been destroyed. 3 more to go")
    end
    EndFrame()
    if airtransports == 2 and airtransportobjective02 == 0 then
      GoToArea(Troop.TundranCounterFlameVet01, -17, 543, 10, constant.ORDER_NORMAL)
      GoToArea(Troop.TundranCounterFlameVet02, -17, 543, 10, constant.ORDER_NORMAL)
      GoToArea(Troop.TundranCounterFlameVet03, -17, 543, 10, constant.ORDER_NORMAL)
      SetObjectiveData(Objective.DestroyTundranAirTransport, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyTundranAirTransport01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyTundranAirTransport02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      airtransportobjective02 = 1
      DebugOut("*PrimaryObjective03DestroyTheAirTransports* - 6. 2 Air Transports have been destroyed. 2 more to go")
    end
    EndFrame()
    if airtransports == 3 and airtransportobjective03 == 0 then
      GoToArea(Troop.TundranCounterAAVet01, -17, 543, 10, constant.ORDER_NORMAL)
      GoToArea(Troop.TundranCounterAAVet02, -17, 543, 10, constant.ORDER_NORMAL)
      GoToArea(Troop.TundranCounterAAVet03, -17, 543, 10, constant.ORDER_NORMAL)
      GoToArea(Troop.TundranCounterAAVet04, -17, 543, 10, constant.ORDER_NORMAL)
      SetObjectiveData(Objective.DestroyTundranAirTransport, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyTundranAirTransport01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyTundranAirTransport02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyTundranAirTransport03, constant.OBJECTIVE_DATA_VISIBLE, 1)
      airtransportobjective03 = 1
      DebugOut("*PrimaryObjective03DestroyTheAirTransports* - 7. 3 Air Transports have been destroyed. 1 more to go")
    end
    EndFrame()
    if airtransports == 4 and airtransportobjective04 == 0 then
      ClearMessageQueue()
      SetObjectiveData(Objective.DestroyTundranAirTransport, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyTundranAirTransport01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyTundranAirTransport02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyTundranAirTransport03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.DestroyTundranAirTransport04, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.DestroyTundranAirTransport04, constant.OBJECTIVE_DATA_STATE, 1)
      Objective03 = 1
      airtransportobjective04 = 1
      DebugOut("*PrimaryObjective03DestroyTheAirTransports* - 8. 4 Air Transports have been destroyed. OBJECTIVE COMPLETE")
      break
    end
    EndFrame()
  end
end

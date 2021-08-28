function PrimaryObjective03CountDown(owner)
  local counter01 = 0
  local counter02 = 0
  local counter03 = 0
  local counter04 = 0
  local airtransport01 = 0
  local airtransport02 = 0
  local airtransport03 = 0
  local airtransport04 = 0
  local takingoff01 = 0
  local takingoff02 = 0
  local takingoff03 = 0
  local takingoff04 = 0
  repeat
    EndFrame()
  until EndCutscene04 == 1
  counter01 = GetTime()
  while missionend == 0 do
    if takingoff01 == 0 and GetTime() > counter01 + 50 and IsDead(Air_Vehicle.TundranAirTransport01) == false then
      Spawn(Troop.TundranAirTransport01Occupant01)
      PutUnitInVehicle(Troop.TundranAirTransport01Occupant01, Air_Vehicle.TundranAirTransport01, 0)
      ClearMessageQueue()
      PhoneMessage(78, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      WaitFor(2)
      GoToArea(Air_Vehicle.TundranAirTransport01, 10, 420, 20, 0, constant.ORDER_FORCED)
      counter01 = 0
      takingoff01 = 1
    end
    EndFrame()
    if counter02 == 1 then
      counter02 = GetTime()
      airtransport02 = true
    end
    if takingoff02 == 0 and airtransport02 == true and GetTime() > counter02 + 18 and IsDead(Air_Vehicle.TundranAirTransport02) == false then
      Spawn(Troop.TundranAirTransport02Occupant01)
      PutUnitInVehicle(Troop.TundranAirTransport02Occupant01, Air_Vehicle.TundranAirTransport02, 0)
      ClearMessageQueue()
      PhoneMessage(78, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      WaitFor(2)
      GoToArea(Air_Vehicle.TundranAirTransport02, 10, 420, 20, 0, constant.ORDER_FORCED)
      counter02 = 0
      takingoff02 = 1
    end
    EndFrame()
    if counter03 == 1 then
      counter03 = GetTime()
      airtransport03 = true
    end
    if takingoff03 == 0 and airtransport03 == true and GetTime() > counter03 + 18 and IsDead(Air_Vehicle.TundranAirTransport03) == false then
      Spawn(Troop.TundranAirTransport03Occupant01)
      PutUnitInVehicle(Troop.TundranAirTransport03Occupant01, Air_Vehicle.TundranAirTransport03, 0)
      ClearMessageQueue()
      PhoneMessage(78, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      WaitFor(2)
      GoToArea(Air_Vehicle.TundranAirTransport03, 10, 420, 20, 0, constant.ORDER_FORCED)
      counter03 = 0
      takingoff03 = 1
    end
    EndFrame()
    if counter04 == 1 then
      counter04 = GetTime()
      airtransport04 = true
    end
    if takingoff04 == 0 and airtransport04 == true and GetTime() > counter04 + 18 and IsDead(Air_Vehicle.TundranAirTransport04) == false then
      Spawn(Troop.TundranAirTransport04Occupant01)
      PutUnitInVehicle(Troop.TundranAirTransport04Occupant01, Air_Vehicle.TundranAirTransport04, 0)
      ClearMessageQueue()
      PhoneMessage(78, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      WaitFor(2)
      GoToArea(Air_Vehicle.TundranAirTransport04, 10, 420, 20, 0, constant.ORDER_FORCED)
      counter04 = 0
      takingoff04 = 1
    end
    EndFrame()
    if airtransport01 == 0 and IsDead(Air_Vehicle.TundranAirTransport01) == true then
      DebugOut("random =", random)
      ClearMessageQueue()
      if random < 3 then
        if IsDead(Air_Vehicle.TundranAirTransport02) == false then
          PhoneMessage(87, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter02 = 1
        elseif IsDead(Air_Vehicle.TundranAirTransport03) == false then
          PhoneMessage(87, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter03 = 1
        elseif IsDead(Air_Vehicle.TundranAirTransport04) == false then
          PhoneMessage(87, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter04 = 1
        end
      elseif random > 3 and random < 7 then
        if IsDead(Air_Vehicle.TundranAirTransport03) == false then
          PhoneMessage(87, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter03 = 1
        elseif IsDead(Air_Vehicle.TundranAirTransport04) == false then
          PhoneMessage(87, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter04 = 1
        elseif IsDead(Air_Vehicle.TundranAirTransport02) == false then
          PhoneMessage(87, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter02 = 1
        end
      elseif random > 7 then
        if IsDead(Air_Vehicle.TundranAirTransport04) == false then
          PhoneMessage(87, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter04 = 1
        elseif IsDead(Air_Vehicle.TundranAirTransport02) == false then
          PhoneMessage(87, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter02 = 1
        elseif IsDead(Air_Vehicle.TundranAirTransport03) == false then
          PhoneMessage(87, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter03 = 1
        end
      end
      airtransport01 = false
    end
    EndFrame()
    if airtransport02 == true and IsDead(Air_Vehicle.TundranAirTransport02) == true then
      DebugOut("random =", random)
      ClearMessageQueue()
      if random < 5 then
        if IsDead(Air_Vehicle.TundranAirTransport03) == false then
          PhoneMessage(88, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter03 = 1
        elseif IsDead(Air_Vehicle.TundranAirTransport04) == false then
          PhoneMessage(88, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter04 = 1
        end
      elseif random > 5 then
        if IsDead(Air_Vehicle.TundranAirTransport04) == false then
          PhoneMessage(88, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter04 = 1
        elseif IsDead(Air_Vehicle.TundranAirTransport03) == false then
          PhoneMessage(88, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter03 = 1
        end
      end
      airtransport02 = false
    end
    EndFrame()
    if airtransport03 == true and IsDead(Air_Vehicle.TundranAirTransport03) == true then
      DebugOut("random =", random)
      ClearMessageQueue()
      if random < 5 then
        if IsDead(Air_Vehicle.TundranAirTransport04) == false then
          PhoneMessage(87, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter04 = 1
        elseif IsDead(Air_Vehicle.TundranAirTransport02) == false then
          PhoneMessage(87, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter02 = 1
        end
      elseif random > 5 then
        if IsDead(Air_Vehicle.TundranAirTransport02) == false then
          PhoneMessage(87, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter02 = 1
        elseif IsDead(Air_Vehicle.TundranAirTransport04) == false then
          PhoneMessage(87, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter04 = 1
        end
      end
      airtransport03 = false
    end
    EndFrame()
    if airtransport04 == true and IsDead(Air_Vehicle.TundranAirTransport04) == true then
      DebugOut("random =", random)
      ClearMessageQueue()
      if random < 5 then
        if IsDead(Air_Vehicle.TundranAirTransport03) == false then
          PhoneMessage(88, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter03 = 1
        elseif IsDead(Air_Vehicle.TundranAirTransport02) == false then
          PhoneMessage(88, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter02 = 1
        end
      elseif random > 5 then
        if IsDead(Air_Vehicle.TundranAirTransport02) == false then
          PhoneMessage(88, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter02 = 1
        elseif IsDead(Air_Vehicle.TundranAirTransport03) == false then
          PhoneMessage(88, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          SetObjectiveData(Objective_Marker.TundranAirTransport03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          counter03 = 1
        end
      end
      airtransport04 = false
    end
    EndFrame()
  end
end

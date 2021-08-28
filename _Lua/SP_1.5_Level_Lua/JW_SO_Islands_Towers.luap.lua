function JW_SO_Islands_Towers(owner)
  local counter = 0
  local islandcounter = 0
  local islandclear1 = 0
  local islandclear2 = 0
  local islandclear3 = 0
  local showisland2 = 0
  local showisland3 = 0
  local aacounter = 0
  local RPG1dead = 0
  local RPG2dead = 0
  local RPG3dead = 0
  local BOMBER2dead = 0
  local RPG4dead = 0
  local RPG5dead = 0
  local RPG6dead = 0
  local ART2dead = 0
  local BOMBER3dead = 0
  local BOMBER5dead = 0
  local BOMBERattack = 0
  repeat
    EndFrame()
  until IntroCutsceneEnd == 1
  repeat
    if RPG1dead == 0 and IsDead(Building.AngloIslandRPG01) then
      DebugOut("Anglo RPG 1 has been destroyed")
      SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      RPG1dead = 1
    elseif RPG2dead == 0 and IsDead(Building.AngloIslandRPG02) then
      DebugOut("Anglo RPG 2 has been destroyed")
      SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      RPG2dead = 1
    elseif showisland2 == 0 and (RPG1dead == 1 and RPG2dead == 1 or counter == 1500) then
      DebugOut("Set up Island 2")
      showisland2 = 1
      counter = 0
      if IsDead(Building.AngloIslandRPG03) == false then
        SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if IsDead(Air_Vehicle.AngloBomber02) == false then
        SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat05, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        PhoneMessage(30, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
        PhoneMessage(18, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
      end
      FollowWaypoint(Unit_Group.SeaTransports, Waypoint.SENavalTransport01Waypoint01, 0, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
    elseif showisland2 == 0 then
      counter = counter + 1
    else
      EndFrame()
    end
    if RPG3dead == 0 and IsDead(Building.AngloIslandRPG03) then
      DebugOut("Anglo RPG 3 has been destroyed")
      SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      RPG3dead = 1
      if BOMBER2dead == 0 then
        AttackTarget(Air_Vehicle.AngloBomber02, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_FORCED)
      end
    elseif BOMBER2dead == 0 and IsDead(Air_Vehicle.AngloBomber02) then
      DebugOut("Anglo BOMBER 2 has been destroyed")
      SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat05, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      BOMBER2dead = 1
    elseif showisland3 == 0 and (RPG3dead == 1 and BOMBER2dead == 1 or counter == 1200) then
      DebugOut("Set up Island 3")
      showisland3 = 1
      counter = 0
      DebugOut("RPG Towers on the second  island has been destroyed, move to the next Island")
      if IsDead(Building.AngloIslandRPG04) == false then
        SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat06, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if IsDead(Building.AngloIslandRPG05) == false then
        SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat07, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if IsDead(Building.AngloIslandRPG06) == false then
        SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat08, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if IsDead(Ground_Vehicle.AngloArtillery02) == false then
        SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat09, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      FollowWaypoint(Unit_Group.SeaTransports, Waypoint.SENavalTransport01Waypoint02, 0, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
    elseif showisland3 == 0 then
      counter = counter + 1
    else
      EndFrame()
    end
    if RPG4dead == 0 and IsDead(Building.AngloIslandRPG04) then
      DebugOut("Anglo RPG 4 has been destroyed")
      SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat06, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      RPG4dead = 1
    elseif RPG5dead == 0 and IsDead(Building.AngloIslandRPG05) then
      DebugOut("Anglo RPG 5 has been destroyed")
      SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat07, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      RPG5dead = 1
    elseif RPG6dead == 0 and IsDead(Building.AngloIslandRPG06) then
      DebugOut("Anglo RPG 6 has been destroyed")
      SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat08, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      RPG6dead = 1
    elseif ART2dead == 0 and IsDead(Ground_Vehicle.AngloArtillery02) then
      DebugOut("Anglo ART 2 has been destroyed")
      SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat09, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      ART2dead = 1
    else
      EndFrame()
    end
    if RPG1dead + RPG2dead + RPG3dead + BOMBER2dead + ART2dead + RPG4dead + RPG5dead + RPG6dead + BOMBER3dead + BOMBER5dead == 1 and islandcounter ~= 1 then
      islandcounter = 1
      SetObjectiveData(Objective.Destroy_Island_Threats_00_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Island_Threats_01_10, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if RPG1dead + RPG2dead + RPG3dead + BOMBER2dead + ART2dead + RPG4dead + RPG5dead + RPG6dead + BOMBER3dead + BOMBER5dead == 2 and islandcounter ~= 2 then
      islandcounter = 2
      SetObjectiveData(Objective.Destroy_Island_Threats_01_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Island_Threats_02_10, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if RPG1dead + RPG2dead + RPG3dead + BOMBER2dead + ART2dead + RPG4dead + RPG5dead + RPG6dead + BOMBER3dead + BOMBER5dead == 3 and islandcounter ~= 3 then
      islandcounter = 3
      SetObjectiveData(Objective.Destroy_Island_Threats_02_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Island_Threats_03_10, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if RPG1dead + RPG2dead + RPG3dead + BOMBER2dead + ART2dead + RPG4dead + RPG5dead + RPG6dead + BOMBER3dead + BOMBER5dead == 4 and islandcounter ~= 4 then
      islandcounter = 4
      SetObjectiveData(Objective.Destroy_Island_Threats_03_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Island_Threats_04_10, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if RPG1dead + RPG2dead + RPG3dead + BOMBER2dead + ART2dead + RPG4dead + RPG5dead + RPG6dead + BOMBER3dead + BOMBER5dead == 5 and islandcounter ~= 5 then
      islandcounter = 5
      SetObjectiveData(Objective.Destroy_Island_Threats_04_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Island_Threats_05_10, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if RPG1dead + RPG2dead + RPG3dead + BOMBER2dead + ART2dead + RPG4dead + RPG5dead + RPG6dead + BOMBER3dead + BOMBER5dead == 6 and islandcounter ~= 6 then
      islandcounter = 6
      SetObjectiveData(Objective.Destroy_Island_Threats_05_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Island_Threats_06_10, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if RPG1dead + RPG2dead + RPG3dead + BOMBER2dead + ART2dead + RPG4dead + RPG5dead + RPG6dead + BOMBER3dead + BOMBER5dead == 7 and islandcounter ~= 7 then
      islandcounter = 7
      SetObjectiveData(Objective.Destroy_Island_Threats_06_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Island_Threats_07_10, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if RPG1dead + RPG2dead + RPG3dead + BOMBER2dead + ART2dead + RPG4dead + RPG5dead + RPG6dead + BOMBER3dead + BOMBER5dead == 8 and islandcounter ~= 8 then
      DebugOut("SO Island Towers Power Objective Complete")
      PowerObjectivesCompleted = PowerObjectivesCompleted + 1
      islandcounter = 8
      SetObjectiveData(Objective.Destroy_Island_Threats_07_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Island_Threats_08_10, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if RPG1dead + RPG2dead + RPG3dead + BOMBER2dead + ART2dead + RPG4dead + RPG5dead + RPG6dead + BOMBER3dead + BOMBER5dead == 9 and islandcounter ~= 9 then
      islandcounter = 9
      SetObjectiveData(Objective.Destroy_Island_Threats_08_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Island_Threats_09_10, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if RPG1dead + RPG2dead + RPG3dead + BOMBER2dead + ART2dead + RPG4dead + RPG5dead + RPG6dead + BOMBER3dead + BOMBER5dead == 10 and islandcounter ~= 10 then
      islandcounter = 10
      SetObjectiveData(Objective.Destroy_Island_Threats_09_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Island_Threats_10_10, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    EndFrame()
  until islandcounter == 8 or transports == 1
  SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat05, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat06, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat07, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat08, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat09, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SecondaryObjectiveDestroyIslandThreat11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Destroy_Island_Threats_00_10, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Destroy_Island_Threats_01_10, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Destroy_Island_Threats_02_10, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Destroy_Island_Threats_03_10, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Destroy_Island_Threats_04_10, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Destroy_Island_Threats_05_10, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Destroy_Island_Threats_06_10, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Destroy_Island_Threats_07_10, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Destroy_Island_Threats_08_10, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Destroy_Island_Threats_09_10, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Destroy_Island_Threats_10_10, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Destroy_Island_Threats_Failed, constant.OBJECTIVE_DATA_STATE, 1)
  if islandcounter < 8 then
    SetObjectiveData(Objective.Destroy_Island_Threats_00_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.Destroy_Island_Threats_01_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.Destroy_Island_Threats_02_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.Destroy_Island_Threats_03_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.Destroy_Island_Threats_04_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.Destroy_Island_Threats_05_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.Destroy_Island_Threats_06_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.Destroy_Island_Threats_07_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.Destroy_Island_Threats_08_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.Destroy_Island_Threats_09_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.Destroy_Island_Threats_10_10, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.Destroy_Island_Threats_Failed, constant.OBJECTIVE_DATA_VISIBLE, 1)
  else
    FollowWaypoint(Unit_Group.SeaTransports, Waypoint.SENavalTransport01Waypoint03, 0, 0, constant.ORDER_FORCED, constant.FORMATION_ALLOWED)
  end
  if transports ~= 1 then
    repeat
      EndFrame()
    until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
    repeat
      EndFrame()
    until ptstarted == 0
    EndFrame()
    PhoneMessageWithObjective(136, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
    PhoneMessage(23, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE)
  end
end

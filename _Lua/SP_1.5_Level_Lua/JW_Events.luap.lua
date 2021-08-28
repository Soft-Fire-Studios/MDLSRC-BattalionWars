function JW_Events(owner)
  local bombersend = 0
  events = owner
  local beach1 = 0
  local beach2 = 0
  local beach3 = 0
  local beach4 = 0
  local aatower1 = 0
  local aatower2 = 0
  local aatower3 = 0
  local aacounter = 0
  Despawn(Ground_Vehicle.AngloArtillery04)
  Despawn(Ground_Vehicle.AngloLightTank01)
  Despawn(Ground_Vehicle.AngloLightTank02)
  Despawn(Water_Vehicle.SEBattleship02)
  AddToGroup(Unit_Group.WF_Grunts, Troop.WesternFrontierGrunt01)
  AddToGroup(Unit_Group.WF_Grunts, Troop.WesternFrontierGrunt02)
  AddToGroup(Unit_Group.WF_Grunts, Troop.WesternFrontierGrunt03)
  AddToGroup(Unit_Group.WF_Grunts, Troop.WesternFrontierGrunt04)
  AddToGroup(Unit_Group.WF_Grunts, Troop.WesternFrontierGrunt05)
  AddToGroup(Unit_Group.WF_Grunts, Troop.WesternFrontierGrunt06)
  AddToGroup(Unit_Group.WF_Grunts, Troop.WesternFrontierGrunt07)
  AddToGroup(Unit_Group.WF_Grunts, Troop.WesternFrontierGrunt08)
  AddToGroup(Unit_Group.WF_Grunts, Troop.WesternFrontierGrunt09)
  AddToGroup(Unit_Group.WF_Grunts, Troop.WesternFrontierGrunt10)
  AddToGroup(Unit_Group.WF_Grunts, Troop.WesternFrontierGrunt11)
  AddToGroup(Unit_Group.WF_Grunts, Troop.WesternFrontierGrunt12)
  PutUnitInVehicle(Troop.AngloGrunt01, Building.AngloAntiAirTower01, 0)
  PutUnitInVehicle(Troop.AngloGrunt02, Building.AngloAntiAirTower02, 0)
  PutUnitInVehicle(Troop.AngloGrunt03, Building.AngloAntiAirTower03, 0)
  repeat
    EndFrame()
  until IntroCutsceneEnd == 1
  SetObjectiveData(Objective_Marker.BeachThreat01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.BeachThreat02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.BeachThreat03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.BeachThreat04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  repeat
    if beach1 == 0 and IsDead(Ground_Vehicle.AngloArtillery03) then
      DebugOut("Anglo ART 3 has been destroyed")
      SetObjectiveData(Objective_Marker.BeachThreat01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      beach1 = 1
    elseif beach2 == 0 and IsDead(Ground_Vehicle.AngloArtillery06) then
      DebugOut("Anglo ART 6 has been destroyed")
      SetObjectiveData(Objective_Marker.BeachThreat04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      beach2 = 1
    elseif beach3 == 0 and IsDead(Building.AngloBeachTower01) then
      DebugOut("Beach Tower 1 has been destroyed")
      SetObjectiveData(Objective_Marker.BeachThreat02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      beach3 = 1
    elseif beach4 == 0 and IsDead(Building.AngloBeachTower02) then
      DebugOut("Beach Tower 2 has been destroyed")
      SetObjectiveData(Objective_Marker.BeachThreat03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      beach4 = 1
    else
      EndFrame()
    end
  until beach1 + beach2 + beach3 + beach4 == 4
  DebugOut("Transport Section Complete")
  transports = 1
  SetInvulnerable(flag.TYPE_WFRONTIER, true)
  repeat
    EndFrame()
  until TransportLandingCutsceneEnd == 2
  WaitFor(8)
  SetInvulnerable(flag.TYPE_WFRONTIER, false)
  repeat
    EndFrame()
  until GetObjectXPosition(Water_Vehicle.SEFrigate01) > -60 or -60 < GetObjectXPosition(Water_Vehicle.SEFrigate02) or -60 < GetObjectXPosition(Water_Vehicle.SEBattleship01) or GetObjectXPosition(Water_Vehicle.SEBattleship02) > -45 or GetHealthPercent(Building.AngloAntiAirTower01) < 100 or GetHealthPercent(Building.AngloAntiAirTower02) < 100 or GetHealthPercent(Building.AngloAntiAirTower03) < 100
  towerview = 1
  DebugOut("Solar Ships have moved east, set up AA Tower Objective")
  ClearMessageQueue()
  PhoneMessageWithObjective(38, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  if IsDead(Building.AngloAntiAirTower01) == false then
    Spawn(Troop.AngloGrunt01)
    SetObjectiveData(Objective_Marker.PrimaryObjectiveDestroyAngloIslesAntiAirTowers01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    EndFrame()
  end
  if IsDead(Building.AngloAntiAirTower02) == false then
    Spawn(Troop.AngloGrunt02)
    SetObjectiveData(Objective_Marker.PrimaryObjectiveDestroyAngloIslesAntiAirTowers02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    EndFrame()
  end
  if IsDead(Building.AngloAntiAirTower03) == false then
    Spawn(Troop.AngloGrunt03)
    SetObjectiveData(Objective_Marker.PrimaryObjectiveDestroyAngloIslesAntiAirTowers03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    EndFrame()
  end
  SetObjectiveData(Objective.PrimaryObjectiveDestroyAngloIslesAntiAirTowers, constant.OBJECTIVE_DATA_VISIBLE, 1)
  repeat
    if bombersend == 0 and GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0 and IsDead(Air_Vehicle.AngloBomber04) == false then
      AttackTarget(Air_Vehicle.AngloBomber04, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_FORCED)
      bombersend = 1
      PhoneMessage(32, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
    end
    if aatower1 == 0 and IsDead(Building.AngloAntiAirTower01) then
      aatower1 = 1
      DebugOut("AngloAntiAirTower01 Dead, Removing Objective Marker")
      SetObjectiveData(Objective_Marker.PrimaryObjectiveDestroyAngloIslesAntiAirTowers01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    elseif aatower2 == 0 and IsDead(Building.AngloAntiAirTower02) then
      aatower2 = 1
      DebugOut("AngloAntiAirTower02 Dead, Removing Objective Marker")
      SetObjectiveData(Objective_Marker.PrimaryObjectiveDestroyAngloIslesAntiAirTowers02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    elseif aatower3 == 0 and IsDead(Building.AngloAntiAirTower03) then
      aatower3 = 1
      DebugOut("AngloAntiAirTower03 Dead, Removing Objective Marker")
      SetObjectiveData(Objective_Marker.PrimaryObjectiveDestroyAngloIslesAntiAirTowers03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    else
      EndFrame()
    end
    if aatower1 + aatower2 + aatower3 == 1 and aacounter ~= 1 then
      SetObjectiveData(Objective.PrimaryObjectiveDestroyAngloIslesAntiAirTowers, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveDestroyAngloIslesAntiAirTowers1, constant.OBJECTIVE_DATA_VISIBLE, 1)
      aacounter = 1
    end
    if aatower1 + aatower2 + aatower3 == 2 and aacounter ~= 2 then
      SetObjectiveData(Objective.PrimaryObjectiveDestroyAngloIslesAntiAirTowers1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveDestroyAngloIslesAntiAirTowers2, constant.OBJECTIVE_DATA_VISIBLE, 1)
      aacounter = 2
    end
    if aatower1 + aatower2 + aatower3 == 3 and aacounter ~= 3 then
      SetObjectiveData(Objective.PrimaryObjectiveDestroyAngloIslesAntiAirTowers2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveDestroyAngloIslesAntiAirTowers3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      aacounter = 3
    end
  until aacounter == 3
  DebugOut("AA Tower Section Complete")
  WaitFor(3)
  aatowers = 1
  repeat
    EndFrame()
  until SeaUnitsWithdrawCutsceneEnd == 1
  DebugOut("Second Mid Level Cutscene Finished")
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.AngloLightTanksAttack)
  DebugOut("Play in old POW Camp, sending in Anglo Light Tank and spawning Flamers")
  AttackTarget(Ground_Vehicle.AngloLightTank03, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_FORCED)
  Spawn(Troop.AngloFlamer07)
  Spawn(Troop.AngloFlamer08)
  Spawn(Troop.AngloFlamer09)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.AngloInfantryAttack01)
  Despawn(Air_Vehicle.SolarAirTransport03)
  Despawn(Air_Vehicle.SolarAirTransport04)
  DebugOut("Player on path to Airbase, sending Flamers to Attack")
  AttackTarget(Troop.AngloFlamer07, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_FORCED)
  AttackTarget(Troop.AngloFlamer08, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_FORCED)
  AttackTarget(Troop.AngloFlamer09, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_FORCED)
  PhoneMessage(140, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.AngloInfantryAttack02)
  Spawn(Ground_Vehicle.AngloLightTank06)
  Spawn(Troop.AngloFlamer12)
  Spawn(Troop.AngloFlamer13)
  Spawn(Troop.AngloFlamer14)
  Spawn(Troop.AngloFlamer15)
  Spawn(Troop.AngloBazookaVet06)
  Spawn(Troop.AngloBazookaVet07)
  Spawn(Troop.AngloBazookaVet08)
  Spawn(Troop.AngloBazookaVet09)
  AttackTarget(Troop.AngloFlamer10, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_FORCED)
  AttackTarget(Troop.AngloFlamer11, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_FORCED)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), 460, -5, 50)
  PhoneMessage(46, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
  GoToArea(Ground_Vehicle.AngloLightTank06, 495, -25, 5)
  GoToArea(Troop.AngloFlamer12, 475, 10, 1)
  GoToArea(Troop.AngloFlamer13, 475, 0, 1)
  GoToArea(Troop.AngloFlamer14, 475, -10, 1)
  GoToArea(Troop.AngloFlamer15, 475, -20, 1)
  GoToArea(Troop.AngloBazookaVet06, 505, 10, 1)
  GoToArea(Troop.AngloBazookaVet07, 505, 0, 1)
  GoToArea(Troop.AngloBazookaVet08, 505, -10, 1)
  GoToArea(Troop.AngloBazookaVet09, 505, -20, 1)
  WaitFor(2)
  AttackTarget(Air_Vehicle.AngloBomber07, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_FORCED)
  repeat
    EndFrame()
  until CheckCapturePoint(Capture_Point.PrimaryObjectiveCaptureAngloIslesAirbase, constant.ARMY_SOLAR, 89, 10, constant.CAPTUREPOINTFLAG_LOWERING) or IsDead(Troop.Airbase_Grunt_1) and IsDead(Troop.Airbase_Grunt_2) or GetObjectXPosition(Ground_Vehicle.SolarAntiAirTank01) > 500 or 500 < GetObjectXPosition(Ground_Vehicle.SolarLightTank01) or 500 < GetObjectXPosition(Troop.SolarGrunt01) or 500 < GetObjectXPosition(Troop.SolarGrunt02) or 500 < GetObjectXPosition(Troop.SolarGrunt03) or 500 < GetObjectXPosition(Troop.SolarGrunt04) or 500 < GetObjectXPosition(Troop.SolarGrunt05) or 500 < GetObjectXPosition(Troop.SE_Grunt_06) or 500 < GetObjectXPosition(Troop.SE_Grunt_07) or 500 < GetObjectXPosition(Troop.SE_Grunt_08) or 500 < GetObjectXPosition(Troop.SE_Grunt_09) or 500 < GetObjectXPosition(Troop.SE_Grunt_10)
  DebugOut("Spawning and sending in Air Transport 2")
  AttackTarget(Air_Vehicle.AngloBomber08, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_FORCED)
  if GetPlayerUnit(constant.PLAYER_ONE) ~= Ground_Vehicle.SolarAntiAirTank01 and GetPlayerUnit(constant.PLAYER_ONE) ~= Ground_Vehicle.SolarLightTank01 then
    PhoneMessage(143, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  end
  WaitFor(4)
  Spawn(Air_Vehicle.AngloAirTransport02)
  LandAirUnit(Air_Vehicle.AngloAirTransport02, 545, 15, constant.ORDER_FORCED, 1, 5)
  WaitFor(5)
  PhoneMessage(44, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  repeat
    if NumPassengersInUnit(Air_Vehicle.AngloAirTransport02) == 1 then
      DebugOut("Anglo Air Transport 2 has landed and ejected its contents")
      WaitFor(1)
      EnterVehicle(Troop.AngloBazookaVet10, Capture_Point.PrimaryObjectiveCaptureAngloIslesAirbase, constant.ORDER_FORCED)
      EnterVehicle(Troop.AngloBazookaVet11, Capture_Point.PrimaryObjectiveCaptureAngloIslesAirbase, constant.ORDER_FORCED)
      EnterVehicle(Troop.AngloBazookaVet12, Capture_Point.PrimaryObjectiveCaptureAngloIslesAirbase, constant.ORDER_FORCED)
      EnterVehicle(Troop.AngloBazookaVet13, Capture_Point.PrimaryObjectiveCaptureAngloIslesAirbase, constant.ORDER_FORCED)
      EnterVehicle(Troop.AngloFlamer16, Capture_Point.PrimaryObjectiveCaptureAngloIslesAirbase, constant.ORDER_FORCED)
      EnterVehicle(Troop.AngloFlamer17, Capture_Point.PrimaryObjectiveCaptureAngloIslesAirbase, constant.ORDER_FORCED)
      EnterVehicle(Troop.AngloFlamer18, Capture_Point.PrimaryObjectiveCaptureAngloIslesAirbase, constant.ORDER_FORCED)
      EnterVehicle(Troop.AngloFlamer19, Capture_Point.PrimaryObjectiveCaptureAngloIslesAirbase, constant.ORDER_FORCED)
      GoToArea(Ground_Vehicle.AngloLightTank07, 521, -12, 5, constant.ORDER_FORCED)
      WaitFor(1)
      GoToArea(Air_Vehicle.AngloAirTransport02, 920, 0, 15, constant.ORDER_FORCED)
      break
    else
      EndFrame()
    end
  until IsDead(Air_Vehicle.AngloAirTransport02)
end

function JW_Cutscene_03_Naval_Withdrawl(owner)
  SeaUnitsWithdrawCutsceneGlobal = owner
  local RunonceCutsceneSeaUnitsWithdraw01 = 0
  local RunonceCutsceneSeaUnitsWithdraw02 = 0
  local RunonceCutsceneSeaUnitsWithdraw03 = 0
  local RunonceCutsceneSeaUnitsWithdraw04 = 0
  local RunonceCutsceneSeaUnitsWithdraw05 = 0
  repeat
    EndFrame()
  until aatowers == 2
  RunonceCutsceneSeaUnitsWithdraw01 = 1
  SeaUnitsWithdrawCutsceneStarted = 1
  Despawn(Ground_Vehicle.AngloLightTank01)
  Despawn(Ground_Vehicle.AngloLightTank02)
  Despawn(Ground_Vehicle.AngloArtillery04)
  StopAndGuard(Water_Vehicle.SEBattleship01)
  StopAndGuard(Water_Vehicle.SEBattleship02)
  StopAndGuard(Water_Vehicle.SEFrigate01)
  StopAndGuard(Water_Vehicle.SEFrigate02)
  Despawn(Air_Vehicle.AngloBomber02)
  Despawn(Air_Vehicle.AngloBomber03)
  Despawn(Air_Vehicle.AngloBomber04)
  Despawn(Air_Vehicle.AngloBomber05)
  Despawn(Air_Vehicle.AngloBomber09)
  Despawn(Air_Vehicle.AngloBomber10)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt05, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt06, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt07, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt08, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt09, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt12, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.RadioAntenna, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  Teleport(Troop.WesternFrontierGrunt01, -60, -150, 90, 35)
  Teleport(Troop.WesternFrontierGrunt02, -60, -150, 90, 35)
  Teleport(Troop.WesternFrontierGrunt03, -60, -150, 90, 35)
  Teleport(Troop.WesternFrontierGrunt04, -60, -150, 90, 35)
  Teleport(Troop.WesternFrontierGrunt05, -60, -150, 90, 35)
  Teleport(Troop.WesternFrontierGrunt06, -60, -150, 90, 35)
  Teleport(Troop.WesternFrontierGrunt07, -60, -150, 90, 35)
  Teleport(Troop.WesternFrontierGrunt08, -60, -150, 90, 35)
  Teleport(Troop.WesternFrontierGrunt09, -60, -150, 90, 35)
  Teleport(Troop.WesternFrontierGrunt10, -60, -150, 90, 35)
  Teleport(Troop.WesternFrontierGrunt11, -60, -150, 90, 35)
  Teleport(Troop.WesternFrontierGrunt12, -60, -150, 90, 35)
  EndFrame()
  if IsDead(Troop.WesternFrontierGrunt01) == false then
    Teleport(Troop.WesternFrontierGrunt01, -55, -150, 90, 0)
    heligrunt = Troop.WesternFrontierGrunt01
  elseif IsDead(Troop.WesternFrontierGrunt02) == false then
    Teleport(Troop.WesternFrontierGrunt02, -55, -150, 90, 0)
    heligrunt = Troop.WesternFrontierGrunt02
  elseif IsDead(Troop.WesternFrontierGrunt03) == false then
    Teleport(Troop.WesternFrontierGrunt03, -55, -150, 90, 0)
    heligrunt = Troop.WesternFrontierGrunt03
  elseif IsDead(Troop.WesternFrontierGrunt04) == false then
    Teleport(Troop.WesternFrontierGrunt04, -55, -150, 90, 0)
    heligrunt = Troop.WesternFrontierGrunt04
  elseif IsDead(Troop.WesternFrontierGrunt05) == false then
    Teleport(Troop.WesternFrontierGrunt05, -55, -150, 90, 0)
    heligrunt = Troop.WesternFrontierGrunt05
  elseif IsDead(Troop.WesternFrontierGrunt06) == false then
    Teleport(Troop.WesternFrontierGrunt06, -55, -150, 90, 0)
    heligrunt = Troop.WesternFrontierGrunt06
  elseif IsDead(Troop.WesternFrontierGrunt07) == false then
    Teleport(Troop.WesternFrontierGrunt07, -55, -150, 90, 0)
    heligrunt = Troop.WesternFrontierGrunt07
  elseif IsDead(Troop.WesternFrontierGrunt08) == false then
    Teleport(Troop.WesternFrontierGrunt08, -55, -150, 90, 0)
    heligrunt = Troop.WesternFrontierGrunt08
  elseif IsDead(Troop.WesternFrontierGrunt09) == false then
    Teleport(Troop.WesternFrontierGrunt09, -55, -150, 90, 0)
    heligrunt = Troop.WesternFrontierGrunt09
  elseif IsDead(Troop.WesternFrontierGrunt10) == false then
    Teleport(Troop.WesternFrontierGrunt10, -55, -150, 90, 0)
    heligrunt = Troop.WesternFrontierGrunt10
  elseif IsDead(Troop.WesternFrontierGrunt11) == false then
    Teleport(Troop.WesternFrontierGrunt11, -55, -150, 90, 0)
    heligrunt = Troop.WesternFrontierGrunt11
  elseif IsDead(Troop.WesternFrontierGrunt12) == false then
    Teleport(Troop.WesternFrontierGrunt12, -55, -150, 90, 0)
    heligrunt = Troop.WesternFrontierGrunt12
  end
  EnterVehicle(Troop.WesternFrontierGrunt01, Capture_Point.PrimaryObjectiveReinforcements, constant.ORDER_FORCED)
  EnterVehicle(Troop.WesternFrontierGrunt02, Capture_Point.PrimaryObjectiveReinforcements, constant.ORDER_FORCED)
  EnterVehicle(Troop.WesternFrontierGrunt03, Capture_Point.PrimaryObjectiveReinforcements, constant.ORDER_FORCED)
  EnterVehicle(Troop.WesternFrontierGrunt04, Capture_Point.PrimaryObjectiveReinforcements, constant.ORDER_FORCED)
  EnterVehicle(Troop.WesternFrontierGrunt05, Capture_Point.PrimaryObjectiveReinforcements, constant.ORDER_FORCED)
  EnterVehicle(Troop.WesternFrontierGrunt06, Capture_Point.PrimaryObjectiveReinforcements, constant.ORDER_FORCED)
  EnterVehicle(Troop.WesternFrontierGrunt07, Capture_Point.PrimaryObjectiveReinforcements, constant.ORDER_FORCED)
  EnterVehicle(Troop.WesternFrontierGrunt08, Capture_Point.PrimaryObjectiveReinforcements, constant.ORDER_FORCED)
  EnterVehicle(Troop.WesternFrontierGrunt09, Capture_Point.PrimaryObjectiveReinforcements, constant.ORDER_FORCED)
  EnterVehicle(Troop.WesternFrontierGrunt10, Capture_Point.PrimaryObjectiveReinforcements, constant.ORDER_FORCED)
  EnterVehicle(Troop.WesternFrontierGrunt11, Capture_Point.PrimaryObjectiveReinforcements, constant.ORDER_FORCED)
  EnterVehicle(Troop.WesternFrontierGrunt12, Capture_Point.PrimaryObjectiveReinforcements, constant.ORDER_FORCED)
  if WesternFrontierGruntsAlive == 1 then
    SetCamera(Camera.One_Grunt_Camera)
  else
    SetCamera(Camera.CutsceneCamera)
    CameraSetWaypoint(Camera.CutsceneCamera, Waypoint.CutsceneSeaUnitsWithdrawWaypoint01)
    CameraSetTarget(Camera.CutsceneCamera, Waypoint.CutsceneSeaUnitsWithdrawTarget01)
  end
  CameraSetFOV(Camera.CutsceneCamera, 60, constant.IMMEDIATE, 100, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  Spawn(Air_Vehicle.SolarAirTransport01)
  Spawn(Air_Vehicle.SolarAirTransport02)
  SetActive(Air_Vehicle.SolarAirTransport01, constant.INACTIVE)
  SetActive(Air_Vehicle.SolarAirTransport02, constant.INACTIVE)
  GoToArea(Air_Vehicle.SolarAirTransport01, 21, -112, 5, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.SolarAirTransport02, 21, -187, 5, constant.ORDER_FORCED)
  ClearMessageQueue()
  WaitFor(1)
  PhoneMessage(36, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  WaitFor(1)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetUnitShadowDistance(1)
  cutshadow = 1
  SetCamera(Camera.CutsceneCamera)
  CameraSetWaypoint(Camera.CutsceneCamera, Waypoint.CutsceneSeaUnitsWithdrawWaypoint03)
  CameraSetTarget(Camera.CutsceneCamera, Waypoint.CutsceneSeaUnitsWithdrawTarget03)
  CameraSetFOV(Camera.CutsceneCamera, 70, constant.IMMEDIATE, 100, constant.NO_WAIT)
  CameraSetFOV(Camera.CutsceneCamera, 50, constant.SMOOTH, 1, constant.NO_WAIT)
  LandAirUnit(Air_Vehicle.SolarAirTransport01, 78, -117, constant.ORDER_FORCED, 1, 3, 90)
  LandAirUnit(Air_Vehicle.SolarAirTransport02, 78, -172, constant.ORDER_FORCED, 1, 3, 90)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessageWithObjective(35, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(1)
  StopCapturePointSounds(Capture_Point.PrimaryObjectiveReinforcements)
  WaitFor(8)
  Spawn(Troop.SE_CS_Baz_1)
  Spawn(Troop.SE_CS_Baz_2)
  Spawn(Troop.SE_CS_Baz_3)
  Spawn(Troop.SE_CS_Baz_4)
  Spawn(Troop.SE_CS_Baz_5)
  EndFrame()
  PutUnitInVehicle(Troop.SE_CS_Baz_1, Air_Vehicle.SolarAirTransport01, 3)
  PutUnitInVehicle(Troop.SE_CS_Baz_2, Air_Vehicle.SolarAirTransport01, 4)
  PutUnitInVehicle(Troop.SE_CS_Baz_3, Air_Vehicle.SolarAirTransport01, 5)
  PutUnitInVehicle(Troop.SE_CS_Baz_4, Air_Vehicle.SolarAirTransport01, 7)
  PutUnitInVehicle(Troop.SE_CS_Baz_5, Air_Vehicle.SolarAirTransport01, 8)
  EndFrame()
  ExitVehicle(constant.ID_NONE, Air_Vehicle.SolarAirTransport01)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  SeaUnitsWithdrawCutsceneEnd = 1
end

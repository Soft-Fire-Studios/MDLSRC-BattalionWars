function Ice_Station_X_Cutscene02(owner)
  Cutscene02Dead = owner
  local ConcretBarrierApproachWarning = 0
  Despawn(Air_Vehicle.TT_Bomber01_Cutscene)
  Despawn(Air_Vehicle.TT_Bomber02_Cutscene)
  SetActive(Building.XN_ConcreteBarricade01, constant.INACTIVE)
  SetActive(Building.XN_IceStationX, constant.INACTIVE)
  repeat
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.ConcreteBarrierApproach) and ConcretBarrierApproachWarning == 0 then
      ClearMessageQueue()
      PhoneMessage(22, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      ConcretBarrierApproachWarning = 1
    end
    EndFrame()
  until Cutscene02Ready == 1
  FreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_TUNDRAN, 1)
  SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
  PauseTimerActive = 1
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  ClearMessageQueue()
  StartOutro()
  Spawn(Building.XN_IceStation_MGTower01)
  Spawn(Building.XN_IceStation_MGTower02)
  Spawn(Troop.XN_Grunt17)
  Spawn(Troop.XN_Grunt18)
  Spawn(Troop.XN_Chain15)
  Spawn(Troop.XN_AntiArmour26)
  Spawn(Troop.XN_Grunt19)
  Spawn(Troop.XN_Grunt20)
  Spawn(Troop.XN_Chain16)
  Spawn(Troop.XN_AntiArmour27)
  Spawn(Troop.XN_Grunt21)
  Spawn(Troop.XN_Grunt22)
  Spawn(Troop.XN_Grunt23)
  Spawn(Troop.XN_Grunt24)
  Spawn(Troop.XN_Grunt25)
  Spawn(Troop.XN_AntiArmour28)
  if IsDead(Ground_Vehicle.XN_Battlestation01) == false then
    Teleport(Ground_Vehicle.XN_Battlestation01, GetObjectXPosition(Waypoint.XN_Battlestation01), GetObjectZPosition(Waypoint.XN_Battlestation01), 0, 0)
  end
  SetCamera(Camera.Cutscene02_Shot01)
  CameraSetTarget(Camera.Cutscene02_Shot01, Waypoint.Cutscene02_Shot01_Target01)
  CameraSetWaypoint(Camera.Cutscene02_Shot01, Waypoint.Cutscene02_Shot01_Spline01)
  Spawn(Air_Vehicle.TT_Bomber01_Cutscene)
  Spawn(Air_Vehicle.TT_Bomber02_Cutscene)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  Cutscene02Begun = 1
  WaitFor(1)
  PhoneMessage(20, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Cutscene02Finished = 1
end

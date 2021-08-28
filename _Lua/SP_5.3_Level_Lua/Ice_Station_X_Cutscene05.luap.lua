function Ice_Station_X_Cutscene05(owner)
  Cutscene05Dead = owner
  Despawn(Air_Vehicle.Cutscene05_TT_Bomber01)
  Despawn(Building.XN_ConcreteBarricade01_Cutscene)
  repeat
    EndFrame()
  until IsDead(Building.XN_ConcreteBarricade01)
  SetInvulnerable(flag.TYPE_TUNDRAN, 1)
  SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
  if GetHealthPercent(Air_Vehicle.AI_Bomber01) < 20 and IsDead(Air_Vehicle.AI_Bomber01) == false then
    SetHealthPercent(Air_Vehicle.AI_Bomber01, 20)
  end
  if 20 > GetHealthPercent(Air_Vehicle.AI_Bomber02) and IsDead(Air_Vehicle.AI_Bomber02) == false then
    SetHealthPercent(Air_Vehicle.AI_Bomber02, 20)
  end
  WaitFor(0.5)
  FreezePlayer(constant.PLAYER_ONE)
  PauseTimerActive = 1
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsDead(Ground_Vehicle.XN_Battlestation01) == false then
    Despawn(Ground_Vehicle.XN_Battlestation01)
  end
  ClearMessageQueue()
  StartOutro()
  Despawn(Building.XN_ConcreteBarricade01)
  Spawn(Building.XN_ConcreteBarricade01_Cutscene)
  Spawn(Air_Vehicle.Cutscene05_TT_Bomber01)
  AttackTarget(Air_Vehicle.Cutscene05_TT_Bomber01, Building.XN_ConcreteBarricade01_Cutscene, constant.ORDER_FORCED)
  Spawn(Troop.TT_Grunt01_Cutscene)
  SetUnitInvulnerable(Troop.TT_Grunt01_Cutscene, true)
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
  CurrentPlayerUnit = GetPlayerUnit(constant.PLAYER_ONE)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.TT_Grunt01_Cutscene, true, true)
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) == Troop.TT_Grunt01_Cutscene
  if IsDead(Air_Vehicle.AI_Bomber01) == false then
    Teleport(Air_Vehicle.AI_Bomber01, GetObjectXPosition(Waypoint.AI_Bomber01_Teleport), GetObjectZPosition(Waypoint.AI_Bomber01_Teleport), 0, 25)
  end
  if IsDead(Air_Vehicle.AI_Bomber02) == false then
    Teleport(Air_Vehicle.AI_Bomber02, GetObjectXPosition(Waypoint.AI_Bomber02_Teleport), GetObjectZPosition(Waypoint.AI_Bomber02_Teleport), 0, 25)
  end
  SetCamera(Camera.Cutscene05_Shot01)
  CameraSetFOV(Camera.Cutscene05_Shot01, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  WaitFor(1)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  Cutscene05Begun = 1
  PhoneMessageWithObjective(84, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Ghost_Gorgi_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  WaitFor(1)
  Kill(Building.XN_ConcreteBarricade01_Cutscene)
  if IsDead(Troop.XN_Chain10) == false then
    Kill(Troop.XN_Chain10)
  end
  if IsDead(Troop.XN_Chain11) == false then
    Kill(Troop.XN_Chain11)
  end
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  Cutscene05Finished = 1
end

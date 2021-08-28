function Ice_Station_X_Cutscene05_Skipped(owner)
  repeat
    if GetCurrentMissionAttempted() == true and Cutscene05Begun == 1 and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(Cutscene05Dead)
      if IsDead(Building.XN_ConcreteBarricade01_Cutscene) == false then
        Kill(Building.XN_ConcreteBarricade01_Cutscene)
      end
      Cutscene05Finished = 1
    end
    EndFrame()
  until Cutscene05Finished == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndIntro()
  SetInvulnerable(flag.TYPE_TUNDRAN, 0)
  SetInvulnerable(flag.TYPE_XYLVANIAN, 0)
  Despawn(Air_Vehicle.Cutscene05_TT_Bomber01)
  if IsDead(Air_Vehicle.AI_Bomber01) == false then
    Teleport(Air_Vehicle.AI_Bomber01, GetObjectXPosition(Waypoint.AI_Bomber01), GetObjectZPosition(Waypoint.AI_Bomber01), 90, 25)
  end
  if IsDead(Air_Vehicle.AI_Bomber02) == false then
    Teleport(Air_Vehicle.AI_Bomber02, GetObjectXPosition(Waypoint.AI_Bomber02), GetObjectZPosition(Waypoint.AI_Bomber02), 90, 25)
  end
  if IsDead(Ground_Vehicle.XN_Battlestation01) == false then
    Spawn(Ground_Vehicle.XN_Battlestation01)
  end
  ForceUnitTransfer(constant.PLAYER_ONE, CurrentPlayerUnit, true, true)
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) == CurrentPlayerUnit
  SetUnitInvulnerable(Troop.TT_Grunt01_Cutscene, false)
  Despawn(Troop.TT_Grunt01_Cutscene)
  ClearMessageQueue()
  StoreSummaryMessage(constant.PLAYER_ONE, 84, constant.ARMY_TUNDRAN, SpriteID.CO_T_Ghost_Gorgi_Happy)
  SetCamera(Camera.Player01Cam)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
  PauseTimerActive = 0
  PhoneMessageWithObjective(71, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessage(49, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
  PhoneMessage(45, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
end

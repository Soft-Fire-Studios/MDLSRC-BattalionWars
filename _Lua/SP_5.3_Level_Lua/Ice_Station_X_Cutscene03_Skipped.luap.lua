function Ice_Station_X_Cutscene03_Skipped(owner)
  local BattleshipDeathWarning01 = 0
  repeat
    if GetCurrentMissionAttempted() == true and Cutscene03Begun == 1 and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(Cutscene03Dead)
      Cutscene03Finished = 1
    end
    EndFrame()
  until Cutscene03Finished == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StoreSummaryMessage(constant.PLAYER_ONE, 73, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  EndIntro()
  SetCamera(Camera.Player01Cam)
  Despawn(Water_Vehicle.XN_Battleship01_Cutscene)
  Despawn(Water_Vehicle.XN_Battleship02_Cutscene)
  repeat
    EndFrame()
  until ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Water_Vehicle.XN_Battleship01, GetObjectXPosition(Waypoint.XN_Battleship01_Revive), GetObjectZPosition(Waypoint.XN_Battleship01_Revive), 90, 5) and ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Water_Vehicle.XN_Battleship02, GetObjectXPosition(Waypoint.XN_Battleship02_Revive), GetObjectZPosition(Waypoint.XN_Battleship02_Revive), 90, 5)
  ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Water_Vehicle.XN_Battleship01, GetObjectXPosition(Waypoint.XN_Battleship01_Revive), GetObjectZPosition(Waypoint.XN_Battleship01_Revive), 90, 5)
  ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Water_Vehicle.XN_Battleship02, GetObjectXPosition(Waypoint.XN_Battleship02_Revive), GetObjectZPosition(Waypoint.XN_Battleship02_Revive), 90, 5)
  GoToArea(Water_Vehicle.XN_Battleship01, GetObjectXPosition(Waypoint.XN_Battleship01_Position), GetObjectZPosition(Waypoint.XN_Battleship01_Position), 5, 0, constant.ORDER_NORMAL)
  GoToArea(Water_Vehicle.XN_Battleship02, GetObjectXPosition(Waypoint.XN_Battleship02_Position), GetObjectZPosition(Waypoint.XN_Battleship02_Position), 5, 0, constant.ORDER_NORMAL)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_TUNDRAN, 0)
  SetInvulnerable(flag.TYPE_XYLVANIAN, 0)
  PauseTimerActive = 0
  Cutscene03Complete = 1
  PhoneMessage(74, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
  repeat
    if (IsDead(Water_Vehicle.XN_Battleship01) or IsDead(Water_Vehicle.XN_Battleship02)) and BattleshipDeathWarning01 == 0 then
      ClearMessageQueue()
      PhoneMessage(87, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      BattleshipDeathWarning01 = 1
    end
    EndFrame()
  until IsDead(Water_Vehicle.XN_Battleship01) and IsDead(Water_Vehicle.XN_Battleship02)
  ClearMessageQueue()
  PhoneMessage(85, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
  PhoneMessage(88, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Prison_Ubel_Sad, constant.PLAYER_ONE)
end

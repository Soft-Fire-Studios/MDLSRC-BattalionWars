function RAT_Cutscene_Mid_Battlestation_Skip(owner)
  repeat
    EndFrame()
  until CutsceneMidBattlestationStart == 1
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO)) then
      DebugOut("Killed cutscene", CutsceneMidBattlestationID)
      Kill(CutsceneMidBattlestationID)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      EndIntro()
      if not IsDead(Building.TundranRadarStation) then
        SetUnitInvulnerable(Building.TundranRadarStation, true)
      end
      Spawn(Ground_Vehicle.X_Battlestation_1)
      Spawn(Ground_Vehicle.Xtank02)
      Teleport(Ground_Vehicle.X_Battlestation_1, -355, 0, 229.4, 0)
      Teleport(Ground_Vehicle.Xtank02, -296, -31, 235, 0)
      SetActive(Ground_Vehicle.X_Battlestation_1, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetActive(Ground_Vehicle.Xtank02, constant.INACTIVE, constant.ADJUST_WEAPON)
      StoreSummaryMessage(constant.PLAYER_ONE, 18, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
      if 1 <= GunshipBattalionOnWay then
        StoreSummaryMessage(constant.PLAYER_ONE, 13, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
      end
      WaitFor(0.1)
      if GunshipBattalionOnWay == 1 then
        GunshipBattalionOnWay = 2
        Spawn(Air_Vehicle.Tgunship01)
        Spawn(Air_Vehicle.Tgunship02)
        Spawn(Air_Vehicle.Tgunship03)
        FollowWaypoint(Air_Vehicle.Tgunship01, Waypoint.Tgunship01, 0, 0, constant.ORDER_FORCED)
        FollowWaypoint(Air_Vehicle.Tgunship02, Waypoint.Tgunship02, 0, 0, constant.ORDER_FORCED)
        FollowWaypoint(Air_Vehicle.Tgunship03, Waypoint.Tgunship03, 0, 0, constant.ORDER_FORCED)
      end
      if not IsDead(Building.TundranRadarStation) then
        SetUnitInvulnerable(Building.TundranRadarStation, false)
      end
      SetCamera(Camera.Player_Camera, constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PauseTimerActive = 0
      WaitFor(0.5)
      UnfreezePlayer(constant.PLAYER_ONE)
      SetInvulnerable(flag.TYPE_TUNDRAN, false)
      SetInvulnerable(flag.TYPE_XYLVANIAN, false)
      SetUnitInvulnerable(GetPlayerUnit(), false)
      CutsceneMidBattlestationStart = 2
    end
    EndFrame()
  until CutsceneMidBattlestationStart == 2
  if 1 <= GunshipBattalionOnWay then
    SetActive(Air_Vehicle.Tgunship01, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Air_Vehicle.Tgunship02, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Air_Vehicle.Tgunship03, constant.ACTIVE, constant.ADJUST_WEAPON)
    FollowUnit(Air_Vehicle.Tgunship01, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.Tgunship02, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Air_Vehicle.Tgunship03, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
  end
  WaitFor(1)
  SetActive(Ground_Vehicle.X_Battlestation_1, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.Xtank02, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.X_Heavy_Tank_1, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.X_Heavy_Tank_3, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.Xtank04, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.Xtank06, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Air_Vehicle.Xgunship02, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Air_Vehicle.Xgunship04, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Air_Vehicle.Xgunship05, constant.ACTIVE, constant.ADJUST_WEAPON)
  WaitFor(3)
  AttackTarget(Ground_Vehicle.X_Battlestation_1, GetPlayerUnit(), constant.ORDER_NORMAL)
  WaitFor(1)
end

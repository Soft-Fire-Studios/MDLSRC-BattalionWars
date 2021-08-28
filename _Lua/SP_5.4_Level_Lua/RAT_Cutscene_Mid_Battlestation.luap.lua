function RAT_Cutscene_Mid_Battlestation(owner)
  CutsceneMidBattlestationID = owner
  DebugOut("Cutscene Mid Battlestation = ", CutsceneMidBattlestationID)
  repeat
    EndFrame()
  until cutscene == 1
  WaitFor(5)
  while missionend == 0 do
    if CutsceneMidBattlestationStart == 1 then
      DebugOut("Mid Level Cutscene in progress")
      FreezePlayer(constant.PLAYER_ONE)
      SetInvulnerable(flag.TYPE_TUNDRAN, true)
      SetInvulnerable(flag.TYPE_XYLVANIAN, true)
      SetUnitInvulnerable(GetPlayerUnit(), true)
      StartIntro()
      WaitFor(0.1)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      if not IsDead(Building.TundranRadarStation) then
        SetUnitInvulnerable(Building.TundranRadarStation, true)
      end
      Spawn(Ground_Vehicle.X_Battlestation_1)
      Spawn(Ground_Vehicle.Xtank02)
      SetActive(Ground_Vehicle.X_Battlestation_1, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetActive(Ground_Vehicle.Xtank02, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetActive(Ground_Vehicle.X_Heavy_Tank_1, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetActive(Ground_Vehicle.X_Heavy_Tank_3, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetActive(Ground_Vehicle.Xtank04, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetActive(Ground_Vehicle.Xtank06, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetActive(Air_Vehicle.Xgunship02, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetActive(Air_Vehicle.Xgunship04, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetActive(Air_Vehicle.Xgunship05, constant.INACTIVE, constant.ADJUST_WEAPON)
      WaitFor(0.1)
      PauseTimerActive = 1
      WaitFor(0.9)
      if GunshipBattalionOnWay == 0 then
        SetCamera(Camera.CutsceneMid, constant.PLAYER_ONE)
        CameraSetWaypoint(Camera.CutsceneMid, Waypoint.Battlestation01)
        CameraSetTarget(Camera.CutsceneMid, Waypoint.Battlestation01Target)
      else
        SetCamera(Camera.CutsceneMid, constant.PLAYER_ONE)
        CameraSetWaypoint(Camera.CutsceneMid, Waypoint.Battlestation)
        CameraSetTarget(Camera.CutsceneMid, Waypoint.BattlestationTarget)
      end
      CameraSetFOV(Camera.CutsceneMid, 40, constant.IMMEDIATE, 10, constant.NO_WAIT)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(18, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      if 1 <= GunshipBattalionOnWay then
        PhoneMessage(13, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      end
      WaitFor(2)
      CameraSetFOV(Camera.CutsceneMid, 70, constant.SMOOTH, 2.5, constant.NO_WAIT)
      WaitFor(4)
      if GunshipBattalionOnWay == 1 then
        GunshipBattalionOnWay = 2
        TundranGunships01Launched = 1
        Spawn(Air_Vehicle.Tgunship01)
        Spawn(Air_Vehicle.Tgunship02)
        Spawn(Air_Vehicle.Tgunship03)
        FollowWaypoint(Air_Vehicle.Tgunship01, Waypoint.Tgunship01, 0, 0, constant.ORDER_FORCED)
        FollowWaypoint(Air_Vehicle.Tgunship02, Waypoint.Tgunship02, 0, 0, constant.ORDER_FORCED)
        FollowWaypoint(Air_Vehicle.Tgunship03, Waypoint.Tgunship03, 0, 0, constant.ORDER_FORCED)
      end
      WaitFor(3)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      CutsceneMidBattlestationStart = 2
      EndIntro()
      SetCamera(Camera.Player_Camera, constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PauseTimerActive = 0
      UnfreezePlayer(constant.PLAYER_ONE)
      SetInvulnerable(flag.TYPE_TUNDRAN, false)
      SetInvulnerable(flag.TYPE_XYLVANIAN, false)
      SetUnitInvulnerable(GetPlayerUnit(), false)
      break
    end
    EndFrame()
  end
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

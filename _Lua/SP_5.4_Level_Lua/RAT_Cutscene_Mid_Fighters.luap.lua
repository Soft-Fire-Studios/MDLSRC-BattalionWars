function RAT_Cutscene_Mid_Fighters(owner)
  local BattlestationInvulnerabilityTimer = 0
  Despawn(Air_Vehicle.Tfighter01)
  Despawn(Air_Vehicle.Tfighter02)
  Despawn(Air_Vehicle.Tfighter03)
  Despawn(Air_Vehicle.T_Bomber)
  Despawn(Air_Vehicle.Abomber01)
  Despawn(Air_Vehicle.Tfighter01Cutscene)
  Despawn(Air_Vehicle.Tfighter02Cutscene)
  Despawn(Air_Vehicle.Tfighter03Cutscene)
  Despawn(Air_Vehicle.T_BomberCutscene)
  Despawn(Air_Vehicle.Abomber01Cutscene)
  Despawn(Building.ShieldWreck)
  CutsceneMidFightersID = owner
  DebugOut("Cutscene Mid Battlestation = ", CutsceneMidFightersID)
  repeat
    EndFrame()
  until cutscene == 1
  WaitFor(2)
  while missionend == 0 do
    if CutsceneMidFightersStart == 1 then
      WaitFor(1)
      DebugOut("Mid Level Cutscene in progress")
      FreezePlayer(constant.PLAYER_ONE)
      SetInvulnerable(flag.TYPE_TUNDRAN, true)
      SetInvulnerable(flag.TYPE_XYLVANIAN, true)
      StartIntro()
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      if GetHealthPercent(Ground_Vehicle.T_Battlestation) < 80 then
        DebugOut("Auto Repairing Damaged Tundran Battlestation")
        SetHealthPercent(Ground_Vehicle.T_Battlestation, 80 + GetRandom(1, 10))
      end
      Despawn(Air_Vehicle.X_Fighter_1, true)
      Despawn(Air_Vehicle.X_Fighter_2, true)
      Despawn(Air_Vehicle.X_Fighter_3, true)
      Despawn(Air_Vehicle.X_Gunship_1, true)
      Despawn(Air_Vehicle.X_Gunship_3, true)
      Despawn(Air_Vehicle.X_Gunship_4, true)
      if not IsDead(Air_Vehicle.Tgunship01) and TundranGunships01Launched == 1 and GetPlayerUnit() ~= Air_Vehicle.Tgunship01 then
        Despawn(Air_Vehicle.Tgunship01)
      end
      if not IsDead(Air_Vehicle.Tgunship02) and TundranGunships01Launched == 1 and GetPlayerUnit() ~= Air_Vehicle.Tgunship02 then
        Despawn(Air_Vehicle.Tgunship02)
      end
      if not IsDead(Air_Vehicle.Tgunship03) and TundranGunships01Launched == 1 and GetPlayerUnit() ~= Air_Vehicle.Tgunship03 then
        Despawn(Air_Vehicle.Tgunship03)
      end
      if not IsDead(Air_Vehicle.Tgunship04) and TundranGunships01Launched == 1 and GetPlayerUnit() ~= Air_Vehicle.Tgunship04 then
        Despawn(Air_Vehicle.Tgunship04)
      end
      if not IsDead(Air_Vehicle.Tgunship05) and TundranGunships02Launched == 1 and GetPlayerUnit() ~= Air_Vehicle.Tgunship05 then
        Despawn(Air_Vehicle.Tgunship05)
      end
      if not IsDead(Air_Vehicle.Tgunship06) and TundranGunships02Launched == 1 and GetPlayerUnit() ~= Air_Vehicle.Tgunship06 then
        Despawn(Air_Vehicle.Tgunship06)
      end
      Spawn(Air_Vehicle.T_BomberCutscene)
      SetActive(Air_Vehicle.T_BomberCutscene, constant.INACTIVE, constant.ADJUST_WEAPON)
      Spawn(Air_Vehicle.Abomber01Cutscene)
      SetActive(Air_Vehicle.Abomber01Cutscene, constant.INACTIVE, constant.ADJUST_WEAPON)
      EndFrame()
      PauseTimerActive = 1
      SetCamera(Camera.CutsceneMid, constant.PLAYER_ONE)
      CameraSetWaypoint(Camera.CutsceneMid, Waypoint.Fighter01)
      CameraSetTarget(Camera.CutsceneMid, Air_Vehicle.Abomber01Cutscene)
      CameraSetFOV(Camera.CutsceneMid, 70, constant.IMMEDIATE, 25, constant.NO_WAIT)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessageWithObjective(42, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
      CameraSetFOV(Camera.CutsceneMid, 55, constant.SMOOTH, 1.5, constant.NO_WAIT)
      Spawn(Building.ShieldWreck)
      Kill(Destroyable_Object.Shield)
      WaitFor(4)
      CameraShake(1, 3)
      WaitFor(6)
      Spawn(Air_Vehicle.Tfighter01Cutscene)
      SetActive(Air_Vehicle.Tfighter01Cutscene, constant.INACTIVE, constant.ADJUST_WEAPON)
      Spawn(Air_Vehicle.Tfighter02Cutscene)
      SetActive(Air_Vehicle.Tfighter02Cutscene, constant.INACTIVE, constant.ADJUST_WEAPON)
      Spawn(Air_Vehicle.Tfighter03Cutscene)
      SetActive(Air_Vehicle.Tfighter03Cutscene, constant.INACTIVE, constant.ADJUST_WEAPON)
      FollowWaypoint(Air_Vehicle.Tfighter01Cutscene, Waypoint.Entity550040569, 0, 0, constant.ORDER_FORCED)
      FollowWaypoint(Air_Vehicle.Tfighter02Cutscene, Waypoint.Entity550040571, 0, 0, constant.ORDER_FORCED)
      FollowWaypoint(Air_Vehicle.Tfighter03Cutscene, Waypoint.Entity550040573, 0, 0, constant.ORDER_FORCED)
      WaitFor(2)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Despawn(Air_Vehicle.T_BomberCutscene)
      Despawn(Air_Vehicle.Abomber01Cutscene)
      SetCamera(Camera.CutsceneMid, constant.PLAYER_ONE)
      CameraSetWaypoint(Camera.CutsceneMid, Waypoint.Fighter02)
      CameraSetTarget(Camera.CutsceneMid, Air_Vehicle.Tfighter03Cutscene)
      CameraSetFOV(Camera.CutsceneMid, 55, constant.IMMEDIATE, 10, constant.NO_WAIT)
      ClearMessageQueue()
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(52, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      CameraSetFOV(Camera.CutsceneMid, 65, constant.SMOOTH, 1.5, constant.NO_WAIT)
      WaitFor(8)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Despawn(Air_Vehicle.Tfighter01Cutscene)
      Despawn(Air_Vehicle.Tfighter02Cutscene)
      Despawn(Air_Vehicle.Tfighter03Cutscene)
      Spawn(Air_Vehicle.T_Bomber)
      SetActive(Air_Vehicle.T_Bomber, constant.ACTIVE)
      Spawn(Air_Vehicle.Abomber01)
      SetActive(Air_Vehicle.Abomber01, constant.ACTIVE)
      Spawn(Air_Vehicle.Tfighter01)
      SetActive(Air_Vehicle.Tfighter01, constant.ACTIVE)
      Spawn(Air_Vehicle.Tfighter02)
      SetActive(Air_Vehicle.Tfighter02, constant.ACTIVE)
      Spawn(Air_Vehicle.Tfighter03)
      SetActive(Air_Vehicle.Tfighter03, constant.ACTIVE)
      Spawn(Air_Vehicle.X_Fighter_1)
      Spawn(Air_Vehicle.X_Fighter_2)
      Spawn(Air_Vehicle.X_Fighter_3)
      Spawn(Air_Vehicle.X_Gunship_1)
      Spawn(Air_Vehicle.X_Gunship_3)
      Spawn(Air_Vehicle.X_Gunship_4)
      if not IsDead(Air_Vehicle.Tgunship01) and TundranGunships01Launched == 1 and GetPlayerUnit() ~= Air_Vehicle.Tgunship01 then
        Spawn(Air_Vehicle.Tgunship01)
      end
      if not IsDead(Air_Vehicle.Tgunship02) and TundranGunships01Launched == 1 and GetPlayerUnit() ~= Air_Vehicle.Tgunship02 then
        Spawn(Air_Vehicle.Tgunship02)
      end
      if not IsDead(Air_Vehicle.Tgunship03) and TundranGunships01Launched == 1 and GetPlayerUnit() ~= Air_Vehicle.Tgunship03 then
        Spawn(Air_Vehicle.Tgunship03)
      end
      if not IsDead(Air_Vehicle.Tgunship05) and TundranGunships02Launched == 1 and GetPlayerUnit() ~= Air_Vehicle.Tgunship05 then
        Spawn(Air_Vehicle.Tgunship05)
      end
      if not IsDead(Air_Vehicle.Tgunship06) and TundranGunships02Launched == 1 and GetPlayerUnit() ~= Air_Vehicle.Tgunship06 then
        Spawn(Air_Vehicle.Tgunship06)
      end
      CutsceneMidFightersStart = 2
      EndIntro()
      Despawn(Building.XAATower01)
      Despawn(Building.XAATower02)
      Despawn(Building.XAATower03)
      WaitFor(0.5)
      SetCamera(Camera.Player_Camera, constant.PLAYER_ONE)
      PauseTimerActive = 0
      ClearMessageQueue()
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessageWithObjective(44, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
      PhoneMessage(43, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      PhoneMessage(45, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      WaitFor(0.5)
      UnfreezePlayer(constant.PLAYER_ONE)
      SetInvulnerable(flag.TYPE_TUNDRAN, false)
      SetInvulnerable(flag.TYPE_XYLVANIAN, false)
      SetActive(Building.Gun01, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Building.Gun02, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Building.Gun03, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Building.Gun04, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetUnitInvulnerable(Building.Gun01, false)
      SetUnitInvulnerable(Building.Gun02, false)
      SetUnitInvulnerable(Building.Gun03, false)
      SetUnitInvulnerable(Building.Gun04, false)
      break
    end
    EndFrame()
  end
end

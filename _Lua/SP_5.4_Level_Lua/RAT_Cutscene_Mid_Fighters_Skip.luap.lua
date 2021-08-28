function RAT_Cutscene_Mid_Fighters_Skip(owner)
  local BattlestationInvulnerabilityTimer = 0
  repeat
    EndFrame()
  until CutsceneMidFightersStart == 1
  WaitFor(3)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO)) then
      DebugOut("Killed cutscene", CutsceneMidFightersID)
      Kill(CutsceneMidFightersID)
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      EndIntro()
      Despawn(Air_Vehicle.Tfighter01Cutscene)
      Despawn(Air_Vehicle.Tfighter02Cutscene)
      Despawn(Air_Vehicle.Tfighter03Cutscene)
      Despawn(Air_Vehicle.T_BomberCutscene)
      Despawn(Air_Vehicle.Abomber01Cutscene)
      Spawn(Air_Vehicle.T_Bomber)
      SetActive(Air_Vehicle.T_Bomber, constant.ACTIVE)
      EnableWeapon(Air_Vehicle.T_Bomber, 0)
      Spawn(Air_Vehicle.Abomber01)
      SetActive(Air_Vehicle.Abomber01, constant.ACTIVE)
      EnableWeapon(Air_Vehicle.Abomber01, 0)
      Spawn(Air_Vehicle.Tfighter01)
      SetActive(Air_Vehicle.Tfighter01, constant.ACTIVE)
      Spawn(Air_Vehicle.Tfighter02)
      SetActive(Air_Vehicle.Tfighter02, constant.ACTIVE)
      Spawn(Air_Vehicle.Tfighter03)
      SetActive(Air_Vehicle.Tfighter03, constant.ACTIVE)
      Spawn(Building.ShieldWreck)
      Kill(Destroyable_Object.Shield)
      WaitFor(0.5)
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
      Despawn(Building.XAATower01)
      Despawn(Building.XAATower02)
      Despawn(Building.XAATower03)
      StoreSummaryMessage(constant.PLAYER_ONE, 42, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
      StoreSummaryMessage(constant.PLAYER_ONE, 52, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Happy)
      SetCamera(Camera.Player_Camera, constant.PLAYER_ONE)
      ClearMessageQueue()
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessageWithObjective(44, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
      PhoneMessage(43, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
      PhoneMessage(45, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      PauseTimerActive = 0
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
      CutsceneMidFightersStart = 2
    end
    EndFrame()
  until CutsceneMidFightersStart == 2
  DebugOut("Giving Battlestation some invulnerability")
  BattlestationInvulnerabilityTimer = GetTime() + 30
  repeat
    EndFrame()
  until GetTime() > BattlestationInvulnerabilityTimer + 30
  EnableWeapon(Air_Vehicle.T_Bomber, 1)
  EnableWeapon(Air_Vehicle.Abomber01, 1)
end

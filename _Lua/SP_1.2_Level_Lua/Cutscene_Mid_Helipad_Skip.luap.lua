function Cutscene_Mid_Helipad_Skip(owner)
  repeat
    EndFrame()
  until CutsceneHelipadBegin == true
  WaitFor(3)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(CutsceneHelipad)
      DebugOut("Reinforcements Cutscene skipped")
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      CutsceneHelipadEnd = true
      EndFrame()
    else
    end
    EndFrame()
  until CutsceneHelipadEnd == true
  Kill(CutsceneHelipad)
  ClearMessageQueue()
  StoreSummaryMessage(26, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  Despawn(Capture_Point.HelipadUntargetable)
  Spawn(Capture_Point.flamevets)
  SetObjectiveData(Objective_Marker.flamereenforcements, constant.OBJECTIVE_MARKER_DATA_ATTACHED_TO, Capture_Point.flamevets)
  SetActive(Troop.AIgruntB1, constant.ACTIVE)
  SetActive(Troop.AIgruntB2, constant.ACTIVE)
  SetActive(Troop.AIgruntB3, constant.ACTIVE)
  SetActive(Troop.AIgruntB4, constant.ACTIVE)
  SetActive(Troop.AIgruntB5, constant.ACTIVE)
  SetActive(Troop.AIgruntB6, constant.ACTIVE)
  EnableWeapon(Troop.AIgruntB1, 1)
  EnableWeapon(Troop.AIgruntB2, 1)
  EnableWeapon(Troop.AIgruntB3, 1)
  EnableWeapon(Troop.AIgruntB4, 1)
  EnableWeapon(Troop.AIgruntB5, 1)
  EnableWeapon(Troop.AIgruntB6, 1)
  EnableWeapon(Troop.SEgrunt1, 1)
  EnableWeapon(Troop.SEgrunt2, 1)
  EnableWeapon(Troop.SEgrunt3, 1)
  EnableWeapon(Troop.SEgrunt4, 1)
  EnableWeapon(Troop.SEgrunt5, 1)
  EnableWeapon(Troop.SEflame1, 1)
  EnableWeapon(Troop.SEflame2, 1)
  EnableWeapon(Troop.SEflame7, 1)
  EnableWeapon(Troop.SEflame8, 1)
  EnableWeapon(Troop.SEflame9, 1)
  EnableWeapon(Ground_Vehicle.SEaatank1, 1)
  EnableWeapon(Troop.AIbazooka5, 1)
  EnableWeapon(Troop.AIbazooka6, 1)
  EnableWeapon(Troop.AIbazooka7, 1)
  EnableWeapon(Troop.AIbazooka8, 1)
  EnableWeapon(Air_Vehicle.AIbomber1, 1)
  HelipadCutscenePlaying = 0
  SetCamera(Camera.player1cam)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(UnfreezeDelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  SetInvulnerable(flag.TYPE_ANGLO, 0)
  PauseTimerActive = 0
  repeat
    EndFrame()
  until WFTankCutscenePlaying == 0
  PhoneMessage(89, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
end

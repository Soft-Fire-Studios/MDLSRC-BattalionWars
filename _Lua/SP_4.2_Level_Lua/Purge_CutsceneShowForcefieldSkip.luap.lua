function Purge_CutsceneShowForcefieldSkip(owner)
  repeat
    EndFrame()
  until cutsceneshowforcefieldstart == 1
  WaitFor(2)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO)) then
      Kill(cutsceneshowforcefield)
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      StoreSummaryMessage(constant.PLAYER_ONE, 69, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
      cutsceneshowforcefieldend = 1
    end
    EndFrame()
  until cutsceneshowforcefieldend == 1
  SetObjectiveData(Objective.SolarForcefieldObjective, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.ForcefieldMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.ForcefieldMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.ForcefieldMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.ForcefieldMarker04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetCamera(Camera.Player_Camera)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  SetWaterRenderEnable(true)
  WaitFor(0.5)
  UnfreezePlayer()
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  SetInvulnerable(flag.TYPE_UNDERWORLD, 0)
  PauseTimerActive = 0
  WaitFor(1)
  PhoneMessageWithObjective(61, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
  SetObjectiveData(Objective.SolarFuelStation01, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.SolarFuelStationMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
end

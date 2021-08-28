function Purge_CutsceneGunsSkip(owner)
  repeat
    EndFrame()
  until cutscenegunsstart == 1
  WaitFor(2)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO)) then
      Kill(cutsceneguns)
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      StoreSummaryMessage(constant.PLAYER_ONE, 49, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
      StoreSummaryMessage(constant.PLAYER_ONE, 50, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
      SetActive(Troop.ILhose01, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.ILhose02, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Building.Pillbox01, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Building.Pillbox02, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetObjectiveData(Objective.SolarFortifications, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.SolarFortifications, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PillboxTwoLeft, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Pillbox01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Pillbox02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      FollowWaypoint(Troop.Sgrunt16, Waypoint.InfantryWP02, 5, 5, constant.ORDER_NORMAL)
      FollowWaypoint(Troop.Sgrunt17, Waypoint.InfantryWP03, 5, 5, constant.ORDER_NORMAL)
      cutscenegunsend = 1
      EndFrame()
    end
    EndFrame()
  until cutscenegunsend == 1
  EndIntro()
  Kill(cutsceneguns)
  SetUnitInvulnerable(Building.Pillbox01, false)
  SetUnitInvulnerable(Building.Pillbox02, false)
  SetCamera(Camera.Player_Camera)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(72, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessage(70, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
  PhoneMessage(58, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
  WaitFor(0.5)
  UnfreezePlayer()
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  SetInvulnerable(flag.TYPE_UNDERWORLD, 0)
  PauseTimerActive = 0
end

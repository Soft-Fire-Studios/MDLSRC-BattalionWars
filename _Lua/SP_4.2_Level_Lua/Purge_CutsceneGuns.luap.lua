function Purge_CutsceneGuns(owner)
  cutsceneguns = owner
  repeat
    EndFrame()
  until cutscenegunsstart == 1
  StartOutro()
  FreezePlayer()
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
  PauseTimerActive = 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetActive(Troop.ILhose01, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.ILhose02, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.Pillbox01, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.Pillbox02, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetObjectiveData(Objective.SolarFortifications, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.SolarFortifications, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetCamera(Camera.CutsceneMid01, constant.PLAYER_ONE)
  CameraSetWaypoint(Camera.CutsceneMid01, Waypoint.CutsceneMid01)
  CameraSetTarget(Camera.CutsceneMid01, Waypoint.CutsceneMidTarget01)
  CameraSetFOV(Camera.CutsceneMid01, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(49, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  PhoneMessage(50, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
  CameraSetFOV(Camera.CutsceneMid01, 75, constant.SMOOTH, 1, constant.NO_WAIT)
  WaitFor(8)
  SetObjectiveData(Objective.PillboxTwoLeft, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Pillbox01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Pillbox02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  FollowWaypoint(Troop.Sgrunt16, Waypoint.InfantryWP02, 5, 5, constant.ORDER_NORMAL)
  FollowWaypoint(Troop.Sgrunt17, Waypoint.InfantryWP03, 5, 5, constant.ORDER_NORMAL)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  cutscenegunsend = 1
end

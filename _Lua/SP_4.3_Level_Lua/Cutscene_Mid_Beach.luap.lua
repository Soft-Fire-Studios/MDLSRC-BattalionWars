function Cutscene_Mid_Beach(owner)
  MidCutsceneBeach = owner
  repeat
    EndFrame()
  until MidCutsceneBeachStart == 1
  SendGunshipsAway = 2
  CutsceneIsPlaying = 1
  HideHUD = 1
  FreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
  PauseTimerActive = 1
  StartIntro()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.CutsceneCam, constant.PLAYER_ONE)
  CameraSetWaypoint(Camera.CutsceneCam, Waypoint.MidCutsceneBeachShot1Spline)
  CameraSetTarget(Camera.CutsceneCam, Waypoint.MidCutsceneBeachShot1Target)
  CameraSetFOV(Camera.CutsceneCam, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  CameraSetFOV(Camera.CutsceneCam, 90, constant.SMOOTH, 2, constant.NO_WAIT)
  SetObjectiveData(Objective.NavalGunDefend22, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.NavalGun01Defend, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.NavalGun02Defend, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  ClearMessageQueue()
  if PlayAltBeachCutsceneString == 1 then
    PhoneMessageWithObjective(55, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
    PhoneMessageWithObjective(71, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  else
    PhoneMessageWithObjective(14, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
    PhoneMessageWithObjective(70, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  end
  WaitFor(6)
  if PlayAltBeachCutsceneString == 1 then
    CameraSetFOV(Camera.CutsceneCam, 65, constant.SMOOTH, 1, constant.NO_WAIT)
  else
    CameraSetFOV(Camera.CutsceneCam, 65, constant.SMOOTH, 1.5, constant.NO_WAIT)
  end
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  WaitFor(1)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  MidCutsceneBeachEnd = 1
end

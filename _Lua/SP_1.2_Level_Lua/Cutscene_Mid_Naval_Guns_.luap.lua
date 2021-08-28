function Cutscene_Mid_Naval_Guns_(owner)
  NavalGunsCutscene = owner
  repeat
    EndFrame()
  until NavalGunsCutsceneStart == 1
  ClearMessageQueue()
  FreezePlayer()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_ANGLO, 1)
  PauseTimerActive = 1
  if GetPrimaryActionState(Troop.SEgrunt1) == constant.ACTION_STATE_FOLLOWING then
    SEGrunt01Following = 2
  end
  if GetPrimaryActionState(Troop.SEgrunt2) == constant.ACTION_STATE_FOLLOWING then
    SEGrunt02Following = 2
  end
  if GetPrimaryActionState(Troop.SEgrunt3) == constant.ACTION_STATE_FOLLOWING then
    SEGrunt03Following = 2
  end
  if GetPrimaryActionState(Troop.SEgrunt4) == constant.ACTION_STATE_FOLLOWING then
    SEGrunt04Following = 2
  end
  if GetPrimaryActionState(Troop.SEgrunt5) == constant.ACTION_STATE_FOLLOWING then
    SEGrunt05Following = 2
  end
  if GetPrimaryActionState(Troop.SEflame1) == constant.ACTION_STATE_FOLLOWING then
    SEFlame01Following = 2
  end
  if GetPrimaryActionState(Troop.SEflame2) == constant.ACTION_STATE_FOLLOWING then
    SEFlame02Following = 2
  end
  if GetPrimaryActionState(Troop.SEflame7) == constant.ACTION_STATE_FOLLOWING then
    SEFlame07Following = 2
  end
  if GetPrimaryActionState(Troop.SEflame8) == constant.ACTION_STATE_FOLLOWING then
    SEFlame08Following = 2
  end
  if GetPrimaryActionState(Troop.SEflame9) == constant.ACTION_STATE_FOLLOWING then
    SEFlame09Following = 2
  end
  if GetPrimaryActionState(Troop.SEbazooka2) == constant.ACTION_STATE_FOLLOWING then
    SEBazooka02Following = 2
  end
  if GetPrimaryActionState(Troop.SEbazooka3) == constant.ACTION_STATE_FOLLOWING then
    SEBazooka03Following = 2
  end
  if GetPrimaryActionState(Troop.SEbazooka4) == constant.ACTION_STATE_FOLLOWING then
    SEBazooka04Following = 2
  end
  if GetPrimaryActionState(Troop.SEbazooka5) == constant.ACTION_STATE_FOLLOWING then
    SEBazooka05Following = 2
  end
  EndFrame()
  GoToArea(Troop.SEgrunt1, GetObjectXPosition(Waypoint.NavalGunCutscenePath), GetObjectZPosition(Waypoint.NavalGunCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEgrunt2, GetObjectXPosition(Waypoint.NavalGunCutscenePath), GetObjectZPosition(Waypoint.NavalGunCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEgrunt3, GetObjectXPosition(Waypoint.NavalGunCutscenePath), GetObjectZPosition(Waypoint.NavalGunCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEgrunt4, GetObjectXPosition(Waypoint.NavalGunCutscenePath), GetObjectZPosition(Waypoint.NavalGunCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEgrunt5, GetObjectXPosition(Waypoint.NavalGunCutscenePath), GetObjectZPosition(Waypoint.NavalGunCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEbazooka2, GetObjectXPosition(Waypoint.NavalGunCutscenePath), GetObjectZPosition(Waypoint.NavalGunCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEbazooka3, GetObjectXPosition(Waypoint.NavalGunCutscenePath), GetObjectZPosition(Waypoint.NavalGunCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEbazooka4, GetObjectXPosition(Waypoint.NavalGunCutscenePath), GetObjectZPosition(Waypoint.NavalGunCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEbazooka5, GetObjectXPosition(Waypoint.NavalGunCutscenePath), GetObjectZPosition(Waypoint.NavalGunCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEflame1, GetObjectXPosition(Waypoint.NavalGunCutscenePath), GetObjectZPosition(Waypoint.NavalGunCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEflame2, GetObjectXPosition(Waypoint.NavalGunCutscenePath), GetObjectZPosition(Waypoint.NavalGunCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEflame7, GetObjectXPosition(Waypoint.NavalGunCutscenePath), GetObjectZPosition(Waypoint.NavalGunCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEflame8, GetObjectXPosition(Waypoint.NavalGunCutscenePath), GetObjectZPosition(Waypoint.NavalGunCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEflame9, GetObjectXPosition(Waypoint.NavalGunCutscenePath), GetObjectZPosition(Waypoint.NavalGunCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.SEaatank1, GetObjectXPosition(Waypoint.NavalGunCutscenePath), GetObjectZPosition(Waypoint.NavalGunCutscenePath), 25, 0, constant.ORDER_FORCED)
  SetCamera(Camera.cutscenecam)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.CutsceneNavalGuns)
  CameraSetTarget(Camera.cutscenecam, Waypoint.CutsceneNavalGunsTarget)
  CameraSetFOV(Camera.cutscenecam, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(35, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  NavalGunsCutsceneEnd = 1
end

function Cutscene_Mid_Anglo_Bazooka(owner)
  AngloBazookaCutscene = owner
  repeat
    EndFrame()
  until AngloBazookaCutsceneStart == 1
  ClearMessageQueue()
  FreezePlayer()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_ANGLO, 1)
  PauseTimerActive = 1
  PlayerUnit = GetPlayerUnit()
  Spawn(Troop.CutsceneDummy)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.CutsceneDummy, true, true)
  Teleport(Troop.AIbazooka1, -305.391, -622.968, 155, 0)
  Teleport(Troop.AIbazooka2, -308.808, -624.734, 150, 0)
  Teleport(Troop.AIbazooka3, -310.022, -620.153, 155, 0)
  Teleport(Troop.AIbazooka4, -309.195, -616.788, 155, 0)
  SetActive(Troop.AIbazooka1, constant.ACTIVE)
  SetActive(Troop.AIbazooka2, constant.ACTIVE)
  SetActive(Troop.AIbazooka3, constant.ACTIVE)
  SetActive(Troop.AIbazooka4, constant.ACTIVE)
  if GetPrimaryActionState(Ground_Vehicle.SEaatank1) == constant.ACTION_STATE_FOLLOWING then
    AAVehicleFollowing = 1
  end
  if GetPrimaryActionState(Troop.SEgrunt1) == constant.ACTION_STATE_FOLLOWING then
    SEGrunt01Following = 1
  end
  if GetPrimaryActionState(Troop.SEgrunt2) == constant.ACTION_STATE_FOLLOWING then
    SEGrunt02Following = 1
  end
  if GetPrimaryActionState(Troop.SEgrunt3) == constant.ACTION_STATE_FOLLOWING then
    SEGrunt03Following = 1
  end
  if GetPrimaryActionState(Troop.SEgrunt4) == constant.ACTION_STATE_FOLLOWING then
    SEGrunt04Following = 1
  end
  if GetPrimaryActionState(Troop.SEgrunt5) == constant.ACTION_STATE_FOLLOWING then
    SEGrunt05Following = 1
  end
  if GetPrimaryActionState(Troop.SEflame1) == constant.ACTION_STATE_FOLLOWING then
    SEFlame01Following = 1
  end
  if GetPrimaryActionState(Troop.SEflame2) == constant.ACTION_STATE_FOLLOWING then
    SEFlame02Following = 1
  end
  if GetPrimaryActionState(Troop.SEflame7) == constant.ACTION_STATE_FOLLOWING then
    SEFlame07Following = 1
  end
  if GetPrimaryActionState(Troop.SEflame8) == constant.ACTION_STATE_FOLLOWING then
    SEFlame08Following = 1
  end
  if GetPrimaryActionState(Troop.SEflame9) == constant.ACTION_STATE_FOLLOWING then
    SEFlame09Following = 1
  end
  EndFrame()
  GoToArea(Troop.SEgrunt1, GetObjectXPosition(Waypoint.AngloBazookaCutscenePath), GetObjectZPosition(Waypoint.AngloBazookaCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEgrunt2, GetObjectXPosition(Waypoint.AngloBazookaCutscenePath), GetObjectZPosition(Waypoint.AngloBazookaCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEgrunt3, GetObjectXPosition(Waypoint.AngloBazookaCutscenePath), GetObjectZPosition(Waypoint.AngloBazookaCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEgrunt4, GetObjectXPosition(Waypoint.AngloBazookaCutscenePath), GetObjectZPosition(Waypoint.AngloBazookaCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEgrunt5, GetObjectXPosition(Waypoint.AngloBazookaCutscenePath), GetObjectZPosition(Waypoint.AngloBazookaCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEflame1, GetObjectXPosition(Waypoint.AngloBazookaCutscenePath), GetObjectZPosition(Waypoint.AngloBazookaCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEflame2, GetObjectXPosition(Waypoint.AngloBazookaCutscenePath), GetObjectZPosition(Waypoint.AngloBazookaCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEflame7, GetObjectXPosition(Waypoint.AngloBazookaCutscenePath), GetObjectZPosition(Waypoint.AngloBazookaCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEflame8, GetObjectXPosition(Waypoint.AngloBazookaCutscenePath), GetObjectZPosition(Waypoint.AngloBazookaCutscenePath), 15, 0, constant.ORDER_FORCED)
  GoToArea(Troop.SEflame9, GetObjectXPosition(Waypoint.AngloBazookaCutscenePath), GetObjectZPosition(Waypoint.AngloBazookaCutscenePath), 15, 0, constant.ORDER_FORCED)
  SetCamera(Camera.cutscenecam)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.AngloBazooka02)
  CameraSetTarget(Camera.cutscenecam, Waypoint.AngloBazookaTarget)
  CameraSetFOV(Camera.cutscenecam, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessage(11, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  WaitFor(4)
  Teleport(Troop.SEgrunt1, -280, -740, 0, 0)
  Teleport(Troop.SEgrunt2, -276, -740, 0, 0)
  Teleport(Troop.SEgrunt3, -272, -740, 0, 0)
  Teleport(Troop.SEgrunt4, -268, -740, 0, 0)
  Teleport(Troop.SEgrunt5, -264, -740, 0, 0)
  Teleport(Troop.SEflame1, -272, -735, 0, 0)
  Teleport(Troop.SEflame2, -276, -735, 0, 0)
  Teleport(Troop.SEflame7, -280, -735, 0, 0)
  Teleport(Troop.SEflame8, -268, -735, 0, 0)
  Teleport(Troop.SEflame9, -264, -735, 0, 0)
  Teleport(Ground_Vehicle.SEaatank1, -273, -755, 0, 0)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Teleport(Troop.SEgrunt1, -280, -740, 0, 0)
  Teleport(Troop.SEgrunt2, -276, -740, 0, 0)
  Teleport(Troop.SEgrunt3, -272, -740, 0, 0)
  Teleport(Troop.SEgrunt4, -268, -740, 0, 0)
  Teleport(Troop.SEgrunt5, -264, -740, 0, 0)
  Teleport(Troop.SEflame1, -272, -735, 0, 0)
  Teleport(Troop.SEflame2, -276, -735, 0, 0)
  Teleport(Troop.SEflame7, -280, -735, 0, 0)
  Teleport(Troop.SEflame8, -268, -735, 0, 0)
  Teleport(Troop.SEflame9, -264, -735, 0, 0)
  Teleport(Ground_Vehicle.SEaatank1, -273, -755, 0, 0)
  SetCamera(Camera.cutscenecam)
  CameraSetWaypoint(Camera.cutscenecam, Waypoint.AngloBazooka03)
  CameraSetTarget(Camera.cutscenecam, Waypoint.AngloBazookaTarget02)
  CameraSetFOV(Camera.cutscenecam, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(13, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  WaitFor(0.5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  AngloBazookaCutsceneEnd = 1
end

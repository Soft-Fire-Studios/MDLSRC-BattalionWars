function CutScene01(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetObjectivesResult(false, false, false)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetObjectivesResult(true, true, true)
  end
  KillCutScene01 = owner
  SetViewDistanceAdjustment(600, 10)
  Despawn(Water_Vehicle.SolarBattleship01)
  Despawn(Water_Vehicle.SolarFrigate01)
  Despawn(Air_Vehicle.SolarGunship01)
  Despawn(Air_Vehicle.SolarGunship02)
  StartIntro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.PlayerOneIntroCutscene, constant.PLAYER_ONE)
    CameraSetFOV(Camera.PlayerOneIntroCutscene, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetTarget(Camera.PlayerOneIntroCutscene, Waypoint.IntroSEShot01Target)
    CameraSetWaypoint(Camera.PlayerOneIntroCutscene, Waypoint.IntroSEShot01Spline)
    PhoneMessage(61, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
    PhoneMessageWithObjective(60, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
    WaitFor(17)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.PlayerTwoIntroCutscene, constant.PLAYER_TWO)
    CameraSetFOV(Camera.PlayerTwoIntroCutscene, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetTarget(Camera.PlayerTwoIntroCutscene, Waypoint.IntroAIShot01Target)
    CameraSetWaypoint(Camera.PlayerTwoIntroCutscene, Waypoint.IntroAIShot01Spline)
    PhoneMessage(10, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_TWO)
    WaitFor(7)
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    SetCamera(Camera.PlayerTwoIntroCutscene, constant.PLAYER_TWO)
    CameraSetFOV(Camera.PlayerTwoIntroCutscene, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
    CameraSetTarget(Camera.PlayerTwoIntroCutscene, Waypoint.IntroAIShot02Target)
    CameraSetWaypoint(Camera.PlayerTwoIntroCutscene, Waypoint.IntroAIShot02Spline)
    ClearMessageQueue(constant.PLAYER_TWO)
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessageWithObjective(11, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
    WaitFor(8)
  end
  Cutscene01End = 1
end

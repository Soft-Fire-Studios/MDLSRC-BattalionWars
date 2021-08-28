function JW_Cutscene02(owner)
  KillCutscene02 = owner
  repeat
    EndFrame()
  until ReadyForCutscene02 == 1
  Teleport(Troop.SE_Grunt01, 175, -30, 180, 1)
  Teleport(Troop.SE_Grunt02, 170, -25, 180, 1)
  Teleport(Troop.SE_Grunt03, 173.3, -25, 180, 1)
  Teleport(Troop.SE_Grunt04, 176.6, -25, 180, 1)
  Teleport(Troop.SE_Grunt05, 180, -25, 180, 1)
  DebugOut("Cutscene 2 beginning")
  flamershot = 1
  SetCamera(Camera.CutsceneCamera02)
  CameraSetFOV(Camera.CutsceneCamera02, 65, constant.IMMEDIATE, 0, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  Cutscene02Begins = 1
  WaitFor(1)
  PhoneMessage(47, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  WaitFor(2)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  flamershot = 2
  SetCamera(Camera.Flamer_Camera_02)
  CameraSetFOV(Camera.Flamer_Camera_02, 70, constant.IMMEDIATE, 0, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  AttackTarget(Troop.SE_Hose01, Troop.AI_HoseTutorial_Grunt01)
  AttackTarget(Troop.SE_Hose02, Troop.AI_HoseTutorial_Grunt02)
  AttackTarget(Troop.SE_Hose03, Troop.AI_HoseTutorial_Grunt03)
  AttackTarget(Troop.SE_Hose04, Troop.AI_HoseTutorial_Grunt04)
  AttackTarget(Troop.SE_Hose05, Troop.AI_HoseTutorial_Grunt05)
  GoToArea(Air_Vehicle.AI_Air_Transport_Fake, -300, -20, 10, 0, constant.ORDER_FORCED)
  WaitFor(1)
  PhoneMessage(29, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Cutscene02Finished = 1
end

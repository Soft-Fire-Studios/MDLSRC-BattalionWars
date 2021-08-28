function JW_Cutscene03(owner)
  KillCutscene03 = owner
  repeat
    EndFrame()
  until ReadyForCutscene03 == 1
  DebugOut("Cutscene 3 beginning")
  Teleport(Troop.SE_Grunt01, -5, -55, 270, 1)
  Teleport(Troop.SE_Grunt02, -5, -57.5, 270, 1)
  Teleport(Troop.SE_Grunt03, -5, -60, 270, 1)
  Teleport(Troop.SE_Grunt04, -5, -62.5, 270, 1)
  Teleport(Troop.SE_Grunt05, -5, -65, 270, 1)
  Teleport(Troop.SE_Hose01, -5, -55, 270, 1)
  Teleport(Troop.SE_Hose02, -5, -57.5, 270, 1)
  Teleport(Troop.SE_Hose03, -5, -60, 270, 1)
  Teleport(Troop.SE_Hose04, -5, -62.5, 270, 1)
  Teleport(Troop.SE_Hose05, -5, -65, 270, 1)
  SetCamera(Camera.CutsceneCamera03)
  GoToArea(Troop.AI_AntiArmour01, -100, -25, 1, constant.ORDER_FORCED)
  CameraSetFOV(Camera.CutsceneCamera03, 50, constant.IMMEDIATE, 0, constant.NO_WAIT)
  CameraSetFOV(Camera.CutsceneCamera03, 65, constant.SMOOTH, 1, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  AttackTarget(Troop.AI_AntiArmour01, Ground_Vehicle.SE_AATank02)
  Cutscene03Begins = 1
  WaitFor(1)
  PhoneMessageWithObjective(50, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  SetObjectiveData(Objective.Protect_AA_Vehicle, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.AA_Vehicle_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  WaitFor(1)
  repeat
    EndFrame()
  until IsDead(Ground_Vehicle.SE_AATank02)
  AttackTarget(Troop.AI_AntiArmour01, Ground_Vehicle.SE_AATank01)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  WaitFor(2)
  Cutscene03Finished = 1
end

function s2_levelCheck(owner)
  cutsceneEnd = owner
  DebugOut("Cutscene End ID", cutsceneEnd)
  WaitFor(10)
  while true do
    if GetState(Capture_Point.Mining_Base) == flag.TYPE_WFRONTIER and GetState(Capture_Point.Mining_Base_B) == flag.TYPE_WFRONTIER and GetState(Capture_Point.Mining_Base_C) == flag.TYPE_WFRONTIER then
      WaitFor(5)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      StartOutro()
      DeclareVictory(constant.ARMY_WF)
      StopScoringTimer()
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      ClearMessageQueue()
      PhoneMessage(34, constant.ID_NONE, 1, 8, SpriteID.CO_X_Ingrid_Sad)
      PhoneMessage(36, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Happy)
      PlayEffect(Scripted_Effect.Dust, 3, 0, 0, 0)
      SetCamera(Camera.CutsceneCamera0004)
      CameraSetWaypoint(Camera.CutsceneCamera0004, Waypoint.Entity0176)
      CameraSetTarget(Camera.CutsceneCamera0004, Waypoint.Entity0179)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      EndCutsceneStarted = 1
      WaitFor(18)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      s2_LevelWon()
      break
    end
    if AllPlayerUnitsDead(0) then
      ClearMessageQueue()
      PhoneMessage(29, constant.ID_NONE, 1, 8, SpriteID.CO_X_Ingrid_Happy)
      DeclareVictory(constant.ARMY_XYLVANIAN)
      StopScoringTimer()
      WaitFor(10)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      s2_LevelLost()
      break
    end
    EndFrame()
  end
end

function DestroyBridges(owner)
  local loop = 0
  WaitFor(1)
  repeat
    EndFrame()
  until cutscene == 1
  WaitFor(60)
  repeat
    if alldone == 1 then
      break
    end
    if 0 >= GetTimeLeft() then
      missionfailed = 1
      if AllPlayerUnitsDead(0) then
        return
      end
      StartOutro()
      Kill(announcer)
      FreezePlayer()
      CameraFade(constant.FADE_OUT, constant.WAIT, 0.5)
      SetCamera(Camera.Cam1)
      CameraSetFOV(Camera.Cam1, 70, constant.IMMEDIATE, constant.NO_WAIT)
      CameraSetTarget(Camera.Cam1, Waypoint.OuttroCutsceneCam1Target)
      CameraSetWaypoint(Camera.Cam1, Waypoint.OuttroCutsceneCam1Spline)
      Despawn(Ground_Vehicle.WFHeavyTank1)
      Despawn(Ground_Vehicle.WFHeavyTank2)
      Despawn(Ground_Vehicle.WFHeavyTank3)
      CameraFade(constant.FADE_IN, constant.WAIT, 0.5)
      WaitFor(1.5)
      Kill(Destroyable_Object.WestBridge1ExplosiveCentre)
      Kill(Destroyable_Object.WestBridge1Piece3)
      Kill(Destroyable_Object.WestBridge1Piece4)
      WaitFor(0.7)
      Kill(Destroyable_Object.WestBridge1ExplosiveStart)
      Kill(Destroyable_Object.WestBridge1ExplosiveEnd)
      Kill(Destroyable_Object.WestBridge1Piece2)
      Kill(Destroyable_Object.WestBridge1Piece5)
      PhoneMessage(17, 0, 0, 6, SpriteID.CO_WF_Herman_Sad)
      PhoneMessage(16, 0, 1, 5, SpriteID.CO_X_Vlad_Happy)
      WaitFor(0.7)
      Kill(Destroyable_Object.WestBridge1Piece1)
      Kill(Destroyable_Object.WestBridge1Piece6)
      WaitFor(1)
      CameraFade(constant.FADE_OUT, constant.WAIT, 0.5)
      CameraSetTarget(Camera.Cam1, Waypoint.OuttroCutsceneCam2Target)
      CameraSetWaypoint(Camera.Cam1, Waypoint.OuttroCutsceneCam2Spline)
      CameraFade(constant.FADE_IN, constant.WAIT, 0.5)
      WaitFor(1.5)
      Kill(Destroyable_Object.WestBridge2ExplosiveCentre)
      Kill(Destroyable_Object.WestBridge2Piece3)
      Kill(Destroyable_Object.WestBridge2Piece4)
      WaitFor(0.7)
      Kill(Destroyable_Object.WestBridge2ExplosiveStart)
      Kill(Destroyable_Object.WestBridge2ExplosiveEnd)
      Kill(Destroyable_Object.WestBridge2Piece2)
      Kill(Destroyable_Object.WestBridge2Piece5)
      Kill(Destroyable_Object.WestBridge2Piece6)
      WaitFor(0.7)
      Kill(Destroyable_Object.WestBridge2Piece1)
      Kill(Destroyable_Object.WestBridge2Piece6)
      WaitFor(1)
      CameraFade(constant.FADE_OUT, constant.WAIT, 0.5)
      CameraSetTarget(Camera.Cam1, Waypoint.OuttroCutsceneCam3Target)
      CameraSetWaypoint(Camera.Cam1, Waypoint.OuttroCutsceneCam3Spline)
      CameraFade(constant.FADE_IN, constant.WAIT, 0.5)
      WaitFor(1.5)
      Kill(Destroyable_Object.EastBridge2ExplosiveCentre)
      Kill(Destroyable_Object.EastBridge2Piece3)
      Kill(Destroyable_Object.EastBridge2Piece4)
      WaitFor(0.7)
      Kill(Destroyable_Object.EastBridge2ExplosiveStart)
      Kill(Destroyable_Object.EastBridge2ExplosiveEnd)
      Kill(Destroyable_Object.EastBridge2Piece2)
      Kill(Destroyable_Object.EastBridge2Piece5)
      Kill(Destroyable_Object.Bats)
      WaitFor(0.7)
      Kill(Destroyable_Object.EastBridge2Piece1)
      Kill(Destroyable_Object.EastBridge2Piece6)
      loop = 1
      PhoneMessage(56, 0, 0, 6, SpriteID.CO_WF_Herman_Sad)
      WaitFor(10)
      DebugOut("You have failed.")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(311)
    end
    EndFrame()
  until loop == 1
end

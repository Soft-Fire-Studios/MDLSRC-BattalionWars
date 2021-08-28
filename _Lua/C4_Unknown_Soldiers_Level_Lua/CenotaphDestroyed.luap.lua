function CenotaphDestroyed(owner)
  local loop = 0
  while loop == 0 do
    if GetHealthPercent(Building.CenotaphUpper) <= 17 then
      while levelend == 1 do
        EndFrame()
      end
      levelend = 1
      FreezePlayer()
      missioncomplete = 1
      Kill(Destroyable_Object.DUMMY_SMOKE)
      SetObjectiveData(Objective.Destroy_Cenotaph, constant.OBJECTIVE_DATA_STATE, 1)
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      SetCamera(Camera.CamEnd)
      CameraSetTarget(Camera.CamEnd, Waypoint.CutEnd)
      CameraSetWaypoint(Camera.CamEnd, Waypoint.EndCut)
      PhoneMessage(33, 0, 0, 4, SpriteID.CO_WF_Austin_Happy)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      WaitFor(2)
      Kill(Building.CenotaphUpper)
      SetActive(Sound_Ambient_Sound_Area_Point_Sphere.Cenotaph, constant.INACTIVE)
      DeclareVictory(constant.ARMY_WF)
      WaitFor(2)
      Kill(Air_Vehicle.LChopper1)
      Kill(Air_Vehicle.LChopper2)
      Kill(Air_Vehicle.LChopper5)
      Kill(Air_Vehicle.LChopper6)
      Kill(Troop.W1Grunt1)
      Kill(Troop.W1Grunt2)
      Kill(Troop.W1Grunt3)
      Kill(Troop.W1Grunt4)
      Kill(Troop.W1Grunt7)
      Kill(Troop.W1Grunt8)
      Kill(Troop.W1Hose1)
      Kill(Troop.W1Hose2)
      Kill(Troop.W2Rocket1)
      Kill(Troop.W2Rocket2)
      Kill(Troop.W2Rocket3)
      Kill(Troop.W2Rocket4)
      Kill(Ground_Vehicle.W3Tank1)
      Kill(Ground_Vehicle.W3Tank2)
      Kill(Ground_Vehicle.W3Tank3)
      Kill(Air_Vehicle.W4Chopper1)
      WaitFor(6)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WinMission()
      loop = 1
      EndFrame()
    end
    EndFrame()
  end
  EndFrame()
end

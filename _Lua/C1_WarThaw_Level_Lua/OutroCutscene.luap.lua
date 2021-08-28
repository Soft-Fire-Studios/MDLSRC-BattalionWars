function OutroCutscene(owner)
  local loop = 0
  while loop == 0 do
    if failedmission == 1 then
      return
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.Final_Objective) then
      WaitFor(1)
      SetObjectiveData(Objective_Marker.Phase3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      DebugOut("Objective clear")
      loop = 1
    end
    EndFrame()
  end
  EndFrame()
  while reinforce == 0 do
    WaitFor(2)
    EndFrame()
  end
  EndFrame()
  DebugOut("Out of re-inforce loop")
  while loop == 1 do
    if winbackup == 1 or NumItemsInArea(Map_Zone.FinalBase, flag.TYPE_TUNDRAN) < 3 then
      while failedmission == 1 do
        EndFrame()
      end
    end
    EndFrame()
    WaitFor(2)
  end
  missioncomp = 1
  SetObjectiveData(Objective_Marker.Phase3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Phase3, constant.OBJECTIVE_DATA_STATE, 1)
  ClearMessageQueue()
  FreezePlayer()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  DeclareVictory(constant.ARMY_WF)
  Teleport(Troop.WF1_Rifleman, -394, -288, 180, 50)
  Teleport(Troop.WF2_Rifleman, -396, -282, 180, 50)
  Teleport(Troop.WF3_Rifleman, -398, -281, 150, 50)
  Teleport(Troop.WF4_Rifleman, -399, -298, 250, 50)
  Teleport(Troop.WF5_Rifleman, -384, -297, 50, 50)
  Teleport(Troop.WF6_Rifleman, -385, -296, 180, 50)
  Teleport(Troop.WF7_Rifleman, -387, -295, 150, 50)
  Teleport(Troop.WF8_Rifleman, -391, -293, 250, 50)
  Teleport(Troop.WF9_Rifleman, -390, -290, 50, 50)
  if powsfree == 1 then
    Teleport(Troop.WFPOW1, -394, -300, 180, 50)
    Teleport(Troop.WFPOW2, -395, -298, 180, 50)
    Teleport(Troop.WFPOW3, -398, -295, 180, 50)
    Teleport(Troop.WFPOW4, -384, -296, 180, 50)
  end
  Teleport(Ground_Vehicle.WFLightTank, -374, -271, 180, 50)
  PhoneMessage(68, 0, 0, 4, SpriteID.CO_WF_Herman_Happy)
  PhoneMessage(69, 0, 2, 5, SpriteID.CO_T_Gorgi_Sad)
  SetCamera(Camera.OutroCam1)
  CameraSetTarget(Camera.OutroCam1, Waypoint.OutroCut1Target)
  CameraSetWaypoint(Camera.OutroCam1, Waypoint.OutroCut1)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(15)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  WinMission()
  DebugOut("Cutscene has run its natural course")
  cutscene = 1
end

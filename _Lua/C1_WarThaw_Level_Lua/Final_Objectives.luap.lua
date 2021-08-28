function Final_Objectives(owner)
  local loop = 0
  local ammo3 = 0
  local ammo2 = 0
  local recon1 = 0
  local recon2 = 0
  local hrecon = 0
  while loop == 0 do
    if 0 < NumItemsInArea(Map_Zone.Final_Objective, flag.TYPE_WFRONTIER) then
      SetObjectiveData(Objective_Marker.Final1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Final2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Final3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Final4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Final5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Final1, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Phase3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      EndFrame()
      loop = 1
    end
    EndFrame()
  end
  while loop == 1 do
    if ammo3 == 0 and IsDead(Building.AmmoStore3) then
      SetObjectiveData(Objective_Marker.Final1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      finalobj = finalobj + 1
      DebugOut("Final objective variable =", finalobj)
      EndFrame()
      ammo3 = 1
    end
    if ammo2 == 0 and IsDead(Building.AmmoStore2) then
      SetObjectiveData(Objective_Marker.Final5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      finalobj = finalobj + 1
      DebugOut("Final objective variable =", finalobj)
      EndFrame()
      ammo2 = 1
    end
    if hrecon == 0 and IsDead(Ground_Vehicle.hrecon1) then
      SetObjectiveData(Objective_Marker.Final2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      finalobj = finalobj + 1
      DebugOut("Final objective variable =", finalobj)
      EndFrame()
      hrecon = 1
    end
    if recon2 == 0 and IsDead(Ground_Vehicle.recon2) then
      SetObjectiveData(Objective_Marker.Final4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      finalobj = finalobj + 1
      DebugOut("Final objective variable =", finalobj)
      EndFrame()
      recon2 = 1
    end
    if recon1 == 0 and IsDead(Ground_Vehicle.recon1) then
      SetObjectiveData(Objective_Marker.Final3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      finalobj = finalobj + 1
      DebugOut("Final objective variable =", finalobj)
      EndFrame()
      recon1 = 1
    end
    if finalobj == 1 then
      SetObjectiveData(Objective.Final1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Final2, constant.OBJECTIVE_DATA_VISIBLE, 1)
      EndFrame()
    end
    if finalobj == 2 then
      SetObjectiveData(Objective.Final2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Final3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      EndFrame()
    end
    if finalobj == 3 then
      SetObjectiveData(Objective.Final3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Final4, constant.OBJECTIVE_DATA_VISIBLE, 1)
      EndFrame()
    end
    if finalobj == 4 then
      SetObjectiveData(Objective.Final4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Final5, constant.OBJECTIVE_DATA_VISIBLE, 1)
      EndFrame()
    end
    if finalobj == 5 then
      SetObjectiveData(Objective.Final5, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Final6, constant.OBJECTIVE_DATA_VISIBLE, 1)
      if wonmission == 1 then
        return EndFrame()
      end
      wonmission = 1
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
    EndFrame()
  end
end

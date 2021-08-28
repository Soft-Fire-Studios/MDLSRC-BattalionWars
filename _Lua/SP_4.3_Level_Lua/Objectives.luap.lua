function Objectives(owner)
  ObjectivesScript = owner
  local RemoveArtillery01Star = 0
  local RemoveArtillery02Star = 0
  local ChangeAirbaseObjectiveState = 0
  local RemoveNavalGunProceedStar = 0
  local RemoveNavalGun01Star = 0
  local RemoveNavalGun02Star = 0
  SetObjectiveData(Objective.CaptureAirbase, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.NavalGunProceed, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.NavalGunDefend22, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.NavalGunDefend12, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.POW, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.POWArtillery, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.RescueArtillery22, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.RescueArtillery12, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.RescueArtillery02, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.CaptureAirbase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.NavalGunProceed, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.NavalGun01Defend, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.NavalGun02Defend, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.POW, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.POWArtillery, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.RescueArtillery01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.RescueArtillery02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  repeat
    EndFrame()
  until IntroCutsceneEnd == 1
  WaitFor(5)
  while true do
    if MidCutsceneArtilleryObjectiveEnd == 1 then
      WaitFor(1)
      if RemoveArtillery01Star == 0 and IsDead(Ground_Vehicle.ILArtillery01) and 0 < GetGroupHealthPercent(Unit_Group.ArtilleryAttackers) then
        RemoveArtillery01Star = 1
        SetObjectiveData(Objective.RescueArtillery22, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RescueArtillery12, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.RescueArtillery01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        ArtilleryDeadCounter = ArtilleryDeadCounter + 1
        EndFrame()
      end
      if RemoveArtillery02Star == 0 and IsDead(Ground_Vehicle.ILArtillery02) and 0 < GetGroupHealthPercent(Unit_Group.ArtilleryAttackers) then
        RemoveArtillery02Star = 1
        SetObjectiveData(Objective.RescueArtillery22, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RescueArtillery12, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.RescueArtillery02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        ArtilleryDeadCounter = ArtilleryDeadCounter + 1
        EndFrame()
      end
      if ArtilleryBothDead == 0 and ArtilleryDeadCounter == 2 then
        ArtilleryBothDead = 1
        SetObjectiveData(Objective.RescueArtillery22, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RescueArtillery12, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RescueArtillery02, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.RescueArtillery02, constant.OBJECTIVE_DATA_STATE, 1)
        EndFrame()
      end
      if SetArtilleryObjectiveComplete == 0 and GetGroupHealthPercent(Unit_Group.ArtilleryAttackers) == 0 and ArtilleryBothDead == 0 then
        SetArtilleryObjectiveComplete = 1
        TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
        if ArtilleryDeadCounter == 0 then
          SetObjectiveData(Objective.RescueArtillery22, constant.OBJECTIVE_DATA_STATE, 1)
        else
          SetObjectiveData(Objective.RescueArtillery12, constant.OBJECTIVE_DATA_STATE, 1)
        end
        SetObjectiveData(Objective_Marker.RescueArtillery01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RescueArtillery02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        EndFrame()
      end
    end
    if ChangeAirbaseObjectiveState ~= 1 and GetInstallationOwner(Strategic_Installation.ILairbase) == constant.ARMY_UNDERWORLD then
      ChangeAirbaseObjectiveState = 1
      SetObjectiveData(Objective.CaptureAirbase, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.CaptureAirbase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      EndFrame()
    end
    if ChangeAirbaseObjectiveState == 1 and GetInstallationOwner(Strategic_Installation.ILairbase) == constant.ARMY_SOLAR then
      ChangeAirbaseObjectiveState = 2
      SetObjectiveData(Objective.CaptureAirbase, constant.OBJECTIVE_DATA_STATE, 0)
      SetObjectiveData(Objective_Marker.CaptureAirbase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      EndFrame()
    end
    if RemoveNavalGunProceedStar == 0 and 0 < NumItemsInArea(Map_Zone.NavalGunArea, flag.TYPE_UNDERWORLD) then
      DebugOut("NumItemsInArea(Map_Zone.NavalGunArea, flag.TYPE_UNDERWORLD) > 0")
      if NavalGunsStartWithOnlyAircraft == 0 then
        if 0 < NumItemsInArea(Map_Zone.NavalGunArea, flag.TYPE_INFANTRY) or 0 < NumItemsInArea(Map_Zone.NavalGunArea, flag.TYPE_GVEHICLE) then
          RemoveNavalGunProceedStar = 1
          SetObjectiveData(Objective.NavalGunProceed, constant.OBJECTIVE_DATA_STATE, 1)
          SetObjectiveData(Objective_Marker.NavalGunProceed, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          MidCutsceneBeachStart = 1
        end
      else
        RemoveNavalGunProceedStar = 1
        SetObjectiveData(Objective.NavalGunProceed, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective_Marker.NavalGunProceed, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        PlayAltBeachCutsceneString = 1
        MidCutsceneBeachStart = 1
      end
      EndFrame()
    end
    if NavalGunsStart == 1 then
      if RemoveNavalGun01Star == 0 and IsDead(Building.NavalGun01) then
        RemoveNavalGun01Star = 1
        SetObjectiveData(Objective.NavalGunDefend22, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.NavalGunDefend12, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.NavalGun01Defend, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        EndFrame()
      end
      if RemoveNavalGun02Star == 0 and IsDead(Building.NavalGun02) then
        RemoveNavalGun02Star = 1
        SetObjectiveData(Objective.NavalGunDefend22, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.NavalGunDefend12, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.NavalGun02Defend, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        EndFrame()
      end
    end
    EndFrame()
  end
end

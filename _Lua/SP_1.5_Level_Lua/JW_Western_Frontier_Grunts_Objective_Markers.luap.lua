function JW_Western_Frontier_Grunts_Objective_Markers(owner)
  local GruntOM = 1
  repeat
    EndFrame()
  until TransportLandingCutsceneEnd == 1
  WaitFor(1)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  DebugOut("Checking Western Frontier Grunt To Assign Primary Objective Marker To")
  repeat
    if GruntOM == 1 and IsDead(Troop.WesternFrontierGrunt01) then
      GruntOM = 2
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      DebugOut("Grunt 02 Primary Objective Marker Set")
    elseif GruntOM == 2 and IsDead(Troop.WesternFrontierGrunt02) then
      GruntOM = 3
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      DebugOut("Grunt 03 Primary Objective Marker Set")
    elseif GruntOM == 3 and IsDead(Troop.WesternFrontierGrunt03) then
      GruntOM = 4
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      DebugOut("Grunt 04 Primary Objective Marker Set")
    elseif GruntOM == 4 and IsDead(Troop.WesternFrontierGrunt04) then
      GruntOM = 5
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt05, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      DebugOut("Grunt 05 Primary Objective Marker Set")
    elseif GruntOM == 5 and IsDead(Troop.WesternFrontierGrunt05) then
      GruntOM = 6
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt05, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt06, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      DebugOut("Grunt 06 Primary Objective Marker Set")
    elseif GruntOM == 6 and IsDead(Troop.WesternFrontierGrunt06) then
      GruntOM = 7
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt06, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt07, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    elseif GruntOM == 7 and IsDead(Troop.WesternFrontierGrunt07) then
      GruntOM = 8
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt07, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt08, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      DebugOut("Grunt 08 Primary Objective Marker Set")
    elseif GruntOM == 8 and IsDead(Troop.WesternFrontierGrunt08) then
      GruntOM = 9
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt08, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt09, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      DebugOut("Grunt 09 Primary Objective Marker Set")
    elseif GruntOM == 9 and IsDead(Troop.WesternFrontierGrunt09) then
      GruntOM = 10
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt09, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      DebugOut("Grunt 10 Primary Objective Marker Set")
    elseif GruntOM == 10 and IsDead(Troop.WesternFrontierGrunt10) then
      GruntOM = 11
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      DebugOut("Grunt 11 Primary Objective Marker Set")
    elseif GruntOM == 11 and IsDead(Troop.WesternFrontierGrunt11) then
      GruntOM = 12
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt12, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      DebugOut("Grunt 12 Primary Objective Marker Set")
    elseif GruntOM == 12 and IsDead(Troop.WesternFrontierGrunt12) then
      GruntOM = 13
      SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt12, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      DebugOut("Grunt 13 Primary Objective Marker Set")
      WesternFrontierGruntsAlive = WesternFrontierGruntsAlive - 1
    else
      EndFrame()
    end
  until missionend == 1 or 0 < aatowers or GruntOM == 12
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt05, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt06, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt07, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt08, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt09, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectiveProtectWesternFrontierGrunt12, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
end

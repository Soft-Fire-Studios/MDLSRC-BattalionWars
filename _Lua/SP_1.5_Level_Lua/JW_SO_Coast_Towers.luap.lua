function JW_SO_Coast_Towers(owner)
  local tryx = 0
  local dead1 = 0
  local dead2 = 0
  local dead3 = 0
  local dead4 = 0
  local dead5 = 0
  local dead6 = 0
  local dead7 = 0
  local dead8 = 0
  local dead9 = 0
  repeat
    EndFrame()
  until TransportLandingCutsceneEnd == 1
  WaitFor(1)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat05, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat06, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat07, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat08, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat09, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  while true do
    if dead1 == 0 and IsDead(Ground_Vehicle.AngloLightTank01) then
      DebugOut("Secondary Objective - AI LT 1 Destroyed")
      SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      dead1 = 1
    elseif dead2 == 0 and IsDead(Ground_Vehicle.AngloLightTank02) then
      DebugOut("Secondary Objective - AI LT 2 Destroyed")
      SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      dead2 = 1
    elseif dead3 == 0 and IsDead(Building.AngloMachineGunTower01) then
      DebugOut("Secondary Objective - AI MG Tower 1 Destroyed")
      SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      dead3 = 1
    elseif dead4 == 0 and IsDead(Building.AngloMachineGunTower02) then
      DebugOut("Secondary Objective - AI MG Tower 2 Destroyed")
      SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      dead4 = 1
    elseif dead5 == 0 and IsDead(Building.AngloMachineGunTower03) then
      DebugOut("Secondary Objective - AI MG Tower 3 Destroyed")
      SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat05, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      dead5 = 1
    elseif dead6 == 0 and IsDead(Ground_Vehicle.AngloArtillery04) then
      DebugOut("Secondary Objective - AI Art 4 Destroyed")
      SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat06, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      dead6 = 1
    elseif dead7 == 0 and IsDead(Building.AngloMachineGunTower04) then
      DebugOut("Secondary Objective - AI MG Tower 4 Destroyed")
      SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat07, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      dead7 = 1
    elseif dead8 == 0 and IsDead(Building.AngloMachineGunTower05) then
      DebugOut("Secondary Objective - AI MG Tower 5 Destroyed")
      SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat08, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      dead8 = 1
    elseif dead9 == 0 and IsDead(Building.AngloMachineGunTower06) then
      DebugOut("Secondary Objective - AI MG Tower 6 Destroyed")
      SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat09, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      dead9 = 1
    else
      EndFrame()
    end
    if dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 == 9 then
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_09, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_19, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_29, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_39, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_49, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_59, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_69, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_79, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_89, constant.OBJECTIVE_DATA_VISIBLE, 0)
      DebugOut("Power Objectives Complete")
      PhoneMessageWithObjective(138, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
      PowerObjectivesCompleted = PowerObjectivesCompleted + 1
      tryx = 1
      break
    elseif aatowers == 2 then
      break
    else
      EndFrame()
    end
  end
  if dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 == 9 and tryx == 0 then
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_09, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_19, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_29, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_39, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_49, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_59, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_69, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_79, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_89, constant.OBJECTIVE_DATA_VISIBLE, 0)
    DebugOut("SO Coast Power Objectives Complete")
    PhoneMessageWithObjective(138, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
    PowerObjectivesCompleted = PowerObjectivesCompleted + 1
  elseif dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 ~= 9 then
    DebugOut("SO Coast Power Objective Failed")
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_09, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_19, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_29, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_39, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_49, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_59, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_69, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_79, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_89, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_99, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_Failed, constant.OBJECTIVE_DATA_VISIBLE, 1)
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_Failed, constant.OBJECTIVE_DATA_STATE, 1)
  end
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat05, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat06, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat07, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat08, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat09, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  repeat
    EndFrame()
  until SeaUnitsWithdrawCutsceneEnd == 1
  Kill(Ground_Vehicle.AngloLightTank01)
  Kill(Ground_Vehicle.AngloLightTank02)
  Kill(Ground_Vehicle.AngloArtillery04)
  Kill(Building.AngloMachineGunTower01)
  Kill(Building.AngloMachineGunTower02)
  Kill(Building.AngloMachineGunTower03)
  Kill(Building.AngloMachineGunTower04)
  Kill(Building.AngloMachineGunTower05)
  Kill(Building.AngloMachineGunTower06)
end

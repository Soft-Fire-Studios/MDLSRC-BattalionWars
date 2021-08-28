function JW_Objective_Counters(owner)
  SetObjectiveData(Objective.Destroy_Island_Threats_00_10, constant.OBJECTIVE_DATA_VISIBLE, 1)
  local islandcounter = 0
  local islanddead01 = 0
  local islanddead02 = 0
  local islanddead03 = 0
  local islanddead04 = 0
  local islanddead05 = 0
  local islanddead06 = 0
  local islanddead07 = 0
  local islanddead08 = 0
  local islanddead09 = 0
  local islanddead10 = 0
  local shorecounter = 0
  local shoredead01 = 0
  local shoredead02 = 0
  local shoredead03 = 0
  local shoredead04 = 0
  local coastcounter = 0
  local coastdead01 = 0
  local coastdead02 = 0
  local coastdead03 = 0
  local coastdead04 = 0
  local coastdead05 = 0
  local coastdead06 = 0
  local coastdead07 = 0
  local coastdead08 = 0
  local coastdead09 = 0
  repeat
    if shoredead01 == 0 and IsDead(Ground_Vehicle.AngloArtillery03) then
      shoredead01 = 1
    end
    if shoredead02 == 0 and IsDead(Ground_Vehicle.AngloArtillery06) then
      shoredead02 = 1
    end
    if shoredead03 == 0 and IsDead(Building.AngloBeachTower01) then
      shoredead03 = 1
    end
    if shoredead04 == 0 and IsDead(Building.AngloBeachTower02) then
      shoredead04 = 1
    end
    EndFrame()
    if shoredead01 + shoredead02 + shoredead03 + shoredead04 == 1 and shorecounter ~= 1 then
      shorecounter = 1
      SetObjectiveData(Objective.Destroy_Shore_Threats_04, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Shore_Threats_14, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if shoredead01 + shoredead02 + shoredead03 + shoredead04 == 2 and shorecounter ~= 2 then
      shorecounter = 2
      SetObjectiveData(Objective.Destroy_Shore_Threats_14, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Shore_Threats_24, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if shoredead01 + shoredead02 + shoredead03 + shoredead04 == 3 and shorecounter ~= 3 then
      shorecounter = 3
      SetObjectiveData(Objective.Destroy_Shore_Threats_24, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Shore_Threats_34, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if shoredead01 + shoredead02 + shoredead03 + shoredead04 == 4 and shorecounter ~= 4 then
      shorecounter = 4
      SetObjectiveData(Objective.Destroy_Shore_Threats_34, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Destroy_Shore_Threats_44, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    EndFrame()
  until shorecounter == 4
  SetObjectiveData(Objective.Destroy_Shore_Threats_44, constant.OBJECTIVE_DATA_STATE, 1)
  repeat
    EndFrame()
  until TransportLandingCutsceneEnd == 1
  SetObjectiveData(Objective.SO_Destroy_Coast_Threats_09, constant.OBJECTIVE_DATA_VISIBLE, 1)
  repeat
    if coastdead01 == 0 and IsDead(Ground_Vehicle.AngloLightTank01) then
      coastdead01 = 1
    end
    if coastdead02 == 0 and IsDead(Ground_Vehicle.AngloLightTank02) then
      coastdead02 = 1
    end
    if coastdead03 == 0 and IsDead(Ground_Vehicle.AngloArtillery04) then
      coastdead03 = 1
    end
    if coastdead04 == 0 and IsDead(Building.AngloMachineGunTower01) then
      coastdead04 = 1
    end
    if coastdead05 == 0 and IsDead(Building.AngloMachineGunTower02) then
      coastdead05 = 1
    end
    if coastdead06 == 0 and IsDead(Building.AngloMachineGunTower03) then
      coastdead06 = 1
    end
    if coastdead07 == 0 and IsDead(Building.AngloMachineGunTower04) then
      coastdead07 = 1
    end
    if coastdead08 == 0 and IsDead(Building.AngloMachineGunTower05) then
      coastdead08 = 1
    end
    if coastdead09 == 0 and IsDead(Building.AngloMachineGunTower06) then
      coastdead09 = 1
    end
    EndFrame()
    if coastdead01 + coastdead02 + coastdead03 + coastdead04 + coastdead05 + coastdead06 + coastdead07 + coastdead08 + coastdead09 == 1 and coastcounter ~= 1 then
      coastcounter = 1
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_09, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_19, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if coastdead01 + coastdead02 + coastdead03 + coastdead04 + coastdead05 + coastdead06 + coastdead07 + coastdead08 + coastdead09 == 2 and coastcounter ~= 2 then
      coastcounter = 2
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_09, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_19, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_29, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if coastdead01 + coastdead02 + coastdead03 + coastdead04 + coastdead05 + coastdead06 + coastdead07 + coastdead08 + coastdead09 == 3 and coastcounter ~= 3 then
      coastcounter = 3
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_09, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_29, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_39, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if coastdead01 + coastdead02 + coastdead03 + coastdead04 + coastdead05 + coastdead06 + coastdead07 + coastdead08 + coastdead09 == 4 and coastcounter ~= 4 then
      coastcounter = 4
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_09, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_39, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_49, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if coastdead01 + coastdead02 + coastdead03 + coastdead04 + coastdead05 + coastdead06 + coastdead07 + coastdead08 + coastdead09 == 5 and coastcounter ~= 5 then
      coastcounter = 5
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_09, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_49, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_59, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if coastdead01 + coastdead02 + coastdead03 + coastdead04 + coastdead05 + coastdead06 + coastdead07 + coastdead08 + coastdead09 == 6 and coastcounter ~= 6 then
      coastcounter = 6
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_09, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_59, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_69, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if coastdead01 + coastdead02 + coastdead03 + coastdead04 + coastdead05 + coastdead06 + coastdead07 + coastdead08 + coastdead09 == 7 and coastcounter ~= 7 then
      coastcounter = 7
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_09, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_69, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_79, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if coastdead01 + coastdead02 + coastdead03 + coastdead04 + coastdead05 + coastdead06 + coastdead07 + coastdead08 + coastdead09 == 8 and coastcounter ~= 8 then
      coastcounter = 8
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_09, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_79, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_89, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if coastdead01 + coastdead02 + coastdead03 + coastdead04 + coastdead05 + coastdead06 + coastdead07 + coastdead08 + coastdead09 == 9 and coastcounter ~= 9 then
      coastcounter = 9
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_09, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_89, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_Destroy_Coast_Threats_99, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    EndFrame()
  until coastcounter == 9 or aatowers == 2
  if coastcounter == 9 then
    SetObjectiveData(Objective.SO_Destroy_Coast_Threats_99, constant.OBJECTIVE_DATA_STATE, 1)
  end
end

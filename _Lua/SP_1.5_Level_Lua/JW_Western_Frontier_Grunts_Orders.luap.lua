function JW_Western_Frontier_Grunts_Orders(owner)
  local grunt01 = 0
  local grunt02 = 0
  local grunt03 = 0
  local grunt04 = 0
  local grunt05 = 0
  local counter = 0
  local movecounter = 0
  local first = 0
  local second = 0
  local third = 0
  local fourth = 0
  local fifth = 0
  local sixth = 0
  local timer = 0
  local playerunit = 0
  repeat
    EndFrame()
  until TransportLandingCutsceneEnd == 1
  WaitFor(1)
  Spawn(Ground_Vehicle.AngloArtillery04)
  Spawn(Ground_Vehicle.AngloLightTank01)
  Spawn(Ground_Vehicle.AngloLightTank02)
  GoToArea(Ground_Vehicle.AngloLightTank01, -440, -50, 35, constant.ORDER_FORCED)
  WaitFor(3)
  GoToArea(Ground_Vehicle.AngloLightTank02, -430, -70, 35, constant.ORDER_FORCED)
  SetObjectiveData(Objective_Marker.PrimaryObjectDestroyShorelineThreat01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  movecounter = 90
  repeat
    movecounter = movecounter - 1
    EndFrame()
  until IsDead(Ground_Vehicle.AngloLightTank01) or IsDead(Ground_Vehicle.AngloLightTank02) or movecounter == 0 or aatowers == 1
  if IsDead(Ground_Vehicle.AngloLightTank01) and IsDead(Ground_Vehicle.AngloLightTank02) then
    DebugOut(" Light Tanks down, moving WF Grunts to first location")
    PhoneMessage(45, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE)
  end
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) ~= nil
  AttackTarget(Air_Vehicle.AngloBomber06, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_FORCED)
  repeat
    EndFrame()
  until IsDead(Ground_Vehicle.AngloLightTank01) and IsDead(Ground_Vehicle.AngloLightTank02) and IsDead(Air_Vehicle.AngloBomber06)
  PhoneMessage(54, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  GoToArea(Unit_Group.WF_Grunts, WesternFrontierAdvance02X, WesternFrontierAdvance02Z, 15, constant.ORDER_FORCED)
  movecounter = 90
  repeat
    movecounter = movecounter - 1
    EndFrame()
  until IsDead(Building.AngloMachineGunTower03) and IsDead(Building.AngloMachineGunTower04) or movecounter == 0 or aatowers == 1 or IsDead(Building.AngloMachineGunTower05) and IsDead(Building.AngloMachineGunTower06)
  DebugOut(" Light Tanks down, moving WF Grunts to fourth location")
  movecounter = 90
  repeat
    movecounter = movecounter - 1
    EndFrame()
  until movecounter == 0 or aatowers == 1
  GoToArea(Unit_Group.WF_Grunts, WesternFrontierAdvance04X, WesternFrontierAdvance04Z, 15, constant.ORDER_FORCED)
  movecounter = 180
  repeat
    movecounter = movecounter - 1
    EndFrame()
  until IsDead(Building.AngloMachineGunTower05) and IsDead(Building.AngloMachineGunTower06) or movecounter == 0 or aatowers == 1
  DebugOut(" Light Tanks down, moving WF Grunts to sixth and final location")
  GoToArea(Unit_Group.WF_Grunts, WesternFrontierAdvance06X, WesternFrontierAdvance06Z, 15, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until SeaUnitsWithdrawCutsceneEnd == 2
  StopCapturePointSounds(Capture_Point.PrimaryObjectiveReinforcements)
  WaitFor(2)
  if IsDead(Troop.WesternFrontierGrunt01) == false and counter < 5 then
    counter = counter + 1
    if counter == 1 then
      grunt01 = Troop.WesternFrontierGrunt01
    elseif counter == 2 then
      grunt02 = Troop.WesternFrontierGrunt01
    elseif counter == 3 then
      grunt03 = Troop.WesternFrontierGrunt01
    elseif counter == 4 then
      grunt04 = Troop.WesternFrontierGrunt01
    elseif counter == 5 then
      grunt05 = Troop.WesternFrontierGrunt01
    end
  else
  end
  if IsDead(Troop.WesternFrontierGrunt02) == false and counter < 5 then
    counter = counter + 1
    if counter == 1 then
      grunt01 = Troop.WesternFrontierGrunt02
    elseif counter == 2 then
      grunt02 = Troop.WesternFrontierGrunt02
    elseif counter == 3 then
      grunt03 = Troop.WesternFrontierGrunt02
    elseif counter == 4 then
      grunt04 = Troop.WesternFrontierGrunt02
    elseif counter == 5 then
      grunt05 = Troop.WesternFrontierGrunt02
    end
  else
  end
  if IsDead(Troop.WesternFrontierGrunt03) == false and counter < 5 then
    counter = counter + 1
    if counter == 1 then
      grunt01 = Troop.WesternFrontierGrunt03
    elseif counter == 2 then
      grunt02 = Troop.WesternFrontierGrunt03
    elseif counter == 3 then
      grunt03 = Troop.WesternFrontierGrunt03
    elseif counter == 4 then
      grunt04 = Troop.WesternFrontierGrunt03
    elseif counter == 5 then
      grunt05 = Troop.WesternFrontierGrunt03
    end
  else
  end
  if IsDead(Troop.WesternFrontierGrunt04) == false and counter < 5 then
    counter = counter + 1
    if counter == 1 then
      grunt01 = Troop.WesternFrontierGrunt04
    elseif counter == 2 then
      grunt02 = Troop.WesternFrontierGrunt04
    elseif counter == 3 then
      grunt03 = Troop.WesternFrontierGrunt04
    elseif counter == 4 then
      grunt04 = Troop.WesternFrontierGrunt04
    elseif counter == 5 then
      grunt05 = Troop.WesternFrontierGrunt04
    end
  else
  end
  if IsDead(Troop.WesternFrontierGrunt05) == false and counter < 5 then
    counter = counter + 1
    if counter == 1 then
      grunt01 = Troop.WesternFrontierGrunt05
    elseif counter == 2 then
      grunt02 = Troop.WesternFrontierGrunt05
    elseif counter == 3 then
      grunt03 = Troop.WesternFrontierGrunt05
    elseif counter == 4 then
      grunt04 = Troop.WesternFrontierGrunt05
    elseif counter == 5 then
      grunt05 = Troop.WesternFrontierGrunt05
    end
  else
  end
  if IsDead(Troop.WesternFrontierGrunt06) == false and counter < 5 then
    counter = counter + 1
    if counter == 1 then
      grunt01 = Troop.WesternFrontierGrunt06
    elseif counter == 2 then
      grunt02 = Troop.WesternFrontierGrunt06
    elseif counter == 3 then
      grunt03 = Troop.WesternFrontierGrunt06
    elseif counter == 4 then
      grunt04 = Troop.WesternFrontierGrunt06
    elseif counter == 5 then
      grunt05 = Troop.WesternFrontierGrunt06
    end
  else
  end
  if IsDead(Troop.WesternFrontierGrunt07) == false and counter < 5 then
    counter = counter + 1
    if counter == 1 then
      grunt01 = Troop.WesternFrontierGrunt07
    elseif counter == 2 then
      grunt02 = Troop.WesternFrontierGrunt07
    elseif counter == 3 then
      grunt03 = Troop.WesternFrontierGrunt07
    elseif counter == 4 then
      grunt04 = Troop.WesternFrontierGrunt07
    elseif counter == 5 then
      grunt05 = Troop.WesternFrontierGrunt07
    end
  else
  end
  if IsDead(Troop.WesternFrontierGrunt08) == false and counter < 5 then
    counter = counter + 1
    if counter == 1 then
      grunt01 = Troop.WesternFrontierGrunt08
    elseif counter == 2 then
      grunt02 = Troop.WesternFrontierGrunt08
    elseif counter == 3 then
      grunt03 = Troop.WesternFrontierGrunt08
    elseif counter == 4 then
      grunt04 = Troop.WesternFrontierGrunt08
    elseif counter == 5 then
      grunt05 = Troop.WesternFrontierGrunt08
    end
  else
  end
  if IsDead(Troop.WesternFrontierGrunt09) == false and counter < 5 then
    counter = counter + 1
    if counter == 1 then
      grunt01 = Troop.WesternFrontierGrunt09
    elseif counter == 2 then
      grunt02 = Troop.WesternFrontierGrunt09
    elseif counter == 3 then
      grunt03 = Troop.WesternFrontierGrunt09
    elseif counter == 4 then
      grunt04 = Troop.WesternFrontierGrunt09
    elseif counter == 5 then
      grunt05 = Troop.WesternFrontierGrunt09
    end
  else
  end
  if IsDead(Troop.WesternFrontierGrunt10) == false and counter < 5 then
    counter = counter + 1
    if counter == 1 then
      grunt01 = Troop.WesternFrontierGrunt10
    elseif counter == 2 then
      grunt02 = Troop.WesternFrontierGrunt10
    elseif counter == 3 then
      grunt03 = Troop.WesternFrontierGrunt10
    elseif counter == 4 then
      grunt04 = Troop.WesternFrontierGrunt10
    elseif counter == 5 then
      grunt05 = Troop.WesternFrontierGrunt10
    end
  else
  end
  if IsDead(Troop.WesternFrontierGrunt11) == false and counter < 5 then
    counter = counter + 1
    if counter == 1 then
      grunt01 = Troop.WesternFrontierGrunt11
    elseif counter == 2 then
      grunt02 = Troop.WesternFrontierGrunt11
    elseif counter == 3 then
      grunt03 = Troop.WesternFrontierGrunt11
    elseif counter == 4 then
      grunt04 = Troop.WesternFrontierGrunt11
    elseif counter == 5 then
      grunt05 = Troop.WesternFrontierGrunt11
    end
  else
  end
  if IsDead(Troop.WesternFrontierGrunt12) == false and counter < 5 then
    counter = counter + 1
    if counter == 1 then
      grunt01 = Troop.WesternFrontierGrunt12
    elseif counter == 2 then
      grunt02 = Troop.WesternFrontierGrunt12
    elseif counter == 3 then
      grunt03 = Troop.WesternFrontierGrunt12
    elseif counter == 4 then
      grunt04 = Troop.WesternFrontierGrunt12
    elseif counter == 5 then
      grunt05 = Troop.WesternFrontierGrunt12
    end
  else
  end
  if grunt01 ~= 0 then
    FollowUnit(grunt01, GetPlayerUnit(), 15, constant.ORDER_FORCED)
  end
  if grunt02 ~= 0 then
    FollowUnit(grunt02, GetPlayerUnit(), 15, constant.ORDER_FORCED)
  end
  if grunt03 ~= 0 then
    FollowUnit(grunt03, GetPlayerUnit(), 15, constant.ORDER_FORCED)
  end
  if grunt04 ~= 0 then
    FollowUnit(grunt04, GetPlayerUnit(), 15, constant.ORDER_FORCED)
  end
  if grunt05 ~= 0 then
    FollowUnit(grunt05, GetPlayerUnit(), 15, constant.ORDER_FORCED)
  end
  repeat
    if GetPlayerUnit(constant.PLAYER_ONE) ~= playerunit and GetPlayerUnit(constant.PLAYER_ONE) ~= nil then
      playerunit = GetPlayerUnit(constant.PLAYER_ONE)
      DebugOut("Telling Western Frontier to follow new commanded Player Unit")
      if grunt01 ~= 0 then
        FollowUnit(grunt01, GetPlayerUnit(), 15, constant.ORDER_FORCED)
      end
      if grunt02 ~= 0 then
        FollowUnit(grunt02, GetPlayerUnit(), 15, constant.ORDER_FORCED)
      end
      if grunt03 ~= 0 then
        FollowUnit(grunt03, GetPlayerUnit(), 15, constant.ORDER_FORCED)
      end
      if grunt04 ~= 0 then
        FollowUnit(grunt04, GetPlayerUnit(), 15, constant.ORDER_FORCED)
      end
      if grunt05 ~= 0 then
        FollowUnit(grunt05, GetPlayerUnit(), 15, constant.ORDER_FORCED)
      end
    else
      EndFrame()
    end
  until missionend == 1
end

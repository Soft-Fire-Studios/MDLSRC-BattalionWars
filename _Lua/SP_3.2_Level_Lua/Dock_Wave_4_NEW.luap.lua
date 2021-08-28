function Dock_Wave_4_NEW(owner)
  script06 = owner
  Teleport(Air_Vehicle.SE_Air_Transport_1, -180, 595, 90, 30)
  Teleport(Air_Vehicle.SE_Air_Transport_2, -300, 375, 90, 30)
  Teleport(Air_Vehicle.SE_Air_Transport_3, -420, 260, 90, 30)
  Despawn(Air_Vehicle.SE_Air_Transport_1)
  Despawn(Air_Vehicle.SE_Air_Transport_2)
  Despawn(Air_Vehicle.SE_Air_Transport_3)
  Despawn(Water_Vehicle.SE_Battleship_3)
  Despawn(Water_Vehicle.SE_Battleship_4)
  local group = 0
  local counter = 0
  local land1 = 0
  local land2 = 0
  local land3 = 0
  local land4 = 0
  local land5 = 0
  local text1 = 0
  local text2 = 0
  repeat
    EndFrame()
  until wave == 4
  if IsDead(Water_Vehicle.SE_Sea_Transport_2) == false then
    Kill(Water_Vehicle.SE_Sea_Transport_2, false)
  end
  DebugOut("Wave 4 Begins")
  repeat
    EndFrame()
  until GetPlayerUnit() ~= nil
  Spawn(Water_Vehicle.SE_Sea_Transport_4)
  Spawn(Water_Vehicle.SE_Sea_Transport_5)
  Teleport(Water_Vehicle.SE_Sea_Transport_4, GetObjectXPosition(GetPlayerUnit()) - 650, 400, 90, 50)
  Teleport(Water_Vehicle.SE_Sea_Transport_5, GetObjectXPosition(GetPlayerUnit()) - 600, 290, 90, 50)
  Teleport(Water_Vehicle.SE_Battleship_1, GetObjectXPosition(GetPlayerUnit()) - 750, 350, 90, 50)
  Teleport(Water_Vehicle.SE_Battleship_2, GetObjectXPosition(GetPlayerUnit()) - 550, 380, 90, 50)
  Teleport(Water_Vehicle.SE_Battleship_3, GetObjectXPosition(GetPlayerUnit()) - 550, 310, 90, 10)
  Teleport(Water_Vehicle.SE_Battleship_4, GetObjectXPosition(GetPlayerUnit()) - 750, 180, 90, 10)
  DebugOut("Sea Transport 4 is at", "x", GetObjectXPosition(Water_Vehicle.SE_Sea_Transport_4), "z", GetObjectZPosition(Water_Vehicle.SE_Sea_Transport_4))
  DebugOut("Sea Transport 5 is at", "x", GetObjectXPosition(Water_Vehicle.SE_Sea_Transport_5), "z", GetObjectZPosition(Water_Vehicle.SE_Sea_Transport_5))
  Teleport(Air_Vehicle.SE_Gunship_3, -210, 400, 90, 10)
  Teleport(Air_Vehicle.SE_Gunship_4, -210, 400, 90, 10)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship_3)
  ReviveDeadUnit(Air_Vehicle.SE_Gunship_4)
  repeat
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SE_Gunship_3)
    EndFrame()
  until GetNumSeatsFree(Air_Vehicle.SE_Gunship_3) == 0
  DebugOut("Gunship 3 Full")
  repeat
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SE_Gunship_4)
    EndFrame()
  until GetNumSeatsFree(Air_Vehicle.SE_Gunship_4) == 0
  DebugOut("Gunship 4 Full")
  GoToArea(Air_Vehicle.SE_Gunship_3, 455, 380, 50)
  GoToArea(Air_Vehicle.SE_Gunship_4, 515, 345, 50)
  ReviveDeadUnit(Water_Vehicle.SE_Battleship_1)
  ReviveDeadUnit(Water_Vehicle.SE_Battleship_2)
  repeat
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Water_Vehicle.SE_Sea_Transport_4)
    EndFrame()
  until GetNumSeatsFree(Water_Vehicle.SE_Sea_Transport_4) == 4
  DebugOut("Sea Transport 2 full")
  repeat
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Water_Vehicle.SE_Sea_Transport_5)
    EndFrame()
  until GetNumSeatsFree(Water_Vehicle.SE_Sea_Transport_5) == 4
  DebugOut("Sea Transport 3 full")
  GoToArea(Water_Vehicle.SE_Battleship_1, 490, 330, 50)
  WaitFor(5)
  BeachWaterUnit(Water_Vehicle.SE_Sea_Transport_4, 540, 450, 80, 1)
  WaitFor(5)
  BeachWaterUnit(Water_Vehicle.SE_Sea_Transport_5, 545, 205, 100, 1)
  WaitFor(25)
  GoToArea(Water_Vehicle.SE_Battleship_2, 490, 210, 50)
  repeat
    if IsDead(Water_Vehicle.SE_Sea_Transport_4) and land1 == 0 then
      DebugOut("Sea Transport 4 destroyed")
      land1 = 1
    else
      if land1 == 0 and NumPassengersInUnit(Water_Vehicle.SE_Sea_Transport_4) == 0 then
        powerland = powerland - 1
        DebugOut("Sea Transport 4 unloaded")
        WaitFor(2)
        EndFrame()
        AddToGroup(Unit_Group.Wave_4a, GetObjectXPosition(Water_Vehicle.SE_Sea_Transport_4), GetObjectZPosition(Water_Vehicle.SE_Sea_Transport_4), 75, flag.TYPE_SOLAR, flag.GTYPE_GRUNT, 0, 5000)
        group = GetNumMatchingInGroup(Unit_Group.Wave_4a)
        DebugOut("There are", GetNumMatchingInGroup(Unit_Group.Wave_4a), "units in Group 4a")
        if group > 0 then
          counter = 1
          repeat
            EnterVehicle(GetGroupMember(Unit_Group.Wave_4a, counter), Capture_Point.AI_Dock_CP)
            counter = counter + 1
          until group < counter
          DebugOut("Wave 4a sent into the flag")
        else
          DebugOut("Wave 4a dead before arrival")
        end
        counter = 0
        group = 0
        WaitFor(1)
        GoToArea(Water_Vehicle.SE_Sea_Transport_4, -1815, 320, 50)
        land1 = 1
        if text1 == 0 then
          PhoneMessage(52, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
          text1 = 1
          if flagtext == 0 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_1 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_2 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_4 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_5 then
            PhoneMessage(122, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
            flagtext = 1
          end
        end
      else
      end
    end
    if IsDead(Water_Vehicle.SE_Sea_Transport_5) and land2 == 0 then
      DebugOut("Sea Transport 5 destroyed")
      land2 = 1
    else
      if land2 == 0 and NumPassengersInUnit(Water_Vehicle.SE_Sea_Transport_5) == 0 then
        powerland = powerland - 1
        DebugOut("Sea Transport 5 unloaded")
        WaitFor(2)
        AddToGroup(Unit_Group.Wave_4b, GetObjectXPosition(Water_Vehicle.SE_Sea_Transport_5), GetObjectZPosition(Water_Vehicle.SE_Sea_Transport_5), 75, flag.TYPE_SOLAR, flag.GTYPE_GRUNT, 0, 5000)
        EndFrame()
        group = GetNumMatchingInGroup(Unit_Group.Wave_4b)
        DebugOut("There are", GetNumMatchingInGroup(Unit_Group.Wave_4b), "units in Group 4b")
        if group > 0 then
          counter = 1
          repeat
            EnterVehicle(GetGroupMember(Unit_Group.Wave_4b, counter), Capture_Point.AI_Dock_CP)
            counter = counter + 1
          until group < counter
          DebugOut("Wave 4b sent into the flag")
        else
          DebugOut("Wave 4b dead before arrival")
        end
        counter = 0
        group = 0
        WaitFor(1)
        GoToArea(Water_Vehicle.SE_Sea_Transport_5, -1815, 320, 50)
        land2 = 1
        if text1 == 0 then
          PhoneMessage(52, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
          text1 = 1
          if flagtext == 0 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_1 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_2 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_4 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_5 then
            PhoneMessage(122, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
            flagtext = 1
          end
        end
      else
      end
    end
    EndFrame()
    if IsDead(Building.AI_Tower_1) and IsDead(Building.AI_Tower_2) then
      flagtext = 1
    end
    EndFrame()
  until land1 + land2 == 2
  DebugOut("Landing Craft 1 and 2 have been destroyed or deployed their units")
  local timer = 0
  repeat
    timer = timer + 1
    WaitFor(1)
  until GetGroupHealthPercent(Unit_Group.Wave_4a) + GetGroupHealthPercent(Unit_Group.Wave_4b) < 35 or timer == 240 or (IsDead(Water_Vehicle.SE_Battleship_1) or IsDead(Water_Vehicle.SE_Battleship_2)) and (IsDead(Water_Vehicle.SE_Battleship_3) or IsDead(Water_Vehicle.SE_Battleship_4))
  Spawn(Air_Vehicle.SE_Air_Transport_1)
  Spawn(Air_Vehicle.SE_Air_Transport_2)
  Spawn(Air_Vehicle.SE_Air_Transport_3)
  EndFrame()
  repeat
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SE_Air_Transport_1)
    EndFrame()
  until GetNumSeatsFree(Air_Vehicle.SE_Air_Transport_1) == 7
  DebugOut("Air Transport 1 full")
  repeat
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SE_Air_Transport_2)
    EndFrame()
  until GetNumSeatsFree(Air_Vehicle.SE_Air_Transport_2) == 7
  DebugOut("Air Transport 2 full")
  repeat
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Air_Vehicle.SE_Air_Transport_3)
    EndFrame()
  until GetNumSeatsFree(Air_Vehicle.SE_Air_Transport_3) == 7
  DebugOut("Air Transport 3 full")
  EndFrame()
  LandAirUnit(Air_Vehicle.SE_Air_Transport_1, 615, 420, constant.ORDER_FORCED)
  WaitFor(2)
  LandAirUnit(Air_Vehicle.SE_Air_Transport_2, 625, 310, constant.ORDER_FORCED)
  WaitFor(2)
  LandAirUnit(Air_Vehicle.SE_Air_Transport_3, 610, 220, constant.ORDER_FORCED)
  PhoneMessage(53, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  WaitFor(8)
  DebugOut("Air Transport die / land check begins")
  repeat
    if IsDead(Air_Vehicle.SE_Air_Transport_1) and land3 == 0 then
      land3 = 1
      DebugOut("SE Air Transport 1 has been destroyed")
      DebugOut("land3 =", land3, "land4 =", land4, "land5 =", land5)
    else
      if GetMovementState(Air_Vehicle.SE_Air_Transport_1) == constant.MOVEMENT_STATE_ON_GROUND and land3 == 0 then
        powerland = powerland - 1
        land3 = 1
        DebugOut("SE Air Transport 1 dropping units off")
        ExitVehicle(constant.ID_NONE, Air_Vehicle.SE_Air_Transport_1)
        DebugOut("land3 =", land3, "land4 =", land4, "land5 =", land5)
        WaitFor(2)
        AddToGroup(Unit_Group.Wave_4c, GetObjectXPosition(Air_Vehicle.SE_Air_Transport_1), GetObjectZPosition(Air_Vehicle.SE_Air_Transport_1), 75, flag.TYPE_SOLAR, flag.GTYPE_GRUNT, 0, 5000)
        EndFrame()
        group = GetNumMatchingInGroup(Unit_Group.Wave_4c)
        DebugOut("There are", GetNumMatchingInGroup(Unit_Group.Wave_4c), "units in Group 4c")
        if group > 0 then
          counter = 1
          repeat
            EnterVehicle(GetGroupMember(Unit_Group.Wave_4c, counter), Capture_Point.AI_Dock_CP)
            counter = counter + 1
          until group < counter
          DebugOut("Wave 4c sent into the flag")
        else
          DebugOut("Wave 4c dead before arrival")
        end
        counter = 0
        group = 0
        GoToArea(Air_Vehicle.SE_Air_Transport_1, -1850, -150, 50)
        if text2 == 0 then
          PhoneMessage(52, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
          text2 = 1
          if flagtext == 0 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_1 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_2 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_4 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_5 then
            PhoneMessage(122, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
            flagtext = 1
          end
        end
      else
      end
    end
    if IsDead(Air_Vehicle.SE_Air_Transport_2) and land4 == 0 then
      land4 = 1
      DebugOut("SE Air Transport 2 has been destroyed")
      DebugOut("land3 =", land3, "land4 =", land4, "land5 =", land5)
    else
      if GetMovementState(Air_Vehicle.SE_Air_Transport_2) == constant.MOVEMENT_STATE_ON_GROUND and land4 == 0 then
        powerland = powerland - 1
        land4 = 1
        DebugOut("SE Air Transport 2 dropping units off")
        DebugOut("land3 =", land3, "land4 =", land4, "land5 =", land5)
        ExitVehicle(constant.ID_NONE, Air_Vehicle.SE_Air_Transport_2)
        WaitFor(2)
        AddToGroup(Unit_Group.Wave_4d, GetObjectXPosition(Air_Vehicle.SE_Air_Transport_2), GetObjectZPosition(Air_Vehicle.SE_Air_Transport_2), 75, flag.TYPE_SOLAR, flag.GTYPE_GRUNT, 0, 5000)
        EndFrame()
        group = GetNumMatchingInGroup(Unit_Group.Wave_4d)
        DebugOut("There are", GetNumMatchingInGroup(Unit_Group.Wave_4d), "units in Group 4d")
        if group > 0 then
          counter = 1
          repeat
            EnterVehicle(GetGroupMember(Unit_Group.Wave_4d, counter), Capture_Point.AI_Dock_CP)
            counter = counter + 1
          until group < counter
          DebugOut("Wave 4d sent into the flag")
        else
          DebugOut("Wave 4d dead before arrival")
        end
        counter = 0
        group = 0
        GoToArea(Air_Vehicle.SE_Air_Transport_2, -1850, -150, 50)
        if text2 == 0 then
          PhoneMessage(52, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
          text2 = 1
          if flagtext == 0 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_1 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_2 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_4 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_5 then
            PhoneMessage(122, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
            flagtext = 1
          end
        end
      else
      end
    end
    if IsDead(Air_Vehicle.SE_Air_Transport_3) and land5 == 0 then
      land5 = 1
      DebugOut("SE Air Transport 3 has been destroyed")
      DebugOut("land3 =", land3, "land4 =", land4, "land5 =", land5)
    else
      if GetMovementState(Air_Vehicle.SE_Air_Transport_3) == constant.MOVEMENT_STATE_ON_GROUND and land5 == 0 then
        powerland = powerland - 1
        land5 = 1
        DebugOut("SE Air Transport 3 dropping units off")
        DebugOut("land3 =", land3, "land4 =", land4, "land5 =", land5)
        ExitVehicle(constant.ID_NONE, Air_Vehicle.SE_Air_Transport_3)
        WaitFor(2)
        AddToGroup(Unit_Group.Wave_4e, GetObjectXPosition(Air_Vehicle.SE_Air_Transport_3), GetObjectZPosition(Air_Vehicle.SE_Air_Transport_3), 75, flag.TYPE_SOLAR, flag.GTYPE_GRUNT, 0, 5000)
        EndFrame()
        group = GetNumMatchingInGroup(Unit_Group.Wave_4e)
        DebugOut("There are", GetNumMatchingInGroup(Unit_Group.Wave_4e), "units in Group 4e")
        if group > 0 then
          counter = 1
          repeat
            EnterVehicle(GetGroupMember(Unit_Group.Wave_4e, counter), Capture_Point.AI_Dock_CP)
            counter = counter + 1
          until group < counter
          DebugOut("Wave 4e sent into the flag")
        else
          DebugOut("Wave 4e dead before arrival")
        end
        counter = 0
        group = 0
        GoToArea(Air_Vehicle.SE_Air_Transport_3, -1850, -150, 50)
        if text2 == 0 then
          PhoneMessage(52, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
          text2 = 1
          if flagtext == 0 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_1 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_2 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_4 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_5 then
            PhoneMessage(122, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
            flagtext = 1
          end
        end
      else
      end
    end
    EndFrame()
    if IsDead(Building.AI_Tower_1) and IsDead(Building.AI_Tower_2) then
      flagtext = 1
    end
    EndFrame()
  until land3 + land4 + land5 == 3
  DebugOut("The air transports has finished or died, send in the battleships")
  repeat
    WaitFor(1)
  until NumItemsInArea(Map_Zone.Dock_Approach, CombineFlags(flag.TYPE_SOLAR, flag.TYPE_INFANTRY), 1) == 0 and NumItemsInArea(Map_Zone.Dock_Water, flag.TYPE_SOLAR) == 0 and land1 + land2 + land3 + land4 + land5 == 5
  DebugOut("phew, you've destroyed the last wave, objective 2 complete")
  wave = 5
  SetObjectiveData(Objective_Marker.Dock_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Dock, constant.OBJECTIVE_DATA_STATE, 1)
  ClearMessageQueue()
  PhoneMessageWithObjective(55, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  if IsDead(Air_Vehicle.SE_Air_Transport_1) and IsDead(Air_Vehicle.SE_Air_Transport_2) and IsDead(Air_Vehicle.SE_Air_Transport_3) and IsDead(Water_Vehicle.SE_Sea_Transport_4) and IsDead(Water_Vehicle.SE_Sea_Transport_5) then
    return
  else
    repeat
      if IsDead(Air_Vehicle.SE_Air_Transport_1) == false and IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Air_Vehicle.SE_Air_Transport_1, 525) == false then
        DebugOut("Safe to Kill Air Transport 1")
        Kill(Air_Vehicle.SE_Air_Transport_1, false)
      end
      EndFrame()
      if IsDead(Air_Vehicle.SE_Air_Transport_2) == false and IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Air_Vehicle.SE_Air_Transport_2, 525) == false then
        DebugOut("Safe to Kill Air Transport 2")
        Kill(Air_Vehicle.SE_Air_Transport_2, false)
      end
      EndFrame()
      if IsDead(Air_Vehicle.SE_Air_Transport_3) == false and IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Air_Vehicle.SE_Air_Transport_3, 525) == false then
        DebugOut("Safe to Kill Air Transport 3")
        Kill(Air_Vehicle.SE_Air_Transport_3, false)
      end
      EndFrame()
      if IsDead(Water_Vehicle.SE_Sea_Transport_2) == false and IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.SE_Sea_Transport_4, 525) == false then
        DebugOut("Safe to Kill Sea Transport 4")
        Kill(Water_Vehicle.SE_Sea_Transport_4, false)
      end
      EndFrame()
      if IsDead(Water_Vehicle.SE_Sea_Transport_3) == false and IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.SE_Sea_Transport_5, 525) == false then
        DebugOut("Safe to Kill Sea Transport 5")
        Kill(Water_Vehicle.SE_Sea_Transport_5, false)
      end
      EndFrame()
    until IsDead(Air_Vehicle.SE_Air_Transport_1) and IsDead(Air_Vehicle.SE_Air_Transport_2) and IsDead(Air_Vehicle.SE_Air_Transport_3) and IsDead(Water_Vehicle.SE_Sea_Transport_4) and IsDead(Water_Vehicle.SE_Sea_Transport_5)
  end
end

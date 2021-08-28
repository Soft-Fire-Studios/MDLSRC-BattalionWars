function Dock(owner)
  script03 = owner
  local flagw = 0
  local frigateskip = 0
  DebugOut("Num Items by dock")
  DebugOut(NumItemsInArea(Map_Zone.Dock_Approach, flag.TYPE_ANGLO))
  repeat
    EndFrame()
  until cutscene == 1
  repeat
    if subtut < 2 and frigateskip == 0 and (GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.AI_Frigate_1) > 200 or GetRange(GetPlayerUnit(constant.PLAYER_ONE), Water_Vehicle.AI_Frigate_1) > 200) and (GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE)) > -100 or GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) < -500) then
      DebugOut("Player takes Frigates to the Dock early")
      PhoneMessage(21, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      Spawn(Water_Vehicle.SE_Battleship_1)
      Spawn(Water_Vehicle.SE_Battleship_2)
      Spawn(Air_Vehicle.SE_Gunship_1)
      Spawn(Air_Vehicle.SE_Gunship_2)
      Spawn(Air_Vehicle.SE_Gunship_3)
      Spawn(Air_Vehicle.SE_Gunship_4)
      GoToArea(Water_Vehicle.SE_Battleship_1, 100, -65, 50)
      GoToArea(Water_Vehicle.SE_Battleship_2, 50, 30, 50)
      GoToArea(Air_Vehicle.SE_Gunship_1, 160, 10, 50)
      GoToArea(Air_Vehicle.SE_Gunship_2, 225, 5, 50)
      GoToArea(Air_Vehicle.SE_Gunship_3, 175, 0, 50)
      GoToArea(Air_Vehicle.SE_Gunship_4, 130, -40, 50)
      frigateskip = 1
    else
      EndFrame()
    end
    if subtut == 2 and NumItemsInArea(Map_Zone.Dock_Approach, flag.TYPE_ANGLO) > 12 or IsInArea(GetPlayerUnit(), Map_Zone.Dock_Approach) then
      DebugOut("Player takes Frigates to the Dock early")
      Spawn(Water_Vehicle.SE_Battleship_1)
      Spawn(Water_Vehicle.SE_Battleship_2)
      Spawn(Air_Vehicle.SE_Gunship_1)
      Spawn(Air_Vehicle.SE_Gunship_2)
      Spawn(Air_Vehicle.SE_Gunship_3)
      Spawn(Air_Vehicle.SE_Gunship_4)
      GoToArea(Water_Vehicle.SE_Battleship_1, 475, 350, 50)
      GoToArea(Water_Vehicle.SE_Battleship_2, 475, 250, 50)
      GoToArea(Air_Vehicle.SE_Gunship_1, 575, 400, 50)
      GoToArea(Air_Vehicle.SE_Gunship_2, 575, 350, 50)
      GoToArea(Air_Vehicle.SE_Gunship_3, 575, 300, 50)
      GoToArea(Air_Vehicle.SE_Gunship_4, 575, 250, 50)
    else
      EndFrame()
    end
  until subtut > 2
  repeat
    EndFrame()
  until NumItemsInArea(Map_Zone.Dock_Approach, flag.TYPE_ANGLO) > 12 or IsInArea(GetPlayerUnit(), Map_Zone.Dock_Approach)
  DebugOut("Player has reached the docks at the correct time")
  wave = 1
  if IsDead(Water_Vehicle.AI_Battleship_1) then
    repeat
      EndFrame()
    until IsReadyToRevive(Water_Vehicle.AI_Battleship_1)
    EndFrame()
    DebugOut("Unit", Water_Vehicle.AI_Battleship_1, "is ready to be revived")
    ReviveDeadUnit(Water_Vehicle.AI_Battleship_1, 460, GetRandom(250, 390), 270, 75)
    DebugOut("Unit", Water_Vehicle.AI_Battleship_1, "Is revived")
  end
  EndFrame()
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Water_Vehicle.AI_Battleship_1, GetPlayerUnit(constant.PLAYER_ONE), 40, 0)
  end
  SetActive(Water_Vehicle.AI_Battleship_1, constant.ACTIVE)
  SetActive(Building.AI_Tower_1, constant.ACTIVE)
  SetActive(Building.AI_Tower_2, constant.ACTIVE)
  SetActive(Troop.AI_Grunt_4, constant.ACTIVE)
  SetActive(Troop.AI_Grunt_5, constant.ACTIVE)
  PutUnitInVehicle(Troop.AI_Grunt_4, Building.AI_Tower_1, 0)
  PutUnitInVehicle(Troop.AI_Grunt_5, Building.AI_Tower_2, 0)
  ClearMessageQueue()
  PhoneMessage(26, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  PhoneMessage(32, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  while wave == 1 do
    if flagw == 0 and 0 < NumPassengersInUnit(Capture_Point.AI_Dock_CP) and IsPassengerInUnit(Troop.AI_Grunt_4, Capture_Point.AI_Dock_CP) == false and IsPassengerInUnit(Troop.AI_Grunt_5, Capture_Point.AI_Dock_CP) == false then
      DebugOut("Dock Flag Warning")
      PhoneMessage(110, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      flagw = 1
    else
      EndFrame()
    end
  end
  repeat
    EndFrame()
  until wave == 3
  flagw = 0
  while wave == 3 do
    if flagw == 0 and 0 < NumPassengersInUnit(Capture_Point.AI_Dock_CP) and IsPassengerInUnit(Troop.AI_Grunt_4, Capture_Point.AI_Dock_CP) == false and IsPassengerInUnit(Troop.AI_Grunt_5, Capture_Point.AI_Dock_CP) == false then
      DebugOut("Dock Flag Warning")
      PhoneMessage(111, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      flagw = 1
    else
      EndFrame()
    end
  end
  repeat
    EndFrame()
  until wave == 4
  flagw = 0
  while wave == 4 do
    if flagw == 0 and 0 < NumPassengersInUnit(Capture_Point.AI_Dock_CP) and IsPassengerInUnit(Troop.AI_Grunt_4, Capture_Point.AI_Dock_CP) == false and IsPassengerInUnit(Troop.AI_Grunt_5, Capture_Point.AI_Dock_CP) == false then
      DebugOut("Dock Flag Warning")
      PhoneMessage(112, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      flagw = 1
    else
      EndFrame()
    end
  end
end

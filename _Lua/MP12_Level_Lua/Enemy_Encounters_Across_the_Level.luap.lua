function Enemy_Encounters_Across_the_Level(owner)
  script1 = owner
  Despawn(Air_Vehicle.AI_Air_Transport_2)
  Despawn(Air_Vehicle.AI_Air_Transport_3)
  Despawn(Air_Vehicle.AI_Air_Transport_4)
  Despawn(Air_Vehicle.AI_Air_Transport_5)
  Despawn(Air_Vehicle.AI_Bomber_4)
  repeat
    EndFrame()
  until netvariable.player1.docks == 3
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      EndFrame()
    until GetGroupHealthPercent(Unit_Group.Bridge) < 75 or 0 < NumItemsInArea(Map_Zone.Bridge, CombineFlags(flag.TYPE_TUNDRAN, flag.TYPE_SOLAR), 0) - NumItemsInArea(Map_Zone.Bridge, CombineFlags(flag.TYPE_AIRCRAFT, flag.TYPE_SOLAR), 1)
    DebugOut("Players by Eastern Bridge")
    netvariable.player1.bridge = 1
    Spawn(Ground_Vehicle.AI_Light_Tank_1)
    Spawn(Ground_Vehicle.AI_Artillery_2)
    EndFrame()
    GoToArea(Air_Vehicle.AI_Bomber_2, 530, 715, 50)
    if IsDead(Ground_Vehicle.AI_Light_Tank_1) == false then
      GoToArea(Ground_Vehicle.AI_Light_Tank_1, 490, 715, 50)
    end
  elseif IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      EndFrame()
    until netvariable.player1.bridge == 0
  end
  DebugOut("Player at bridge, sending Anglo Bomber and Light Tank")
  if IsDead(Air_Vehicle.AI_Bomber_2) == false then
    if IsDead(Ground_Vehicle.AI_Light_Tank_1) then
      PhoneMessage(25, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      PhoneMessage(25, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
    elseif IsDead(Ground_Vehicle.AI_Light_Tank_1) == false then
      PhoneMessage(24, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      PhoneMessage(24, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
    end
  end
  repeat
    EndFrame()
  until 0 < NumItemsInArea(Map_Zone.Mainland, CombineFlags(flag.TYPE_TUNDRAN, flag.TYPE_SOLAR), 0) - NumItemsInArea(Map_Zone.Mainland, CombineFlags(flag.TYPE_AIRCRAFT, flag.TYPE_SOLAR), 1)
  DebugOut("Players crossing to mainland")
  PhoneMessage(26, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  PhoneMessage(26, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    DebugOut("Sending Anglo Light Tanks to meet the player")
    GoToArea(Air_Vehicle.AI_Bomber_2, 285, 690, 50)
    Spawn(Air_Vehicle.AI_Air_Transport_2)
    Spawn(Air_Vehicle.AI_Air_Transport_3)
    EndFrame()
    LandAirUnit(Air_Vehicle.AI_Air_Transport_3, 265, 750, constant.ORDER_FORCED, 1, 10, 160)
    LandAirUnit(Air_Vehicle.AI_Air_Transport_2, 255, 635, constant.ORDER_FORCED, 1, 10, 10)
    repeat
      EndFrame()
    until GetMovementState(Air_Vehicle.AI_Air_Transport_3) == constant.MOVEMENT_STATE_ON_GROUND
    repeat
      EndFrame()
    until GetMovementState(Air_Vehicle.AI_Air_Transport_2) == constant.MOVEMENT_STATE_ON_GROUND
    DebugOut("Air Transports have landed safely")
    WaitFor(1)
    GoToArea(Ground_Vehicle.AT_2_Light_Tank, 260, 710, 20)
    GoToArea(Ground_Vehicle.AT_3_Light_Tank, 260, 650, 20)
    WaitFor(1)
    GoToArea(Air_Vehicle.AI_Air_Transport_3, -900, 865, 20)
    GoToArea(Air_Vehicle.AI_Air_Transport_2, -900, 765, 20)
    WaitFor(25)
    Despawn(Air_Vehicle.AI_Air_Transport_3)
    Despawn(Air_Vehicle.AI_Air_Transport_2)
  end
  if 0 < NumItemsInArea(Map_Zone.Village_North, CombineFlags(flag.TYPE_TUNDRAN, flag.TYPE_SOLAR), 0) - NumItemsInArea(Map_Zone.Village_North, CombineFlags(flag.TYPE_AIRCRAFT, flag.TYPE_SOLAR), 1) then
    while IsNetworkPlayer(constant.PLAYER_ONE) do
      DebugOut("player goes village north")
      GoToArea(Ground_Vehicle.AI_Light_Tank_5, -240, 860, 15, 0, constant.ORDER_NORMAL)
      do break end
      EndFrame()
      if 0 < NumItemsInArea(Map_Zone.Village_South, CombineFlags(flag.TYPE_TUNDRAN, flag.TYPE_SOLAR), 0) - NumItemsInArea(Map_Zone.Village_South, CombineFlags(flag.TYPE_AIRCRAFT, flag.TYPE_SOLAR), 1) then
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          DebugOut("player goes village south")
          GoToArea(Ground_Vehicle.AI_Light_Tank_5, -240, 755, 15, 0, constant.ORDER_NORMAL)
        end
        break
      end
      EndFrame()
    end
  end
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      EndFrame()
    until 0 < NumItemsInArea(Map_Zone.Road, CombineFlags(flag.TYPE_TUNDRAN, flag.TYPE_SOLAR), 0) - NumItemsInArea(Map_Zone.Road, CombineFlags(flag.TYPE_AIRCRAFT, flag.TYPE_SOLAR), 1) or GetGroupHealthPercent(Unit_Group.Road) < 60
    DebugOut("player goes e south")
    GoToArea(Ground_Vehicle.AI_Light_Tank_6, -500, 815, 5, 0, constant.ORDER_NORMAL)
  end
end

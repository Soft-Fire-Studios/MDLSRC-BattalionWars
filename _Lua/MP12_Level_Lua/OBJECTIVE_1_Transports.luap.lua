function OBJECTIVE_1_Transports(owner)
  local counter = 0
  script2 = owner
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    Despawn(Building.Solar_Transport_East)
    Despawn(Building.Solar_Transport_West)
    SetUnitInvulnerable(Water_Vehicle.SE_Naval_Transport, true)
    SetUnitInvulnerable(Water_Vehicle.SE_Naval_Transport_2, true)
    Despawn(Air_Vehicle.AI_Air_Transport)
    Despawn(Air_Vehicle.AI_Bomber_1)
    Despawn(Troop.SE_Troop_1)
    Despawn(Troop.SE_Troop_2)
    Despawn(Troop.SE_Troop_3)
    Despawn(Troop.SE_Troop_4)
    Despawn(Troop.SE_Troop_5)
    Despawn(Troop.SE_Troop_6)
    Despawn(Troop.SE_Troop_7)
    Despawn(Troop.SE_Troop_8)
    Despawn(Troop.SE_Troop_9)
    Despawn(Ground_Vehicle.AI_Light_Tank_2, false)
    Despawn(Ground_Vehicle.AI_Light_Tank_3, false)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    Despawn(Troop.TT_Troop_1)
    Despawn(Troop.TT_Troop_2)
    Despawn(Troop.TT_Troop_3)
    Despawn(Troop.TT_Troop_4)
    Despawn(Troop.TT_Troop_5)
    Despawn(Troop.TT_Troop_6)
    Despawn(Troop.TT_Troop_7)
    Despawn(Troop.TT_Troop_8)
    Despawn(Troop.TT_Troop_9)
  end
  repeat
    EndFrame()
  until netvariable.player1.cutsceneskipped == 1 and netvariable.player2.cutsceneskipped == 1
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetUnitInvulnerable(Water_Vehicle.SE_Naval_Transport, false)
    SetUnitInvulnerable(Water_Vehicle.SE_Naval_Transport_2, false)
    repeat
      WaitFor(1)
      counter = counter + 1
    until counter == 45 or IsDead(Water_Vehicle.AI_Battleship_1)
    counter = 0
    WaitFor(2)
    FollowWaypoint(Unit_Group.SE_Transports, Waypoint.Naval_Trans_1, 0, 0, constant.FORMATION_ALLOWED)
    DebugOut("Naval Transport sent on way")
    repeat
      WaitFor(1)
      if IsInRange(Water_Vehicle.SE_Naval_Transport, Waypoint.Naval_Trans_1, 35) or IsInRange(Water_Vehicle.SE_Naval_Transport_2, Waypoint.Naval_Trans_1, 35) then
        DebugOut("Waypoint 1 counter increasing by 1")
        counter = counter + 1
      end
    until counter == 45 or IsDead(Water_Vehicle.AI_Battleship_2)
    counter = 0
    FollowWaypoint(Unit_Group.SE_Transports, Waypoint.Naval_Trans_2, 0, 0, constant.FORMATION_ALLOWED)
    repeat
      WaitFor(1)
      if IsInRange(Water_Vehicle.SE_Naval_Transport, Waypoint.Naval_Trans_2, 35) or IsInRange(Water_Vehicle.SE_Naval_Transport_2, Waypoint.Naval_Trans_2, 35) then
        DebugOut("Waypoint 2 counter increasing by 1")
        counter = counter + 1
      end
    until counter == 45 or IsDead(Water_Vehicle.AI_Battleship_3)
    counter = 0
    FollowWaypoint(Unit_Group.SE_Transports, Waypoint.Naval_Trans_3, 0, 0, constant.FORMATION_ALLOWED)
    while true do
      if IsInArea(Water_Vehicle.SE_Naval_Transport, Map_Zone.SE_NT_1) or IsInArea(Water_Vehicle.SE_Naval_Transport_2, Map_Zone.SE_NT_1) then
        break
      elseif netvariable.player1.deadtrans == 1 and (IsInArea(Water_Vehicle.SE_Naval_Transport, Map_Zone.SE_NT_1) or IsInArea(Water_Vehicle.SE_Naval_Transport_2, Map_Zone.SE_NT_1)) then
        break
      elseif IsDead(Water_Vehicle.AI_Battleship_1) and IsDead(Water_Vehicle.AI_Battleship_2) and IsDead(Water_Vehicle.AI_Battleship_3) and IsDead(Building.AI_Sea_Fort_2) and IsDead(Building.AI_Sea_Fort_3) then
        break
      else
        EndFrame()
      end
    end
    netvariable.player1.docks = 1
    if GetHealthPercent(Water_Vehicle.SE_Naval_Transport) < 10 then
      SetHealthPercent(Water_Vehicle.SE_Naval_Transport, 15)
    end
    if GetHealthPercent(Water_Vehicle.SE_Naval_Transport_2) < 10 then
      SetHealthPercent(Water_Vehicle.SE_Naval_Transport_2, 15)
    end
    SetUnitInvulnerable(Water_Vehicle.SE_Naval_Transport, true)
    SetUnitInvulnerable(Water_Vehicle.SE_Naval_Transport_2, true)
    repeat
      EndFrame()
    until netvariable.player1.docks == 2
    Teleport(Water_Vehicle.SE_Naval_Transport_2, 650, 450, 0, 5)
    Teleport(Water_Vehicle.SE_Naval_Transport, 715, 450, 0, 5)
    BeachWaterUnit(Water_Vehicle.SE_Naval_Transport_2, 650, 510, 0, 1)
    BeachWaterUnit(Water_Vehicle.SE_Naval_Transport, 715, 515, 0, 1)
    DebugOut("Naval Transport going to beach")
    Spawn(Ground_Vehicle.AI_Light_Tank_2)
    Spawn(Ground_Vehicle.AI_Light_Tank_3)
    repeat
      EndFrame()
    until netvariable.player1.docks == 3
    Spawn(Troop.SE_Troop_1)
    Spawn(Troop.SE_Troop_2)
    Spawn(Troop.SE_Troop_3)
    Spawn(Troop.SE_Troop_8)
    Spawn(Troop.SE_Troop_9)
    if IsDead(Water_Vehicle.SE_Naval_Transport) == false and IsDead(Water_Vehicle.SE_Naval_Transport_2) == false then
      Spawn(Troop.SE_Troop_4)
      Spawn(Troop.SE_Troop_5)
      Spawn(Troop.SE_Troop_6)
      Spawn(Troop.SE_Troop_7)
    end
    EndFrame()
    SetActive(Troop.SE_Troop_1, constant.ACTIVE)
    SetActive(Troop.SE_Troop_2, constant.ACTIVE)
    SetActive(Troop.SE_Troop_3, constant.ACTIVE)
    SetActive(Troop.SE_Troop_8, constant.ACTIVE)
    SetActive(Troop.SE_Troop_9, constant.ACTIVE)
    if IsDead(Water_Vehicle.SE_Naval_Transport) == false and IsDead(Water_Vehicle.SE_Naval_Transport_2) == false then
      SetActive(Troop.SE_Troop_4, constant.ACTIVE)
      SetActive(Troop.SE_Troop_5, constant.ACTIVE)
      SetActive(Troop.SE_Troop_6, constant.ACTIVE)
      SetActive(Troop.SE_Troop_7, constant.ACTIVE)
    end
    DebugOut(" Naval Transport beached, Objective Complete")
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      EndFrame()
    until netvariable.player1.docks == 3
    Spawn(Troop.TT_Troop_1)
    Spawn(Troop.TT_Troop_2)
    Spawn(Troop.TT_Troop_3)
    if IsDead(Water_Vehicle.SE_Naval_Transport) == false and IsDead(Water_Vehicle.SE_Naval_Transport_2) == false then
      Spawn(Troop.TT_Troop_4)
      Spawn(Troop.TT_Troop_5)
      Spawn(Troop.TT_Troop_6)
      Spawn(Troop.TT_Troop_7)
    end
    Spawn(Troop.TT_Troop_8)
    Spawn(Troop.TT_Troop_9)
    EndFrame()
    SetActive(Troop.TT_Troop_1, constant.ACTIVE)
    SetActive(Troop.TT_Troop_2, constant.ACTIVE)
    SetActive(Troop.TT_Troop_3, constant.ACTIVE)
    if IsDead(Water_Vehicle.SE_Naval_Transport) == false and IsDead(Water_Vehicle.SE_Naval_Transport_2) == false then
      SetActive(Troop.TT_Troop_4, constant.ACTIVE)
      SetActive(Troop.TT_Troop_5, constant.ACTIVE)
      SetActive(Troop.TT_Troop_6, constant.ACTIVE)
      SetActive(Troop.TT_Troop_7, constant.ACTIVE)
    end
    SetActive(Troop.TT_Troop_8, constant.ACTIVE)
    SetActive(Troop.TT_Troop_9, constant.ACTIVE)
  end
  WaitFor(1)
  DebugOut("Players landed at docks")
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    DebugOut("Sending in AI Air Transport and Bomber")
    GoToArea(Ground_Vehicle.AI_Light_Tank_2, 660, 595, 50)
    WaitFor(2)
    GoToArea(Ground_Vehicle.AI_Light_Tank_3, 695, 655, 50)
    WaitFor(3)
    Spawn(Air_Vehicle.AI_Air_Transport)
    EndFrame()
    LandAirUnit(Air_Vehicle.AI_Air_Transport, 665, 680, constant.ORDER_FORCED, 1, 10, 180)
    WaitFor(3)
    Spawn(Air_Vehicle.AI_Bomber_1)
    EndFrame()
    GoToArea(Air_Vehicle.AI_Bomber_1, 690, 575, 50)
    DebugOut("Air Transport die / land check begins")
    WaitFor(5)
    repeat
      EndFrame()
    until NumPassengersInUnit(Air_Vehicle.AI_Air_Transport) == 1 or IsDead(Air_Vehicle.AI_Air_Transport)
    GoToArea(Ground_Vehicle.AI_Light_Tank_2, 660, 595, 50)
    WaitFor(1)
    DebugOut("Air Transport landed, sending AI Grunts to beach")
    GoToArea(Troop.AI_Beach_1, 650, 570, 50)
    GoToArea(Troop.AI_Beach_2, 660, 570, 50)
    GoToArea(Troop.AI_Beach_3, 670, 570, 50)
    GoToArea(Troop.AI_Beach_4, 780, 570, 50)
    WaitFor(1)
    GoToArea(Ground_Vehicle.AI_Light_Tank_3, 695, 655, 50)
    GoToArea(Air_Vehicle.AI_Air_Transport, 650, 1120, 50)
    WaitFor(20)
    Kill(Air_Vehicle.AI_Air_Transport)
  end
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    if 0 < NumItemsInArea(Map_Zone.Tower_2, flag.TYPE_SOLAR) then
      while IsDead(Building.Tower_2a) == false do
        DebugOut("Playing Anti Air Text for P1")
        PhoneMessage(86, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
        do break end
        EndFrame()
        if 0 < NumItemsInArea(Map_Zone.Tower_3, flag.TYPE_SOLAR) then
          if IsDead(Building.Tower_3a) == false or IsDead(Building.Tower_3b) == false then
            DebugOut("Playing Anti Air Text for P1")
            PhoneMessage(86, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
          end
        else
          EndFrame()
          elseif IsNetworkPlayer(constant.PLAYER_TWO) then
            if 0 < NumItemsInArea(Map_Zone.Tower_2, flag.TYPE_TUNDRAN) then
              while IsDead(Building.Tower_2a) == false do
                DebugOut("Playing Anti Air Text for P2")
                PhoneMessage(87, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
                do return end
                do break end
                EndFrame()
                if 0 < NumItemsInArea(Map_Zone.Tower_3, flag.TYPE_TUNDRAN) then
                  if IsDead(Building.Tower_3a) == false or IsDead(Building.Tower_3b) == false then
                    DebugOut("Playing Anti Air Text for P2")
                    PhoneMessage(87, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
                    return
                  end
                  break
                end
                EndFrame()
              end
            end
          end
        end
      end
    end
end

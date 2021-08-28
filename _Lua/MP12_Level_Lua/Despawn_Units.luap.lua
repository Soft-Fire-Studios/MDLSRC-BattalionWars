function Despawn_Units(owner)
  if IsNetworkHost() then
    local spawn1 = 0
    Despawn(Air_Vehicle.SE_Gunship_2)
    Despawn(Air_Vehicle.SE_Gunship_3)
    Despawn(Air_Vehicle.SE_Gunship_4)
    Despawn(Troop.AI_Bridge_1, true)
    Despawn(Troop.AI_Bridge_2, true)
    Despawn(Troop.AI_Bridge_3, true)
    Despawn(Troop.AI_Bridge_4, true)
    local spawn2 = 0
    Despawn(Ground_Vehicle.CS_AI_Light_Tank_1)
    Despawn(Ground_Vehicle.AI_Light_Tank_1, true)
    Despawn(Ground_Vehicle.AI_Artillery_2, true)
    local spawn3 = 0
    Despawn(Ground_Vehicle.AI_Recon_5, true)
    Despawn(Ground_Vehicle.AI_Light_Tank_4, true)
    Despawn(Building.Tower_2a, true)
    local spawn4 = 0
    Despawn(Troop.Entity260022160, true)
    Despawn(Troop.Entity260022221, true)
    Despawn(Building.Tower_3a, true)
    Despawn(Building.Tower_3b, true)
    Despawn(Building.Entity260022156, true)
    Despawn(Building.Entity260022157, true)
    local spawn5 = 0
    Despawn(Air_Vehicle.AI_Bomber_5, true)
    Despawn(Building.AI_Village_Gun_1, true)
    Despawn(Building.AI_Village_Gun_2, true)
    Despawn(Ground_Vehicle.AI_Light_Tank_5, true)
    Despawn(Ground_Vehicle.Entity260022111, true)
    Despawn(Troop.Entity260024885, true)
    Despawn(Troop.Entity260024878, true)
    repeat
      EndFrame()
    until netvariable.player1.cutsceneskipped == 1 and netvariable.player2.cutsceneskipped == 1
    WaitFor(1)
    local spawn6 = 0
    Despawn(Troop.Entity260022094, true)
    Despawn(Troop.Entity260022093, true)
    Despawn(Building.Entity260025210, true)
    Despawn(Building.Entity260025211, true)
    Despawn(Ground_Vehicle.AI_Light_Tank_6, true)
    WaitFor(15)
    repeat
      if spawn1 == 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), 560, 750, 250) and IsInArea(GetPlayerUnit(constant.PLAYER_TWO), 560, 750, 250) then
        DebugOut("Player approaching bridgehead, spawning dudes behind sandbags")
        spawn1 = 1
        Spawn(Troop.AI_Bridge_1)
        Spawn(Troop.AI_Bridge_2)
        Spawn(Troop.AI_Bridge_4)
      elseif spawn1 == 0 and 0 < NumItemsInArea(560, 750, 150, CombineFlags(flag.TYPE_TUNDRAN, flag.TYPE_SOLAR), 0) then
        DebugOut("Player units approaching bridgehead, spawning dudes behind sandbags")
        spawn1 = 1
        Spawn(Troop.AI_Bridge_1)
        Spawn(Troop.AI_Bridge_2)
        Spawn(Troop.AI_Bridge_4)
      elseif netvariable.player1.docks == 2 and spawn1 == 0 then
        DebugOut("Player has landed waiting then spawning dudes behind sandbags")
        spawn1 = 1
        Spawn(Troop.AI_Bridge_1)
        Spawn(Troop.AI_Bridge_2)
        Spawn(Troop.AI_Bridge_4)
      end
      WaitFor(0.2)
      if spawn2 == 0 and netvariable.player1.docks > 2 and (0 < NumItemsInArea(340, 700, 350, CombineFlags(flag.TYPE_TUNDRAN, flag.TYPE_SOLAR), 0) or netvariable.player1.bridge == 1) then
        spawn2 = 1
        DebugOut("Spawning Artillery and Tank by bridge")
        Spawn(Ground_Vehicle.AI_Light_Tank_1)
        Spawn(Ground_Vehicle.AI_Artillery_2)
      end
      WaitFor(0.1)
      if spawn3 == 0 and (0 < NumItemsInArea(240, 605, 200, CombineFlags(flag.TYPE_TUNDRAN, flag.TYPE_SOLAR), 0) or NumItemsInArea(-5, 620, 250, CombineFlags(flag.TYPE_TUNDRAN, flag.TYPE_SOLAR), 0) > 6 or netvariable.player1.POWs == 1) then
        spawn3 = 1
        DebugOut("Spawning Units in and around the forest")
        Spawn(Ground_Vehicle.AI_Recon_5)
        Spawn(Ground_Vehicle.AI_Light_Tank_4)
        Spawn(Building.Tower_2a)
      end
      WaitFor(0.2)
      if spawn4 == 0 and (netvariable.player1.POWs == 1 or netvariable.player1.POWs == 0 and 6 < NumItemsInArea(115, 400, 350, CombineFlags(flag.TYPE_TUNDRAN, flag.TYPE_SOLAR), 0)) then
        spawn4 = 1
        Spawn(Troop.Entity260022160)
        Spawn(Troop.Entity260022221)
        Spawn(Building.Tower_3a)
        Spawn(Building.Tower_3b)
        Spawn(Building.Entity260022156)
        Spawn(Building.Entity260022157)
      end
      WaitFor(0.2)
      if spawn5 == 0 and (0 < NumItemsInArea(150, 790, 250, CombineFlags(flag.TYPE_TUNDRAN, flag.TYPE_SOLAR), 0) or 0 < NumItemsInArea(300, 660, 250, CombineFlags(flag.TYPE_TUNDRAN, flag.TYPE_SOLAR), 0) or 0 < NumItemsInArea(-550, 800, 250, CombineFlags(flag.TYPE_TUNDRAN, flag.TYPE_SOLAR), 0)) then
        spawn5 = 1
        Spawn(Air_Vehicle.AI_Bomber_5)
        Spawn(Building.AI_Village_Gun_1)
        Spawn(Building.AI_Village_Gun_2)
        Spawn(Ground_Vehicle.AI_Light_Tank_5)
        Spawn(Ground_Vehicle.Entity260022111)
        Spawn(Troop.Entity260024885)
        Spawn(Troop.Entity260024878)
      end
      WaitFor(0.2)
      if spawn6 == 0 and (6 < NumItemsInArea(-480, 700, 350, CombineFlags(flag.TYPE_TUNDRAN, flag.TYPE_SOLAR), 0) or netvariable.player1.POW2 == 1) then
        WaitFor(1)
        spawn6 = 1
        Spawn(Troop.Entity260022094)
        Spawn(Troop.Entity260022093)
        Spawn(Building.Entity260025210)
        Spawn(Building.Entity260025211)
        Spawn(Ground_Vehicle.AI_Light_Tank_6)
      end
      WaitFor(0.1)
    until missionend == 1 or spawn1 + spawn2 + spawn3 + spawn4 + spawn5 + spawn6 == 6
  end
end

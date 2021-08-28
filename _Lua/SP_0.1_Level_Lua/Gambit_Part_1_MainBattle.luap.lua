function Gambit_Part_1_MainBattle(owner)
  local BattleMoveTanksFromBaseCampDone = 0
  local BattleMoveTroopsOverTrenchDone = 0
  local RespawnBattleTroops = 0
  local RespawnFinalPushTroops = 0
  Despawn(Air_Vehicle.ILbomber03)
  Despawn(Air_Vehicle.ILbomber04)
  Despawn(Ground_Vehicle.SEtankbattle09)
  Despawn(Ground_Vehicle.SEtankbattle10)
  DebugOut("MAIN BATTLE SCRIPT RUNNING!")
  while true do
    if BattleMoveTanksFromBaseCampDone == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.BattleMoveTanksFromBaseCamp) then
        BattleMoveTanksFromBaseCampDone = 1
        FollowWaypoint(Ground_Vehicle.SEtankbattle02, Waypoint.SEtankbattle02, 5, 5, constant.ORDER_FORCED)
        WaitFor(1)
        FollowWaypoint(Ground_Vehicle.SEtankbattle03, Waypoint.SEtankbattle03, 5, 5, constant.ORDER_FORCED)
        WaitFor(1)
        FollowWaypoint(Ground_Vehicle.SEtankbattle05, Waypoint.SEtankbattle05, 5, 5, constant.ORDER_FORCED)
      end
      EndFrame()
    end
    if BattleMoveTroopsOverTrenchDone == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.BattleMoveTroopsOverTrench01) then
        BattleMoveTroopsOverTrenchDone = 1
        cutsceneStaffBearerBegin = 1
        DebugOut("Troops - Attack from Trenches!")
        SolarArmyMoveTroopsOverTrench = 1
      end
      EndFrame()
    end
    if RespawnBattleTroops == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.MoreBattles) then
        RespawnBattleTroops = 1
        DebugOut("Spawning more IRON LEGION troops")
        WaitFor(0.5)
      end
      EndFrame()
    end
    if RespawnFinalPushTroops == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.Hazard01) then
        DebugOut("Spawning final IRON LEGION troops")
        RespawnFinalPushTroops = 1
        LastBattleMove = 1
      end
      EndFrame()
    end
    EndFrame()
  end
end

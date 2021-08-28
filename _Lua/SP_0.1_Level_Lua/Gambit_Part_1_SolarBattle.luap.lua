function Gambit_Part_1_SolarBattle(owner)
  local SolarArmyMoveTroopsOverTrenchDone = 0
  local MainBattleMove = 0
  local LastBattleMoveDone = 0
  local ReArm = 0
  local x = GetObjectXPosition(owner)
  local z = GetObjectZPosition(owner)
  local RanNum = 0
  repeat
    EndFrame()
  until cutsceneStart == 1
  repeat
    if LookDone >= 2 and ReArm == 0 then
      ReArm = 1
      StopAndGuard(owner)
    end
    if owner == Ground_Vehicle.SEtankbattle02 or owner == Ground_Vehicle.SEtankbattle03 or owner == Ground_Vehicle.SEtankbattle05 then
    else
      if IsInArea(owner, x, z, 2) then
        EndFrame()
      else
        GoToArea(owner, x, z, 2, 0, constant.ORDER_FORCED)
        WaitFor(3)
      end
      while true do
        RanNum = GetRandom(1, 3)
        if 1 <= SolarArmyMoveTroopsOverTrench and SolarArmyMoveTroopsOverTrenchDone == 0 then
          WaitFor(RanNum)
          if IsInArea(owner, Map_Zone.BattleLeft02) then
            FollowWaypoint(owner, Waypoint.BattleLeft02, 5, 5, constant.ORDER_FORCED)
            SolarArmyMoveTroopsOverTrenchDone = 1
          end
          if IsInArea(owner, Map_Zone.BattleRight02) then
            FollowWaypoint(owner, Waypoint.BattleRight02, 5, 5, constant.ORDER_FORCED)
            SolarArmyMoveTroopsOverTrenchDone = 1
          end
          WaitFor(RanNum)
          if IsInArea(owner, Map_Zone.BattleLeft03) then
            FollowWaypoint(owner, Waypoint.BattleLeft03, 5, 5, constant.ORDER_FORCED)
            SolarArmyMoveTroopsOverTrenchDone = 1
          end
          if IsInArea(owner, Map_Zone.BattleRight03) then
            FollowWaypoint(owner, Waypoint.BattleRight03, 5, 5, constant.ORDER_FORCED)
            SolarArmyMoveTroopsOverTrenchDone = 1
          end
          WaitFor(RanNum)
          if IsInArea(owner, Map_Zone.BattleLeft04) then
            FollowWaypoint(owner, Waypoint.BattleLeft04, 5, 5, constant.ORDER_FORCED)
            SolarArmyMoveTroopsOverTrenchDone = 1
          end
          if IsInArea(owner, Map_Zone.BattleRight04) then
            FollowWaypoint(owner, Waypoint.BattleRight04, 5, 5, constant.ORDER_FORCED)
            SolarArmyMoveTroopsOverTrenchDone = 1
          end
          WaitFor(RanNum)
          if IsInArea(owner, Map_Zone.BattleLeft05) then
            FollowWaypoint(owner, Waypoint.BattleLeft05, 5, 5, constant.ORDER_FORCED)
            SolarArmyMoveTroopsOverTrenchDone = 1
          end
        end
        if MainBattleMove == 0 then
          if IsInArea(owner, Map_Zone.BattleMainLeft03) then
            MainBattleMove = 1
            FollowWaypoint(owner, Waypoint.BattleMainLeft03, 5, 5, constant.ORDER_NORMAL)
          end
          if IsInArea(owner, Map_Zone.BattleMainLeft02) then
            MainBattleMove = 1
            FollowWaypoint(owner, Waypoint.BattleMainLeft02, 5, 5, constant.ORDER_NORMAL)
          end
          if IsInArea(owner, Map_Zone.BattleMainLeft01) then
            MainBattleMove = 1
            FollowWaypoint(owner, Waypoint.BattleMainLeft01, 5, 5, constant.ORDER_NORMAL)
          end
          if IsInArea(owner, Map_Zone.BattleMainRight01) then
            MainBattleMove = 1
            FollowWaypoint(owner, Waypoint.BattleMainRight01, 5, 5, constant.ORDER_NORMAL)
          end
          if IsInArea(owner, Map_Zone.BattleMainRight02) then
            MainBattleMove = 1
            FollowWaypoint(owner, Waypoint.BattleMainRight02, 5, 5, constant.ORDER_NORMAL)
          end
          if IsInArea(owner, Map_Zone.BattleMainRight03) then
            MainBattleMove = 1
            FollowWaypoint(owner, Waypoint.BattleMainRight03, 5, 5, constant.ORDER_NORMAL)
          end
          WaitFor(2)
          EndFrame()
        end
        if LastBattleMove == 1 and LastBattleMoveDone == 0 then
          if IsInArea(owner, Map_Zone.BattleLastLeft01) then
            FollowWaypoint(owner, Waypoint.BattleLastLeft01, 5, 5, constant.ORDER_NORMAL)
            EndFrame()
          end
          if IsInArea(owner, Map_Zone.BattleLastRight01) then
            FollowWaypoint(owner, Waypoint.BattleLastRight01, 5, 5, constant.ORDER_NORMAL)
            EndFrame()
          end
          WaitFor(10)
        end
        EndFrame()
      end
    end
  until 1 <= SolarArmyMoveTroopsOverTrench
end

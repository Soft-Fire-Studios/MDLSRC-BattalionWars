function RAT_Respawn_X_Stratodestroyer_SPIDER(owner)
  local RandomSpawn = 0
  while true do
    if CutsceneMidFightersStart >= 2 then
    else
      EndFrame()
      while missionend == 0 do
        if CutsceneEndStart >= 1 then
          Kill(Air_Vehicle.Abomber01)
          break
        end
        if IsDead(Air_Vehicle.Abomber01) and IsReadyToRevive(Air_Vehicle.Abomber01) and IsDead(Troop.Entity550040678) and IsReadyToRevive(Troop.Entity550040678) then
          WaitFor(1)
          RandomSpawn = GetRandom(1, 100)
          if RandomSpawn < 25 then
            ReviveDeadUnit(Air_Vehicle.Abomber01, -766, 1466, 90, 25)
            ReviveDeadUnit(Troop.Entity550040678, -766, 1466, 90, 25)
          end
          if RandomSpawn >= 25 and RandomSpawn < 50 then
            ReviveDeadUnit(Air_Vehicle.Abomber01, -610, 1934, 135, 25)
            ReviveDeadUnit(Troop.Entity550040678, -610, 1934, 135, 25)
          end
          if RandomSpawn >= 50 and RandomSpawn < 75 then
            ReviveDeadUnit(Air_Vehicle.Abomber01, -150, 2000, 180, 25)
            ReviveDeadUnit(Troop.Entity550040678, -150, 2000, 180, 25)
          end
          if RandomSpawn >= 75 then
            ReviveDeadUnit(Air_Vehicle.Abomber01, -440, 1835, 225, 25)
            ReviveDeadUnit(Troop.Entity550040678, -440, 1835, 225, 25)
          end
          repeat
            EndFrame()
          until IsDead(Air_Vehicle.Abomber01) == false and IsDead(Troop.Entity550040678) == false
          PutUnitInVehicle(Troop.Entity550040678, Air_Vehicle.Abomber01, 0)
          if IsInArea(Ground_Vehicle.T_Battlestation, Map_Zone.FinalAttack) and GetPlayerUnit() == Ground_Vehicle.T_Battlestation then
            DebugOut("Respawning Strat will now bomb the Battlestation")
            AttackTarget(Air_Vehicle.Abomber01, Ground_Vehicle.T_Battlestation, constant.ORDER_NORMAL)
          else
            DebugOut("Respawning Strat will now patrol the Spider")
            FollowWaypoint(Air_Vehicle.Abomber01, Waypoint.SpiderPatrol01, 0, 0, constant.ORDER_NORMAL)
          end
        end
        WaitFor(5)
        EndFrame()
      end
    end
  end
end

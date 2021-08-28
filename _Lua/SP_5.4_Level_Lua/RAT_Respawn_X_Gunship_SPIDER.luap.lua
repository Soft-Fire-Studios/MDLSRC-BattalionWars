function RAT_Respawn_X_Gunship_SPIDER(owner)
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.FinalAttack) then
      if not IsDead(Air_Vehicle.X_Gunship_1) then
        FollowWaypoint(Air_Vehicle.X_Gunship_1, Waypoint.SpiderPatrol01, 0, 0, constant.ORDER_FORCED)
      end
      DebugOut("Respawning Gunship will now appear at Mining Spider")
    else
      EndFrame()
      while missionend == 0 do
        if CutsceneMidFightersStart >= 1 then
          Kill(Air_Vehicle.X_Gunship_1)
          break
        end
        if IsDead(Air_Vehicle.X_Gunship_1) and IsReadyToRevive(Air_Vehicle.X_Gunship_1) and IsDead(Troop.X_GS_1_Driver_2) and IsReadyToRevive(Troop.X_GS_1_Driver_2) and IsDead(Troop.X_GS_1_Driver_3) and IsReadyToRevive(Troop.X_GS_1_Driver_3) then
          WaitFor(1)
          ReviveDeadUnit(Air_Vehicle.X_Gunship_1, -725, 1806, 135, 25)
          ReviveDeadUnit(Troop.X_GS_1_Driver_2, -725, 1806, 135, 25)
          ReviveDeadUnit(Troop.X_GS_1_Driver_3, -725, 1806, 135, 25)
          repeat
            EndFrame()
          until IsDead(Air_Vehicle.X_Gunship_1) == false and IsDead(Troop.X_GS_1_Driver_2) == false and IsDead(Troop.X_GS_1_Driver_3) == false
          PutUnitInVehicle(Troop.X_GS_1_Driver_2, Air_Vehicle.X_Gunship_1, 1)
          PutUnitInVehicle(Troop.X_GS_1_Driver_3, Air_Vehicle.X_Gunship_1, 2)
          FollowWaypoint(Air_Vehicle.X_Gunship_1, Waypoint.SpiderPatrol01, 0, 0, constant.ORDER_NORMAL)
        end
        WaitFor(10)
        EndFrame()
      end
    end
  end
end

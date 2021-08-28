function Sneak_Attack_Global_Fighter_Control_ALTERNATE(owner)
  KillGlobalAirControl = owner
  while true do
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.FighterControl) then
      if IsDead(Air_Vehicle.AI_Fighter01) and IsReadyToRevive(Air_Vehicle.AI_Fighter01) and IsDead(Troop.AI_Fighter01_Pilot01) and IsReadyToRevive(Troop.AI_Fighter01_Pilot01) then
        DebugOut("AI Fighter01 is ready to REVIVE")
        ReviveDeadUnit(Air_Vehicle.AI_Fighter01, GetObjectXPosition(Waypoint.AI_Fighter01), GetObjectZPosition(Waypoint.AI_Fighter01), 270, 25)
        ReviveDeadUnit(Troop.AI_Fighter01_Pilot01, GetObjectXPosition(Waypoint.AI_Respawner), GetObjectZPosition(Waypoint.AI_Respawner), 270, 25)
        repeat
          EndFrame()
        until IsDead(Air_Vehicle.AI_Fighter01) == false and IsDead(Troop.AI_Fighter01_Pilot01) == false
        PutUnitInVehicle(Troop.AI_Fighter01_Pilot01, Air_Vehicle.AI_Fighter01, 0)
      end
      EndFrame()
      if IsDead(Air_Vehicle.AI_Fighter02) and IsReadyToRevive(Air_Vehicle.AI_Fighter02) and IsDead(Troop.AI_Fighter02_Pilot01) and IsReadyToRevive(Troop.AI_Fighter02_Pilot01) then
        DebugOut("AI Fighter02 is ready to REVIVE")
        ReviveDeadUnit(Air_Vehicle.AI_Fighter02, GetObjectXPosition(Waypoint.AI_Fighter02), GetObjectZPosition(Waypoint.AI_Fighter02), 270, 25)
        ReviveDeadUnit(Troop.AI_Fighter02_Pilot01, GetObjectXPosition(Waypoint.AI_Respawner), GetObjectZPosition(Waypoint.AI_Respawner), 270, 25)
        repeat
          EndFrame()
        until IsDead(Air_Vehicle.AI_Fighter02) == false and IsDead(Troop.AI_Fighter02_Pilot01) == false
        PutUnitInVehicle(Troop.AI_Fighter02_Pilot01, Air_Vehicle.AI_Fighter02, 0)
      end
      EndFrame()
      if IsDead(Air_Vehicle.SE_Fighter01) and IsReadyToRevive(Air_Vehicle.SE_Fighter01) and IsDead(Troop.SE_Fighter01_Pilot01) and IsReadyToRevive(Troop.SE_Fighter01_Pilot01) then
        DebugOut("SEFighter01 is ready to REVIVE")
        ReviveDeadUnit(Air_Vehicle.SE_Fighter01, GetObjectXPosition(Waypoint.SE_Fighter01), GetObjectZPosition(Waypoint.SE_Fighter01), 90, 25)
        ReviveDeadUnit(Troop.SE_Fighter01_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 90, 25)
        repeat
          EndFrame()
        until IsDead(Air_Vehicle.SE_Fighter01) == false and IsDead(Troop.SE_Fighter01_Pilot01) == false
        PutUnitInVehicle(Troop.SE_Fighter01_Pilot01, Air_Vehicle.SE_Fighter01, 0)
      end
      EndFrame()
      if IsDead(Air_Vehicle.SE_Fighter02) and IsReadyToRevive(Air_Vehicle.SE_Fighter02) and IsDead(Troop.SE_Fighter02_Pilot01) and IsReadyToRevive(Troop.SE_Fighter02_Pilot01) then
        DebugOut("SEFighter02 is ready to REVIVE")
        ReviveDeadUnit(Air_Vehicle.SE_Fighter02, GetObjectXPosition(Waypoint.SE_Fighter02), GetObjectZPosition(Waypoint.SE_Fighter02), 90, 25)
        ReviveDeadUnit(Troop.SE_Fighter02_Pilot01, GetObjectXPosition(Waypoint.SE_Respawner), GetObjectZPosition(Waypoint.SE_Respawner), 90, 25)
        repeat
          EndFrame()
        until IsDead(Air_Vehicle.SE_Fighter02) == false and IsDead(Troop.SE_Fighter02_Pilot01) == false
        PutUnitInVehicle(Troop.SE_Fighter02_Pilot01, Air_Vehicle.SE_Fighter02, 0)
      end
      EndFrame()
      if IsDead(Air_Vehicle.AI_Fighter01) == false then
        FollowUnit(Air_Vehicle.AI_Fighter01, GetPlayerUnit(constant.PLAYER_ONE), 100, 0, constant.ORDER_FORCED)
      end
      EndFrame()
      if IsDead(Air_Vehicle.AI_Fighter02) == false then
        FollowUnit(Air_Vehicle.AI_Fighter02, GetPlayerUnit(constant.PLAYER_ONE), 150, 0, constant.ORDER_FORCED)
      end
      EndFrame()
      if IsDead(Air_Vehicle.SE_Fighter01) == false then
        FollowUnit(Air_Vehicle.SE_Fighter01, GetPlayerUnit(constant.PLAYER_ONE), 100, 0, constant.ORDER_FORCED)
      end
      EndFrame()
      if IsDead(Air_Vehicle.SE_Fighter02) == false then
        FollowUnit(Air_Vehicle.SE_Fighter02, GetPlayerUnit(constant.PLAYER_ONE), 150, 0, constant.ORDER_FORCED)
      end
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.FighterControl) == false then
      if IsDead(Air_Vehicle.AI_Fighter01) == false then
        GoToArea(Air_Vehicle.AI_Fighter01, GetObjectXPosition(Waypoint.Withdraw_Air), GetObjectZPosition(Waypoint.Withdraw_Air), 5, constant.ORDER_FORCED)
      end
      EndFrame()
      if IsDead(Air_Vehicle.AI_Fighter02) == false then
        GoToArea(Air_Vehicle.AI_Fighter02, GetObjectXPosition(Waypoint.Withdraw_Air), GetObjectZPosition(Waypoint.Withdraw_Air), 5, constant.ORDER_FORCED)
      end
      EndFrame()
      if IsDead(Air_Vehicle.SE_Fighter01) == false then
        GoToArea(Air_Vehicle.SE_Fighter01, GetObjectXPosition(Waypoint.Withdraw_Air), GetObjectZPosition(Waypoint.Withdraw_Air), 5, constant.ORDER_FORCED)
      end
      EndFrame()
      if IsDead(Air_Vehicle.SE_Fighter02) == false then
        GoToArea(Air_Vehicle.SE_Fighter02, GetObjectXPosition(Waypoint.Withdraw_Air), GetObjectZPosition(Waypoint.Withdraw_Air), 5, constant.ORDER_FORCED)
      end
    end
    EndFrame()
    if IsInArea(Air_Vehicle.AI_Fighter01, Map_Zone.Withdraw_Air) then
      Kill(Air_Vehicle.AI_Fighter01)
    end
    EndFrame()
    if IsInArea(Air_Vehicle.AI_Fighter02, Map_Zone.Withdraw_Air) then
      Kill(Air_Vehicle.AI_Fighter02)
    end
    EndFrame()
    if IsInArea(Air_Vehicle.SE_Fighter01, Map_Zone.Withdraw_Air) then
      Kill(Air_Vehicle.SE_Fighter01)
    end
    EndFrame()
    if IsInArea(Air_Vehicle.SE_Fighter02, Map_Zone.Withdraw_Air) then
      Kill(Air_Vehicle.SE_Fighter02)
    end
    EndFrame()
  end
end

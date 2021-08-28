function Their_Finest_Hour_SE_Air_Respawner(owner)
  AirRespawner = owner
  local player = 0
  local WaveStatus = 0
  local Time = 0
  local FirstWave = 0
  local CurrentPlayer = 0
  local FighterWarning = 0
  local GunshipWarning = 0
  local FighterWarningSelection = 0
  local GunshipWarningSelection = 0
  Kill(Air_Vehicle.SE_Respawner_Fighter01)
  Kill(Troop.SE_Respawner_Fighter01_Pilot01)
  Kill(Air_Vehicle.SE_Respawner_Gunship01)
  Kill(Troop.SE_Respawner_Gunship01_Pilot01)
  repeat
    EndFrame()
  until AttackWaveReinforcements == 1 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.AI_Airbase01) == false
  PhoneMessage(29, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(30, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  PhoneMessage(31, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  while true do
    repeat
      if IsInRange(Air_Vehicle.SE_Respawner_Gunship01, GetPlayerUnit(constant.PLAYER_ONE), 150) then
        if GunshipWarningSelection == 0 and GunshipWarning == 0 then
          ClearMessageQueue()
          PhoneMessage(33, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
          GunshipWarningSelection = GunshipWarningSelection + 1
          GunshipWarning = 1
        end
        if GunshipWarningSelection == 1 and GunshipWarning == 0 then
          ClearMessageQueue()
          PhoneMessage(36, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
          GunshipWarningSelection = GunshipWarningSelection + 1
          GunshipWarning = 1
        end
        if GunshipWarningSelection == 2 and GunshipWarning == 0 then
          ClearMessageQueue()
          PhoneMessage(38, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
          GunshipWarningSelection = GunshipWarningSelection + 1
          GunshipWarning = 1
        end
      end
      EndFrame()
      if PlayerInCriticalLocation == 1 then
        if IsDead(Air_Vehicle.SE_Respawner_Gunship01) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.SE_Airbase01) == false then
          FollowWaypoint(Air_Vehicle.SE_Respawner_Gunship01, Waypoint.SE_CircleSEAirbase, 0, 0, constant.ORDER_FORCED)
        end
        EndFrame()
        if IsDead(Air_Vehicle.SE_Respawner_Gunship01) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.SE_Airbase01) then
          GoToArea(Air_Vehicle.SE_Respawner_Gunship01, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 5, 0, constant.ORDER_FORCED)
        end
        EndFrame()
        CurrentPlayer = 0
      end
      EndFrame()
      if CurrentPlayer ~= GetPlayerUnit(constant.PLAYER_ONE) and PlayerInCriticalLocation == 0 then
        if IsDead(Air_Vehicle.SE_Respawner_Gunship01) == false then
          GoToArea(Air_Vehicle.SE_Respawner_Gunship01, GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)), GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE)), 5, 0, constant.ORDER_FORCED)
        end
        EndFrame()
        CurrentPlayer = GetPlayerUnit(constant.PLAYER_ONE)
      end
      EndFrame()
      if IsInArea(Air_Vehicle.SE_Respawner_Gunship01, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 25) then
        Kill(Air_Vehicle.SE_Respawner_Gunship01)
      end
      EndFrame()
    until IsDead(Air_Vehicle.SE_Respawner_Fighter01) and IsDead(Troop.SE_Respawner_Fighter01_Pilot01) and IsDead(Air_Vehicle.SE_Respawner_Gunship01) and IsDead(Troop.SE_Respawner_Gunship01_Pilot01)
    GunshipWarning = 0
    if FirstWave == 1 then
      Time = GetTime()
      DebugOut("GetTime =", GetTime())
      DebugOut("Time =", Time)
      repeat
        if PlayerInCriticalLocation == 1 then
          Time = Time + 1
          WaitFor(1)
        end
        EndFrame()
      until IsReadyToRevive(Air_Vehicle.SE_Respawner_Fighter01) and IsReadyToRevive(Troop.SE_Respawner_Fighter01_Pilot01) and PlayerInCriticalLocation == 0 and GetTime() > Time + 60 and GetInstallationOwner(Strategic_Installation.SE_Airbase01) == constant.ARMY_SOLAR
    end
    if FirstWave == 0 then
      repeat
        EndFrame()
      until IsReadyToRevive(Air_Vehicle.SE_Respawner_Fighter01) and IsReadyToRevive(Troop.SE_Respawner_Fighter01_Pilot01) and PlayerInCriticalLocation == 0
    end
    FirstWave = 1
    ReviveDeadUnit(Air_Vehicle.SE_Respawner_Fighter01, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn01), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn01), 270, 0)
    ReviveDeadUnit(Troop.SE_Respawner_Fighter01_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
    repeat
      EndFrame()
    until IsActive(Air_Vehicle.SE_Respawner_Fighter01) and IsActive(Troop.SE_Respawner_Fighter01_Pilot01)
    PutUnitInVehicle(Troop.SE_Respawner_Fighter01_Pilot01, Air_Vehicle.SE_Respawner_Fighter01, 0)
    CurrentPlayer = 0
    repeat
      if IsInRange(Air_Vehicle.SE_Respawner_Fighter01, GetPlayerUnit(constant.PLAYER_ONE), 200) then
        if FighterWarningSelection == 0 and FighterWarning == 0 then
          ClearMessageQueue()
          PhoneMessage(32, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
          FighterWarningSelection = FighterWarningSelection + 1
          FighterWarning = 1
        end
        if FighterWarningSelection == 1 and FighterWarning == 0 then
          ClearMessageQueue()
          PhoneMessage(35, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
          FighterWarningSelection = FighterWarningSelection + 1
          FighterWarning = 1
        end
        if FighterWarningSelection == 2 and FighterWarning == 0 then
          ClearMessageQueue()
          PhoneMessage(37, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
          FighterWarningSelection = FighterWarningSelection + 1
          FighterWarning = 1
        end
      end
      EndFrame()
      if PlayerInCriticalLocation == 1 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.SE_Airbase01) == false then
        GoToArea(Air_Vehicle.SE_Respawner_Fighter01, GetObjectXPosition(Capture_Point.SE_Airbase01), GetObjectZPosition(Capture_Point.SE_Airbase01), 30, constant.ORDER_FORCED)
        CurrentPlayer = 0
      end
      EndFrame()
      if PlayerInCriticalLocation == 1 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.SE_Airbase01) then
        GoToArea(Air_Vehicle.SE_Respawner_Fighter01, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 5, 0, constant.ORDER_FORCED)
        CurrentPlayer = 0
      end
      EndFrame()
      if CurrentPlayer ~= GetPlayerUnit(constant.PLAYER_ONE) and PlayerInCriticalLocation == 0 then
        GoToArea(Air_Vehicle.SE_Respawner_Fighter01, GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)), GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE)), 5, 0, constant.ORDER_FORCED)
        CurrentPlayer = GetPlayerUnit(constant.PLAYER_ONE)
      end
      EndFrame()
      if IsInArea(Air_Vehicle.SE_Respawner_Fighter01, GetObjectXPosition(Waypoint.SE_AirTransport_Despawner), GetObjectZPosition(Waypoint.SE_AirTransport_Despawner), 25) then
        Kill(Air_Vehicle.SE_Respawner_Fighter01)
      end
      EndFrame()
    until IsDead(Air_Vehicle.SE_Respawner_Fighter01) and IsDead(Troop.SE_Respawner_Fighter01_Pilot01) and IsDead(Air_Vehicle.SE_Respawner_Gunship01) and IsDead(Troop.SE_Respawner_Gunship01_Pilot01)
    FighterWarning = 0
    Time = GetTime()
    DebugOut("GetTime =", GetTime())
    DebugOut("Time =", Time)
    repeat
      if PlayerInCriticalLocation == 1 then
        Time = Time + 1
        WaitFor(1)
      end
      EndFrame()
    until IsReadyToRevive(Air_Vehicle.SE_Respawner_Gunship01) and IsReadyToRevive(Troop.SE_Respawner_Gunship01_Pilot01) and PlayerInCriticalLocation == 0 and GetTime() > Time + 60 and GetInstallationOwner(Strategic_Installation.SE_Airbase01) == constant.ARMY_SOLAR
    ReviveDeadUnit(Air_Vehicle.SE_Respawner_Gunship01, GetObjectXPosition(Waypoint.SE_Airbase01_Spawn01), GetObjectZPosition(Waypoint.SE_Airbase01_Spawn01), 270, 0)
    ReviveDeadUnit(Troop.SE_Respawner_Gunship01_Pilot01, GetObjectXPosition(Waypoint.SE_Revive), GetObjectZPosition(Waypoint.SE_Revive), 270, 5)
    repeat
      EndFrame()
    until IsActive(Air_Vehicle.SE_Respawner_Gunship01) and IsActive(Troop.SE_Respawner_Gunship01_Pilot01)
    PutUnitInVehicle(Troop.SE_Respawner_Gunship01_Pilot01, Air_Vehicle.SE_Respawner_Gunship01, 0)
    CurrentPlayer = 0
    EndFrame()
  end
end

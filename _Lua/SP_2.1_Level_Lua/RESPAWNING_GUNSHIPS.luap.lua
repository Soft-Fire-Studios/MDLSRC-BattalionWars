function RESPAWNING_GUNSHIPS(owner)
  scriptGunships = owner
  local gunshiprevive = 0
  local timecounter = 0
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.Tgunship01) and IsDead(Air_Vehicle.Tgunship02)
  repeat
    if BarracksCutsceneOn == true or FactoryCutsceneOn == true then
      WaitFor(2)
      Teleport(Air_Vehicle.Tgunship01, 235, 443, 180, 10)
      Teleport(Air_Vehicle.Tgunship02, 235, 443, 180, 10)
      repeat
        EndFrame()
      until FactoryCutsceneOn == false and BarracksCutsceneOn == false
      timecounter = GetTime()
      gunshiprevive = 1
    end
    if 0 < NumPassengersInUnit(Capture_Point.BarracksCP) then
      timecounter = GetTime()
      EndFrame()
    end
    if 0 < NumPassengersInUnit(Capture_Point.FactoryCP) then
      timecounter = GetTime()
      EndFrame()
    end
    if gunshiprevive == 0 and IsReadyToRevive(Air_Vehicle.Tgunship01) and IsReadyToRevive(Air_Vehicle.Tgunship02) then
      timecounter = GetTime()
      gunshiprevive = 1
    end
    if GetTime() > timecounter + 70 and gunshiprevive == 1 then
      if ForceSpawningStopped == false and IsReadyToRevive(Air_Vehicle.Tgunship01) then
        ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.Tgunship01, GetObjectXPosition(Waypoint.spawn1), GetObjectZPosition(Waypoint.spawn1), 180, 10)
      end
      if ForceSpawningStopped == false and IsReadyToRevive(Air_Vehicle.Tgunship02) then
        ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.Tgunship02, GetObjectXPosition(Waypoint.spawn2), GetObjectZPosition(Waypoint.spawn2), 180, 10)
      end
      AttackTarget(Air_Vehicle.Tgunship01, GetPlayerUnit(), constant.ORDER_FORCED)
      AttackTarget(Air_Vehicle.Tgunship02, GetPlayerUnit(), constant.ORDER_FORCED)
      DebugOut("ENEMY AIR UNITS HAVE SPAWNED AND ARE ATTACKING YOU")
      if 1 > NumItemsInArea(Map_Zone.ViewZone2, flag.TYPE_WFRONTIER) then
        if random > 200 then
          PhoneMessage(60, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        elseif random > 150 then
          PhoneMessage(61, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
        elseif random > 100 then
          PhoneMessage(76, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        elseif random > 50 then
          PhoneMessage(77, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
        else
          PhoneMessage(78, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        end
      end
      gunshiprevive = 0
    end
    EndFrame()
  until GetState(Capture_Point.THQCP) == flag.TYPE_WFRONTIER
end

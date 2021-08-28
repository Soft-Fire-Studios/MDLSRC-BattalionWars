function Sea_Fort_Objective(owner)
  script06 = owner
  local gships = 0
  local health = 100
  Despawn(Troop.SF_Tower_Grunt)
  Despawn(Capture_Point.SF_Tower)
  Despawn(Building.Outro_Sea_Fort)
  Despawn(Building.Sea_Fort)
  Despawn(Building.AA1)
  Despawn(Building.AA2)
  Despawn(Building.AA3)
  Despawn(Building.AA4)
  Despawn(Building.AA5)
  Despawn(Building.AA6)
  Despawn(Air_Vehicle.CS_Gunship_1)
  Despawn(Air_Vehicle.CS_Gunship_2)
  Despawn(Air_Vehicle.CS_Gunship_3)
  Despawn(Air_Vehicle.CS_Gunship_4)
  Despawn(Air_Vehicle.CS_Gunship_5)
  Despawn(Air_Vehicle.CS_Gunship_6)
  Despawn(Air_Vehicle.Fake_GS_1)
  Despawn(Air_Vehicle.Fake_GS_2)
  Despawn(Troop.Fake_Pilot_1)
  Despawn(Troop.Fake_Pilot_2)
  DebugOut("checking for the player getting to close to the Sea Fort")
  repeat
    if IsInArea(GetPlayerUnit(), Map_Zone.Destroy) then
      DebugOut("Player Out of Sea Fort Bounds")
      PhoneMessage(81, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Teleport(GetPlayerUnit(), 950, 650, 270, 2)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      WaitFor(1)
    else
      EndFrame()
      EndFrame()
    end
    if gships == 0 and 0 < NumPassengersInUnit(Capture_Point.SE_Dock_CP) then
      PhoneMessage(54, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      DebugOut("Anglos capturing Flag")
      if IsDead(Air_Vehicle.CS_Gunship_1) then
        DebugOut("CS Gunship 1 dead, reviving")
        repeat
          EndFrame()
        until IsReadyToRevive(Air_Vehicle.CS_Gunship_1)
        ReviveDeadUnit(Air_Vehicle.CS_Gunship_1, 1200, 700, 270, 50)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.CS_Gunship_1)
      else
        DebugOut("CS Gunship 1 just despawned, spawning")
        Spawn(Air_Vehicle.CS_Gunship_1)
        EndFrame()
        Teleport(Air_Vehicle.CS_Gunship_1, 1200, 700, 270, 50)
      end
      if IsDead(Air_Vehicle.CS_Gunship_2) then
        DebugOut("CS Gunship 2 dead, reviving")
        repeat
          EndFrame()
        until IsReadyToRevive(Air_Vehicle.CS_Gunship_2)
        ReviveDeadUnit(Air_Vehicle.CS_Gunship_2, 1200, 680, 270, 50)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.CS_Gunship_2)
      else
        DebugOut("CS Gunship 2 just despawned, spawning")
        Spawn(Air_Vehicle.CS_Gunship_2)
        EndFrame()
        Teleport(Air_Vehicle.CS_Gunship_2, 1200, 680, 270, 50)
      end
      GoToArea(Air_Vehicle.CS_Gunship_1, 785, 635, 15)
      GoToArea(Air_Vehicle.CS_Gunship_2, 780, 640, 15)
      if IsDead(Ground_Vehicle.CS_Artillery_1) == false then
        Kill(Ground_Vehicle.CS_Artillery_1)
      end
      if IsDead(Ground_Vehicle.CS_Artillery_2) == false then
        Kill(Ground_Vehicle.CS_Artillery_2)
      end
      if IsDead(Ground_Vehicle.SE_Artillery_3) == false then
        Kill(Ground_Vehicle.SE_Artillery_3)
      end
      gships = 1
    end
  until GetState(Capture_Point.SE_Dock_CP) == flag.TYPE_ANGLO or CheckCapturePoint(Capture_Point.SE_Dock_CP, constant.ARMY_ANGLO, 100, 1, constant.CAPTUREPOINTFLAG_RAISING)
  Spawn(Ground_Vehicle.CS_Artillery_1)
  Spawn(Ground_Vehicle.CS_Artillery_2)
  Spawn(Ground_Vehicle.SE_Artillery_3)
  WaitFor(12)
  DebugOut("Real Sea Fort Spawning In")
  if IsDead(Air_Vehicle.CS_Gunship_1) == false then
    Kill(Air_Vehicle.CS_Gunship_1, false)
  end
  if IsDead(Air_Vehicle.CS_Gunship_2) == false then
    Kill(Air_Vehicle.CS_Gunship_2, false)
  end
  repeat
    EndFrame()
  until dock == 2
  DebugOut("Spawning Gunships around the sea fort")
  repeat
    if IsReadyToRevive(Air_Vehicle.CS_Gunship_1) then
      ReviveDeadUnit(Air_Vehicle.CS_Gunship_1, 1650, 830, 270, 30)
      EndFrame()
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.CS_Gunship_1)
      FollowWaypoint(Air_Vehicle.CS_Gunship_1, Waypoint.Sea_Fort, 0, 0)
    end
    EndFrame()
    if IsReadyToRevive(Air_Vehicle.CS_Gunship_2) then
      ReviveDeadUnit(Air_Vehicle.CS_Gunship_2, 1650, 830, 330, 30)
      EndFrame()
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.CS_Gunship_2)
      if IsDead(Water_Vehicle.AI_Battleship_1) then
        FollowWaypoint(Air_Vehicle.CS_Gunship_2, Waypoint.Sea_Fort, 0, 0)
      else
        AttackTarget(Air_Vehicle.CS_Gunship_2, Water_Vehicle.AI_Battleship_1)
      end
    end
    EndFrame()
    if IsReadyToRevive(Air_Vehicle.CS_Gunship_3) then
      ReviveDeadUnit(Air_Vehicle.CS_Gunship_3, 1650, 830, 210, 30)
      EndFrame()
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.CS_Gunship_3)
      if IsDead(Water_Vehicle.AI_Battleship_1) then
        FollowWaypoint(Air_Vehicle.CS_Gunship_3, Waypoint.Sea_Fort, 0, 0)
      else
        AttackTarget(Air_Vehicle.CS_Gunship_3, Water_Vehicle.AI_Battleship_2)
      end
    end
    EndFrame()
    if IsReadyToRevive(Air_Vehicle.CS_Gunship_4) then
      ReviveDeadUnit(Air_Vehicle.CS_Gunship_4, 1650, 830, 300, 30)
      EndFrame()
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.CS_Gunship_4)
      FollowWaypoint(Air_Vehicle.CS_Gunship_4, Waypoint.Sea_Fort, 0, 0)
    end
    EndFrame()
    if AllPlayerUnitsDead(constant.PLAYER_ONE) then
      if airbase == 1 and IsReadyToRevive(Air_Vehicle.AI_Fighter_1) then
        ReviveDeadUnit(Air_Vehicle.AI_Fighter_1, -905, 350, 90, 10)
      elseif IsReadyToRevive(Water_Vehicle.AI_Battleship_1) then
        ReviveDeadUnit(Water_Vehicle.AI_Battleship_1, 880, 640, 90, 10)
      end
    end
    EndFrame()
  until missionend == 1
  Vanish(Building.AA1)
  Vanish(Building.AA2)
  Vanish(Building.AA3)
  Vanish(Building.AA4)
  Vanish(Building.AA5)
  Vanish(Building.AA6)
end

function Purge_NoMansLandSolarAttacks(owner)
  local nomansattack = 0
  local tankattack = 0
  Despawn(Air_Vehicle.Sgunship01)
  Despawn(Air_Vehicle.Sgunship02)
  Despawn(Air_Vehicle.Sgunship03)
  Despawn(Air_Vehicle.Sgunship04)
  while missionend == 0 do
    if (IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.FerrokSpeech01) or IsInArea(Troop.LegionGrunt02, Map_Zone.FerrokSpeech01) or IsInArea(Troop.LegionGrunt03, Map_Zone.FerrokSpeech01) or IsInArea(Troop.LegionGrunt04, Map_Zone.FerrokSpeech01) or IsInArea(Troop.LegionGrunt05, Map_Zone.FerrokSpeech01) or IsInArea(Troop.LegionGrunt06, Map_Zone.FerrokSpeech01) or IsInArea(Troop.ILbazooka01, Map_Zone.FerrokSpeech01) or IsInArea(Troop.ILbazooka02, Map_Zone.FerrokSpeech01) or IsInArea(Troop.ILbazooka03, Map_Zone.FerrokSpeech01) or IsInArea(Troop.ILbazooka04, Map_Zone.FerrokSpeech01) or IsInArea(Troop.ILbazooka05, Map_Zone.FerrokSpeech01) or IsInArea(Troop.ILmortar01, Map_Zone.FerrokSpeech01) or IsInArea(Troop.ILmortar02, Map_Zone.FerrokSpeech01) or IsInArea(Troop.ILmortar03, Map_Zone.FerrokSpeech01) or IsInArea(Troop.ILmortar04, Map_Zone.FerrokSpeech01) or IsInArea(Troop.ILmortar05, Map_Zone.FerrokSpeech01) or IsInArea(Ground_Vehicle.ILtank01, Map_Zone.FerrokSpeech01)) and cutscenegunsstart == 0 then
      cutscenegunsstart = 1
      ShowTimer(0)
      ClockIsTicking = 0
      repeat
        EndFrame()
      until 1 <= cutscenegunsend
      BombersSent = 1
      WaitFor(10)
      break
    end
    EndFrame()
  end
  if missionend == 0 then
    PhoneMessage(75, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
    WaitFor(10)
  end
  if missionend == 0 then
    DebugOut("Assault Wave has been launched")
    FollowWaypoint(Troop.SolarHose02, Waypoint.TankWP02, 5, 5, constant.ORDER_NORMAL)
    FollowWaypoint(Troop.SolarHose03, Waypoint.TankWP04, 5, 5, constant.ORDER_NORMAL)
    WaitFor(1)
    AttackTarget(Troop.SolarBazooka02, Building.Pillbox02, constant.ORDER_NORMAL)
    AttackTarget(Troop.SolarBazooka01, Building.Pillbox02, constant.ORDER_NORMAL)
    WaitFor(1)
    AttackTarget(Troop.SolarGrunt04, Building.Pillbox01, constant.ORDER_NORMAL)
    WaitFor(1)
    AttackTarget(Troop.SolarGrunt06, Building.Pillbox02, constant.ORDER_NORMAL)
    WaitFor(1)
    AttackTarget(Troop.Sbazooka01, Building.Pillbox01, constant.ORDER_NORMAL)
    AttackTarget(Troop.Sbazooka02, Building.Pillbox02, constant.ORDER_NORMAL)
    WaitFor(35)
  end
  if missionend == 0 then
    Spawn(Air_Vehicle.Sgunship01)
    Spawn(Air_Vehicle.Sgunship02)
    Spawn(Air_Vehicle.Sgunship03)
    Spawn(Air_Vehicle.Sgunship04)
    PhoneMessage(22, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
    if not IsDead(Building.Pillbox01) then
      AttackTarget(Air_Vehicle.Sgunship01, Building.Pillbox01, constant.ORDER_NORMAL)
      AttackTarget(Air_Vehicle.Sgunship02, Building.Pillbox01, constant.ORDER_NORMAL)
    else
      AttackTarget(Air_Vehicle.Sgunship01, Building.Pillbox02, constant.ORDER_NORMAL)
      AttackTarget(Air_Vehicle.Sgunship02, Building.Pillbox02, constant.ORDER_NORMAL)
    end
    if not IsDead(Building.Pillbox02) then
      AttackTarget(Air_Vehicle.Sgunship03, Building.Pillbox02, constant.ORDER_NORMAL)
      AttackTarget(Air_Vehicle.Sgunship04, Building.Pillbox02, constant.ORDER_NORMAL)
    else
      AttackTarget(Air_Vehicle.Sgunship03, Building.Pillbox01, constant.ORDER_NORMAL)
      AttackTarget(Air_Vehicle.Sgunship04, Building.Pillbox01, constant.ORDER_NORMAL)
    end
    AttackTarget(Building.Searchlight04, Air_Vehicle.Sgunship01, constant.ORDER_FORCED)
    AttackTarget(Building.Searchlight05, Air_Vehicle.Sgunship02, constant.ORDER_FORCED)
    AttackTarget(Building.Searchlight06, Air_Vehicle.Sgunship04, constant.ORDER_FORCED)
    WaitFor(15)
  end
  if missionend == 0 then
    PhoneMessage(7, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
    tankSent = 1
  end
  if tankSent == 1 and tankattack == 0 then
    tankattack = 1
    FollowWaypoint(Ground_Vehicle.Stank05, Waypoint.TankWP03, 5, 5, constant.ORDER_NORMAL)
    FollowWaypoint(Ground_Vehicle.Stank04, Waypoint.TankWP01, 5, 5, constant.ORDER_NORMAL)
    FollowWaypoint(Ground_Vehicle.Stank06, Waypoint.TankWP04, 5, 5, constant.ORDER_NORMAL)
    FollowWaypoint(Ground_Vehicle.Stank07, Waypoint.TankWP05, 5, 5, constant.ORDER_NORMAL)
    FollowWaypoint(Ground_Vehicle.Stank09, Waypoint.TankWP02, 5, 5, constant.ORDER_NORMAL)
    FollowWaypoint(Ground_Vehicle.Stank08, Waypoint.TankWP06, 5, 5, constant.ORDER_NORMAL)
  end
  if tankattack == 1 then
    if not IsDead(Building.Pillbox01) then
      if IsInArea(Ground_Vehicle.Stank04, Map_Zone.TankAttack) then
        AttackTarget(Ground_Vehicle.Stank04, Building.Pillbox01, constant.ORDER_NORMAL)
      end
      if IsInArea(Ground_Vehicle.Stank05, Map_Zone.TankAttack) then
        AttackTarget(Ground_Vehicle.Stank05, Building.Pillbox01, constant.ORDER_NORMAL)
      end
      if IsInArea(Ground_Vehicle.Stank06, Map_Zone.TankAttack) then
        AttackTarget(Ground_Vehicle.Stank06, Building.Pillbox01, constant.ORDER_NORMAL)
      end
    else
      if IsInArea(Ground_Vehicle.Stank04, Map_Zone.TankAttack) then
        AttackTarget(Ground_Vehicle.Stank04, Building.Pillbox02, constant.ORDER_NORMAL)
      end
      if IsInArea(Ground_Vehicle.Stank05, Map_Zone.TankAttack) then
        AttackTarget(Ground_Vehicle.Stank05, Building.Pillbox02, constant.ORDER_NORMAL)
      end
      if IsInArea(Ground_Vehicle.Stank06, Map_Zone.TankAttack) then
        AttackTarget(Ground_Vehicle.Stank06, Building.Pillbox02, constant.ORDER_NORMAL)
      end
    end
    if not IsDead(Building.Pillbox02) then
      if IsInArea(Ground_Vehicle.Stank07, Map_Zone.TankAttack) then
        AttackTarget(Ground_Vehicle.Stank07, Building.Pillbox02, constant.ORDER_NORMAL)
      end
      if IsInArea(Ground_Vehicle.Stank08, Map_Zone.TankAttack) then
        AttackTarget(Ground_Vehicle.Stank08, Building.Pillbox02, constant.ORDER_NORMAL)
      end
      if IsInArea(Ground_Vehicle.Stank09, Map_Zone.TankAttack) then
        AttackTarget(Ground_Vehicle.Stank09, Building.Pillbox02, constant.ORDER_NORMAL)
      end
    else
      if IsInArea(Ground_Vehicle.Stank07, Map_Zone.TankAttack) then
        AttackTarget(Ground_Vehicle.Stank07, Building.Pillbox01, constant.ORDER_NORMAL)
      end
      if IsInArea(Ground_Vehicle.Stank08, Map_Zone.TankAttack) then
        AttackTarget(Ground_Vehicle.Stank08, Building.Pillbox01, constant.ORDER_NORMAL)
      end
      if IsInArea(Ground_Vehicle.Stank09, Map_Zone.TankAttack) then
        AttackTarget(Ground_Vehicle.Stank09, Building.Pillbox01, constant.ORDER_NORMAL)
      end
    end
    WaitFor(1)
  end
end

function owner_Solar_Gunship_Respawn(owner)
  local GunshipRespawned = 0
  local AttackOrderReIssued = 0
  local NavalGunsAttackOrderReIssued = 0
  SetTickScriptWhenDead(owner, true)
  SetTickScriptWhenDespawned(owner, true)
  repeat
    EndFrame()
  until IntroCutsceneEnd == 1
  WaitFor(5)
  repeat
    EndFrame()
  until TriggerGunships == 1
  DebugOut("Start respawning gunships")
  repeat
    WaitFor(5)
    GoToArea(owner, GetObjectXPosition(GetPlayerUnit()), GetObjectZPosition(GetPlayerUnit()), 25)
    SetUnitAI(owner, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
    EndFrame()
  until SendGunshipsAway == 1 or IsDead(owner)
  if owner == Air_Vehicle.SEGunship01 then
    GoToArea(owner, GetObjectXPosition(Waypoint.SolarGunshipRespawn0), GetObjectZPosition(Waypoint.SolarGunshipRespawn0), 0, 0, constant.ORDER_FORCED)
  else
    GoToArea(owner, GetObjectXPosition(Waypoint.SolarGunshipRespawn1), GetObjectZPosition(Waypoint.SolarGunshipRespawn1), 0, 0, constant.ORDER_FORCED)
  end
  EndFrame()
  repeat
    EndFrame()
  until TriggerGunships == 2
  DebugOut("Start respawning gunships again")
  while true do
    if IsDead(owner) and GunshipRespawned == 0 then
      GunshipRespawned = 1
      WaitFor(60)
      repeat
        if GetInstallationOwner(Strategic_Installation.ILairbase) == constant.ARMY_UNDERWORLD then
          if NavalGunsStart == 1 then
            break
          else
            EndFrame()
          end
        end
        EndFrame()
      until GetInstallationOwner(Strategic_Installation.ILairbase) == constant.ARMY_SOLAR
      if NavalGunsStart == 1 then
        break
      end
      if owner == Air_Vehicle.SEGunship01 then
        ReviveDeadUnit(owner, GetObjectXPosition(Waypoint.SolarGunshipRespawn0), GetObjectZPosition(Waypoint.SolarGunshipRespawn0), 0, 10)
        DebugOut("Gunship01 respawned")
        repeat
          EndFrame()
        until IsDead(owner) == false
        ReviveDeadUnit(Troop.SEGunship01Pilot, 425, 1250, 0, 10)
        EndFrame()
        PutUnitInVehicle(Troop.SEGunship01Pilot, owner, 0)
        DebugOut("Gunship01 Pilot respawned")
        EndFrame()
      else
        ReviveDeadUnit(owner, GetObjectXPosition(Waypoint.SolarGunshipRespawn1), GetObjectZPosition(Waypoint.SolarGunshipRespawn1), 0, 10)
        DebugOut("Gunship02 respawned")
        repeat
          EndFrame()
        until IsDead(owner) == false
        ReviveDeadUnit(Troop.SEGunship02Pilot, 425, 1250, 0, 10)
        EndFrame()
        PutUnitInVehicle(Troop.SEGunship02Pilot, owner, 0)
        DebugOut("Gunship02 Pilot respawned")
        EndFrame()
      end
      GoToArea(owner, GetObjectXPosition(GetPlayerUnit()), GetObjectZPosition(GetPlayerUnit()), 25)
      SetUnitAI(owner, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
      AttackOrderReIssued = 0
      GunshipRespawned = 0
      EndFrame()
    end
    if NavalGunsStart == 1 then
      break
    end
    if IsDead(owner) == false and AttackOrderReIssued == 0 then
      AttackOrderReIssued = 1
      WaitFor(5)
      GoToArea(owner, GetObjectXPosition(GetPlayerUnit()), GetObjectZPosition(GetPlayerUnit()), 25)
      SetUnitAI(owner, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
      AttackOrderReIssued = 0
      EndFrame()
    end
    EndFrame()
  end
  if IsDead(owner) == false then
    DebugOut("sending gunship away")
    GoToArea(owner, GetObjectXPosition(Waypoint.SEAirTransport01Despawn), GetObjectZPosition(Waypoint.SEAirTransport01Despawn), 0, 0, constant.ORDER_FORCED)
    repeat
      EndFrame()
    until IsInArea(owner, Map_Zone.DespawnSEAirTransports) or IsDead(owner)
    Kill(owner, false)
  end
  repeat
    EndFrame()
  until NavalGunsAirWave == 1
  WaitFor(1)
  while true do
    if IsDead(owner) == false and NavalGunsAttackOrderReIssued == 0 then
      NavalGunsAttackOrderReIssued = 1
      WaitFor(1)
      SetUnitAI(owner, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
      if owner == Air_Vehicle.SEGunship01 then
        if IsDead(Building.NavalGun01) == false then
          AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
          repeat
            WaitFor(1)
            AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
            EndFrame()
          until IsDead(Building.NavalGun01)
          AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
          repeat
            WaitFor(1)
            AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
            EndFrame()
          until IsDead(Building.NavalGun02)
        else
          AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
          repeat
            WaitFor(1)
            AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
            EndFrame()
          until IsDead(Building.NavalGun02)
        end
        EndFrame()
      elseif IsDead(Building.NavalGun02) == false then
        AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
        repeat
          WaitFor(1)
          AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
          EndFrame()
        until IsDead(Building.NavalGun02)
        AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
        repeat
          WaitFor(1)
          AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
          EndFrame()
        until IsDead(Building.NavalGun01)
      else
        AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
        repeat
          WaitFor(1)
          AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
          EndFrame()
        until IsDead(Building.NavalGun01)
      end
    end
    EndFrame()
    if IsDead(owner) and NavalGunsAttackOrderReIssued == 1 then
      NavalGunsAttackOrderReIssued = 0
    end
    EndFrame()
    EndFrame()
  end
end

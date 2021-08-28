function Naval_Gun_Defense(owner)
  NavalGunDefenseScript = owner
  local WaveTimer = 0
  local Gunship01Respawned = 0
  local Gunship02Respawned = 0
  AddToGroup(Unit_Group.NavalTransportWave1, Troop.SEAssault03)
  AddToGroup(Unit_Group.NavalTransportWave1, Troop.SEAssault04)
  AddToGroup(Unit_Group.NavalTransportWave1, Troop.SEAssault05)
  AddToGroup(Unit_Group.NavalTransportWave1, Troop.SEAssault06)
  AddToGroup(Unit_Group.NavalTransportWave1, Troop.SEAssault07)
  AddToGroup(Unit_Group.NavalTransportWave1, Troop.SEAssault08)
  AddToGroup(Unit_Group.NavalTransportWave1, Ground_Vehicle.SELightTank03)
  AddToGroup(Unit_Group.NavalTransportWave1, Ground_Vehicle.SELightTank04)
  AddToGroup(Unit_Group.NavalTransportWave1, Water_Vehicle.SEBattleship05)
  AddToGroup(Unit_Group.NavalTransportWave2, Troop.SEMortar01)
  AddToGroup(Unit_Group.NavalTransportWave2, Troop.SEMortar02)
  AddToGroup(Unit_Group.NavalTransportWave2, Troop.SEMortar03)
  AddToGroup(Unit_Group.NavalTransportWave2, Troop.SEMortar04)
  AddToGroup(Unit_Group.NavalTransportWave2, Troop.SEMortar05)
  AddToGroup(Unit_Group.NavalTransportWave2, Troop.SEMortar06)
  AddToGroup(Unit_Group.NavalTransportWave2, Water_Vehicle.SEBattleship06)
  repeat
    EndFrame()
  until NavalGunsStart == 1
  ClearMessageQueue()
  PhoneMessage(45, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
  AddToGroup(Unit_Group.NavalGunAttackers, Air_Vehicle.SEGunship01)
  AddToGroup(Unit_Group.NavalGunAttackers, Air_Vehicle.SEGunship02)
  EnableWeapon(Building.NavalGun01, 1)
  EnableWeapon(Building.NavalGun02, 1)
  WaitFor(20)
  Spawn(Water_Vehicle.SENavalTransport01)
  Spawn(Water_Vehicle.SENavalTransport02)
  Spawn(Water_Vehicle.SENavalTransport03)
  Spawn(Water_Vehicle.SENavalTransport04)
  if IsInArea(GetPlayerUnit(), Map_Zone.NoTransportTeleport) == false then
    Teleport(Water_Vehicle.SENavalTransport01, GetObjectXPosition(Waypoint.NavalTransport01Teleport), GetObjectZPosition(Waypoint.NavalTransport01Teleport), 0, 0)
    Teleport(Water_Vehicle.SENavalTransport02, GetObjectXPosition(Waypoint.NavalTransport02Teleport), GetObjectZPosition(Waypoint.NavalTransport02Teleport), 0, 0)
    Teleport(Water_Vehicle.SENavalTransport03, GetObjectXPosition(Waypoint.NavalTransport03Teleport), GetObjectZPosition(Waypoint.NavalTransport03Teleport), 0, 0)
    Teleport(Water_Vehicle.SENavalTransport04, GetObjectXPosition(Waypoint.NavalTransport04Teleport), GetObjectZPosition(Waypoint.NavalTransport04Teleport), 0, 0)
  else
    Teleport(Water_Vehicle.SENavalTransport01, GetObjectXPosition(Waypoint.NavalTransport01Teleport), GetObjectZPosition(Waypoint.NavalTransport01Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.NavalTransport01Teleport))), 0, 0)
    Teleport(Water_Vehicle.SENavalTransport02, GetObjectXPosition(Waypoint.NavalTransport02Teleport), GetObjectZPosition(Waypoint.NavalTransport02Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.NavalTransport02Teleport))), 0, 0)
    Teleport(Water_Vehicle.SENavalTransport03, GetObjectXPosition(Waypoint.NavalTransport03Teleport), GetObjectZPosition(Waypoint.NavalTransport03Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.NavalTransport03Teleport))), 0, 0)
    Teleport(Water_Vehicle.SENavalTransport04, GetObjectXPosition(Waypoint.NavalTransport04Teleport), GetObjectZPosition(Waypoint.NavalTransport04Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.NavalTransport04Teleport))), 0, 0)
  end
  EndFrame()
  BeachWaterUnit(Water_Vehicle.SENavalTransport01, GetObjectXPosition(Waypoint.SENavalTransport01Land), GetObjectZPosition(Waypoint.SENavalTransport01Land), 0, 1)
  BeachWaterUnit(Water_Vehicle.SENavalTransport02, GetObjectXPosition(Waypoint.SENavalTransport02Land), GetObjectZPosition(Waypoint.SENavalTransport02Land), 0, 1)
  BeachWaterUnit(Water_Vehicle.SENavalTransport03, GetObjectXPosition(Waypoint.SENavalTransport03Land), GetObjectZPosition(Waypoint.SENavalTransport03Land), 0, 1)
  BeachWaterUnit(Water_Vehicle.SENavalTransport04, GetObjectXPosition(Waypoint.SENavalTransport04Land), GetObjectZPosition(Waypoint.SENavalTransport04Land), 0, 1)
  WaitFor(15)
  Spawn(Water_Vehicle.SEBattleship05)
  if IsInArea(GetPlayerUnit(), Map_Zone.NoTransportTeleport) == false then
    Teleport(Water_Vehicle.SEBattleship05, GetObjectXPosition(Waypoint.BattleshipTeleport), GetObjectZPosition(Waypoint.BattleshipTeleport), 0, 0)
  else
    Teleport(Water_Vehicle.SEBattleship05, GetObjectXPosition(Waypoint.BattleshipTeleport), GetObjectZPosition(Waypoint.BattleshipTeleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.BattleshipTeleport))), 0, 0)
  end
  WaveTimer = 75
  repeat
    WaitFor(1)
    WaveTimer = WaveTimer - 1
    DebugOut(WaveTimer, "seconds left until next wave")
  until WaveTimer == 0 or GetGroupHealth(Unit_Group.NavalTransportWave1) == 0
  PhoneMessage(47, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
  if IsDead(Air_Vehicle.SEGunship01) then
    repeat
      EndFrame()
    until IsReadyToRevive(Air_Vehicle.SEGunship01)
    ReviveDeadUnit(Air_Vehicle.SEGunship01, -451.499, -1149.14, 0, 0)
    repeat
      EndFrame()
    until IsDead(Air_Vehicle.SEGunship01) == false
    ReviveDeadUnit(Troop.SEGunship01Pilot, 425, 1250, 0, 10)
    EndFrame()
    PutUnitInVehicle(Troop.SEGunship01Pilot, Air_Vehicle.SEGunship01, 0)
  else
    Spawn(Air_Vehicle.SEGunship01)
    Teleport(Air_Vehicle.SEGunship01, -451.499, -1149.14, 0, 0)
    SetHealthPercent(Air_Vehicle.SEGunship01, 100)
  end
  EndFrame()
  if IsDead(Air_Vehicle.SEGunship02) then
    repeat
      EndFrame()
    until IsReadyToRevive(Air_Vehicle.SEGunship02)
    ReviveDeadUnit(Air_Vehicle.SEGunship02, -383.671, -1147.57, 0, 0)
    repeat
      EndFrame()
    until IsDead(Air_Vehicle.SEGunship02) == false
    ReviveDeadUnit(Troop.SEGunship02Pilot, 425, 1250, 0, 10)
    EndFrame()
    PutUnitInVehicle(Troop.SEGunship02Pilot, Air_Vehicle.SEGunship02, 0)
  else
    Spawn(Air_Vehicle.SEGunship01)
    Teleport(Air_Vehicle.SEGunship02, -383.671, -1147.57, 0, 0)
    SetHealthPercent(Air_Vehicle.SEGunship02, 100)
  end
  EndFrame()
  if IsInArea(GetPlayerUnit(), Map_Zone.NoTransportTeleport) == false then
    Teleport(Air_Vehicle.SEGunship01, GetObjectXPosition(Waypoint.Gunship01Teleport), GetObjectZPosition(Waypoint.Gunship01Teleport), 0, 0)
    Teleport(Air_Vehicle.SEGunship02, GetObjectXPosition(Waypoint.Gunship02Teleport), GetObjectZPosition(Waypoint.Gunship02Teleport), 0, 0)
  else
    Teleport(Air_Vehicle.SEGunship01, GetObjectXPosition(Waypoint.Gunship01Teleport), GetObjectZPosition(Waypoint.Gunship01Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.Gunship01Teleport))), 0, 0)
    Teleport(Air_Vehicle.SEGunship02, GetObjectXPosition(Waypoint.Gunship02Teleport), GetObjectZPosition(Waypoint.Gunship01Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.Gunship02Teleport))), 0, 0)
  end
  NavalGunsAirWave = 1
  while true do
    if RespawnGunshipsDuringAirWave ~= 2 then
      if IsDead(Air_Vehicle.SEGunship01) then
        DebugOut("Gunship01 is dead")
        repeat
          EndFrame()
        until IsReadyToRevive(Air_Vehicle.SEGunship01)
        DebugOut("Gunship01 ready to revive")
        ReviveDeadUnit(Air_Vehicle.SEGunship01, -451.499, -1149.14, 0, 10)
        DebugOut("Gunship01 respawned")
        RespawnGunshipsDuringAirWave = RespawnGunshipsDuringAirWave + 1
        repeat
          EndFrame()
        until IsDead(Air_Vehicle.SEGunship01) == false
        ReviveDeadUnit(Troop.SEGunship01Pilot, 425, 1250, 0, 10)
        EndFrame()
        PutUnitInVehicle(Troop.SEGunship01Pilot, Air_Vehicle.SEGunship01, 0)
        DebugOut("Gunship01 Pilot respawned")
        EndFrame()
        if IsInArea(GetPlayerUnit(), Map_Zone.NoTransportTeleport) == false then
          Teleport(Air_Vehicle.SEGunship01, GetObjectXPosition(Waypoint.Gunship01Teleport), GetObjectZPosition(Waypoint.Gunship01Teleport), 0, 0)
        else
          Teleport(Air_Vehicle.SEGunship01, GetObjectXPosition(Waypoint.Gunship01Teleport), GetObjectZPosition(Waypoint.Gunship01Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.Gunship01Teleport))), 0, 0)
        end
      end
      EndFrame()
      if IsDead(Air_Vehicle.SEGunship02) then
        DebugOut("Gunship02 is dead")
        repeat
          EndFrame()
        until IsReadyToRevive(Air_Vehicle.SEGunship02)
        DebugOut("Gunship02 ready to revive")
        ReviveDeadUnit(Air_Vehicle.SEGunship02, -383.671, -1147.57, 0, 10)
        DebugOut("Gunship02 respawned")
        RespawnGunshipsDuringAirWave = RespawnGunshipsDuringAirWave + 1
        repeat
          EndFrame()
        until IsDead(Air_Vehicle.SEGunship02) == false
        ReviveDeadUnit(Troop.SEGunship02Pilot, 425, 1250, 0, 10)
        EndFrame()
        PutUnitInVehicle(Troop.SEGunship02Pilot, Air_Vehicle.SEGunship02, 0)
        DebugOut("Gunship02 Pilot respawned")
        EndFrame()
        if IsInArea(GetPlayerUnit(), Map_Zone.NoTransportTeleport) == false then
          Teleport(Air_Vehicle.SEGunship02, GetObjectXPosition(Waypoint.Gunship02Teleport), GetObjectZPosition(Waypoint.Gunship02Teleport), 0, 0)
        else
          Teleport(Air_Vehicle.SEGunship02, GetObjectXPosition(Waypoint.Gunship02Teleport), GetObjectZPosition(Waypoint.Gunship02Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.Gunship02Teleport))), 0, 0)
        end
      end
      EndFrame()
    end
    EndFrame()
    if RespawnGunshipsDuringAirWave == 2 and IsDead(Air_Vehicle.SEGunship01) and IsDead(Air_Vehicle.SEGunship02) then
      break
    end
    EndFrame()
    EndFrame()
  end
  Spawn(Water_Vehicle.SENavalTransport05)
  Spawn(Water_Vehicle.SENavalTransport06)
  Spawn(Water_Vehicle.SENavalTransport07)
  Spawn(Water_Vehicle.SENavalTransport08)
  if IsInArea(GetPlayerUnit(), Map_Zone.NoTransportTeleport) == false then
    Teleport(Water_Vehicle.SENavalTransport05, GetObjectXPosition(Waypoint.NavalTransport01Teleport), GetObjectZPosition(Waypoint.NavalTransport01Teleport), 0, 0)
    Teleport(Water_Vehicle.SENavalTransport06, GetObjectXPosition(Waypoint.NavalTransport02Teleport), GetObjectZPosition(Waypoint.NavalTransport02Teleport), 0, 0)
    Teleport(Water_Vehicle.SENavalTransport07, GetObjectXPosition(Waypoint.NavalTransport03Teleport), GetObjectZPosition(Waypoint.NavalTransport03Teleport), 0, 0)
    Teleport(Water_Vehicle.SENavalTransport08, GetObjectXPosition(Waypoint.NavalTransport04Teleport), GetObjectZPosition(Waypoint.NavalTransport04Teleport), 0, 0)
  else
    Teleport(Water_Vehicle.SENavalTransport05, GetObjectXPosition(Waypoint.NavalTransport01Teleport), GetObjectZPosition(Waypoint.NavalTransport01Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.NavalTransport01Teleport))), 0, 0)
    Teleport(Water_Vehicle.SENavalTransport06, GetObjectXPosition(Waypoint.NavalTransport02Teleport), GetObjectZPosition(Waypoint.NavalTransport02Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.NavalTransport02Teleport))), 0, 0)
    Teleport(Water_Vehicle.SENavalTransport07, GetObjectXPosition(Waypoint.NavalTransport03Teleport), GetObjectZPosition(Waypoint.NavalTransport03Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.NavalTransport03Teleport))), 0, 0)
    Teleport(Water_Vehicle.SENavalTransport08, GetObjectXPosition(Waypoint.NavalTransport04Teleport), GetObjectZPosition(Waypoint.NavalTransport04Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.NavalTransport04Teleport))), 0, 0)
  end
  ReviveDeadUnit(Troop.SEAssault03, 0, 0, 0, 0)
  ReviveDeadUnit(Troop.SEAssault04, 0, 0, 0, 0)
  ReviveDeadUnit(Troop.SEAssault05, 0, 0, 0, 0)
  ReviveDeadUnit(Troop.SEAssault06, 0, 0, 0, 0)
  ReviveDeadUnit(Troop.SEAssault07, 0, 0, 0, 0)
  ReviveDeadUnit(Troop.SEAssault08, 0, 0, 0, 0)
  EndFrame()
  PutUnitInVehicle(Troop.SEAssault03, Water_Vehicle.SENavalTransport06, 3)
  PutUnitInVehicle(Troop.SEAssault04, Water_Vehicle.SENavalTransport06, 4)
  PutUnitInVehicle(Troop.SEAssault05, Water_Vehicle.SENavalTransport06, 5)
  PutUnitInVehicle(Troop.SEAssault06, Water_Vehicle.SENavalTransport07, 3)
  PutUnitInVehicle(Troop.SEAssault07, Water_Vehicle.SENavalTransport07, 4)
  PutUnitInVehicle(Troop.SEAssault08, Water_Vehicle.SENavalTransport07, 5)
  PhoneMessage(48, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
  EndFrame()
  BeachWaterUnit(Water_Vehicle.SENavalTransport05, GetObjectXPosition(Waypoint.SENavalTransport01Land), GetObjectZPosition(Waypoint.SENavalTransport01Land), 0, 1)
  BeachWaterUnit(Water_Vehicle.SENavalTransport06, GetObjectXPosition(Waypoint.SENavalTransport02Land), GetObjectZPosition(Waypoint.SENavalTransport02Land), 0, 1)
  BeachWaterUnit(Water_Vehicle.SENavalTransport07, GetObjectXPosition(Waypoint.SENavalTransport03Land), GetObjectZPosition(Waypoint.SENavalTransport03Land), 0, 1)
  BeachWaterUnit(Water_Vehicle.SENavalTransport08, GetObjectXPosition(Waypoint.SENavalTransport04Land), GetObjectZPosition(Waypoint.SENavalTransport04Land), 0, 1)
  WaitFor(15)
  Spawn(Water_Vehicle.SEBattleship06)
  if IsInArea(GetPlayerUnit(), Map_Zone.NoTransportTeleport) == false then
    Teleport(Water_Vehicle.SEBattleship06, GetObjectXPosition(Waypoint.BattleshipTeleport), GetObjectZPosition(Waypoint.BattleshipTeleport), 0, 0)
  else
    Teleport(Water_Vehicle.SEBattleship06, GetObjectXPosition(Waypoint.BattleshipTeleport), GetObjectZPosition(Waypoint.BattleshipTeleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.BattleshipTeleport))), 0, 0)
  end
  WaveTimer = 75
  repeat
    WaitFor(1)
    WaveTimer = WaveTimer - 1
    DebugOut(WaveTimer, "seconds left until next wave")
  until WaveTimer == 0 or GetGroupHealth(Unit_Group.NavalTransportWave2) == 0 and IsDead(Troop.SEAssault03) and IsDead(Troop.SEAssault04) and IsDead(Troop.SEAssault05) and IsDead(Troop.SEAssault06) and IsDead(Troop.SEAssault07) and IsDead(Troop.SEAssault08)
  PhoneMessage(49, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
  Spawn(Water_Vehicle.SEBattleship01)
  repeat
    EndFrame()
  until IsReadyToRevive(Air_Vehicle.SEGunship01)
  ReviveDeadUnit(Air_Vehicle.SEGunship01, -451.499, -1149.14, 0, 0)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.SEGunship01) == false
  ReviveDeadUnit(Troop.SEGunship01Pilot, 425, 1250, 0, 10)
  EndFrame()
  PutUnitInVehicle(Troop.SEGunship01Pilot, Air_Vehicle.SEGunship01, 0)
  EndFrame()
  repeat
    EndFrame()
  until IsReadyToRevive(Air_Vehicle.SEGunship02)
  ReviveDeadUnit(Air_Vehicle.SEGunship02, -383.671, -1147.57, 0, 0)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.SEGunship02) == false
  ReviveDeadUnit(Troop.SEGunship02Pilot, 425, 1250, 0, 10)
  EndFrame()
  PutUnitInVehicle(Troop.SEGunship02Pilot, Air_Vehicle.SEGunship02, 0)
  EndFrame()
  if IsInArea(GetPlayerUnit(), Map_Zone.NoTransportTeleport) == false then
    Teleport(Air_Vehicle.SEGunship01, GetObjectXPosition(Waypoint.Gunship01Teleport), GetObjectZPosition(Waypoint.Gunship01Teleport), 0, 0)
    Teleport(Air_Vehicle.SEGunship02, GetObjectXPosition(Waypoint.Gunship02Teleport), GetObjectZPosition(Waypoint.Gunship02Teleport), 0, 0)
  else
    Teleport(Air_Vehicle.SEGunship01, GetObjectXPosition(Waypoint.Gunship01Teleport), GetObjectZPosition(Waypoint.Gunship01Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.Gunship01Teleport))), 0, 0)
    Teleport(Air_Vehicle.SEGunship02, GetObjectXPosition(Waypoint.Gunship02Teleport), GetObjectZPosition(Waypoint.Gunship01Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.Gunship02Teleport))), 0, 0)
  end
  NavalGunsThirdWave = 1
  WaitFor(7)
  Spawn(Water_Vehicle.SEBattleship02)
  WaitFor(10)
  Spawn(Water_Vehicle.SEBattleship03)
  WaitFor(7)
  Spawn(Water_Vehicle.SEBattleship04)
  while true do
    if RespawnGunshipsDuringThirdWave ~= 2 then
      if IsDead(Air_Vehicle.SEGunship01) then
        DebugOut("Gunship01 is dead")
        repeat
          EndFrame()
        until IsReadyToRevive(Air_Vehicle.SEGunship01)
        DebugOut("Gunship01 ready to revive")
        ReviveDeadUnit(Air_Vehicle.SEGunship01, -451.499, -1149.14, 0, 10)
        DebugOut("Gunship01 respawned")
        RespawnGunshipsDuringThirdWave = RespawnGunshipsDuringThirdWave + 1
        repeat
          EndFrame()
        until IsDead(Air_Vehicle.SEGunship01) == false
        ReviveDeadUnit(Troop.SEGunship01Pilot, 425, 1250, 0, 10)
        EndFrame()
        PutUnitInVehicle(Troop.SEGunship01Pilot, Air_Vehicle.SEGunship01, 0)
        DebugOut("Gunship01 Pilot respawned")
        EndFrame()
        if IsInArea(GetPlayerUnit(), Map_Zone.NoTransportTeleport) == false then
          Teleport(Air_Vehicle.SEGunship01, GetObjectXPosition(Waypoint.Gunship01Teleport), GetObjectZPosition(Waypoint.Gunship01Teleport), 0, 0)
        else
          Teleport(Air_Vehicle.SEGunship01, GetObjectXPosition(Waypoint.Gunship01Teleport), GetObjectZPosition(Waypoint.Gunship01Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.Gunship01Teleport))), 0, 0)
        end
      end
      EndFrame()
      if IsDead(Air_Vehicle.SEGunship02) then
        DebugOut("Gunship02 is dead")
        repeat
          EndFrame()
        until IsReadyToRevive(Air_Vehicle.SEGunship02)
        DebugOut("Gunship02 ready to revive")
        ReviveDeadUnit(Air_Vehicle.SEGunship02, -383.671, -1147.57, 0, 10)
        DebugOut("Gunship02 respawned")
        RespawnGunshipsDuringThirdWave = RespawnGunshipsDuringThirdWave + 1
        repeat
          EndFrame()
        until IsDead(Air_Vehicle.SEGunship02) == false
        ReviveDeadUnit(Troop.SEGunship02Pilot, 425, 1250, 0, 10)
        EndFrame()
        PutUnitInVehicle(Troop.SEGunship02Pilot, Air_Vehicle.SEGunship02, 0)
        DebugOut("Gunship02 Pilot respawned")
        EndFrame()
        if IsInArea(GetPlayerUnit(), Map_Zone.NoTransportTeleport) == false then
          Teleport(Air_Vehicle.SEGunship02, GetObjectXPosition(Waypoint.Gunship02Teleport), GetObjectZPosition(Waypoint.Gunship02Teleport), 0, 0)
        else
          Teleport(Air_Vehicle.SEGunship02, GetObjectXPosition(Waypoint.Gunship02Teleport), GetObjectZPosition(Waypoint.Gunship02Teleport) - (450 - (GetObjectZPosition(GetPlayerUnit()) - GetObjectZPosition(Waypoint.Gunship02Teleport))), 0, 0)
        end
      end
      EndFrame()
    end
    EndFrame()
    if RespawnGunshipsDuringThirdWave == 2 and IsDead(Air_Vehicle.SEGunship01) and IsDead(Air_Vehicle.SEGunship02) then
      break
    end
    EndFrame()
    EndFrame()
  end
end

function global_Assault_Respawner(owner)
  local ZeroGrunts = 0
  local AirAndGroundVehicles = CombineFlags(flag.GTYPE_BATTLESTATION, flag.GTYPE_ANTI_AIR, flag.GTYPE_ARTILLARY, flag.GTYPE_HEAVY_TANK, flag.GTYPE_LIGHT_TANK, flag.GTYPE_HEAVY_TRANSPORT, flag.GTYPE_LIGHT_TRANSPORT, flag.GTYPE_RECON, flag.GTYPE_STRATOFORTRESS, flag.GTYPE_BOMBER, flag.GTYPE_TRANSPORT, flag.GTYPE_GUNSHIP, flag.GTYPE_FIGHTER)
  local WaterVehicles = CombineFlags(flag.GTYPE_BATTLESHIP, flag.GTYPE_FRIGATE, flag.GTYPE_SUBMARINE, flag.GTYPE_GUNBOAT, flag.GTYPE_DREADNAUGHT)
  local Vets = CombineFlags(flag.GTYPE_VET_ANTI_AIR, flag.GTYPE_GRENADE, flag.GTYPE_FLAMER, flag.GTYPE_VET_ANTI_ARMOUR, flag.GTYPE_VET_HMG)
  SetTickScriptWhenDead(owner, 1)
  while true do
    repeat
      EndFrame()
    until IsDead(owner)
    if TestFlags(owner, Player1Army, constant.TYPE) then
      if TestFlags(owner, AirAndGroundVehicles, constant.GTYPE) then
        WaitFor(Player1UnitTimer)
        ReviveFullUnitCarrier(Player1Army, flag.GTYPE_GRUNT, owner, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, CurrentPlayer1Direction, 15)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow then
          DebugOut("Game set to Follow mode...")
          if WillReviveInGuard(owner) == false then
            DebugOut("Unit not in guard mode, following player...")
            FollowUnit(owner, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
          else
            DebugOut("Unit in guard mode, returning to previous guard point..")
          end
        end
      elseif TestFlags(owner, WaterVehicles, constant.GTYPE) then
        WaitFor(Player1UnitTimer)
        ReviveFullUnitCarrier(Player1Army, flag.GTYPE_GRUNT, owner, CurrentPlayer1WaterSpawnX, CurrentPlayer1WaterSpawnZ, CurrentPlayer1Direction, 20)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow then
          DebugOut("Game set to Follow mode...")
          if WillReviveInGuard(owner) == false then
            DebugOut("Unit not in guard mode, following player...")
            FollowUnit(owner, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
          else
            DebugOut("Unit in guard mode, returning to previous guard point..")
          end
        end
      elseif TestFlags(owner, Vets, constant.GTYPE) then
        WaitFor(Player1UnitTimer)
        ReviveDeadUnit(owner, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, 0, 10)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow then
          DebugOut("Game set to Follow mode...")
          if WillReviveInGuard(owner) == false then
            DebugOut("Unit not in guard mode, following player...")
            FollowUnit(owner, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
          else
            DebugOut("Unit in guard mode, returning to previous guard point..")
          end
        end
      elseif TestFlags(owner, flag.GTYPE_GRUNT, constant.GTYPE) then
        ZeroGrunts = GetTime() + Player1GruntTimer
        while ZeroGrunts > GetTime() do
          if AllPlayerUnitsDead(constant.PLAYER_ONE) and GetTime() > Player1LastGruntRevived + 3 then
            Player1LastGruntRevived = GetTime()
            DebugOut("Player1 Last grunt revived time is", Player1LastGruntRevived)
            break
          end
          EndFrame()
        end
        ReviveDeadUnit(owner, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, 0, 10)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow then
          DebugOut("Game set to Follow mode...")
          if WillReviveInGuard(owner) == false then
            DebugOut("Unit not in guard mode, following player...")
            FollowUnit(owner, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
          else
            DebugOut("Unit in guard mode, returning to previous guard point..")
          end
        end
      else
        WaitFor(Player1UnitTimer)
        ReviveDeadUnit(owner, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, 0, 10)
        if GetSpawnMode() == eModeAction.Follow then
          DebugOut("Game set to Follow mode...")
          if WillReviveInGuard(owner) == false then
            DebugOut("Unit not in guard mode, following player...")
            FollowUnit(owner, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
          else
            DebugOut("Unit in guard mode, returning to previous guard point..")
          end
        end
      end
    end
    if TestFlags(owner, Player2Army, constant.TYPE) then
      if TestFlags(owner, AirAndGroundVehicles, constant.GTYPE) then
        WaitFor(Player2UnitTimer)
        ReviveFullUnitCarrier(Player2Army, flag.GTYPE_GRUNT, owner, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, CurrentPlayer2Direction, 15)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow then
          DebugOut("Game set to Follow mode...")
          if WillReviveInGuard(owner) == false then
            DebugOut("Unit not in guard mode, following player...")
            FollowUnit(owner, GetPlayerUnit(constant.PLAYER_TWO), -1, constant.ORDER_NORMAL)
          else
            DebugOut("Unit in guard mode, returning to previous guard point..")
          end
        end
      elseif TestFlags(owner, WaterVehicles, constant.GTYPE) then
        WaitFor(Player2UnitTimer)
        ReviveFullUnitCarrier(Player2Army, flag.GTYPE_GRUNT, owner, CurrentPlayer2WaterSpawnX, CurrentPlayer2WaterSpawnZ, CurrentPlayer2Direction, 20)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow then
          DebugOut("Game set to Follow mode...")
          if WillReviveInGuard(owner) == false then
            DebugOut("Unit not in guard mode, following player...")
            FollowUnit(owner, GetPlayerUnit(constant.PLAYER_TWO), -1, constant.ORDER_NORMAL)
          else
            DebugOut("Unit in guard mode, returning to previous guard point..")
          end
        end
      elseif TestFlags(owner, Vets, constant.GTYPE) then
        WaitFor(Player2UnitTimer)
        ReviveDeadUnit(owner, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, 0, 10)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow then
          DebugOut("Game set to Follow mode...")
          if WillReviveInGuard(owner) == false then
            DebugOut("Unit not in guard mode, following player...")
            FollowUnit(owner, GetPlayerUnit(constant.PLAYER_TWO), -1, constant.ORDER_NORMAL)
          else
            DebugOut("Unit in guard mode, returning to previous guard point..")
          end
        end
      elseif TestFlags(owner, flag.GTYPE_GRUNT, constant.GTYPE) then
        ZeroGrunts = GetTime() + Player2GruntTimer
        while ZeroGrunts > GetTime() do
          if AllPlayerUnitsDead(constant.PLAYER_TWO) and GetTime() > Player2LastGruntRevived + 3 then
            Player2LastGruntRevived = GetTime()
            DebugOut("Player2 Last grunt revived time is", Player2LastGruntRevived)
            break
          end
          EndFrame()
        end
        ReviveDeadUnit(owner, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, 0, 10)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow then
          DebugOut("Game set to Follow mode...")
          if WillReviveInGuard(owner) == false then
            DebugOut("Unit not in guard mode, following player...")
            FollowUnit(owner, GetPlayerUnit(constant.PLAYER_TWO), -1, constant.ORDER_NORMAL)
          else
            DebugOut("Unit in guard mode, returning to previous guard point..")
          end
        end
      else
        WaitFor(Player2UnitTimer)
        ReviveDeadUnit(owner, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, 0, 10)
        if GetSpawnMode() == eModeAction.Follow then
          DebugOut("Game set to Follow mode...")
          if WillReviveInGuard(owner) == false then
            DebugOut("Unit not in guard mode, following player...")
            FollowUnit(owner, GetPlayerUnit(constant.PLAYER_TWO), -1, constant.ORDER_NORMAL)
          else
            DebugOut("Unit in guard mode, returning to previous guard point..")
          end
        end
      end
    end
    EndFrame()
  end
end

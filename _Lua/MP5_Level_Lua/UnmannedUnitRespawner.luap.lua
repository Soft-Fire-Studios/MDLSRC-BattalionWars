function UnmannedUnitRespawner(owner)
  local AirAndGroundVehicles = CombineFlags(flag.GTYPE_BATTLESTATION, flag.GTYPE_ANTI_AIR, flag.GTYPE_ARTILLARY, flag.GTYPE_HEAVY_TANK, flag.GTYPE_LIGHT_TANK, flag.GTYPE_HEAVY_TRANSPORT, flag.GTYPE_LIGHT_TRANSPORT, flag.GTYPE_RECON, flag.GTYPE_STRATOFORTRESS, flag.GTYPE_BOMBER, flag.GTYPE_TRANSPORT, flag.GTYPE_GUNSHIP, flag.GTYPE_FIGHTER)
  local WaterVehicles = CombineFlags(flag.GTYPE_BATTLESHIP, flag.GTYPE_FRIGATE, flag.GTYPE_SUBMARINE, flag.GTYPE_GUNBOAT, flag.GTYPE_DREADNAUGHT)
  local Vets = CombineFlags(flag.GTYPE_VET_ANTI_AIR, flag.GTYPE_GRENADE, flag.GTYPE_FLAMER, flag.GTYPE_VET_ANTI_ARMOUR, flag.GTYPE_VET_HMG)
  SetTickScriptWhenDead(owner, 1)
  while SeaFortDead == 0 do
    while not IsDead(owner) do
      EndFrame()
    end
    if TestFlags(owner, Player1Army, constant.TYPE) then
      if TestFlags(owner, AirAndGroundVehicles, constant.GTYPE) then
        WaitFor(Player1UnitTimer)
        ReviveFullUnitCarrier(Player1Army, flag.GTYPE_GRUNT, owner, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, CurrentPlayer1Direction, 15)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow and WillReviveInGuard(owner) == false then
          FollowUnit(owner, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
        end
      elseif TestFlags(owner, WaterVehicles, constant.GTYPE) then
        WaitFor(Player1UnitTimer)
        ReviveDeadUnit(owner, CurrentPlayer1WaterSpawnX, CurrentPlayer1WaterSpawnZ, CurrentPlayer1Direction, 20)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow and WillReviveInGuard(owner) == false then
          FollowUnit(owner, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
        end
      elseif TestFlags(owner, Vets, constant.GTYPE) then
        WaitFor(Player1UnitTimer)
        ReviveDeadUnit(owner, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, 0, 10)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow and WillReviveInGuard(owner) == false then
          FollowUnit(owner, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
        end
      elseif TestFlags(owner, flag.GTYPE_GRUNT, constant.GTYPE) then
        WaitFor(Player1GruntTimer)
        ReviveDeadUnit(owner, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, 0, 10)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow and WillReviveInGuard(owner) == false then
          FollowUnit(owner, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
        end
      else
        WaitFor(Player1UnitTimer)
        ReviveDeadUnit(owner, CurrentPlayer1SpawnX, CurrentPlayer1SpawnZ, 0, 10)
        if GetSpawnMode() == eModeAction.Follow and WillReviveInGuard(owner) == false then
          FollowUnit(owner, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
        end
      end
    end
    if TestFlags(owner, Player2Army, constant.TYPE) then
      if TestFlags(owner, AirAndGroundVehicles, constant.GTYPE) then
        WaitFor(Player2UnitTimer)
        ReviveFullUnitCarrier(Player2Army, flag.GTYPE_GRUNT, owner, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, CurrentPlayer2Direction, 15)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow and WillReviveInGuard(owner) == false then
          FollowUnit(owner, GetPlayerUnit(constant.PLAYER_TWO), -1, constant.ORDER_NORMAL)
        end
      elseif TestFlags(owner, WaterVehicles, constant.GTYPE) then
        WaitFor(Player2UnitTimer)
        ReviveDeadUnit(owner, CurrentPlayer2WaterSpawnX, CurrentPlayer2WaterSpawnZ, CurrentPlayer2Direction, 20)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow and WillReviveInGuard(owner) == false then
          FollowUnit(owner, GetPlayerUnit(constant.PLAYER_TWO), -1, constant.ORDER_NORMAL)
        end
      elseif TestFlags(owner, Vets, constant.GTYPE) then
        WaitFor(Player2UnitTimer)
        ReviveDeadUnit(owner, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, 0, 10)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow and WillReviveInGuard(owner) == false then
          FollowUnit(owner, GetPlayerUnit(constant.PLAYER_TWO), -1, constant.ORDER_NORMAL)
        end
      elseif TestFlags(owner, flag.GTYPE_GRUNT, constant.GTYPE) then
        WaitFor(Player2GruntTimer)
        ReviveDeadUnit(owner, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, 0, 10)
        WaitFor(0.1)
        if GetSpawnMode() == eModeAction.Follow and WillReviveInGuard(owner) == false then
          FollowUnit(owner, GetPlayerUnit(constant.PLAYER_TWO), -1, constant.ORDER_NORMAL)
        end
      else
        WaitFor(Player2UnitTimer)
        ReviveDeadUnit(owner, CurrentPlayer2SpawnX, CurrentPlayer2SpawnZ, 0, 10)
        if GetSpawnMode() == eModeAction.Follow and WillReviveInGuard(owner) == false then
          FollowUnit(owner, GetPlayerUnit(constant.PLAYER_TWO), -1, constant.ORDER_NORMAL)
        end
      end
    end
    EndFrame()
  end
end

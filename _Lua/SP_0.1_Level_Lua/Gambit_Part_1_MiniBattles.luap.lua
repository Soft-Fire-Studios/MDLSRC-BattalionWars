function Gambit_Part_1_MiniBattles(owner)
  local TankChainBattle = 0
  local BomberHillSpawnDone = 0
  local TankCrossing = 0
  Despawn(Ground_Vehicle.ILheavytank02)
  Despawn(Ground_Vehicle.ILheavytank03)
  Despawn(Troop.SEchain01)
  Despawn(Troop.SEchain02)
  Despawn(Troop.SEchain03)
  Despawn(Troop.SEchain04)
  Despawn(Troop.SEchain05)
  Despawn(Ground_Vehicle.ILheavytank04, true)
  Despawn(Troop.SEhose01)
  Despawn(Troop.SEhose02)
  Despawn(Troop.SEhose03)
  while true do
    if TankCrossing == 0 and IsInArea(GetPlayerUnit(), Map_Zone.MoreBattles) then
      TankCrossing = 1
    end
    if TankChainBattle == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.TankChainBattle) then
        TankChainBattle = 1
      end
      EndFrame()
    end
    if Hill01Done == 1 and BomberHillSpawnDone == 0 then
      BomberHillSpawnDone = 1
    end
    EndFrame()
  end
end

function C3M1_Repair_Battlestation(owner)
  local Repair1Done = 0
  local Repair2Done = 0
  local Repair3Done = 0
  while true do
    if Repair1Done == 0 and IsInArea(Ground_Vehicle.Xbattlestation0001, -38, 395, 15) and GetHealthPercent(Ground_Vehicle.Xbattlestation0001) < 100 then
      Repair1Done = 1
      DebugOut("Battlestation Repaired")
      SetHealthPercent(Ground_Vehicle.Xbattlestation0001, 100)
      Despawn(Pickup.BattlestationPickup0001)
    end
    if Repair3Done == 0 and IsInArea(Ground_Vehicle.Xbattlestation0001, 350, -265, 30) and GetHealthPercent(Ground_Vehicle.Xbattlestation0001) < 100 then
      Repair3Done = 1
      DebugOut("Battlestation Repaired - Final")
      SetHealthPercent(Ground_Vehicle.Xbattlestation0001, 100)
      Despawn(Pickup.BattlestationPickup0003)
      Despawn(Pickup.BattlestationPickup0004)
      Despawn(Pickup.BattlestationPickup0005)
    end
    EndFrame()
  end
  return
end

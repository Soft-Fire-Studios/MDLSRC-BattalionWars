function C3M1_Solar03(owner)
  while true do
    if IsInArea(Ground_Vehicle.Xbattlestation0001, Map_Zone.Kamikaze) then
      DebugOut("Final Kamikaze Attack, go!")
      AttackTarget(Troop.Sgrunt0001, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0002, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0003, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0008, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0009, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0010, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0013, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0016, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0017, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0018, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0019, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0020, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0021, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0023, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0025, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0028, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0004, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0005, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0006, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Troop.Sgrunt0007, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Building.SmgNest0001, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      AttackTarget(Building.SmgNest0002, Ground_Vehicle.Xbattlestation0001, constant.ORDER_NORMAL)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end

function C3M1_XBattlestationDefence(owner)
  while true do
    if IsInRange(Air_Vehicle.WFgunship0002, Ground_Vehicle.Xbattlestation0001, 100) or IsInRange(Air_Vehicle.WFgunship0003, Ground_Vehicle.Xbattlestation0001, 100) then
      AttackTarget(Troop.Xhose0001, Air_Vehicle.WFgunship0002, constant.ORDER_FORCED)
      AttackTarget(Troop.Xhose0008, Air_Vehicle.WFgunship0002, constant.ORDER_FORCED)
      AttackTarget(Troop.Xhose0002, Air_Vehicle.WFgunship0003, constant.ORDER_FORCED)
      AttackTarget(Troop.Xhose0009, Air_Vehicle.WFgunship0003, constant.ORDER_FORCED)
      WaitFor(10)
    end
    EndFrame()
  end
  EndFrame()
  return
end

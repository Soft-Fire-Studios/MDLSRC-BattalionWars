function C3M1_XBaseDefence(owner)
  while true do
    if IsInRange(Air_Vehicle.WFgunship0001, Ground_Vehicle.Xbattlestation0002, 100) then
      AttackTarget(Troop.Xgrunt0007, Air_Vehicle.WFgunship0001, constant.ORDER_FORCED)
      WaitFor(10)
      AttackTarget(Building.XmgTower0002, Air_Vehicle.WFgunship0001, constant.ORDER_NORMAL)
      AttackTarget(Building.XmgTower0001, Air_Vehicle.WFgunship0001, constant.ORDER_NORMAL)
    end
    EndFrame()
  end
  EndFrame()
  return
end

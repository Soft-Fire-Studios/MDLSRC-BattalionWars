function C3M1_XFightersDefence(owner)
  while true do
    if IsInRange(Air_Vehicle.WFgunship0001, Ground_Vehicle.Xbattlestation0001, 100) then
      DebugOut("Fighters defend second Battlestation from Gunship")
      AttackTarget(Air_Vehicle.Xfighter0001, Air_Vehicle.WFgunship0001, constant.ORDER_FORCED)
      AttackTarget(Air_Vehicle.Xfighter0002, Air_Vehicle.WFgunship0001, constant.ORDER_FORCED)
      AttackTarget(Air_Vehicle.Xfighter0003, Air_Vehicle.WFgunship0001, constant.ORDER_FORCED)
      AttackTarget(Air_Vehicle.Xfighter0004, Air_Vehicle.WFgunship0001, constant.ORDER_FORCED)
      WaitFor(10)
    end
    if IsDead(Ground_Vehicle.Xbattlestation0001) then
      DebugOut("Fighters defend first Battlestation")
      FollowUnit(Air_Vehicle.Xfighter0004, Ground_Vehicle.Xbattlestation0002, -1, 0, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.Xfighter0001, Ground_Vehicle.Xbattlestation0002, -1, 0, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.Xfighter0003, Ground_Vehicle.Xbattlestation0002, -1, 0, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.Xfighter0002, Ground_Vehicle.Xbattlestation0002, -1, 0, constant.ORDER_NORMAL)
      WaitFor(30)
    end
    EndFrame()
  end
  EndFrame()
  return
end

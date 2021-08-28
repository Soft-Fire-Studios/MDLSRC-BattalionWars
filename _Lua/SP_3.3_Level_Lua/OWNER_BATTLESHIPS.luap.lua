function OWNER_BATTLESHIPS(owner)
  repeat
    EndFrame()
    WaitFor(3)
  until BattleshipOrder1 == true
  repeat
    WaitFor(3)
    if IsInArea(owner, Map_Zone.battleships) == false then
      GoToArea(owner, 315, 220, 10, constant.ORDER_FORCED)
    end
    EndFrame()
  until IsDead(owner) or missionover == 1
end

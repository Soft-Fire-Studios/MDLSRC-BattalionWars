function Detonators(owner)
  local detonator1 = 0
  local detonator2 = 0
  local detonator3 = 0
  local detonator4 = 0
  local detonator5 = 0
  while true do
    if GetState(Capture_Point.MunitionsPoint1) == flag.TYPE_TUNDRAN and detonator1 == 0 then
      Spawn(Building.MunitionsDetonator1)
      GoToArea(Troop.MunitionsExpert1, 838, 529, 20, constant.ORDER_FORCED)
      detonator1 = 1
    end
    if GetState(Capture_Point.MunitionsPoint2) == flag.TYPE_TUNDRAN and detonator2 == 0 then
      Spawn(Building.MunitionsDetonator2)
      GoToArea(Troop.MunitionsExpert2, 838, 529, 20, constant.ORDER_FORCED)
      detonator2 = 2
    end
    if GetState(Capture_Point.MunitionsPoint3) == flag.TYPE_TUNDRAN and detonator3 == 0 then
      GoToArea(Troop.MunitionsExpert1, 838, 529, 20, constant.ORDER_FORCED)
      Spawn(Building.MunitionsDetonator3)
      detonator3 = 3
    end
    if GetState(Capture_Point.MunitionsPoint4) == flag.TYPE_TUNDRAN and detonator4 == 0 then
      GoToArea(Troop.MunitionsExpert1, 838, 529, 20, constant.ORDER_FORCED)
      Spawn(Building.MunitionsDetonator4)
      detonator4 = 4
    end
    if GetState(Capture_Point.MunitionsPoint5) == flag.TYPE_TUNDRAN and detonator5 == 0 then
      GoToArea(Troop.MunitionsExpert1, 838, 529, 20, constant.ORDER_FORCED)
      Spawn(Building.MunitionsDetonator5)
      detonator5 = 5
    end
    EndFrame()
  end
end

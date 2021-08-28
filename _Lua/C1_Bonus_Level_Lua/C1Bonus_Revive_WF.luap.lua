function C1Bonus_Revive_WF(owner)
  local RevivedWFCount = 0
  local RandomNumber = 0
  while true do
    local spawnWFID = FindDeadUnit(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT)
    if spawnWFID > 0 and RevivedWFCount < 10 then
      WaitFor(1)
      RevivedWFCount = RevivedWFCount + 1
      SpawnUnit(flag.TYPE_WFRONTIER, flag.GTYPE_GRUNT, -50, -585, 0, 20)
      WaitFor(2)
      RandomNumber = GetRandom(1, 100)
      DebugOut("Random Number = ", RandomNumber)
      if RandomNumber < 25 then
        GoToArea(spawnWFID, -20, -445, 5, 0, constant.ORDER_NORMAL)
      end
      if RandomNumber >= 25 and RandomNumber < 50 then
        GoToArea(spawnWFID, 25, -445, 5, 0, constant.ORDER_NORMAL)
      end
      if RandomNumber >= 50 and RandomNumber < 75 then
        GoToArea(spawnWFID, -20, -405, 5, 0, constant.ORDER_NORMAL)
      end
      if RandomNumber >= 75 then
        GoToArea(spawnWFID, 45, -410, 5, 0, constant.ORDER_NORMAL)
      end
      WaitFor(2)
      DebugOut("Number of Revived WF Grunts = ", RevivedWFCount)
      DebugOut("Dead WF Grunts ID = ", spawnWFID)
      WaitFor(1)
      spawnWFID = 0
      DebugOut("Dead WF Grunts ID = ", spawnWFID)
    end
    EndFrame()
  end
  EndFrame()
  return
end

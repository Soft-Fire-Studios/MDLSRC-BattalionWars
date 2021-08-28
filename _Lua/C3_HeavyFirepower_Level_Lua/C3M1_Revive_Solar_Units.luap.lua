function C3M1_Revive_Solar_Units(owner)
  local RevivedSolarCount = 0
  local previousSolarID = 0
  while true do
    local spawnSolarID = FindDeadUnit(flag.TYPE_SOLAR, flag.GTYPE_GRUNT)
    if previousSolarID ~= spawnSolarID and spawnSolarID > 0 and RevivedSolarCount < 8 then
      DebugOut("Previous Solar Grunts ID = ", previousSolarID)
      previousSolarID = spawnSolarID
      RevivedSolarCount = RevivedSolarCount + 1
      Teleport(spawnSolarID, 348, -230, 0, 30)
      DebugOut("Dead Solar Grunts ID = ", spawnSolarID)
      DebugOut("Number of Revived Solar Grunts = ", RevivedSolarCount)
      WaitFor(1)
      ReviveDeadUnit(spawnSolarID)
      WaitFor(1)
      spawnSolarID = 0
    end
    if RevivedSolarCount >= 8 then
      DebugOut("Stopped reviving Solar Grunts = ")
      break
    end
    WaitFor(2)
    EndFrame()
  end
  EndFrame()
  return
end

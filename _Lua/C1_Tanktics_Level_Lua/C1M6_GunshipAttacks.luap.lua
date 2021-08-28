function C1M6_GunshipAttacks(owner)
  local randomNumber = 0
  randomNumber = GetRandom(4, 8)
  DebugOut("Gunship will attack after ", randomNumber, " tanks have been destroyed")
  while true do
    if 4 <= C1M1_TanksDestroyed and randomNumber < 5 then
      DebugOut("Gunship is hunting player...")
      FollowUnit(Air_Vehicle.Tgunship0004, GetPlayerUnit(), 30, 0, constant.ORDER_NORMAL)
      WaitFor(30)
    end
    if C1M1_TanksDestroyed >= 5 and randomNumber >= 5 and randomNumber < 6 then
      DebugOut("Gunship is hunting player...")
      FollowUnit(Air_Vehicle.Tgunship0004, GetPlayerUnit(), 30, 0, constant.ORDER_NORMAL)
      WaitFor(30)
    end
    if C1M1_TanksDestroyed >= 6 and randomNumber >= 6 and randomNumber < 7 then
      DebugOut("Gunship is hunting player...")
      FollowUnit(Air_Vehicle.Tgunship0004, GetPlayerUnit(), 30, 0, constant.ORDER_NORMAL)
      WaitFor(30)
    end
    if C1M1_TanksDestroyed >= 7 and randomNumber >= 7 then
      DebugOut("Gunship is hunting player...")
      FollowUnit(Air_Vehicle.Tgunship0004, GetPlayerUnit(), 30, 0, constant.ORDER_NORMAL)
      WaitFor(30)
    end
    EndFrame()
  end
  EndFrame()
  return
end

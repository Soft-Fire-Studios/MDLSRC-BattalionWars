function C1M6_Tank_Count(owner)
  AddToGroup(Unit_Group.GroupTundranHeavyTanks, Ground_Vehicle.TheavyTank0001)
  AddToGroup(Unit_Group.GroupTundranHeavyTanks, Ground_Vehicle.TheavyTank0002)
  AddToGroup(Unit_Group.GroupTundranHeavyTanks, Ground_Vehicle.TheavyTank0003)
  AddToGroup(Unit_Group.GroupTundranHeavyTanks, Ground_Vehicle.TheavyTank0004)
  AddToGroup(Unit_Group.GroupTundranHeavyTanks, Ground_Vehicle.TlightTank0001)
  AddToGroup(Unit_Group.GroupTundranHeavyTanks, Ground_Vehicle.TlightTank0003)
  AddToGroup(Unit_Group.GroupTundranHeavyTanks, Ground_Vehicle.TlightTank0004)
  AddToGroup(Unit_Group.GroupTundranHeavyTanks, Ground_Vehicle.TlightTank0005)
  local TheavyTank0001Done = 0
  local TheavyTank0002Done = 0
  local TheavyTank0003Done = 0
  local TheavyTank0004Done = 0
  local TlightTank0001Done = 0
  local TlightTank0002Done = 0
  local TlightTank0003Done = 0
  local TlightTank0004Done = 0
  local TlightTank0005Done = 0
  local TlightTank0006Done = 0
  while true do
    if IsDead(Ground_Vehicle.TheavyTank0001) and TheavyTank0001Done == 0 then
      TheavyTank0001Done = 1
      C1M1_TanksDestroyed = C1M1_TanksDestroyed + 1
      DebugOut("Number of Tundran Tanks Destroyed = ", C1M1_TanksDestroyed)
    end
    if IsDead(Ground_Vehicle.TheavyTank0002) and TheavyTank0002Done == 0 then
      TheavyTank0002Done = 1
      C1M1_TanksDestroyed = C1M1_TanksDestroyed + 1
      DebugOut("Number of Tundran Tanks Destroyed = ", C1M1_TanksDestroyed)
    end
    if IsDead(Ground_Vehicle.TheavyTank0003) and TheavyTank0003Done == 0 then
      TheavyTank0003Done = 1
      C1M1_TanksDestroyed = C1M1_TanksDestroyed + 1
      DebugOut("Number of Tundran Tanks Destroyed = ", C1M1_TanksDestroyed)
    end
    if IsDead(Ground_Vehicle.TheavyTank0004) and TheavyTank0004Done == 0 then
      TheavyTank0004Done = 1
      C1M1_TanksDestroyed = C1M1_TanksDestroyed + 1
      DebugOut("Number of Tundran Tanks Destroyed = ", C1M1_TanksDestroyed)
    end
    if IsDead(Ground_Vehicle.TlightTank0001) and TlightTank0001Done == 0 then
      TlightTank0001Done = 1
      C1M1_TanksDestroyed = C1M1_TanksDestroyed + 1
      DebugOut("Number of Tundran Tanks Destroyed = ", C1M1_TanksDestroyed)
    end
    if IsDead(Ground_Vehicle.TlightTank0003) and TlightTank0003Done == 0 then
      TlightTank0003Done = 1
      C1M1_TanksDestroyed = C1M1_TanksDestroyed + 1
      DebugOut("Number of Tundran Tanks Destroyed = ", C1M1_TanksDestroyed)
    end
    if IsDead(Ground_Vehicle.TlightTank0004) and TlightTank0004Done == 0 then
      TlightTank0004Done = 1
      C1M1_TanksDestroyed = C1M1_TanksDestroyed + 1
      DebugOut("Number of Tundran Tanks Destroyed = ", C1M1_TanksDestroyed)
    end
    if IsDead(Ground_Vehicle.TlightTank0005) and TlightTank0005Done == 0 then
      TlightTank0005Done = 1
      C1M1_TanksDestroyed = C1M1_TanksDestroyed + 1
      DebugOut("Number of Tundran Tanks Destroyed = ", C1M1_TanksDestroyed)
    end
    EndFrame()
  end
  EndFrame()
  return
end

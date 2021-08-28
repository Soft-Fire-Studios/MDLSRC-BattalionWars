function LG_HTK03(owner)
  local target = {
    tank = Ground_Vehicle.LG_HTK03,
    crew01 = Troop.LG_HTK03_CRW01,
    crew02 = Troop.LG_HTK03_CRW02,
    crew03 = Troop.LG_HTK03_CRW03
  }
  DoLegionTankLoopOn(target)
end

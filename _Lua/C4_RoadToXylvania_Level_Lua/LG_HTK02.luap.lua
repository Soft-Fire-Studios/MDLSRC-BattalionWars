function LG_HTK02(owner)
  local target = {
    tank = Ground_Vehicle.LG_HTK02,
    crew01 = Troop.LG_HTK02_CRW01,
    crew02 = Troop.LG_HTK02_CRW02,
    crew03 = Troop.LG_HTK02_CRW03
  }
  DoLegionTankLoopOn(target)
end

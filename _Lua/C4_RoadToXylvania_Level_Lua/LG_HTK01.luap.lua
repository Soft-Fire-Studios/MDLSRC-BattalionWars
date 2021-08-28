function LG_HTK01(owner)
  local target = {
    tank = Ground_Vehicle.LG_HTK01,
    crew01 = Troop.LG_HTK01_CRW01,
    crew02 = Troop.LG_HTK01_CRW02,
    crew03 = Troop.LG_HTK01_CRW03
  }
  DoLegionTankLoopOn(target)
end

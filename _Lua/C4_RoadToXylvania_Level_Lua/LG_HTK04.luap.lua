function LG_HTK04(owner)
  local target = {
    tank = Ground_Vehicle.LG_HTK04,
    crew01 = Troop.LG_HTK04_CRW01,
    crew02 = Troop.LG_HTK04_CRW02,
    crew03 = Troop.LG_HTK04_CRW03
  }
  DoLegionTankLoopOn(target)
end

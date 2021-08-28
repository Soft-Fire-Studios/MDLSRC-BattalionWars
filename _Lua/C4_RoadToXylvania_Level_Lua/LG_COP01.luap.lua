function LG_COP01(owner)
  local target = {
    copter = Air_Vehicle.LG_COP01,
    crew01 = Troop.LG_COP01_CRW01,
    crew02 = Troop.LG_COP01_CRW02,
    crew03 = Troop.LG_COP01_CRW03
  }
  DoLegionCopterLoopOn(target)
end

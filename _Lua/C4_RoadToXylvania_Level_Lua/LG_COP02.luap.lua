function LG_COP02(owner)
  local target = {
    copter = Air_Vehicle.LG_COP02,
    crew01 = Troop.LG_COP02_CRW01,
    crew02 = Troop.LG_COP02_CRW02,
    crew03 = Troop.LG_COP02_CRW03
  }
  DoLegionCopterLoopOn(target)
end

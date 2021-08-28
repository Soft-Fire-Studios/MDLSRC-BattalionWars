function LG_COP04(owner)
  local target = {
    copter = Air_Vehicle.LG_COP04,
    crew01 = Troop.LG_COP04_CRW01,
    crew02 = Troop.LG_COP04_CRW02,
    crew03 = Troop.LG_COP04_CRW03
  }
  DoLegionCopterLoopOn(target)
end

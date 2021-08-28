function LG_COP03(owner)
  local target = {
    copter = Air_Vehicle.LG_COP03,
    crew01 = Troop.LG_COP03_CRW01,
    crew02 = Troop.LG_COP03_CRW02,
    crew03 = Troop.LG_COP03_CRW03
  }
  DoLegionCopterLoopOn(target)
end

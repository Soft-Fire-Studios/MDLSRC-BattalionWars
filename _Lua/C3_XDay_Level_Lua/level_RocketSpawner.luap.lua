function level_RocketSpawner(owner)
  while true do
    local unit = 0
    unit = FindDeadUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR)
    if unit > 0 then
      SpawnUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, -323, -142, 0, 5)
      StopAndGuard(unit)
    else
      WaitFor(5)
      while true do
        local unit = 0
        unit = FindDeadUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR)
        if unit > 0 then
          SpawnUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, -109, -44, 0, 5)
          StopAndGuard(unit)
        else
          WaitFor(5)
          while true do
            local unit = 0
            unit = FindDeadUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR)
            if unit > 0 then
              SpawnUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, -312, -152, 0, 5)
              StopAndGuard(unit)
            else
              WaitFor(5)
              while true do
                local unit = 0
                unit = FindDeadUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR)
                if unit > 0 then
                  SpawnUnit(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, -95, -53, 0, 5)
                  StopAndGuard(unit)
                  break
                end
                WaitFor(5)
              end
            end
          end
        end
      end
    end
  end
end

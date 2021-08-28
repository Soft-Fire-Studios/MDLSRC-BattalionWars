function Reflection(owner)
  local Reflection01 = 0
  local Reflection02 = 0
  while missionend == 0 do
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.ReflectionOn01) and Reflection01 == 0 then
      DebugOut("Reflection On")
      Reflection01 = 1
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.ReflectionOn01) == false and Reflection01 == 1 then
      DebugOut("Reflection Off")
      Reflection01 = 0
    end
    EndFrame()
  end
end

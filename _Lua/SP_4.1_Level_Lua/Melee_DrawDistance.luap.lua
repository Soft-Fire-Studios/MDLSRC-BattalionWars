function Melee_DrawDistance(owner)
  local DrawDistance = 0
  while true do
    if (IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.DrawDistance01) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.DrawDistance02)) and DrawDistance == 0 then
      SetViewDistanceAdjustment(250, 10)
      DrawDistance = 1
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.DrawDistance01) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.DrawDistance02) == false and DrawDistance == 1 then
      SetViewDistanceAdjustment(-1, 10)
      DrawDistance = 0
    end
    EndFrame()
  end
end

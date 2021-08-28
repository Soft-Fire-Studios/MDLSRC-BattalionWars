function WaterRendering(owner)
  local player1wateron = 0
  local player2wateron = 0
  SetReflectionRenderObjects(false)
  while true do
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.WaterRendering) and player1wateron == 0 then
        SetReflectionRenderObjects(true)
        player1wateron = 1
        DebugOut("Player 1 in area, turning ON reflections")
      elseif IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.WaterRendering) == false and player1wateron == 1 then
        SetReflectionRenderObjects(false)
        player1wateron = 0
        DebugOut("Player 1 not in area, turning OFF reflections")
      end
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      if IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.WaterRendering) and player2wateron == 0 then
        SetReflectionRenderObjects(true)
        player2wateron = 1
        DebugOut("Player 2 in area, turning ON reflections")
      elseif IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.WaterRendering) == false and player2wateron == 1 then
        SetReflectionRenderObjects(false)
        player2wateron = 0
        DebugOut("Player 2 not in area, turning OFF reflections")
      end
    end
    EndFrame()
  end
end

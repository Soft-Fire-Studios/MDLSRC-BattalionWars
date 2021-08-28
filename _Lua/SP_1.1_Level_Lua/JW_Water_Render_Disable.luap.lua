function JW_Water_Render_Disable(owner)
  local WaterOn = 0
  while true do
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.WaterRenderControl01) and WaterOn == 1 then
      SetWaterRenderEnable(false)
      DebugOut("Water OFF")
      WaterOn = 0
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.WaterRenderControl01) == false and WaterOn == 0 then
      SetWaterRenderEnable(true)
      DebugOut("Water ON")
      WaterOn = 1
    end
    EndFrame()
  end
end

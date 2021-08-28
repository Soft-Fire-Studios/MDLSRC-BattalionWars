function Gambit_Part_1_Controller(owner)
  local RadarTimer = 0
  local RadarOn = 0
  SetHudState(constant.PLAYER_ONE, constant.HUD_COMMANDBAR, constant.HUD_ITEM_OFF)
  SetHudState(constant.PLAYER_ONE, constant.HUD_COMMANDSTACK, constant.HUD_ITEM_OFF)
  SetFunctionIndicatorState(false)
  repeat
    EndFrame()
  until cutsceneStart == 1
  RadarTimer = GetTime() + 11
  while MissionOver == 0 do
    if RadarOn == 0 and RadarTimer < GetTime() then
      RadarOn = 1
    end
    EndFrame()
  end
end

function Cutscene_Hide_HUD(owner)
  while true do
    if HideHUD == 1 then
      repeat
        SetHudState(constant.PLAYER_ONE, constant.HUD_COMMANDBAR, constant.HUD_ITEM_OFF)
        SetHudState(constant.PLAYER_ONE, constant.HUD_PLAYERICON, constant.HUD_ITEM_OFF)
        EndFrame()
      until HideHUD == 0
    end
    EndFrame()
  end
end

function Bravo(owner)
  repeat
    EndFrame()
  until NumItemsInArea(Map_Zone.Bravo_Area, flag.TYPE_WFRONTIER) > 3 and NumItemsInArea(Map_Zone.Bravo, flag.TYPE_WFRONTIER) >= 1
  DebugOut("What about Bravo")
  PhoneMessage(71, 0, 0, 7, SpriteID.CO_WF_Herman_Sad)
  WaitFor(15)
  repeat
    EndFrame()
  until NumItemsInArea(Map_Zone.Bravo_Area, flag.TYPE_WFRONTIER) > 3 and 1 <= NumItemsInArea(Map_Zone.PressX, flag.TYPE_WFRONTIER)
  DebugOut("Player is still near bravo")
  PhoneMessage(3, 0, 0, 7, SpriteID.CO_WF_Herman_Happy)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_FLASH, 7, 540, 380, 0.6)
  WaitFor(5)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  EndFrame()
end

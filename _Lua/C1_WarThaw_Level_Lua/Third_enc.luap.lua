function Third_enc(owner)
  third = owner
  repeat
    EndFrame()
  until NumItemsInArea(Map_Zone.Trigger6, flag.TYPE_WFRONTIER) > 0
  Kill(sec)
  PhoneMessage(8, 0, 0, 7, SpriteID.CO_WF_Herman_Happy)
  PhoneMessage(9, 0, 0, 7, SpriteID.CO_WF_Herman_Happy)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_DPAD, constant.HUD_ITEM_FLASH, 6, 540, 380, 0.6)
  WaitFor(6)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  EndFrame()
end

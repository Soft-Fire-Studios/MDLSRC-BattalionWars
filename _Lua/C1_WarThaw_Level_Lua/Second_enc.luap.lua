function Second_enc(owner)
  sec = owner
  repeat
    EndFrame()
  until NumItemsInArea(Map_Zone.Trigger2, flag.TYPE_WFRONTIER) > 0
  Kill(first)
  EndFrame()
  GoToArea(Troop.T2_Rifleman, -691, -810, 3, nil, constant.ORDER_NORMAL)
  GoToArea(Troop.T3_Rifleman, -691, -810, 3, nil, constant.ORDER_NORMAL)
  WaitFor(5)
  PhoneMessage(15, 0, 0, 5, SpriteID.CO_WF_Herman_Happy)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_ON, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_FLASH, 7, 540, 380, 0.6)
  WaitFor(7)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  repeat
    EndFrame()
  until IsDead(Troop.T2_Rifleman) and IsDead(Troop.T3_Rifleman)
  DebugOut("The real one ")
  ClearMessageQueue()
  PhoneMessage(27, 0, 0, 4, SpriteID.CO_WF_Herman_Happy)
end

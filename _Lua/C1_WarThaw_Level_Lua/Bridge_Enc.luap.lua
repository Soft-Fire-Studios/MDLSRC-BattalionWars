function Bridge_Enc(owner)
  repeat
    EndFrame()
  until NumItemsInArea(Map_Zone.Trigger13, flag.TYPE_WFRONTIER) > 0
  PhoneMessage(34, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_STARTPAUSE, constant.HUD_ITEM_FLASH, 6, 540, 380, 0.6)
  WaitFor(5)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_STARTPAUSE, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  SetObjectiveData(Objective.MGNest2, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Pows, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective_Marker.Pows, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  repeat
    EndFrame()
  until 0 < NumItemsInArea(Map_Zone.PauseMessages, flag.TYPE_WFRONTIER)
  EndFrame()
  repeat
    EndFrame()
  until 0 < NumItemsInArea(Map_Zone.Trigger10, flag.TYPE_WFRONTIER)
  PhoneMessage(13, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
  EndFrame()
end

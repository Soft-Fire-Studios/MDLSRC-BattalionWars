function Bomber_Tutorial(owner)
  local loop = 0
  while loop == 0 do
    if GetPlayerUnit() == Air_Vehicle.Bomber then
      loop = 1
    else
      if GetPlayerUnit() == Air_Vehicle.Bomber2 then
        loop = 1
      else
      end
    end
    EndFrame()
  end
  WaitFor(2)
  ClearMessageQueue()
  SetObjectiveData(Objective_Marker.bomber, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  PhoneMessage(15, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
  WaitFor(8)
  PhoneMessage(60, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON, 578, 380, 0.3)
  SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERR, constant.HUD_ITEM_FLASH, 6, 578, 400, 0.3)
  SetHudState(constant.HUD_CONTROLIMAGE_STICK, constant.HUD_ITEM_FLASH, 6, 578, 400, 0.3)
  WaitFor(8)
  SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERR, constant.HUD_ITEM_OFF, 578, 400, 0.3)
  SetHudState(constant.HUD_CONTROLIMAGE_STICK, constant.HUD_ITEM_OFF, 578, 6, 400, 0.3)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 578, 400, 0.3)
  WaitFor(1)
  PhoneMessage(16, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON, 578, 400, 0.3)
  SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 6, 578, 400, 0.3)
  WaitFor(8)
  SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_OFF, 578, 400, 0.3)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 578, 400, 0.3)
end

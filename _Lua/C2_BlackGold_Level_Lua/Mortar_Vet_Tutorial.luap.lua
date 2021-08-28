function Mortar_Vet_Tutorial(owner)
  local loop = 0
  while loop == 0 do
    if GetPlayerUnit() == Troop.Entity0128 then
      loop = 1
    elseif GetPlayerUnit() == Troop.Entity0129 then
      loop = 1
    else
      if GetPlayerUnit() == Troop.Entity0130 then
        loop = 1
      else
      end
    end
    EndFrame()
  end
  ClearMessageQueue()
  PhoneMessage(18, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
  PhoneMessage(19, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
  WaitFor(8)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 6, 540, 380, 0.6)
  WaitFor(7)
  SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
end

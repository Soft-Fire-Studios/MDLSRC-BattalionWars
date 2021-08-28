function C1M1_Ammo_Dump(owner)
  while true do
    if GetTargetedObject() == Troop.TammoDumpGuard0001 or GetTargetedObject() == Troop.TammoDumpGuard0002 then
      break
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.TundranSoldiers) then
      break
    end
    EndFrame()
  end
  ClearMessageQueue()
  PhoneMessage(188, constant.ID_NONE, 0, 10, SpriteID.CO_WF_Betty_Happy)
  PhoneMessage(60, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
  DebugOut("Show Small Controller")
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_Y, constant.HUD_ITEM_FLASH, 10, 540, 380, 0.6)
  while true do
    if IsDead(Building.AmmoTent0001) then
      break
    end
    if IsDead(Destroyable_Object.WireA0001) or IsDead(Destroyable_Object.WireA0002) or IsDead(Destroyable_Object.WireA0003) or IsDead(Destroyable_Object.WireA0004) or IsDead(Destroyable_Object.WireA0005) or IsDead(Destroyable_Object.WireA0006) or IsDead(Destroyable_Object.WireA0007) or IsDead(Destroyable_Object.WireA0008) then
      break
    end
    if GetTargetedObject() == Building.AmmoTent0001 then
      SetHudState(constant.HUD_CONTROLIMAGE_Y, constant.HUD_ITEM_FLASH, 1, 540, 380, 0.6)
      WaitFor(1)
    end
    EndFrame()
  end
  EndFrame()
  return
end

function C1M1_Call_Units(owner)
  local Timer = GetTime()
  local PlayMessage = 0
  while true do
    if C1M1_POWs_Freed >= 1 then
      break
    end
    if C1M1_Global_Variable == 9 then
      if GetPlayerUnit() ~= Troop.WFgruntStart and not IsUnderPlayerCommand(Troop.WFgruntStart) and not IsDead(Troop.WFgruntStart) and IsActive(Troop.WFgruntStart) then
        PhoneMessage(87, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
        SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_FLASH, 5, 540, 380, 0.6)
        break
      end
      if GetPlayerUnit() ~= Troop.WFgrunt0001 and not IsUnderPlayerCommand(Troop.WFgrunt0001) and not IsDead(Troop.WFgrunt0001) and IsActive(Troop.WFgrunt0001) then
        PhoneMessage(87, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
        SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_FLASH, 5, 540, 380, 0.6)
        break
      end
      if GetPlayerUnit() ~= Troop.WFgrunt0002 and not IsUnderPlayerCommand(Troop.WFgrunt0002) and not IsDead(Troop.WFgrunt0002) and IsActive(Troop.WFgrunt0002) then
        PhoneMessage(87, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
        SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_FLASH, 5, 540, 380, 0.6)
        break
      end
      if GetPlayerUnit() ~= Troop.WFgrunt0003 and not IsUnderPlayerCommand(Troop.WFgrunt0003) and not IsDead(Troop.WFgrunt0003) and IsActive(Troop.WFgrunt0003) then
        PhoneMessage(87, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
        SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_FLASH, 5, 540, 380, 0.6)
        break
      end
      if GetPlayerUnit() ~= Troop.WFgrunt0004 and not IsUnderPlayerCommand(Troop.WFgrunt0004) and not IsDead(Troop.WFgrunt0004) and IsActive(Troop.WFgrunt0004) then
        PhoneMessage(87, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
        SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_FLASH, 5, 540, 380, 0.6)
        break
      end
    end
    EndFrame()
  end
  Timer = GetTime()
  while true do
    if C1M1_POWs_Freed >= 1 then
      PlayMessage = 1
      SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_OFF, 540, 380, 0.6)
      break
    end
    if GetTime() > Timer + 20 then
      WaitFor(3)
      if C1M1_POWs_Freed >= 1 then
        PlayMessage = 1
        SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        break
      end
      if GetPlayerUnit() ~= Troop.WFgruntStart and not IsUnderPlayerCommand(Troop.WFgruntStart) and not IsDead(Troop.WFgruntStart) and IsActive(Troop.WFgruntStart) then
        PlayMessage = 0
      end
      if GetPlayerUnit() ~= Troop.WFgrunt0001 and not IsUnderPlayerCommand(Troop.WFgrunt0001) and not IsDead(Troop.WFgrunt0001) and IsActive(Troop.WFgrunt0001) then
        PlayMessage = 0
      end
      if GetPlayerUnit() ~= Troop.WFgrunt0002 and not IsUnderPlayerCommand(Troop.WFgrunt0002) and not IsDead(Troop.WFgrunt0002) and IsActive(Troop.WFgrunt0002) then
        PlayMessage = 0
      end
      if GetPlayerUnit() ~= Troop.WFgrunt0003 and not IsUnderPlayerCommand(Troop.WFgrunt0003) and not IsDead(Troop.WFgrunt0003) and IsActive(Troop.WFgrunt0003) then
        PlayMessage = 0
      end
      if GetPlayerUnit() ~= Troop.WFgrunt0004 and not IsUnderPlayerCommand(Troop.WFgrunt0004) and not IsDead(Troop.WFgrunt0004) and IsActive(Troop.WFgrunt0004) then
        PlayMessage = 0
      end
      if PlayMessage == 0 then
        PlayMessage = 1
        PhoneMessage(87, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
        SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_FLASH, 5, 540, 380, 0.6)
        Timer = GetTime()
      end
    end
    EndFrame()
  end
  EndFrame()
  return
end

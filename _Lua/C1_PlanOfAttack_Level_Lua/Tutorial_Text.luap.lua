function Tutorial_Text(owner)
  local loop = 0
  local flame = 0
  local global = 0
  local recon = 0
  local tank = 1
  local bazooka = 0
  local near = 0
  local cflag = 0
  local recon = 0
  while tut == 0 do
    EndFrame()
  end
  WaitFor(5)
  DebugOut("start tut text checks")
  while loop == 0 do
    while levelend == 1 do
      EndFrame()
    end
    if recon == 0 and GetPlayerUnit() == Ground_Vehicle.recon then
      PhoneMessage(8, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
      recon = 1
    end
    if flame == 0 then
      if GetPlayerUnit() == Troop.POW1 then
        PhoneMessage(14, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
        flame = 1
      elseif GetPlayerUnit() == Troop.POW2 then
        PhoneMessage(14, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
        flame = 1
      elseif GetPlayerUnit() == Troop.POW3 then
        PhoneMessage(14, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
        flame = 1
      elseif GetPlayerUnit() == Troop.POW4 then
        PhoneMessage(14, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
        flame = 1
      elseif GetPlayerUnit() == Troop.POW5 then
        PhoneMessage(14, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
        flame = 1
      end
    else
    end
    EndFrame()
    if global == 0 and IsInArea(GetPlayerUnit(), Map_Zone.global) then
      while tut == 1 do
        EndFrame()
      end
      ClearMessageQueue()
      PhoneMessage(11, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
      SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_DPAD, constant.HUD_ITEM_FLASH, 6, 540, 380, 0.6)
      WaitFor(6)
      SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_DPAD, constant.HUD_ITEM_OFF, 540, 380, 0.6)
      global = 1
    else
    end
    EndFrame()
    if bazooka == 0 then
      if GetPlayerUnit() == Troop.wfbaz1 then
        ClearMessageQueue()
        PhoneMessage(26, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
        bazooka = 1
      elseif GetPlayerUnit() == Troop.wfbaz2 then
        ClearMessageQueue()
        PhoneMessage(26, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
        bazooka = 1
      elseif GetPlayerUnit() == Troop.wfbaz3 then
        ClearMessageQueue()
        PhoneMessage(26, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
        bazooka = 1
      end
    else
    end
    EndFrame()
    if near == 0 and IsInArea(GetPlayerUnit(), 350, 210, 100) then
      ClearMessageQueue()
      PhoneMessage(40, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Austin_Happy)
      near = 1
    end
    EndFrame()
    if flame + tank + bazooka + near + cflag + global + recon == 6 then
      loop = 1
    end
    EndFrame()
  end
end

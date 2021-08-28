function C1M1_Recon(owner)
  while true do
    if GetTargetedObject() == Ground_Vehicle.WFrecon0001 and ControllerImageOn == 1 then
      SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_FLASH, 1, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_FLASH, 1, 540, 380, 0.6)
      WaitFor(1)
    end
    EndFrame()
  end
  EndFrame()
  return
end

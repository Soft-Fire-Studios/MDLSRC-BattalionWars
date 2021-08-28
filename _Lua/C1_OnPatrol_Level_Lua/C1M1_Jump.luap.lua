function C1M1_Jump(owner)
  while true do
    if C1M1_Global_Variable == 1 then
      break
    end
    EndFrame()
  end
  WaitFor(30)
  while true do
    if ControllerImageOn == 1 then
      return
    end
    if C1M1_JumpDone == 0 then
      C1M1_JumpDone = 1
      ClearMessageQueue()
      PhoneMessage(6, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_FLASH, 4, 540, 380, 0.6)
      break
    end
    if 1 <= C1M1_JumpDone then
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end

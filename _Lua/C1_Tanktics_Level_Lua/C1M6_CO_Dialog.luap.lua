function C1M6_CO_Dialog(owner)
  local COTundranBridgeDone = 0
  local COWFBazookaWarningDone = 0
  local GunshipWarningDone = 0
  while true do
    if COTundranBridgeDone == 1 and COWFBazookaWarningDone == 1 then
      break
    end
    if COTundranBridgeDone == 0 then
      if 1 <= NumItemsInArea(-315, 125, 60, flag.TYPE_WFRONTIER) then
        PhoneMessage(6, constant.ID_NONE, 2, 8, SpriteID.CO_T_Nova_Happy)
        COTundranBridgeDone = 1
      elseif 1 <= NumItemsInArea(-190, 315, 60, flag.TYPE_WFRONTIER) then
        PhoneMessage(6, constant.ID_NONE, 2, 8, SpriteID.CO_T_Nova_Happy)
        COTundranBridgeDone = 1
      end
    end
    if IsInRange(Air_Vehicle.Tgunship0001, GetPlayerUnit(), 40) and GunshipWarningDone == 0 then
      PhoneMessage(49, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(10, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Herman_Happy)
      GunshipWarningDone = 1
    end
    if IsInRange(Air_Vehicle.Tgunship0002, GetPlayerUnit(), 40) and GunshipWarningDone == 0 then
      PhoneMessage(49, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(10, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Herman_Happy)
      GunshipWarningDone = 1
    end
    if IsInRange(Air_Vehicle.Tgunship0003, GetPlayerUnit(), 40) and GunshipWarningDone == 0 then
      PhoneMessage(49, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(10, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Herman_Happy)
      GunshipWarningDone = 1
    end
    if IsInRange(Air_Vehicle.Tgunship0004, GetPlayerUnit(), 40) and GunshipWarningDone == 0 then
      PhoneMessage(49, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(10, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Herman_Happy)
      GunshipWarningDone = 1
    end
    if IsInRange(Air_Vehicle.Tgunship0005, GetPlayerUnit(), 40) and GunshipWarningDone == 0 then
      PhoneMessage(49, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(10, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Herman_Happy)
      GunshipWarningDone = 1
    end
    if IsInRange(Air_Vehicle.Tgunship0006, GetPlayerUnit(), 40) and GunshipWarningDone == 0 then
      PhoneMessage(49, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(10, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Herman_Happy)
      GunshipWarningDone = 1
    end
    EndFrame()
  end
  return
end

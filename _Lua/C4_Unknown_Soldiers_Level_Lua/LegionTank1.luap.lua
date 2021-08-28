function LegionTank1(owner)
  local loop = 0
  WaitFor(1)
  while loop == 0 do
    if 0 < NumItemsInArea(Map_Zone.LegionTanks, flag.TYPE_WFRONTIER) then
      PhoneMessage(16, 0, 0, 4, SpriteID.CO_WF_Austin_Happy)
      PhoneMessage(24, 0, 0, 4, SpriteID.CO_WF_Austin_Sad)
      FollowUnit(Ground_Vehicle.LTank1, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
      loop = 1
      EndFrame()
    end
    EndFrame()
  end
end

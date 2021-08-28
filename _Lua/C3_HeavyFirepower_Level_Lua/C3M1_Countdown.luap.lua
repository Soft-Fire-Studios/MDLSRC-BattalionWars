function C3M1_Countdown(owner)
  local FirstMessageDone = 0
  local SecondMessageDone = 0
  local ThirdMessageDone = 0
  while true do
    if IsInArea(Ground_Vehicle.Xbattlestation0001, 100, 400, 30) and FirstMessageDone == 0 then
      FirstMessageDone = 1
      PhoneMessage(42, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Betty_Sad)
    end
    if IsInArea(Ground_Vehicle.Xbattlestation0001, 295, 323, 30) and SecondMessageDone == 0 then
      SecondMessageDone = 1
      PhoneMessage(25, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Betty_Sad)
    end
    if IsInArea(Ground_Vehicle.Xbattlestation0001, 408, 31, 30) and ThirdMessageDone == 0 then
      ThirdMessageDone = 1
      PhoneMessage(43, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
    end
    EndFrame()
  end
  EndFrame()
  return
end

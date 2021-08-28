function C4M5_Dialog(owner)
  local AntiAirWarningDone = 0
  local DefendMeMessageDone = 0
  local SecretStashMessageDone = 0
  local BringDownStratofortressMessageDone = 0
  local WallsMessageDone = 0
  while true do
    if DefendMeMessageDone == 0 and NumItemsInArea(10, -180, 100, flag.TYPE_WFRONTIER) >= 1 then
      DefendMeMessageDone = 1
    end
    EndFrame()
  end
  return
end

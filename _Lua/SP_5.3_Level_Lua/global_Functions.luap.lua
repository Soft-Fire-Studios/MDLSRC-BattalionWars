function global_Functions(owner)
  function POWCamp(POWName, POWNumber, fenceName, fenceNumber, FollowPlayer)
    local POWsCaptive = 0
    local CountPOWs = 0
    local CountFence = 0
    for CountPOWs = 1, POWNumber do
      SetActive(POWName[CountPOWs], constant.INACTIVE, constant.ADJUST_WEAPON)
    end
    while POWsCaptive == 0 do
      for CountFence = 1, fenceNumber do
        if IsDead(fenceName[CountFence]) then
          DebugOut("POWs freed!")
          POWsCaptive = 1
          break
        end
      end
      EndFrame()
    end
    for i = 1, fenceNumber do
      Kill(fenceName[i])
    end
    for CountPOWs = 1, POWNumber do
      SetActive(POWName[CountPOWs], constant.ACTIVE, constant.ADJUST_WEAPON)
    end
    if FollowPlayer == 1 then
      for CountPOWs = 1, POWNumber do
        FollowUnit(POWName[CountPOWs], GetPlayerUnit(), -1, constant.ORDER_NORMAL)
      end
    end
  end
end

function JW_Capture_Point_Messages(owner)
  local Message1Play = 0
  local Message2Play = 0
  script02 = owner
  repeat
    EndFrame()
  until AirbaseReady == 1
  repeat
    if CheckCapturePoint(Capture_Point.SE_Airbase_CP, constant.ARMY_ANGLO, 75, 2, constant.CAPTUREPOINTFLAG_LOWERING) and Message1Play == 0 then
      ClearMessageQueue()
      PhoneMessage(77, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      Message1Play = 1
    elseif CheckCapturePoint(Capture_Point.SE_Airbase_CP, constant.ARMY_ANGLO, 5, 2, constant.CAPTUREPOINTFLAG_RAISING) and Message2Play == 0 then
      ClearMessageQueue()
      PhoneMessage(78, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      Message2Play = 1
    elseif CheckCapturePoint(Capture_Point.SE_Airbase_CP, constant.ARMY_SOLAR, 10, 2, constant.CAPTUREPOINTFLAG_LOWERING) and Message2Play == 1 then
      Message2Play = 0
    elseif CheckCapturePoint(Capture_Point.SE_Airbase_CP, constant.ARMY_SOLAR, 90, 2, constant.CAPTUREPOINTFLAG_RAISING) and Message1Play == 1 then
      Message1Play = 0
    else
      EndFrame()
    end
  until missionend == 1
end

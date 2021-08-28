function CapturePointMessages(owner)
  local Message1Play = 0
  local Message2Play = 0
  local P2inArea = false
  repeat
    if CheckCapturePoint(Capture_Point.HQ, constant.ARMY_XYLVANIAN, 99, 2, constant.CAPTUREPOINTFLAG_LOWERING) and Message1Play == 0 then
      ClearMessageQueue()
      PhoneMessage(18, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
      PhoneMessage(20, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_TWO)
      Message1Play = 1
    end
    if CheckCapturePoint(Capture_Point.HQ, constant.ARMY_XYLVANIAN, 5, 2, constant.CAPTUREPOINTFLAG_RAISING) and Message2Play == 0 then
      ClearMessageQueue()
      PhoneMessage(19, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
      PhoneMessage(21, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_TWO)
      Message2Play = 1
    end
    if CheckCapturePoint(Capture_Point.HQ, constant.ARMY_XYLVANIAN, 10, 2, constant.CAPTUREPOINTFLAG_LOWERING) and Message2Play == 1 then
      Message2Play = 0
    end
    if CheckCapturePoint(Capture_Point.HQ, constant.ARMY_WF, 90, 2, constant.CAPTUREPOINTFLAG_RAISING) and Message1Play == 1 then
      Message1Play = 0
    end
    EndFrame()
    EndFrame()
  until missionend == 1
end

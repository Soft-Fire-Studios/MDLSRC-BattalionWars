function Hints_Flag(owner)
  local Message1Play = 0
  local Message2Play = 0
  WaitFor(10)
  FlagHintScript = owner
  repeat
    if CheckCapturePoint(Capture_Point.CP_Base, constant.ARMY_XYLVANIAN, 75, 2, constant.CAPTUREPOINTFLAG_LOWERING) and Message1Play == 0 then
      ClearMessageQueue()
      PhoneMessage(51, 0, 0, 5, SpriteID.CO_WF_Herman_Sad)
      Message1Play = 1
    end
    if CheckCapturePoint(Capture_Point.CP_Base, constant.ARMY_XYLVANIAN, 5, 2, constant.CAPTUREPOINTFLAG_RAISING) and Message2Play == 0 then
      ClearMessageQueue()
      PhoneMessage(52, 0, 0, 5, SpriteID.CO_WF_Herman_Sad)
      Message2Play = 1
    end
    if CheckCapturePoint(Capture_Point.CP_Base, constant.ARMY_WF, 10, 2, constant.CAPTUREPOINTFLAG_LOWERING) and Message2Play == 1 then
      Message2Play = 0
    end
    if CheckCapturePoint(Capture_Point.CP_Base, constant.ARMY_WF, 90, 2, constant.CAPTUREPOINTFLAG_RAISING) and Message1Play == 1 then
      Message1Play = 0
    end
    EndFrame()
  until LevelState == 6
end

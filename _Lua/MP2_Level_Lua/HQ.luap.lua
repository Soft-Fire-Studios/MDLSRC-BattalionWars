function HQ(owner)
  local Message1Play = 0
  local Message2Play = 0
  WaitFor(10)
  repeat
    if CheckCapturePoint(Capture_Point.THQ, constant.ARMY_XYLVANIAN, 99, 2, constant.CAPTUREPOINTFLAG_LOWERING) and Message1Play == 0 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(7, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      PhoneMessage(24, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
      Message1Play = 1
    end
    if CheckCapturePoint(Capture_Point.THQ, constant.ARMY_XYLVANIAN, 5, 2, constant.CAPTUREPOINTFLAG_RAISING) and Message2Play == 0 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(6, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      PhoneMessage(23, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
      Message2Play = 1
    end
    if CheckCapturePoint(Capture_Point.THQ, constant.ARMY_TUNDRAN, 10, 2, constant.CAPTUREPOINTFLAG_LOWERING) and Message2Play == 1 then
      Message2Play = 0
    end
    if CheckCapturePoint(Capture_Point.THQ, constant.ARMY_TUNDRAN, 90, 2, constant.CAPTUREPOINTFLAG_RAISING) and Message1Play == 1 then
      Message1Play = 0
    end
    EndFrame()
  until GetInstallationOwner(Strategic_Installation.HQ) == constant.ARMY_XYLVANIAN
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetObjectivesResult(true, true, true)
    ClearMessageQueue(constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetObjectivesResult(false, false, false)
    ClearMessageQueue(constant.PLAYER_TWO)
  end
  gamestate = 3
end

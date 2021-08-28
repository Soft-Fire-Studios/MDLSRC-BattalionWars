function MP3_Dialog(owner)
  local AAIsDownTimer = 0
  local P1MineWarningTimer = 0
  local P2MineWarningTimer = 0
  local HQWarningTimer = 0
  local Helipad02Done = 0
  local Helipad01Done = 0
  while missionend == 0 do
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckCapturePoint(Capture_Point.HQ, constant.ARMY_WF, 0, 100) and HQWarningTimer < GetTime() then
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(82, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
      HQWarningTimer = GetTime() + 15
    end
    EndFrame()
  end
end

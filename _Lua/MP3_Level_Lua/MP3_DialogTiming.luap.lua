function MP3_DialogTiming(owner)
  local BlimpsWarningDone = 0
  local FiveMinWarningDone = 0
  local ThreeMinWarningDone = 0
  local TwoMinWarningDone = 0
  local OneMinWarningDone = 0
  local ThirtySecWarningDone = 0
  repeat
    EndFrame()
  until cutsceneStart == 1
  WaitFor(1)
  while true do
    if missionend == 0 and BlimpsWarningDone == 0 and GetTimeLeft() <= 450 and not IsDead(Air_Vehicle.TBlimp01) and not IsDead(Air_Vehicle.TBlimp02) and not IsDead(Air_Vehicle.TBlimp03) and not IsDead(Air_Vehicle.TBlimp04) and not IsDead(Air_Vehicle.TBlimp05) and not IsDead(Air_Vehicle.TBlimp06) and not IsDead(Air_Vehicle.TBlimp07) then
      BlimpsWarningDone = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        PhoneMessage(17, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      end
    end
    if missionend == 0 and PauseTimerActive == 0 then
      if FiveMinWarningDone == 0 and GetTimeLeft() <= 300 then
        FiveMinWarningDone = 1
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          PhoneMessage(5, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        end
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          PhoneMessage(55, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
        end
      end
      if ThreeMinWarningDone == 0 and GetTimeLeft() <= 180 then
        ThreeMinWarningDone = 1
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          PhoneMessage(6, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        end
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          PhoneMessage(56, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
        end
      end
      if TwoMinWarningDone == 0 and GetTimeLeft() <= 120 then
        TwoMinWarningDone = 1
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          PhoneMessage(7, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        end
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          PhoneMessage(57, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
        end
      end
      if OneMinWarningDone == 0 and GetTimeLeft() <= 60 then
        OneMinWarningDone = 1
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          PhoneMessage(8, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        end
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          PhoneMessage(58, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
        end
      end
      if ThirtySecWarningDone == 0 and GetTimeLeft() <= 30 then
        ThirtySecWarningDone = 1
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          PhoneMessage(9, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        end
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          PhoneMessage(59, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
        end
        break
      end
    end
    EndFrame()
  end
end

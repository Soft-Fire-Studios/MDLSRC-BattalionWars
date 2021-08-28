function Out_of_Bounds(owner)
  scriptoob = owner
  repeat
    EndFrame()
  until netvariable.player1.cutsceneskipped == 1 and netvariable.player2.cutsceneskipped == 1
  WaitFor(5)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      if GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) < 515 then
        PhoneMessage(124, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
        WaitFor(4.5)
        if GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) < 505 then
          FreezePlayer(constant.PLAYER_ONE)
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          Teleport(GetPlayerUnit(constant.PLAYER_ONE), 520, 380, 90, 2)
          UnfreezePlayer(constant.PLAYER_ONE)
          CameraFade(constant.FADE_IN, constant.WAIT, 1)
        end
      else
        EndFrame()
      end
    until netvariable.player1.docks == 1
  elseif IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      if 515 > GetObjectXPosition(GetPlayerUnit(constant.PLAYER_TWO)) then
        PhoneMessage(123, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
        WaitFor(4.5)
        if 505 > GetObjectXPosition(GetPlayerUnit(constant.PLAYER_TWO)) then
          FreezePlayer(constant.PLAYER_TWO)
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          Teleport(GetPlayerUnit(constant.PLAYER_TWO), 520, 380, 90, 2)
          UnfreezePlayer(constant.PLAYER_TWO)
          CameraFade(constant.FADE_IN, constant.WAIT, 1)
        end
      else
        EndFrame()
      end
    until netvariable.player1.docks == 1
  end
end

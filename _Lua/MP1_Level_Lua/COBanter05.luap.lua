function COBanter05(owner)
  while missionend == 0 do
    if CheckCapturePoint(Capture_Point.SolarHQCapturePoint01, constant.ARMY_UNDERWORLD, 10, 90, constant.CAPTUREPOINTFLAG_LOWERING) == true then
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(76, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(77, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
      DebugOut("The players have been warned that the Legion are attempting to capture the Solar HQ")
    else
      EndFrame()
      while missionend == 0 do
        if CheckCapturePoint(Capture_Point.SolarHQCapturePoint01, constant.ARMY_UNDERWORLD, 70, 30, constant.CAPTUREPOINTFLAG_RAISING) == true then
          ClearMessageQueue(constant.PLAYER_ONE)
          PhoneMessage(78, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
          ClearMessageQueue(constant.PLAYER_TWO)
          PhoneMessage(79, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
          DebugOut("The players have been warned that the Legion are seconds away from capturing the Solar HQ")
          break
        end
        EndFrame()
      end
    end
  end
end

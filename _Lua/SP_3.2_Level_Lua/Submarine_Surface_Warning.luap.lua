function Submarine_Surface_Warning(owner)
  repeat
    if (GetPlayerUnit(constant.PLAYER_ONE) == Water_Vehicle.AI_Sub_1 or GetPlayerUnit(constant.PLAYER_ONE) == Water_Vehicle.AI_Sub_2) and GetSubmarineAirpercentage(GetPlayerUnit(constant.PLAYER_ONE)) < 50 and PauseTimerActive == 0 then
      DebugOut("Sub Resurface Check 1 Complete")
      EndFrame()
      if (GetPlayerUnit(constant.PLAYER_ONE) == Water_Vehicle.AI_Sub_1 or GetPlayerUnit(constant.PLAYER_ONE) == Water_Vehicle.AI_Sub_2) and GetSubmarineAirpercentage(GetPlayerUnit(constant.PLAYER_ONE)) < 50 and PauseTimerActive == 0 then
        DebugOut("Sub Resurface Check 2 Complete")
        repeat
          EndFrame()
        until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
        if (GetPlayerUnit(constant.PLAYER_ONE) == Water_Vehicle.AI_Sub_1 or GetPlayerUnit(constant.PLAYER_ONE) == Water_Vehicle.AI_Sub_2) and GetSubmarineAirpercentage(GetPlayerUnit(constant.PLAYER_ONE)) < 50 and PauseTimerActive == 0 then
          DebugOut("Sub Resurface Check 3 Complete, play message")
          PhoneMessage(18, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
          return
        end
      end
    else
      EndFrame()
    end
  until beach == 2
end

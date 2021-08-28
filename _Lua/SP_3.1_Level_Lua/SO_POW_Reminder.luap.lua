function SO_POW_Reminder(owner)
  repeat
    if NumItemsInArea(300, 720, 125, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_GVEHICLE), 1) > 0 or 0 < NumItemsInArea(300, 720, 125, CombineFlags(flag.TYPE_ANGLO, flag.TYPE_INFANTRY), 1) then
      PhoneMessage(56, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
      DebugOut("No POWs free, play reminder")
      break
    end
    EndFrame()
  until 0 < mortars and ltankpow == 1
  DebugOut("Both POWs free, don't play reminder")
end

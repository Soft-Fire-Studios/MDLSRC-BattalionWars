function GunshipTutorial(owner)
  local phonemessage01 = GetTime()
  repeat
    EndFrame()
  until EndCutscene02 == 1
  phonemessage01 = GetTime()
  while missionend == 0 do
    if TestFlags(GetPlayerUnit(), flag.GTYPE_GUNSHIP, constant.GTYPE) then
      PhoneMessage(62, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      PhoneMessage(63, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      PhoneMessage(64, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      PhoneMessage(85, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      WaitFor(20)
      if Objective02 == 0 then
        PhoneMessage(84, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      end
      DebugOut("*GunshipTutorial* - 1. The player is a GUNSHIP. Show them the Gunship tutorial")
      break
    end
    EndFrame()
    if GetTime() > phonemessage01 + 15 then
      PhoneMessage(65, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      PhoneMessage(63, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      PhoneMessage(64, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      PhoneMessage(85, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      WaitFor(20)
      if Objective02 == 0 then
        PhoneMessage(84, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      end
      DebugOut("*GunshipTutorial* - 3. The script has waited 15 seconds and the player still isn't in the GUNSHIP. Show them a different message")
      break
    end
    EndFrame()
  end
end

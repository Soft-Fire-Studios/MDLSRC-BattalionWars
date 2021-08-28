function CutScene05EndMission(owner)
  AbortCutscene05 = owner
  repeat
    EndFrame()
  until missionend == 1
  playerincutscene = true
  while true do
    if missionfailed == 1 then
      PhoneMessage(68, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      WaitFor(8)
      EndCutscene05 = 1
      break
    end
    if missioncomplete == 1 then
      PhoneMessage(47, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      DebugOut("*WinLoseConditions* - 1. Mission Over Player 1 Wins")
      WaitFor(8)
      EndCutscene05 = 1
      break
    end
    EndFrame()
  end
end

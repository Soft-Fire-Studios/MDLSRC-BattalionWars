function PauseTutorial(owner)
  repeat
    EndFrame()
  until CutsceneBattleshipFinished == 1
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.CPTutorial)
  PhoneMessage(82, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, true)
  PhoneMessage(84, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, true)
end

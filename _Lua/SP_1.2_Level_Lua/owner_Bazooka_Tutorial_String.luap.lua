function owner_Bazooka_Tutorial_String(owner)
  repeat
    if GetPlayerUnit() == owner and StartBazookaTutorialString == 1 and BazookaTutorialStringPlayed == 0 then
      BazookaTutorialStringPlayed = 1
      PhoneMessage(39, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
    end
    EndFrame()
  until BazookaTutorialStringPlayed == 1
end

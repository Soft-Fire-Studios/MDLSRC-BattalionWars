function PlayerOnMine(owner)
  while missionend == 0 do
    if playerinminezone == 1 then
      WaitFor(0.2)
      if IsInRange(Unit_Group.Tundrans, owner, 5) == true then
        ClearMessageQueue()
        Kill(owner)
        if minespeech == 0 then
          PhoneMessage(49, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Prison_Ubel_Happy, constant.PLAYER_ONE)
          minespeech = 1
        elseif minespeech == 1 then
          PhoneMessage(132, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
          minespeech = 2
        elseif minespeech == 2 then
          PhoneMessage(133, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_ONE)
          minespeech = 3
        elseif minespeech == 3 then
          minespeech = 0
        end
      end
    end
    EndFrame()
  end
end

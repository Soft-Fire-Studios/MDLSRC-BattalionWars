function LoseConditions(owner)
  while missionend == 0 do
    if helipad01 < 2 and pow01 == 1 and 1 > CountRemainingPlayerTroops(constant.PLAYER_ONE) then
      WaitFor(2)
      if helipad01 < 2 and pow01 == 1 and 1 > CountRemainingPlayerTroops(constant.PLAYER_ONE) then
        ShowTimer(0)
        Kill(Reinforcements)
        Kill(powreinforcements)
        Kill(bazookacounter)
        Kill(helipadowner01)
        Kill(helipadowner02)
        FreezePlayer(0)
        ClearMessageQueue()
        if mausoleumobjective == 1 then
          PhoneMessage(86, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
          DefeatLament(constant.ARMY_TUNDRAN)
          VictoryDance(constant.ARMY_XYLVANIAN)
        else
          PhoneMessage(69, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
          missionend = 1
          DeclareVictory(constant.ARMY_XYLVANIAN)
        end
        losecondition01 = 1
        WaitFor(10)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        if mausoleumobjective == 1 then
          SetTimer(1)
          ShowTimer(1)
          break
        end
        DebugOut("*LoseConditions* - 1. The player has lost the mission as they have no remaining troops to capture the HQ")
        LoseMission(180)
        break
      end
    end
    EndFrame()
    if helipad01 < 2 and 2 > factory and 2 > airbase and AllPlayerUnitsDead(constant.PLAYER_ONE) == true then
      WaitFor(2)
      if helipad01 < 2 and 2 > factory and 2 > airbase and AllPlayerUnitsDead(constant.PLAYER_ONE) == true then
        ShowTimer(0)
        Kill(Reinforcements)
        Kill(powreinforcements)
        Kill(bazookacounter)
        Kill(helipadowner01)
        Kill(helipadowner02)
        FreezePlayer(0)
        ClearMessageQueue()
        PhoneMessage(95, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
        if mausoleumobjective == 1 then
          DefeatLament(constant.ARMY_TUNDRAN)
          VictoryDance(constant.ARMY_XYLVANIAN)
        else
          missionend = 1
          DeclareVictory(constant.ARMY_XYLVANIAN)
        end
        losecondition02 = 1
        WaitFor(10)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        if mausoleumobjective == 1 then
          SetTimer(1)
          ShowTimer(1)
          break
        end
        DebugOut("*LoseConditions* - 2. The player has lost the mission as all of their troops have died.")
        LoseMission(131)
        break
      end
    end
    EndFrame()
    EndFrame()
  end
end

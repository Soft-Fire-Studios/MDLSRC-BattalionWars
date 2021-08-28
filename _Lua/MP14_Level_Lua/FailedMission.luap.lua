function FailedMission(owner)
  local loop = 0
  scriptFailedMission = owner
  local lockmessagewfLostUnits = 0
  local lockmessageseLostUnits = 0
  local lockmessagewfLostUnitsPOWCampsLeft3 = 0
  local lockmessagewfLostUnitsPOWCampsLeft2 = 0
  local lockmessagewfLostUnitsPOWCampsLeft1 = 0
  local lockmessagewfLostUnitsPOWCampsLeft0 = 0
  local lockmessageseLostUnitsPOWCampsLeft3 = 0
  local lockmessageseLostUnitsPOWCampsLeft2 = 0
  local lockmessageseLostUnitsPOWCampsLeft1 = 0
  local lockmessageseLostUnitsPOWCampsLeft0 = 0
  local freezebothplayers = 0
  local lockmessageseLostUnitsPOWsLeft = 0
  repeat
    EndFrame()
  until cutscenefinished == 1
  while true do
    if startouttro == 1 then
      DebugOut("Outro is running, ending FailedMission script")
      return
    end
    if IsNetworkHost() then
      WaitFor(0.2)
      if AllPlayerUnitsDead(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_TWO) then
        netvariable.player1.MissionProbablyLost = 1
        WaitFor(2)
        if AllPlayerUnitsDead(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_TWO) then
          DeclareVictory(constant.ARMY_XYLVANIAN)
          ClearMessageQueue()
          DebugOut("Mission Failed - Both Players have lost all their units")
          SetNetworkMissionComplete(1, false, 131)
          SetNetworkMissionComplete(2, false, 131)
          netvariable.player1.missionfailed = 1
          break
        else
          netvariable.player1.MissionProbablyLost = 0
        end
      end
      EndFrame()
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.AllTroopsDead == 0 then
      WaitFor(0.2)
      if CountRemainingPlayerTroops(constant.PLAYER_ONE) == 0 and missilevetsfree + solarpowsfree == 2 then
        DebugOut("All player 1's troops have died and all POW camps have been done")
        netvariable.player1.AllTroopsDead = 1
      end
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player2.AllTroopsDead == 0 then
      WaitFor(0.2)
      if CountRemainingPlayerTroops(constant.PLAYER_TWO) == 0 and missilevetsfree + solarpowsfree == 2 then
        DebugOut("All player 2's troops have died and all POW camps have been done")
        netvariable.player2.AllTroopsDead = 1
      end
    end
    if IsNetworkHost() and netvariable.player1.AllTroopsDead == 1 and netvariable.player2.AllTroopsDead == 1 then
      DeclareVictory(constant.ARMY_XYLVANIAN)
      ClearMessageQueue()
      SetNetworkMissionComplete(1, false, 195)
      SetNetworkMissionComplete(2, false, 195)
      netvariable.player1.missionfailed = 1
      break
    end
    EndFrame()
    if netvariable.player1.missionfailed == 1 and freezebothplayers == 0 then
      FreezePlayer(constant.PLAYER_ONE)
      FreezePlayer(constant.PLAYER_TWO)
      freezebothplayers = 1
    end
    if IsNetworkHost() then
      WaitFor(0.2)
      if AllPlayerUnitsDead(constant.PLAYER_ONE) and stopcheckingWFpowstatus == 0 then
        WaitFor(2)
        if AllPlayerUnitsDead(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_TWO) then
          netvariable.player1.MissionProbablyLost = 1
          WaitFor(2)
          if AllPlayerUnitsDead(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_TWO) then
            DeclareVictory(constant.ARMY_XYLVANIAN)
            ClearMessageQueue()
            DebugOut("Mission Failed - Both Players have lost all their units")
            SetNetworkMissionComplete(1, false, 131)
            SetNetworkMissionComplete(2, false, 131)
            netvariable.player1.missionfailed = 1
            break
          else
            netvariable.player1.MissionProbablyLost = 0
          end
        end
        if AllPlayerUnitsDead(constant.PLAYER_ONE) and stopcheckingWFpowstatus == 0 then
          DebugOut("Player 1 unit count ZERO - checking POW objectives")
          if (missilevetsfree == 0 or bazookavetsfree == 0 or solarpowsfree == 0) and netvariable.player1.wfLostUnitsPOWsLeft == 0 then
            netvariable.player1.wfLostUnitsPOWsLeft = 1
            DebugOut("checking POW objectives still active, waiting for POWs to be free'd")
            stopcheckingWFpowstatus = 1
          elseif missilevetsfree + bazookavetsfree + solarpowsfree == 3 then
            DebugOut("All objectives already completed. No more units available.")
            netvariable.player1.wfLostUnits = 1
            stopcheckingWFpowstatus = 1
          end
        end
      end
      EndFrame()
    end
    if netvariable.player1.wfLostUnitsPOWsLeft == 1 and lockmessagewfLostUnitsPOWCampsLeft3 == 0 and TechniqueObjectivesCompleted == 0 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(51, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
      PhoneMessage(57, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_TWO)
      DebugOut("WF are out of units, waiting for POWs to be free'd")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 1
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 1
      end
      DebugOut("Entering loop to make sure both players are in sync")
      repeat
        if IsNetworkHost() and netvariable.player1.breakfromloop == 1 and netvariable.player2.breakfromloop == 1 then
          netvariable.player1.wfLostUnitsPOWsLeft = 0
        end
        EndFrame()
      until netvariable.player1.wfLostUnitsPOWsLeft == 0
      DebugOut("Loop complete")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 0
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 0
      end
      lockmessagewfLostUnitsPOWCampsLeft3 = 1
    end
    if netvariable.player1.wfLostUnitsPOWsLeft == 1 and lockmessagewfLostUnitsPOWCampsLeft2 == 0 and TechniqueObjectivesCompleted == 1 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(51, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
      PhoneMessage(57, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_TWO)
      DebugOut("WF are out of units, waiting for POWs to be free'd")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 1
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 1
      end
      DebugOut("Entering loop to make sure both players are in sync")
      repeat
        if IsNetworkHost() and netvariable.player1.breakfromloop == 1 and netvariable.player2.breakfromloop == 1 then
          netvariable.player1.wfLostUnitsPOWsLeft = 0
        end
        EndFrame()
      until netvariable.player1.wfLostUnitsPOWsLeft == 0
      DebugOut("Loop complete")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 0
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 0
      end
      lockmessagewfLostUnitsPOWCampsLeft2 = 1
    end
    if netvariable.player1.wfLostUnitsPOWsLeft == 1 and lockmessagewfLostUnitsPOWCampsLeft1 == 0 and TechniqueObjectivesCompleted == 2 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(51, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
      PhoneMessage(57, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_TWO)
      DebugOut("WF are out of units, waiting for POWs to be free'd")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 1
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 1
      end
      DebugOut("Entering loop to make sure both players are in sync")
      repeat
        if IsNetworkHost() and netvariable.player1.breakfromloop == 1 and netvariable.player2.breakfromloop == 1 then
          netvariable.player1.wfLostUnitsPOWsLeft = 0
        end
        EndFrame()
      until netvariable.player1.wfLostUnitsPOWsLeft == 0
      DebugOut("Loop complete")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 0
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 0
      end
      lockmessagewfLostUnitsPOWCampsLeft1 = 1
    end
    if netvariable.player1.wfLostUnits == 1 and lockmessagewfLostUnits == 0 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      if netvariable.player1.seLostUnits == 0 then
        PhoneMessage(53, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
        PhoneMessage(59, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_TWO)
      end
      lockmessagewfLostUnits = 1
      DebugOut("WF are out of units and out of the game")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 1
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 1
      end
      DebugOut("Entering loop to make sure both players are in sync")
      repeat
        if IsNetworkHost() and netvariable.player1.breakfromloop == 1 and netvariable.player2.breakfromloop == 1 then
          netvariable.player1.wfLostUnits = 0
        end
        EndFrame()
      until netvariable.player1.wfLostUnits == 0
      DebugOut("Loop complete")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 0
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 0
      end
    end
    if IsNetworkHost() then
      WaitFor(0.2)
      if AllPlayerUnitsDead(constant.PLAYER_TWO) and stopcheckingSEpowstatus == 0 and netvariable.player1.MissionProbablyLost == 0 then
        WaitFor(2)
        if AllPlayerUnitsDead(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_TWO) then
          netvariable.player1.MissionProbablyLost = 1
          WaitFor(2)
          if AllPlayerUnitsDead(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_TWO) then
            DeclareVictory(constant.ARMY_XYLVANIAN)
            ClearMessageQueue()
            DebugOut("Mission Failed - Both Players have lost all their units")
            SetNetworkMissionComplete(1, false, 131)
            SetNetworkMissionComplete(2, false, 131)
            netvariable.player1.missionfailed = 1
            break
          else
            netvariable.player1.MissionProbablyLost = 0
          end
        end
        if AllPlayerUnitsDead(constant.PLAYER_TWO) and stopcheckingSEpowstatus == 0 and netvariable.player1.MissionProbablyLost == 0 then
          DebugOut("Player 2 unit count ZERO - checking POW objectives")
          if (missilevetsfree == 0 or bazookavetsfree == 0 or solarpowsfree == 0) and netvariable.player1.seLostUnitsPOWsLeft == 0 then
            netvariable.player1.seLostUnitsPOWsLeft = 1
            DebugOut("checking POW objectives still active, waiting for POWs to be free'd")
            stopcheckingSEpowstatus = 1
          elseif missilevetsfree + bazookavetsfree + solarpowsfree == 3 then
            DebugOut("All objectives already completed. No more units available.")
            netvariable.player1.seLostUnits = 1
            stopcheckingSEpowstatus = 1
          end
        end
      end
      EndFrame()
    end
    if netvariable.player1.missionfailed == 1 then
      break
    end
    if netvariable.player1.seLostUnitsPOWsLeft == 1 and lockmessageseLostUnitsPOWCampsLeft3 == 0 and TechniqueObjectivesCompleted == 0 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(56, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
      PhoneMessage(52, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_TWO)
      DebugOut("SE are out of units, waiting for POWs to be free'd")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 1
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 1
      end
      DebugOut("Entering loop to make sure both players are in sync")
      repeat
        if IsNetworkHost() and netvariable.player1.breakfromloop == 1 and netvariable.player2.breakfromloop == 1 then
          netvariable.player1.seLostUnitsPOWsLeft = 0
        end
        EndFrame()
      until netvariable.player1.seLostUnitsPOWsLeft == 0
      DebugOut("Loop complete")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 0
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 0
      end
      lockmessagewfLostUnitsPOWCampsLeft3 = 1
    end
    if netvariable.player1.seLostUnitsPOWsLeft == 1 and lockmessageseLostUnitsPOWCampsLeft2 == 0 and TechniqueObjectivesCompleted == 1 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(56, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
      PhoneMessage(52, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_TWO)
      DebugOut("SE are out of units, waiting for POWs to be free'd")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 1
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 1
      end
      DebugOut("Entering loop to make sure both players are in sync")
      repeat
        if IsNetworkHost() and netvariable.player1.breakfromloop == 1 and netvariable.player2.breakfromloop == 1 then
          netvariable.player1.seLostUnitsPOWsLeft = 0
        end
        EndFrame()
      until netvariable.player1.seLostUnitsPOWsLeft == 0
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 0
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 0
      end
      lockmessagewfLostUnitsPOWCampsLeft2 = 1
    end
    if netvariable.player1.seLostUnitsPOWsLeft == 1 and lockmessageseLostUnitsPOWCampsLeft1 == 0 and TechniqueObjectivesCompleted == 2 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(56, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
      PhoneMessage(52, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_TWO)
      DebugOut("SE are out of units, waiting for POWs to be free'd")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 1
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 1
      end
      DebugOut("Entering loop to make sure both players are in sync")
      repeat
        if IsNetworkHost() and netvariable.player1.breakfromloop == 1 and netvariable.player2.breakfromloop == 1 then
          netvariable.player1.seLostUnitsPOWsLeft = 0
        end
        EndFrame()
      until netvariable.player1.seLostUnitsPOWsLeft == 0
      DebugOut("Loop complete")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 0
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 0
      end
      lockmessagewfLostUnitsPOWCampsLeft1 = 1
    end
    if netvariable.player1.seLostUnits == 1 and lockmessageseLostUnits == 0 then
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      if netvariable.player1.wfLostUnits == 0 then
        PhoneMessage(58, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
        PhoneMessage(54, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_TWO)
      end
      lockmessagewfLostUnits = 1
      DebugOut("SE are out of units and out of the game")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 1
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 1
      end
      DebugOut("Entering loop to make sure both players are in sync")
      repeat
        if IsNetworkHost() and netvariable.player1.breakfromloop == 1 and netvariable.player2.breakfromloop == 1 then
          netvariable.player1.seLostUnits = 0
        end
        EndFrame()
      until netvariable.player1.seLostUnits == 0
      DebugOut("Loop complete")
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.breakfromloop = 0
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        netvariable.player2.breakfromloop = 0
      end
    end
    if netvariable.player1.missionfailed == 1 then
      break
    end
    WaitFor(0.2)
    EndFrame()
  end
  local messageplayed = 0
  if netvariable.player1.AllTroopsDead == 1 and netvariable.player2.AllTroopsDead == 1 and messageplayed == 0 then
    PhoneMessage(73, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
    PhoneMessage(74, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_TWO)
    messageplayed = 1
  end
  if netvariable.player1.missionfailed == 1 and messageplayed == 0 then
    PhoneMessage(55, 0, 0, 8, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
    PhoneMessage(55, 0, 0, 8, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_TWO)
    messageplayed = 1
  end
  WaitFor(7)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsNetworkHost() then
    NetworkGameOver()
  end
end

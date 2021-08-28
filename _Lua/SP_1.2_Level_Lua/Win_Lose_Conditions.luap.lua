function Win_Lose_Conditions(owner)
  WinLoseScript = owner
  repeat
    WaitFor(1)
    if gameover == 0 and helpisontheway == 0 and IsDead(Ground_Vehicle.SEaatank1) then
      gameover = 1
      DeclareVictory(constant.ARMY_ANGLO)
      FreezePlayer(constant.PLAYER_ONE)
      SetObjectiveData(Objective.SEaatank, constant.OBJECTIVE_DATA_VISIBLE, 0)
      Kill(MissionFlow)
      Kill(MissionFlow2)
      Kill(CutsceneHelipad)
      Kill(midcutscene2)
      Kill(WFOutpost)
      Kill(COMessages)
      Kill(BoatOrders)
      Kill(CutsceneBeachTank)
      Kill(CutsceneBeachInfantry)
      if PauseTimerActive == 1 then
        SetCamera(Camera.player1cam)
        CameraFade(constant.FADE_IN, constant.WAIT, 0.5)
      end
      ClearMessageQueue()
      PhoneMessage(36, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      WaitFor(11)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(158)
    end
    EndFrame()
    if gameover == 0 and helpisontheway == 1 and IsDead(Ground_Vehicle.SEaatank1) and IsDead(Ground_Vehicle.SEaatank2) then
      gameover = 1
      DeclareVictory(constant.ARMY_ANGLO)
      FreezePlayer(constant.PLAYER_ONE)
      Kill(MissionFlow)
      Kill(MissionFlow2)
      Kill(CutsceneHelipad)
      Kill(midcutscene2)
      Kill(WFOutpost)
      Kill(COMessages)
      Kill(BoatOrders)
      Kill(CutsceneBeachTank)
      Kill(CutsceneBeachInfantry)
      if PauseTimerActive == 1 then
        SetCamera(Camera.player1cam)
        CameraFade(constant.FADE_IN, constant.WAIT, 0.5)
      end
      ClearMessageQueue()
      PhoneMessage(37, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      WaitFor(11)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(159)
    end
    EndFrame()
    if gameover == 0 and MidCutsceneEndedDocks == true and CountRemainingPlayerTroops(constant.PLAYER_ONE) == 0 then
      repeat
        EndFrame()
      until PlayNoTroopsRemainingString == 1
      gameover = 1
      DeclareVictory(constant.ARMY_ANGLO)
      FreezePlayer(constant.PLAYER_ONE)
      Kill(MissionFlow)
      Kill(MissionFlow2)
      Kill(CutsceneHelipad)
      Kill(midcutscene2)
      Kill(WFOutpost)
      Kill(COMessages)
      Kill(BoatOrders)
      Kill(CutsceneBeachTank)
      Kill(CutsceneBeachInfantry)
      if PauseTimerActive == 1 then
        SetCamera(Camera.player1cam)
        CameraFade(constant.FADE_IN, constant.WAIT, 0.5)
      end
      ClearMessageQueue()
      PhoneMessage(38, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      WaitFor(13)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(133)
    end
    EndFrame()
    if gameover == 0 and IsDead(Building.NavalCannon1) and IsDead(Building.NavalCannon2) then
      gameover = 1
      DeclareVictory(constant.ARMY_ANGLO)
      FreezePlayer(constant.PLAYER_ONE)
      Kill(MissionFlow)
      Kill(MissionFlow2)
      Kill(CutsceneHelipad)
      Kill(midcutscene2)
      Kill(WFOutpost)
      Kill(COMessages)
      Kill(BoatOrders)
      Kill(CutsceneBeachTank)
      Kill(CutsceneBeachInfantry)
      if PauseTimerActive == 1 then
        SetCamera(Camera.player1cam)
        CameraFade(constant.FADE_IN, constant.WAIT, 0.5)
      end
      ClearMessageQueue()
      PhoneMessage(41, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      WaitFor(10)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(151)
    end
    EndFrame()
    if gameover == 0 and NavalGunsCutsceneEnd == 1 and MidCutsceneDocksSetup == 0 and IsInArea(GetPlayerUnit(), Map_Zone.KillNavalGuns) then
      gameover = 1
      CutsceneAbandonNavalGunsStart = 1
    end
    EndFrame()
  until gameover == 1
end

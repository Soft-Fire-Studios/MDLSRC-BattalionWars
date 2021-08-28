function Gameflow(owner)
  local loop = 0
  local text = 0
  WesternFrontier = FriendlyArmy
  Tundra = EnemyArmy
  MinLevelTime = 420
  MaxLevelTime = 900
  TechniqueObjectives = 2
  TechniqueWeighting = 10
  StartIntro()
  FreezePlayer()
  WaitFor(1)
  while loop == 0 do
    if cutscene == 1 then
      Kill(cutkiller)
      loop = 1
    else
      if GetCurrentMissionAttempted() == true then
        if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) then
          Kill(cutkiller)
          ClearMessageQueue()
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          cutscene = 1
          loop = 1
        else
          if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED) then
            Kill(cutkiller)
            ClearMessageQueue()
            CameraFade(constant.FADE_OUT, constant.WAIT, 1)
            cutscene = 1
            loop = 1
          else
          end
        end
      else
      end
    end
    EndFrame()
  end
  StoreSummaryMessage(0, 0, SpriteID.CO_WF_Austin_Happy)
  StoreSummaryMessage(28, 0, SpriteID.CO_WF_Austin_Happy)
  StoreSummaryMessage(30, 0, SpriteID.CO_WF_Austin_Happy)
  StoreSummaryMessage(1, 0, SpriteID.CO_WF_Austin_Happy)
  StoreSummaryMessage(2, 0, SpriteID.CO_WF_Austin_Happy)
  StartScoringTimer()
  ClearMessageQueue()
  SetCamera(Camera.player)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  UnfreezePlayer()
  PhoneMessage(5, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Austin_Happy)
  PhoneMessage(41, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
  PhoneMessage(22, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
  PhoneMessage(7, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
  WaitFor(7)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_STARTPAUSE, constant.HUD_ITEM_FLASH, 6, 540, 380, 0.6)
  WaitFor(7)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_STARTPAUSE, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  WaitFor(10)
  tut = 1
  while levelend == 0 do
    if CountRemainingPlayerTroops() == 0 and pows == 1 then
      levelend = 1
      DeclareVictory(constant.ARMY_TUNDRAN)
      if AllPlayerUnitsDead(0) then
        EndFrame()
        do break end
        while GetPlayerUnit() == nil do
          EndFrame()
        end
      end
      FreezePlayer()
      ClearMessageQueue()
      PhoneMessage(23, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Austin_Sad)
      WaitFor(6)
      ClearMessageQueue()
      PhoneMessage(35, constant.ID_NONE, 2, 4, SpriteID.CO_T_Nelly_Happy)
      WaitFor(8)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(303)
    elseif GetState(Capture_Point.base) == 1 then
      levelend = 1
      ClearMessageQueue()
      SetObjectiveData(Objective.CPoint, constant.OBJECTIVE_DATA_STATE, 1)
      PhoneMessage(32, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Austin_Happy)
      if tcopter == 1 then
        EndFrame()
      else
        Kill(refscript)
        GoToArea(Air_Vehicle.ttrans1, 1035, 970, 50, 0, constant.ORDER_FORCED)
        GoToArea(Air_Vehicle.ttrans2, 1035, 970, 50, 0, constant.ORDER_FORCED)
      end
      WaitFor(1)
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_WF)
      WaitFor(8)
      ClearMessageQueue()
      PhoneMessage(33, constant.ID_NONE, 2, 4, SpriteID.CO_T_Nelly_Sad)
      WaitFor(8)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WinMission()
    elseif AllPlayerUnitsDead(0) then
      levelend = 1
      DeclareVictory(constant.ARMY_TUNDRAN)
      ClearMessageQueue()
      PhoneMessage(23, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Austin_Sad)
      WaitFor(6)
      ClearMessageQueue()
      PhoneMessage(35, constant.ID_NONE, 2, 4, SpriteID.CO_T_Nelly_Happy)
      WaitFor(6)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(301)
    else
      WaitFor(1)
    end
    if text == 0 and CountRemainingPlayerTroops() == 0 and pows == 0 then
      PhoneMessage(24, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Austin_Sad)
      text = 1
    end
  end
end

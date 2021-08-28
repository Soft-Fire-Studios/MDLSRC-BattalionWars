function Gameflow(owner)
  local loop = 0
  WesternFrontier = FriendlyArmy
  Tundra = FriendlyArmy
  Xylvania = EnemyArmy
  MinLevelTime = 600
  MaxLevelTime = 900
  TechniqueWeighting = 5
  Despawn(Air_Vehicle.Bomber)
  Despawn(Air_Vehicle.Bomber2)
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
  StoreSummaryMessage(0, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(1, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(2, 0, SpriteID.CO_WF_Betty_Happy)
  StartScoringTimer()
  SetCamera(Camera.player)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  UnfreezePlayer()
  PhoneMessage(4, constant.ID_NONE, 0, 7, SpriteID.CO_WF_Betty_Happy)
  while levelstate < 3 do
    if tower == 3 then
      SetObjectiveData(Objective.Extraction_Towers, constant.OBJECTIVE_DATA_STATE, 1)
      levelstate = 3
      SetInvulnerable(flag.TYPE_WFRONTIER, 1)
      SetInvulnerable(flag.TYPE_TUNDRAN, 1)
      SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      ClearMessageQueue()
      PhoneMessage(28, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      StopScoringTimer()
      WaitFor(9)
      loop = 0
      outro = 1
      WaitFor(3)
      while loop == 0 do
        if cutscene == 2 then
          loop = 1
        else
          if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) then
            cutscene = 2
            loop = 1
          else
          end
        end
        EndFrame()
      end
      Kill(cutkiller)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WinMission()
    elseif AllPlayerUnitsDead(0) then
      levelstate = 3
      ClearMessageQueue()
      PhoneMessage(10, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Betty_Sad)
      WaitFor(8)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(301)
    else
      if IsDead(Air_Vehicle.Bomber) and IsDead(Air_Vehicle.Bomber2) then
        levelstate = 3
        if AllPlayerUnitsDead(0) then
          EndFrame()
          do break end
          while GetPlayerUnit() == nil do
            EndFrame()
          end
        end
        FreezePlayer()
        ClearMessageQueue()
        PhoneMessage(9, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Betty_Sad)
        WaitFor(9)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(309)
      else
      end
    end
    EndFrame()
  end
end

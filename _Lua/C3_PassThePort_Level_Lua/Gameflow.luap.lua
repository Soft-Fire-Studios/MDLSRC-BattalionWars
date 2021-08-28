function Gameflow(owner)
  SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
  SetInvulnerable(flag.TYPE_WFRONTIER, 1)
  StartIntro()
  local loop = 0
  WesternFrontier = FriendlyArmy
  Xylvania = EnemyArmy
  MinLevelTime = 630
  MaxLevelTime = 960
  TechniqueObjectives = 2
  TechniqueWeighting = 5
  LandAirUnit(Air_Vehicle.gship1, 320, 280, constant.ORDER_FORCED)
  LandAirUnit(Air_Vehicle.gship2, 375, 305, constant.ORDER_FORCED)
  LandAirUnit(Air_Vehicle.gship3, -135, 0, constant.ORDER_FORCED)
  LandAirUnit(Air_Vehicle.gship4, 530, 275, constant.ORDER_FORCED)
  LandAirUnit(Air_Vehicle.gship5, 545, 230, constant.ORDER_FORCED)
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
  loop = 0
  StoreSummaryMessage(0, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(1, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(2, 0, SpriteID.CO_WF_Betty_Happy)
  StartScoringTimer()
  ClearMessageQueue()
  SetCamera(Camera.player)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  UnfreezePlayer()
  SetInvulnerable(flag.TYPE_WFRONTIER, 0)
  PhoneMessage(3, constant.ID_NONE, 0, 7, SpriteID.CO_WF_Betty_Happy)
  PhoneMessage(4, constant.ID_NONE, 3, 7, SpriteID.CO_SE_Leiqo_Sad)
  PhoneMessage(8, constant.ID_NONE, 3, 7, SpriteID.CO_SE_Leiqo_Happy)
  WaitFor(2)
  SetInvulnerable(flag.TYPE_XYLVANIAN, 0)
  SetHealthPercent(Air_Vehicle.gship1, 100)
  SetHealthPercent(Air_Vehicle.gship2, 100)
  SetHealthPercent(Air_Vehicle.gship3, 100)
  SetHealthPercent(Air_Vehicle.gship4, 100)
  SetHealthPercent(Air_Vehicle.gship5, 100)
  local text = 0
  while levelend == 0 do
    if east + west == 2 then
      levelend = 1
      StopScoringTimer()
      WaitFor(1)
      FreezePlayer()
      DeclareVictory(constant.ARMY_WF)
      DebugOut("both east + west")
      ClearMessageQueue()
      PhoneMessage(31, constant.ID_NONE, 0, 20, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(23, constant.ID_NONE, 1, 20, SpriteID.CO_X_Vlad_Sad)
      PhoneMessage(24, constant.ID_NONE, 1, 20, SpriteID.CO_X_Ingrid_Happy)
      WaitFor(28)
      DebugOut("complete")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WinMission()
    elseif xflag == 2 then
      levelend = 1
      StopScoringTimer()
      WaitFor(1)
      FreezePlayer()
      DeclareVictory(constant.ARMY_WF)
      DebugOut("both xflag = 2")
      ClearMessageQueue()
      PhoneMessage(31, constant.ID_NONE, 0, 20, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(23, constant.ID_NONE, 1, 20, SpriteID.CO_X_Vlad_Sad)
      PhoneMessage(24, constant.ID_NONE, 1, 20, SpriteID.CO_X_Ingrid_Happy)
      WaitFor(28)
      DebugOut("complete")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WinMission()
    else
      if text == 0 and xflag == 1 then
        ClearMessageQueue()
        PhoneMessage(30, constant.ID_NONE, 0, 20, SpriteID.CO_WF_Betty_Happy)
        text = 1
      else
      end
    end
    if CountRemainingPlayerTroops() == 0 then
      if AllPlayerUnitsDead(0) then
        EndFrame()
        do break end
        while GetPlayerUnit() == nil do
          EndFrame()
        end
      end
      FreezePlayer()
      DebugOut("level ended")
      ClearMessageQueue()
      DeclareVictory(constant.ARMY_XYLVANIAN)
      PhoneMessage(32, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
      WaitFor(9)
      levelend = 1
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(303)
    end
    WaitFor(1)
  end
end

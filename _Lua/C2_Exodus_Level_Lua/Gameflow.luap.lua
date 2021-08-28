function Gameflow(owner)
  local loop = 0
  local timer = 0
  MinLevelTime = 720
  MaxLevelTime = 900
  WesternFrontier = FriendlyArmy
  Tundra = FriendlyArmy
  Xylvania = EnemyArmy
  TechniqueObjectives = 2
  Despawn(Ground_Vehicle.Entity0012)
  SetInvulnerable(flag.TYPE_TUNDRAN, 1)
  SetInvulnerable(flag.TYPE_WFRONTIER, 1)
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
  StoreSummaryMessage(0, 0, SpriteID.CO_WF_Betty_Happy)
  StoreSummaryMessage(1, 2, SpriteID.CO_T_Nova_Sad)
  StoreSummaryMessage(2, 2, SpriteID.CO_T_Nova_Sad)
  StartScoringTimer()
  ClearMessageQueue()
  SetCamera(Camera.player)
  Teleport(Troop.baz2, -245.25, -326.48, 90, 5)
  Teleport(Troop.baz3, -246.1, -331.76, 90, 5)
  Teleport(Troop.cut1, -191.18, -330.94, 300, 5)
  Teleport(Troop.cut2, -203.55, -335.8, 300, 5)
  Teleport(Troop.Entity0200, -127, -377, 270, 5)
  Teleport(Troop.Entity0203, -110, -382, 270, 5)
  Teleport(Troop.Entity0204, -116, -372, 270, 5)
  Teleport(Troop.Entity0199, -40, -377, 270, 5)
  Teleport(Troop.Entity0205, -41, -371, 270, 5)
  Teleport(Troop.Entity0267, -50, -370, 270, 5)
  Teleport(Troop.Entity0268, -47, -376, 270, 5)
  EndFrame()
  StopAndGuard(Troop.baz2)
  StopAndGuard(Troop.baz3)
  StopAndGuard(Troop.cut1)
  StopAndGuard(Troop.cut2)
  StopAndGuard(Troop.Entity0200)
  StopAndGuard(Troop.Entity0203)
  StopAndGuard(Troop.Entity0204)
  StopAndGuard(Troop.Entity0199)
  StopAndGuard(Troop.Entity0205)
  StopAndGuard(Troop.Entity0267)
  StopAndGuard(Troop.Entity0268)
  Teleport(GetPlayerUnit(), -18.5, -479.5, 340, 5)
  Teleport(Ground_Vehicle.Entity0012, -40, -480, 340, 5)
  Teleport(Ground_Vehicle.Entity0013, -95, -485, 0, 5)
  Teleport(Ground_Vehicle.aaref, -110, -485, 0, 5)
  Spawn(Ground_Vehicle.Entity0012)
  Teleport(Ground_Vehicle.Entity0012, -40, -480, 340, 5)
  StopAndGuard(Ground_Vehicle.Entity0012)
  StopAndGuard(Ground_Vehicle.Entity0013)
  StopAndGuard(Ground_Vehicle.aaref)
  Teleport(Troop.Entity0275, -42, -459, 0, 1)
  Teleport(Troop.Entity0276, -39, -462, 0, 1)
  Teleport(Troop.Entity0280, -46, -462, 0, 1)
  Teleport(Troop.Entity0286, -44, -466, 0, 1)
  Teleport(Troop.Entity0287, -40, -466, 0, 1)
  Teleport(Troop.Entity0187, -24, -454, 0, 1)
  Teleport(Troop.Entity0188, -21, -458, 0, 1)
  Teleport(Troop.Entity0189, -28, -458, 0, 1)
  Teleport(Troop.Entity0190, -26, -462, 0, 1)
  Teleport(Troop.Entity0271, -22, -462, 0, 1)
  StopAndGuard(Troop.Entity0275)
  StopAndGuard(Troop.Entity0276)
  StopAndGuard(Troop.Entity0280)
  StopAndGuard(Troop.Entity0286)
  StopAndGuard(Troop.Entity0287)
  StopAndGuard(Troop.Entity0187)
  StopAndGuard(Troop.Entity0188)
  StopAndGuard(Troop.Entity0189)
  StopAndGuard(Troop.Entity0190)
  StopAndGuard(Troop.Entity0271)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  SetInvulnerable(flag.TYPE_WFRONTIER, 0)
  UnfreezePlayer()
  PhoneMessage(5, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
  WaitFor(7)
  while levelstate == 0 do
    if AllPlayerUnitsDead(0) then
      DebugOut("P1 units dead")
      levelstate = 3
      ClearMessageQueue()
      PhoneMessage(41, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
      WaitFor(7)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(301)
    elseif GetGroupHealthPercent(Unit_Group.first) + GetGroupHealthPercent(Unit_Group.second) + GetGroupHealthPercent(Unit_Group.third) == 0 then
      DebugOut("tundrans dead")
      levelstate = 3
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      ClearMessageQueue()
      PhoneMessage(40, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
      WaitFor(7)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(305)
    else
      if timer == 0 and timer1 > 269 and timer1 < 273 then
        DebugOut("timer is 1, 30 seconds left")
        ClearMessageQueue()
        PhoneMessage(53, constant.ID_NONE, 2, 5, SpriteID.CO_T_Nova_Happy)
        timer = 2
      else
      end
    end
    EndFrame()
    if GetState(Capture_Point.tundran) == 4096 or GetState(Capture_Point.tundran) == flag.TYPE_XYLVANIAN then
      levelstate = 3
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DebugOut("captured")
      ClearMessageQueue()
      PhoneMessage(39, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
      WaitFor(7)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(304)
    end
    if 300 < timer1 then
      DebugOut("leave the radar")
      ShowTimer(0)
      SetObjectiveData(Objective.Capture, constant.OBJECTIVE_DATA_STATE, 1)
      ClearMessageQueue()
      PhoneMessage(34, constant.ID_NONE, 2, 5, SpriteID.CO_T_Nova_Happy)
      WaitFor(11)
      SetObjectiveData(Objective.Evac, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.evac, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      PhoneMessage(35, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
      levelstate = 1
      battle = 6
    end
    EndFrame()
  end
  DebugOut("levelstate = 1, get to the beach")
  loop = 0
  timer = 90
  while levelstate == 1 do
    if AllPlayerUnitsDead(0) then
      ShowTimer(0)
      levelstate = 3
      ClearMessageQueue()
      PhoneMessage(41, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
      WaitFor(7)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(301)
    else
      if GetGroupHealthPercent(Unit_Group.first) + GetGroupHealthPercent(Unit_Group.second) + GetGroupHealthPercent(Unit_Group.third) == 0 then
        ShowTimer(0)
        levelstate = 3
        while GetPlayerUnit() == nil do
          EndFrame()
        end
        FreezePlayer()
        ClearMessageQueue()
        PhoneMessage(40, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Sad)
        WaitFor(7)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(305)
      else
      end
    end
    if timer == 29 then
      PhoneMessage(57, constant.ID_NONE, 2, 5, SpriteID.CO_T_Nova_Happy)
    end
    if timer == 0 then
      ShowTimer(0)
      levelstate = 3
      battle = 7
      SetInvulnerable(flag.TYPE_TUNDRAN, 1)
      SetInvulnerable(flag.TYPE_WFRONTIER, 1)
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      ClearMessageQueue()
      SetObjectiveData(Objective.Evac, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.evac, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      PhoneMessage(66, constant.ID_NONE, 2, 5, SpriteID.CO_T_Nova_Happy)
      StopScoringTimer()
      WaitFor(9)
      loop = 0
      outro = 1
      WaitFor(2)
      while loop == 0 do
        if cutscene == 2 then
          loop = 1
        elseif ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) then
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          cutscene = 2
          loop = 1
        else
          if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED) then
            CameraFade(constant.FADE_OUT, constant.WAIT, 1)
            cutscene = 2
            loop = 1
          else
          end
        end
        EndFrame()
      end
      Kill(cutkiller)
      WinMission()
    end
    if timer > 0 then
      timer = timer - 1
      WaitFor(1)
    else
      EndFrame()
    end
    EndFrame()
  end
end

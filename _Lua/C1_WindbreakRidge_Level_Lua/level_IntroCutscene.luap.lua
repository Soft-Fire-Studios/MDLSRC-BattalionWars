function level_IntroCutscene(owner)
  local EndCutscene = true
  local DebugCutscene = false
  local SkipCutscene = false
  local CutsceneStarted = false
  local CurrentTrack = 1
  local TrackStamp = GetTime()
  local TrackTime = 0
  local TargetTime = 0
  local TotalTracks = 4
  local cap_flag = true
  FreezePlayer()
  while not MessagesReady do
    EndFrame()
  end
  SetActive(Air_Vehicle.WF_INTRO_ATP01, constant.INACTIVE)
  Despawn(Troop.WF_INTRO_BAZ01)
  Despawn(Air_Vehicle.WF_INTRO_ATP01)
  StartIntro()
  local function PulseTrack()
    if CurrentTrack == 1 and TrackTime > 1 then
      messages.Show("WF_CO_Intro")
      if cap_flag then
        cap_flag = false
        EnterVehicle(Troop.WF_CC_RFL01, Capture_Point.OUTPOST_CAPTURE_POINT)
      end
    end
    if messages.HasFinishedPlaying("WF_CO_Intro") then
      messages.Show("WF_IntroCut01")
    end
    if CurrentTrack == 2 then
      messages.Show("WF_IntroCut02")
    end
    if CurrentTrack == 3 then
      messages.Show("TN_CO_Intro")
    end
    if CurrentTrack == 4 and TrackTime > 4 then
      messages.Show("WF_NellyBusiness")
    end
  end
  local function SelectTrack()
    if CurrentTrack == 1 then
      TargetTime = 15
      group.Spawn(Unit_Group.WF_IntroFighter, true)
      GoToArea(Air_Vehicle.WF_INTRO_FIGHTER01, 490, 200, 5)
      GoToArea(Air_Vehicle.WF_INTRO_FIGHTER02, 590, 200, 5)
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.CS_TRACK01_01)
      CameraSetTarget(Camera.Cutscene01, Waypoint.CS_TRACK01_L01)
    end
    if CurrentTrack == 2 then
      TargetTime = 8
      group.Spawn(Unit_Group.IntroSkirmish, true)
      GoToArea(Troop.TN_INTRO_RFL01, 210, -146, 5)
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.CS_TRACK02_01)
      CameraSetTarget(Camera.Cutscene01, Waypoint.CS_TRACK02_L01)
    end
    if CurrentTrack == 3 then
      TargetTime = 8
      group.Spawn(Unit_Group.IntroRecon, true)
      Spawn(Troop.WF_INTRO_BAZ01)
      SetHealthPercent(Ground_Vehicle.TN_INTRO_RCN01, 11)
      AttackTarget(Ground_Vehicle.TN_INTRO_RCN01, Troop.WF_INTRO_BAZ01)
      AttackTarget(Troop.WF_INTRO_BAZ01, Ground_Vehicle.TN_INTRO_RCN01)
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.CS_TRACK04_01)
      CameraSetTarget(Camera.Cutscene01, Waypoint.CS_TRACK04_L01)
    end
    if CurrentTrack == 4 then
      TargetTime = 12
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.CS_TRACK05_01)
      CameraSetTarget(Camera.Cutscene01, Waypoint.CS_TRACK05_L01)
    end
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
  end
  local function AdvanceTrack()
    if TrackTime > TargetTime then
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      CurrentTrack = CurrentTrack + 1
      TrackStamp = GetTime()
      TrackTime = 0
    end
    if CurrentTrack > TotalTracks then
      CurrentTrack = TotalTracks
      if EndCutscene then
        return false
      end
    end
    return true
  end
  local skipdelay = GetTime() + 3
  while true do
    if (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED)) and skipdelay < GetTime() and GetCurrentMissionAttempted() then
      SkipCutscene = true
      DebugOut(GetTime())
    end
    if SkipCutscene then
      break
    end
    if DebugCutscene then
      if ReadControllerState(constant.CONTROL_PREV_UNIT, constant.CONTROL_JUST_PRESSED) then
        CutsceneStarted = false
      end
      if ReadControllerState(constant.CONTROL_NEXT_UNIT, constant.CONTROL_JUST_PRESSED) then
        TrackStamp = GetTime()
        TrackTime = 0
      end
      if ReadControllerState(constant.CONTROL_PREV_UNIT_TYPE, constant.CONTROL_JUST_PRESSED) then
        CurrentTrack = CurrentTrack - 1
        if CurrentTrack < 1 then
          CurrentTrack = 1
        end
        TrackStamp = GetTime()
        TrackTime = 0
      end
      if ReadControllerState(constant.CONTROL_NEXT_UNIT_TYPE, constant.CONTROL_JUST_PRESSED) then
        CurrentTrack = CurrentTrack + 1
        if TotalTracks < CurrentTrack then
          CurrentTrack = TotalTracks
        end
        TrackStamp = GetTime()
        TrackTime = 0
      end
    end
    if not CutsceneStarted then
      CutsceneStarted = true
      CurrentTrack = 1
      TrackStamp = GetTime()
      TrackTime = 0
      SetCamera(Camera.PlayerCam)
      SetCamera(Camera.Cutscene01)
    end
    if not AdvanceTrack() then
      break
    end
    if TrackStamp == GetTime() then
      SelectTrack()
    end
    if GetTime() > TrackStamp + 1 then
      TrackStamp = GetTime()
      TrackTime = TrackTime + 1
      PulseTrack()
    end
    messages.Process()
    EndFrame()
  end
  messages.Summarise("WF_CO_Intro")
  messages.Summarise("WF_IntroCut01")
  messages.Summarise("WF_IntroCut02")
  messages.Summarise("TN_CO_Intro")
  messages.Summarise("WF_NellyBusiness")
  ClearMessageQueue()
  Despawn(Troop.WF_INTRO_BAZ01)
  group.Spawn(Unit_Group.WF_IntroFighter, false)
  group.Spawn(Unit_Group.IntroSkirmish, false)
  group.Spawn(Unit_Group.IntroRecon, false)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.PlayerCam)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  UnfreezePlayer()
  InStartCutscene = false
end

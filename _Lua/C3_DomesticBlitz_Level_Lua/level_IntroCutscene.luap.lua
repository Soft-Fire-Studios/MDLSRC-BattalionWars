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
  while not MessagesReady do
    EndFrame()
  end
  if not DebugCutscene then
    FreezePlayer()
  end
  StartIntro()
  GoToArea(Air_Vehicle.XV_FIG01, 704, 704, 10)
  GoToArea(Air_Vehicle.XV_FIG02, 704, 704, 10)
  GoToArea(Air_Vehicle.XV_ATP02, 704, 704, 10)
  GoToArea(Air_Vehicle.XV_ATP03, 704, 704, 10)
  GoToArea(Air_Vehicle.XV_ATP04, 704, 704, 10)
  GoToArea(Air_Vehicle.XV_ATP05, 704, 704, 10)
  local function PulseTrack()
    Teleport(Air_Vehicle.WF_FIG01, GetRandom(500, 600), GetRandom(-1100, -1200), 1, 10)
    Teleport(Air_Vehicle.WF_FIG02, GetRandom(500, 600), GetRandom(-1100, -1200), 1, 10)
    Teleport(Air_Vehicle.WF_FIG03, GetRandom(500, 600), GetRandom(-1100, -1200), 1, 10)
    Teleport(Air_Vehicle.WF_FIG04, GetRandom(500, 600), GetRandom(-1100, -1200), 1, 10)
    if CurrentTrack == 1 and TrackTime > 1 then
      messages.Show("WF_Intro01")
    end
    if CurrentTrack == 2 then
      messages.Show("WF_Intro02")
    end
    if CurrentTrack == 3 then
      messages.Show("WF_Intro03")
    end
    if CurrentTrack == 4 then
      messages.Show("WF_Intro04")
    end
    if messages.HasFinishedPlaying("WF_Intro04") then
      messages.Show("WF_Intro05")
    end
  end
  local function SelectTrack()
    if CurrentTrack == 1 then
      TargetTime = 13
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.CS_TRACK01_T01)
      CameraSetTarget(Camera.Cutscene01, Air_Vehicle.XV_ATP02)
    end
    if CurrentTrack == 2 then
      TargetTime = 10
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.CS_TRACK02_T01)
      CameraSetTarget(Camera.Cutscene01, Waypoint.CS_TRACK02_L01)
      StopAndGuard(Air_Vehicle.XV_FIG01)
      StopAndGuard(Air_Vehicle.XV_FIG02)
      StopAndGuard(Air_Vehicle.XV_ATP02)
      StopAndGuard(Air_Vehicle.XV_ATP03)
      StopAndGuard(Air_Vehicle.XV_ATP04)
      StopAndGuard(Air_Vehicle.XV_ATP05)
    end
    if CurrentTrack == 3 then
      TargetTime = 9
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.CS_TRACK03_T01)
      CameraSetTarget(Camera.Cutscene01, Waypoint.CS_TRACK03_L01)
    end
    if CurrentTrack == 4 then
      TargetTime = 17
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.CS_TRACK04_T01)
      CameraSetTarget(Camera.Cutscene01, Waypoint.CS_TRACK04_L01)
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
  local skipdelay = GetTime() + 4
  while true do
    if (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED)) and skipdelay < GetTime() and GetCurrentMissionAttempted() then
      SkipCutscene = true
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
  Teleport(Air_Vehicle.XV_FIG01, 784, -174, 10, 50)
  Teleport(Air_Vehicle.XV_FIG02, 575, -401, 10, 50)
  Teleport(Air_Vehicle.XV_ATP02, 547, -208, 10, 50)
  Teleport(Air_Vehicle.XV_ATP03, 664, -306, 10, 50)
  Teleport(Air_Vehicle.XV_ATP04, 675, -203, 10, 50)
  Teleport(Air_Vehicle.XV_ATP05, 779, -307, 10, 50)
  StopAndGuard(Air_Vehicle.XV_FIG01)
  StopAndGuard(Air_Vehicle.XV_FIG02)
  StopAndGuard(Air_Vehicle.XV_ATP02)
  StopAndGuard(Air_Vehicle.XV_ATP03)
  StopAndGuard(Air_Vehicle.XV_ATP04)
  StopAndGuard(Air_Vehicle.XV_ATP05)
  messages.Summarise("WF_Intro01")
  messages.Summarise("WF_Intro02")
  messages.Summarise("WF_Intro03")
  messages.Summarise("WF_Intro04")
  messages.Summarise("WF_Intro05")
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.PlayerCam)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(2)
  UnfreezePlayer()
  InStartCutscene = false
end

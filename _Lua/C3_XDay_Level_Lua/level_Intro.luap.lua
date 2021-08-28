function level_Intro(owner)
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
  StartIntro()
  FreezePlayer()
  local function PulseTrack()
    group.SetHealthPercent(Unit_Group.Overlord, 100)
    group.SetHealthPercent(Unit_Group.XV_1stWaveRFL, 100)
    group.SetHealthPercent(Unit_Group.XV_2ndWaveRFL, 100)
    if CurrentTrack == 3 then
      messages.Show("WF_Intro05")
      if TrackTime == 3 then
        LandAirUnit(Air_Vehicle.WFAirTransport1, GetRandom(-253, -257), GetRandom(-823, -827), constant.ORDER_FORCED)
        LandAirUnit(Air_Vehicle.WFAirTransport2, GetRandom(-218, -222), GetRandom(-828, -832), constant.ORDER_FORCED)
      end
    end
    if CurrentTrack == 1 and TrackTime > 1 then
      messages.Show("WF_Intro01")
    end
    if messages.HasFinishedPlaying("WF_Intro01") then
      messages.Show("WF_Intro02")
    end
    if CurrentTrack == 2 then
      messages.Show("WF_Intro03")
    end
    if messages.HasFinishedPlaying("WF_Intro03") then
      messages.Show("WF_Intro04")
    end
    if CurrentTrack == 4 then
      messages.Show("WF_Intro06")
    end
  end
  local function SelectTrack()
    if CurrentTrack == 1 then
      TargetTime = 14
      CameraSetWaypoint(Camera.Cam1, Waypoint.Cut1)
    end
    if CurrentTrack == 2 then
      TargetTime = 13
      SetCamera(Camera.Cam2)
      CameraSetWaypoint(Camera.Cam2, Waypoint.Cut2)
      group.ScatterInArea(Unit_Group.Overlord, -235, -770, 20, 40)
    end
    if CurrentTrack == 3 then
      TargetTime = 8
      SetCamera(Camera.Cam3)
      CameraSetWaypoint(Camera.Cam3, Waypoint.Cut3)
      GoToArea(Air_Vehicle.WFAirTransport1, -225, -815, 10)
      GoToArea(Air_Vehicle.WFAirTransport2, -210, -835, 10)
    end
    if CurrentTrack == 4 then
      TargetTime = 6
      SetCamera(Camera.Cam4)
      CameraSetWaypoint(Camera.Cam4, Waypoint.Cut4)
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
  local skipdelay = GetTime() + 1
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
      SetCamera(Camera.Cam1)
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
  messages.Summarise("WF_Intro01")
  messages.Summarise("WF_Intro02")
  messages.Summarise("WF_Intro03")
  messages.Summarise("WF_Intro04")
  messages.Summarise("WF_Intro05")
  messages.Summarise("WF_Intro06")
  ClearMessageQueue()
  group.ScatterInArea(Unit_Group.Overlord, -235, -770, 20, 40)
  if CurrentTrack < 3 then
    while not Teleport(Air_Vehicle.WFAirTransport1, GetRandom(-253, -257), GetRandom(-823, -827), 300, 10) do
      EndFrame()
    end
    while not Teleport(Air_Vehicle.WFAirTransport2, GetRandom(-218, -222), GetRandom(-828, -832), 300, 10) do
      EndFrame()
    end
  end
  messages.SetRead("WF_Free_Mis_Vets")
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.PlayerCam)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  UnfreezePlayer()
  InStartCutscene = false
end

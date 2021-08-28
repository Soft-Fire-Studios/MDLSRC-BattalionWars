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
  AttackEachOther(Troop.XV_INTRO01, Troop.LG_INTRO01)
  AttackEachOther(Troop.XV_INTRO02, Troop.LG_INTRO02)
  AttackEachOther(Troop.XV_INTRO03, Troop.LG_INTRO03)
  local PulseTrack = function()
    if messages.HasFinishedPlaying("WF_CUT01") then
      messages.Show("WF_CUT02")
    end
    if messages.HasFinishedPlaying("WF_CUT05") then
      messages.Show("WF_CUT06")
    end
  end
  local function SelectTrack()
    if CurrentTrack == 1 then
      TargetTime = 13
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.CS_TRACK01_T01)
      CameraSetTarget(Camera.Cutscene01, Waypoint.CS_TRACK01_L01)
      messages.Show("WF_CUT01")
    end
    if CurrentTrack == 2 then
      TargetTime = 8
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.CS_TRACK02_T01)
      CameraSetTarget(Camera.Cutscene01, Waypoint.CS_TRACK02_L01)
      messages.Show("WF_CUT03")
    end
    if CurrentTrack == 3 then
      TargetTime = 11
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.CS_TRACK03_T01)
      CameraSetTarget(Camera.Cutscene01, Waypoint.CS_TRACK03_L01)
      messages.Show("WF_CUT04")
      GoToArea(Ground_Vehicle.LG_HTK03, -290, -60, 5)
    end
    if CurrentTrack == 4 then
      TargetTime = 20
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.CS_TRACK04_T01)
      CameraSetTarget(Camera.Cutscene01, Waypoint.CS_TRACK04_L01)
      messages.Show("WF_CUT05")
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
  ClearMessageQueue()
  messages.Summarise("WF_CUT01")
  messages.Summarise("WF_CUT02")
  messages.Summarise("WF_CUT03")
  messages.Summarise("WF_CUT04")
  messages.Summarise("WF_CUT05")
  messages.Summarise("WF_CUT06")
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.PlayerCam)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  UnfreezePlayer()
  InStartCutscene = false
end

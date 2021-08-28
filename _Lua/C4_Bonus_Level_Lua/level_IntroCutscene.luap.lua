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
  group.Add(Unit_Group.IntroPush, Troop.WF_INTRO_RFL01)
  group.Add(Unit_Group.IntroPush, Troop.WF_INTRO_RFL02)
  group.Add(Unit_Group.IntroPush, Troop.WF_INTRO_RFL03)
  group.Add(Unit_Group.IntroPush, Troop.WF_INTRO_RFL04)
  group.Add(Unit_Group.IntroPush, Troop.XV_INTRO_RFL01)
  group.Add(Unit_Group.IntroPush, Troop.XV_INTRO_RFL02)
  group.Add(Unit_Group.IntroPush, Troop.XV_INTRO_RFL03)
  group.Add(Unit_Group.IntroPush, Troop.XV_INTRO_RFL04)
  group.Spawn(Unit_Group.IntroPush, false)
  group.Add(Unit_Group.IntroFlee, Troop.XV_INTRO_RFL10)
  group.Add(Unit_Group.IntroFlee, Troop.XV_INTRO_RFL11)
  group.Add(Unit_Group.IntroFlee, Troop.XV_INTRO_RFL12)
  group.Add(Unit_Group.IntroFlee, Troop.XV_INTRO_RFL13)
  group.Add(Unit_Group.IntroFlee, Troop.XV_INTRO_RFL14)
  group.Add(Unit_Group.IntroFlee, Troop.XV_INTRO_RFL15)
  group.Spawn(Unit_Group.IntroFlee, false)
  FreezePlayer()
  StartIntro()
  local function PulseTrack()
    messages.Process()
    if CurrentTrack == 1 and TrackTime > 1 then
      messages.Show("LG_Intro01")
    end
    if CurrentTrack == 2 then
      messages.Show("LG_Intro02")
    end
    if CurrentTrack == 3 then
      messages.Show("LG_Intro03")
      AttackTarget(Troop.WF_INTRO_RFL01, Troop.XV_INTRO_RFL01)
      AttackTarget(Troop.WF_INTRO_RFL02, Troop.XV_INTRO_RFL02)
      AttackTarget(Troop.WF_INTRO_RFL03, Troop.XV_INTRO_RFL03)
      AttackTarget(Troop.WF_INTRO_RFL04, Troop.XV_INTRO_RFL04)
    end
    if messages.HasFinishedPlaying("LG_Intro03") then
      messages.Show("LG_Intro04")
    end
    if CurrentTrack == 4 then
      messages.Show("LG_Intro05")
    end
  end
  local function SelectTrack()
    group.Spawn(Unit_Group.IntroPush, false)
    group.Spawn(Unit_Group.IntroFlee, false)
    if CurrentTrack == 1 then
      TargetTime = 9
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.INTRO_CS01_T01)
      CameraSetTarget(Camera.Cutscene01, Waypoint.INTRO_CS01_L01)
    end
    if CurrentTrack == 2 then
      TargetTime = 10
      group.Spawn(Unit_Group.IntroFlee, true)
      group.GoToArea(Unit_Group.IntroFlee, -900, -150, constant.ORDER_FORCED)
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.INTRO_CS04_T01)
      CameraSetTarget(Camera.Cutscene01, Waypoint.INTRO_CS04_L01)
    end
    if CurrentTrack == 3 then
      TargetTime = 14
      group.Spawn(Unit_Group.IntroPush, true)
      group.GoToArea(Unit_Group.IntroPush, -687, -535)
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.INTRO_CS02_T01)
      CameraSetTarget(Camera.Cutscene01, Waypoint.INTRO_CS02_L01)
    end
    if CurrentTrack == 4 then
      TargetTime = 11
      group.GoToArea(Unit_Group.IntroTanks, -865, -730)
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.INTRO_CS03_T01)
      CameraSetTarget(Camera.Cutscene01, Waypoint.INTRO_CS03_L01)
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
    PulseTrack()
    if not AdvanceTrack() then
      break
    end
    if TrackStamp == GetTime() then
      SelectTrack()
    end
    if GetTime() > TrackStamp + 1 then
      TrackStamp = GetTime()
      TrackTime = TrackTime + 1
    end
    EndFrame()
  end
  messages.Summarise("LG_Intro01")
  messages.Summarise("LG_Intro02")
  messages.Summarise("LG_Intro03")
  messages.Summarise("LG_Intro04")
  messages.Summarise("LG_Intro05")
  ClearMessageQueue()
  group.Spawn(Unit_Group.IntroPush, false)
  group.Spawn(Unit_Group.IntroFlee, false)
  GoToArea(Ground_Vehicle.LG_HTK01, -697, -21, 5, nil, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.LG_HTK02, -701, -9, 5, nil, constant.ORDER_FORCED)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.PlayerCam)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  UnfreezePlayer()
  InStartCutscene = false
end

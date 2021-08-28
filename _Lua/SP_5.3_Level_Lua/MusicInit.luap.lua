function MusicInit(owner)
  local debug = true
  local inGame = false
  local activityMusicLevel = 0.15
  function PlayLightningSound()
    PlayEffect(Scripted_Effect.LightningSound, 3, 0, 0, 0)
  end
  function StartIntro()
    if debug then
      DebugOut("start intro")
    end
    inGame = false
    SetMusicVolume(0, 0)
    StartMusic(constant.INTRO)
    SetMusicVolume(1, 1)
  end
  function EndIntro(mainMusicStartOverride)
    mainMusicStartOverride = 0
    if debug then
      DebugOut("end intro")
    end
    SetMusicVolume(0, 0.5)
    WaitFor(0.5)
    StopMusic()
    if mainMusicStartOverride == nil then
      local randomPos = GetRandom(0, 90, 10)
      StartMusic(constant.MAIN_MUSIC, randomPos)
    else
      StartMusic(constant.MAIN_MUSIC, mainMusicStartOverride)
    end
    SetMusicVolume(0.75, 0.5)
    inGame = true
  end
  function StartOutro()
    if debug then
      DebugOut("start outro")
    end
    SetMusicVolume(0, 0.5)
    WaitFor(0.5)
    StopMusic()
    WaitFor(0.1)
    inGame = false
    StartMusic(constant.OUTRO)
    SetMusicVolume(1, 1)
  end
  function EndOutro()
    if debug then
      DebugOut("end outro")
    end
    SetMusicVolume(0, 0.5)
    WaitFor(0.5)
  end
  function EndMusic()
    if debug then
      DebugOut("end music")
    end
    SetMusicVolume(0, 3)
    WaitFor(3)
    StopMusic()
  end
  function UpdateMusic()
    while inGame do
      if GetActivity() < activityMusicLevel then
        SetMusicVolume(0.75)
      else
        SetMusicVolume(0.4)
      end
      WaitFor(1)
    end
    WaitFor(1)
  end
  function SetActivityMusicLevel(level)
    activityMusicLevel = level
  end
end

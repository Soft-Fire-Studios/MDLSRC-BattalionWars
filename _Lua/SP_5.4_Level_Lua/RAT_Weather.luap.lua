function RAT_Weather(owner)
  local RandomTime = 0
  repeat
    EndFrame()
  until cutscene >= 1
  PlayEffect(Scripted_Effect.Blizzard, 3, 0, 0, 0)
  SetCameraEffectIntensity(0)
  WaitFor(5)
  DebugOut("Let the weather begin!!!")
  while true do
    PlayEffect(Scripted_Effect.Snow, 3, 0, 0, 0)
    RandomTime = GetRandom(5, 30)
    SetCameraEffectFadeIn(5)
    DebugOut("Fade In Camera Effect")
    WaitFor(RandomTime)
    PlayEffect(Scripted_Effect.Blizzard, 3, 0, 0, 0)
    RandomTime = GetRandom(5, 20)
    SetCameraEffectFadeIn(5)
    DebugOut("Fade In Camera Effect")
    WaitFor(RandomTime)
    PlayEffect(Scripted_Effect.Null, 3, 0, 0, 0)
    RandomTime = GetRandom(5, 30)
    SetCameraEffectFadeOut(5)
    DebugOut("Fade Out Camera Effect")
    WaitFor(RandomTime)
    if 1 <= CutsceneMidFightersStart then
      break
    end
    EndFrame()
  end
  DebugOut("Turn off blizzard!!!")
  while true do
    PlayEffect(Scripted_Effect.Snow, 3, 0, 0, 0)
    RandomTime = GetRandom(5, 30)
    SetCameraEffectFadeIn(5)
    DebugOut("Fade In Camera Effect")
    WaitFor(RandomTime)
    PlayEffect(Scripted_Effect.Null, 3, 0, 0, 0)
    RandomTime = GetRandom(5, 30)
    SetCameraEffectFadeOut(5)
    DebugOut("Fade Out Camera Effect")
    WaitFor(RandomTime)
    EndFrame()
  end
  EndFrame()
  return
end

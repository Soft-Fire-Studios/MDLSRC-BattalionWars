function S2_DUSTSTORM(owner)
  local RandomTime = 0
  PlayEffect(Scripted_Effect.Dust, 3, 0, 0, 0)
  SetCameraEffectIntensity(0)
  WaitFor(1)
  while true do
    RandomTime = GetRandom(5, 90)
    SetCameraEffectFadeIn(5)
    DebugOut("Fade In Camera Effect")
    WaitFor(RandomTime)
    RandomTime = GetRandom(5, 60)
    SetCameraEffectFadeOut(5)
    DebugOut("Fade Out Camera Effect")
    WaitFor(RandomTime)
    EndFrame()
  end
  EndFrame()
  return
end

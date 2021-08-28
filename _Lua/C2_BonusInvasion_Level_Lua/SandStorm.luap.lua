function SandStorm(owner)
  local RandomTime = 0
  PlayEffect(Scripted_Effect.Dust, 3, 0, 0, 0)
  SetCameraEffectIntensity(0)
  WaitFor(1)
  while true do
    RandomTime = GetRandom(5, 90)
    SetCameraEffectFadeIn(5)
    WaitFor(RandomTime)
    RandomTime = GetRandom(5, 30)
    SetCameraEffectFadeOut(5)
    WaitFor(RandomTime)
    EndFrame()
  end
  EndFrame()
  return
end

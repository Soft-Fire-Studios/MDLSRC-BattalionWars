function C1M1_Weather(owner)
  local RandomTime = 0
  local StopSnow = 0
  local SnowStarted = 0
  PlayEffect(Scripted_Effect.Snow, 3, 0, 0, 0)
  while true do
    if StopSnow == 0 and IsInArea(GetPlayerUnit(), Map_Zone.Listening_Posts_3) then
      StopSnow = 1
      DebugOut("Stop Snowing, StopSnow = ", StopSnow)
    end
    if StopSnow == 1 and IsInArea(GetPlayerUnit(), Map_Zone.Listening_Posts_2) then
      StopSnow = 0
      DebugOut("Start Snowing, StopSnow = ", StopSnow)
    end
    if StopSnow == 0 and SnowStarted == 0 then
      SnowStarted = 1
      DebugOut("SnowStarted = ", SnowStarted)
      SetCameraEffectFadeIn(5)
      WaitFor(5)
    end
    if StopSnow == 1 and SnowStarted == 1 then
      SnowStarted = 0
      DebugOut("SnowStarted = ", SnowStarted)
      SetCameraEffectFadeOut(5)
      WaitFor(5)
    end
    EndFrame()
  end
  EndFrame()
  return
end

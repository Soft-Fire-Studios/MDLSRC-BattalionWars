function C1M4_Weather(owner)
  local Snow1Status = 0
  local Snow2Status = 0
  local ToggleSnow1 = 0
  local ToggleSnow2 = 0
  PlayEffect(Scripted_Effect.Snow, 3, 0, 0, 0)
  SetCameraEffectFadeOut(1)
  repeat
    if IsInArea(GetPlayerUnit(), Map_Zone.Snow_Zone_1) and Snow1Status == 0 then
      ToggleSnow1 = 1
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.Snow_Zone_1) == false and Snow1Status == 1 then
      ToggleSnow1 = 1
    end
    if ToggleSnow1 == 1 and Snow1Status == 0 then
      DebugOut("Snow 1 On")
      SetCameraEffectFadeIn(1)
      ToggleSnow1 = 0
      Snow1Status = 1
    end
    if ToggleSnow1 == 1 and Snow1Status == 1 then
      DebugOut("Snow 1 Off")
      SetCameraEffectFadeOut(3)
      ToggleSnow1 = 0
      Snow1Status = 0
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.Snow_Zone_2) and Snow2Status == 0 then
      ToggleSnow2 = 1
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.Snow_Zone_2) == false and Snow2Status == 1 then
      ToggleSnow2 = 1
    end
    if ToggleSnow2 == 1 and Snow2Status == 0 then
      DebugOut("Snow 2 On")
      SetCameraEffectFadeIn(1)
      ToggleSnow2 = 0
      Snow2Status = 1
    end
    if ToggleSnow2 == 1 and Snow2Status == 1 then
      DebugOut("Snow 2 Off")
      SetCameraEffectFadeOut(3)
      ToggleSnow2 = 0
      Snow2Status = 0
    end
    EndFrame()
  until LevelState == 4
end

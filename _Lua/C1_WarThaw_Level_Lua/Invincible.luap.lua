function Invincible(owner)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.Trigger11)
  repeat
    SetHealthPercent(Air_Vehicle.WF1_Bomber, 100)
    WaitFor(1)
    EndFrame()
  until bomberalive == 1
  EndFrame()
end

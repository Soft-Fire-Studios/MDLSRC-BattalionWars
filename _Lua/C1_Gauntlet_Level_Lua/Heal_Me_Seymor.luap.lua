function Heal_Me_Seymor(owner)
  repeat
    SetHealthPercent(owner, 100)
    EndFrame()
  until LevelState == 3
end

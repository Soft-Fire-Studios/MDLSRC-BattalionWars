function Inwincible(owner)
  WaitFor(1)
  local hellfreezesover = 0
  repeat
    SetHealthPercent(owner, 100)
    WaitFor(0.1)
  until hellfreezesover == 1
end

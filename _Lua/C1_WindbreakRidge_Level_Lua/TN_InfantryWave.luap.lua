function TN_InfantryWave(owner)
  local cap_stamp = 0
  WaitFor(GetRandom(8))
  GoToXZ(owner, 283, 53, 10)
  GoToXZ(owner, 208, 13, 8)
  GoToXZ(owner, 170, -65, 8)
  GoToXZ(owner, GetRandom(190, 220), GetRandom(-140, -145), 8)
  WaitFor(GetRandom(15, 20))
  GoToXZ(owner, 201, -178, 8)
  GoToXZ(owner, 201, -223, 8)
  GoToXZ(owner, GetRandom(170, 205), GetRandom(-205, -250), 8)
end

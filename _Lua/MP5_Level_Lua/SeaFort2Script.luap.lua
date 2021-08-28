function SeaFort2Script(owner)
  local tower1 = 0
  local tower2 = 0
  local tower3 = 0
  local tower4 = 0
  local tower5 = 0
  local tower6 = 0
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 90
    repeat
      if IsDead(Building.AAA1) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower1 = 1
        Kill(Building.AAA1)
      else
        EndFrame()
      end
      if IsDead(Building.AAA2) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower1 = 1
        Kill(Building.AAA2)
      else
        EndFrame()
      end
      if IsDead(Building.AAA3) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower1 = 1
        Kill(Building.AAA3)
      else
        EndFrame()
      end
      if IsDead(Building.AAA4) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower1 = 1
        Kill(Building.AAA4)
      else
        EndFrame()
      end
      if IsDead(Building.AAA5) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower1 = 1
        Kill(Building.AAA5)
      else
        EndFrame()
      end
      if IsDead(Building.AAA6) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) then
        tower1 = 1
        Kill(Building.AAA6)
      else
        EndFrame()
      end
    until tower1 == 1
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 70
    repeat
      if IsDead(Building.AAA1) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower2 = 1
        Kill(Building.AAA1)
      else
        EndFrame()
      end
      if IsDead(Building.AAA2) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower2 = 1
        Kill(Building.AAA2)
      else
        EndFrame()
      end
      if IsDead(Building.AAA3) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower2 = 1
        Kill(Building.AAA3)
      else
        EndFrame()
      end
      if IsDead(Building.AAA4) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower2 = 1
        Kill(Building.AAA4)
      else
        EndFrame()
      end
      if IsDead(Building.AAA5) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower2 = 1
        Kill(Building.AAA5)
      else
        EndFrame()
      end
      if IsDead(Building.AAA6) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) then
        tower2 = 1
        Kill(Building.AAA6)
      else
        EndFrame()
      end
    until tower2 == 1
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 50
    repeat
      if IsDead(Building.AAA1) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower3 = 1
        Kill(Building.AAA1)
      else
        EndFrame()
      end
      if IsDead(Building.AAA2) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower3 = 1
        Kill(Building.AAA2)
      else
        EndFrame()
      end
      if IsDead(Building.AAA3) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower3 = 1
        Kill(Building.AAA3)
      else
        EndFrame()
      end
      if IsDead(Building.AAA4) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower3 = 1
        Kill(Building.AAA4)
      else
        EndFrame()
      end
      if IsDead(Building.AAA5) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower3 = 1
        Kill(Building.AAA5)
      else
        EndFrame()
      end
      if IsDead(Building.AAA6) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) then
        tower3 = 1
        Kill(Building.AAA6)
      else
        EndFrame()
      end
    until tower3 == 1
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 30
    repeat
      if IsDead(Building.AAA1) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower4 = 1
        Kill(Building.AAA1)
      else
        EndFrame()
      end
      if IsDead(Building.AAA2) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower4 = 1
        Kill(Building.AAA2)
      else
        EndFrame()
      end
      if IsDead(Building.AAA3) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower4 = 1
        Kill(Building.AAA3)
      else
        EndFrame()
      end
      if IsDead(Building.AAA4) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower4 = 1
        Kill(Building.AAA4)
      else
        EndFrame()
      end
      if IsDead(Building.AAA5) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower4 = 1
        Kill(Building.AAA5)
      else
        EndFrame()
      end
      if IsDead(Building.AAA6) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) then
        tower4 = 1
        Kill(Building.AAA6)
      else
        EndFrame()
      end
    until tower4 == 1
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 10
    repeat
      if IsDead(Building.AAA1) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA1) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower5 = 1
        Kill(Building.AAA1)
      else
        EndFrame()
      end
      if IsDead(Building.AAA2) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA2) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower5 = 1
        Kill(Building.AAA2)
      else
        EndFrame()
      end
      if IsDead(Building.AAA3) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA3) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower5 = 1
        Kill(Building.AAA3)
      else
        EndFrame()
      end
      if IsDead(Building.AAA4) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) and (GetRange(netvariable.player1.Player1, Building.AAA4) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower5 = 1
        Kill(Building.AAA4)
      else
        EndFrame()
      end
      if IsDead(Building.AAA5) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA5) < GetRange(netvariable.player1.Player1, Building.AAA6) or IsDead(Building.AAA6)) then
        tower5 = 1
        Kill(Building.AAA5)
      else
        EndFrame()
      end
      if IsDead(Building.AAA6) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA1) or IsDead(Building.AAA1)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA2) or IsDead(Building.AAA2)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA3) or IsDead(Building.AAA3)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA4) or IsDead(Building.AAA4)) and (GetRange(netvariable.player1.Player1, Building.AAA6) < GetRange(netvariable.player1.Player1, Building.AAA5) or IsDead(Building.AAA5)) then
        tower5 = 1
        Kill(Building.AAA6)
      else
        EndFrame()
      end
    until tower5 == 1
  end
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      EndFrame()
    until IsDead(owner)
  end
end

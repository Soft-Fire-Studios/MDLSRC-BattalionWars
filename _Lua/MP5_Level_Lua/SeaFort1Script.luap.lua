function SeaFort1Script(owner)
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
      if IsDead(Building.AA1) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower1 = 1
        Kill(Building.AA1)
      else
        EndFrame()
      end
      if IsDead(Building.AA2) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower1 = 1
        Kill(Building.AA2)
      else
        EndFrame()
      end
      if IsDead(Building.AA3) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower1 = 1
        Kill(Building.AA3)
      else
        EndFrame()
      end
      if IsDead(Building.AA4) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower1 = 1
        Kill(Building.AA4)
      else
        EndFrame()
      end
      if IsDead(Building.AA5) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower1 = 1
        Kill(Building.AA5)
      else
        EndFrame()
      end
      if IsDead(Building.AA6) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) then
        tower1 = 1
        Kill(Building.AA6)
      else
        EndFrame()
      end
    until tower1 == 1
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 70
    repeat
      if IsDead(Building.AA1) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower2 = 1
        Kill(Building.AA1)
      else
        EndFrame()
      end
      if IsDead(Building.AA2) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower2 = 1
        Kill(Building.AA2)
      else
        EndFrame()
      end
      if IsDead(Building.AA3) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower2 = 1
        Kill(Building.AA3)
      else
        EndFrame()
      end
      if IsDead(Building.AA4) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower2 = 1
        Kill(Building.AA4)
      else
        EndFrame()
      end
      if IsDead(Building.AA5) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower2 = 1
        Kill(Building.AA5)
      else
        EndFrame()
      end
      if IsDead(Building.AA6) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) then
        tower2 = 1
        Kill(Building.AA6)
      else
        EndFrame()
      end
    until tower2 == 1
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 50
    repeat
      if IsDead(Building.AA1) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower3 = 1
        Kill(Building.AA1)
      else
        EndFrame()
      end
      if IsDead(Building.AA2) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower3 = 1
        Kill(Building.AA2)
      else
        EndFrame()
      end
      if IsDead(Building.AA3) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower3 = 1
        Kill(Building.AA3)
      else
        EndFrame()
      end
      if IsDead(Building.AA4) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower3 = 1
        Kill(Building.AA4)
      else
        EndFrame()
      end
      if IsDead(Building.AA5) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower3 = 1
        Kill(Building.AA5)
      else
        EndFrame()
      end
      if IsDead(Building.AA6) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) then
        tower3 = 1
        Kill(Building.AA6)
      else
        EndFrame()
      end
    until tower3 == 1
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 30
    repeat
      if IsDead(Building.AA1) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower4 = 1
        Kill(Building.AA1)
      else
        EndFrame()
      end
      if IsDead(Building.AA2) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower4 = 1
        Kill(Building.AA2)
      else
        EndFrame()
      end
      if IsDead(Building.AA3) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower4 = 1
        Kill(Building.AA3)
      else
        EndFrame()
      end
      if IsDead(Building.AA4) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower4 = 1
        Kill(Building.AA4)
      else
        EndFrame()
      end
      if IsDead(Building.AA5) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower4 = 1
        Kill(Building.AA5)
      else
        EndFrame()
      end
      if IsDead(Building.AA6) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) then
        tower4 = 1
        Kill(Building.AA6)
      else
        EndFrame()
      end
    until tower4 == 1
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 10
    repeat
      if IsDead(Building.AA1) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA1) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower5 = 1
        Kill(Building.AA1)
      else
        EndFrame()
      end
      if IsDead(Building.AA2) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA2) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower5 = 1
        Kill(Building.AA2)
      else
        EndFrame()
      end
      if IsDead(Building.AA3) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA3) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower5 = 1
        Kill(Building.AA3)
      else
        EndFrame()
      end
      if IsDead(Building.AA4) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) and (GetRange(netvariable.player1.Player1, Building.AA4) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower5 = 1
        Kill(Building.AA4)
      else
        EndFrame()
      end
      if IsDead(Building.AA5) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA5) < GetRange(netvariable.player1.Player1, Building.AA6) or IsDead(Building.AA6)) then
        tower5 = 1
        Kill(Building.AA5)
      else
        EndFrame()
      end
      if IsDead(Building.AA6) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA1) or IsDead(Building.AA1)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA2) or IsDead(Building.AA2)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA3) or IsDead(Building.AA3)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA4) or IsDead(Building.AA4)) and (GetRange(netvariable.player1.Player1, Building.AA6) < GetRange(netvariable.player1.Player1, Building.AA5) or IsDead(Building.AA5)) then
        tower5 = 1
        Kill(Building.AA6)
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

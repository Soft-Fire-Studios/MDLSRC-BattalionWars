function Gambit_Part_1_Cutscene_PlayerWins(owner)
  cutscenePlayerWins = owner
  DebugOut("Cutscene Player Wins ID", cutscenePlayerWins)
  while true do
    if cutscenePlayerWinsBegin == 1 then
      cutscenePlayerWinsBegin = 2
      cutsceneEndIsOver = 1
    end
    EndFrame()
  end
end

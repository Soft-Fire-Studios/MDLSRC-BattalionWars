function Ticker(owner)
  repeat
    WaitFor(10)
    DebugOut("The time sponsored by Battallion Wars is ", GetTime() - cutscenetimer)
  until missionfailed == 1
end

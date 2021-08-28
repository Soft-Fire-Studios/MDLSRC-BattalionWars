function owner_WF_Grunt_Health(owner)
  repeat
    if GetHealthPercent(owner) < 90 then
      WaitFor(0.1)
      SetHealthPercent(owner, 100)
    end
    EndFrame()
  until MidCutsceneEndedDocks == true
end

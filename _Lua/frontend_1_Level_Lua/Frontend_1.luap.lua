function Frontend_1(owner)
  DebugOut("Frontend ticked ***")
  local Page = {}
  local Pages = {
    Briefing = GetBriefingPage,
    CutsceneIn = GetCutsceneInPage,
    CutsceneOut = GetCutsceneOutPage,
    Defeat = GetDefeatPage,
    MissionSelect = GetMissionSelectPage,
    NewStuff = GetNewStuffPage,
    ReplayQuit = GetReplayQuitPage,
    Victory = GetVictoryPage,
    Game = GetGamePage
  }
  print("Waiting for init ...")
  WaitFor(0)
  print("Init done, entering frontend 1 ...")
  LevelsDone, SelectedLevel, SelectedSlot = GetPersistentData()
  MStatus = GetMissionStatus()
  if MStatus == GAMESTATUS.WIN then
    ResetPageStack("CutsceneOut")
  elseif MStatus == GAMESTATUS.LOSE then
    ResetPageStack("Defeat")
  elseif MStatus == GAMESTATUS.QUIT then
    ResetPageStack("MissionSelect")
  elseif MStatus == GAMESTATUS.MISSIONS then
    ResetPageStack("MissionSelect")
    while FrontendDone == false do
      Page = Pages[NextPage]()
      OpenPage(Page)
      PageDone = false
      while PageDone == false do
        UpdatePage(Page)
        RenderPage(Page)
        WaitFor(0)
      end
      ClosePage(Page)
    end
  end
  print("Starting level: " .. SelectedLevel)
  RunLevel(SelectedLevel + FrontendOffset)
end

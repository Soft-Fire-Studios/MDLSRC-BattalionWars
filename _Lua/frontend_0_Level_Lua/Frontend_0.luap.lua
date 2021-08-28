function Frontend_0(owner)
  DebugOut("Frontend ticked ***")
  local Page = {}
  local Pages = {
    AnimLogo = GetAnimLogoPage,
    Attract = GetAttractPage,
    Credits = GetCreditsPage,
    LoadCard = GetLoadCardPage,
    Main = GetMainPage,
    Settings = GetSettingsPage,
    Start = GetStartPage
  }
  print("Waiting for init ...")
  WaitFor(0)
  print("Init done, entering frontend ...")
  LevelsDone, SelectedLevel, SelectedSlot = GetPersistentData()
  MStatus = GetMissionStatus()
  if MStatus == GAMESTATUS.MISSIONS then
    ResetPageStack("Start")
    PushPageStack("Main")
  elseif MStatus == GAMESTATUS.NONE then
    ResetPageStack("LoadCard")
  elseif MStatus == GAMESTATUS.QUIT then
    ResetPageStack("Start")
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
  RunLevel(SelectedLevel)
end

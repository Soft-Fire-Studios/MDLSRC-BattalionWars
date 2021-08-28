function CreditsMain(owner)
  local Pages = {Credits = GetCreditsPage}
  ResetPageStack("Credits")
  local AngloIslesID = 3
  SelectedFaction = AngloIslesID
  print("Waiting for init ...")
  WaitFor(0)
  print("Init done, entering frontend ...")
  LevelsDone, SelectedLevel, SelectedSlot = GetPersistentData()
  local Page = {}
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
  RunLevel(0)
end

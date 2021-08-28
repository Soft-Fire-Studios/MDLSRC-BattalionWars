function fe_concept(owner)
  local Pages = {Concepts = GetConceptsPage, FConcept = GetFConceptPage}
  ResetPageStack("FConcept")
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
  SetMissionStatus(GAMESTATUS.CONCEPT)
  RunLevel(0)
end

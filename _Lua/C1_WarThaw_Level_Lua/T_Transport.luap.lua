function T_Transport(owner)
  local loop = 0
  WaitFor(30)
  repeat
    EndFrame()
  until NumItemsInArea(Map_Zone.FinalBase, flag.TYPE_TUNDRAN) < 17 and IsDead(Ground_Vehicle.WFLightTank) == false
  AddToGroup(Unit_Group.FinalBase, Troop.T17_RifleMan)
  AddToGroup(Unit_Group.FinalBase, Troop.T18_RifleMan)
  AddToGroup(Unit_Group.FinalBase, Troop.T19_RifleMan)
  AddToGroup(Unit_Group.FinalBase, Troop.T20_RifleMan)
  EndFrame()
  GoToArea(Troop.T17_RifleMan, -400, -315, 25)
  GoToArea(Troop.T18_RifleMan, -400, -315, 25)
  GoToArea(Troop.T19_RifleMan, -400, -315, 25)
  GoToArea(Troop.T20_RifleMan, -400, -315, 25)
  WaitFor(1)
  loop = 1
  reinforce = 1
  WaitFor(10)
  PhoneMessage(64, 0, 2, 5, SpriteID.CO_T_Gorgi_Happy)
  PhoneMessage(65, 0, 0, 5, SpriteID.CO_WF_Herman_Sad)
  EndFrame()
  WaitFor(25)
  EndFrame()
end

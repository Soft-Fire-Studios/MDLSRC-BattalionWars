function C1M6_Tundrans(owner)
  local HillMoved = 0
  local WestHillMoved = 0
  local BigHillMoved = 0
  local LakeMoved = 0
  local MountainMoved = 0
  while true do
    if HillMoved == 1 and BigHillMoved == 1 and WestHillMoved == 1 and MountainMoved == 1 and LakeMoved == 1 then
      break
    end
    if HillMoved == 0 then
      if 1 <= NumItemsInArea(60, -290, 40, flag.TYPE_WFRONTIER) then
        PhoneMessage(53, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Herman_Happy)
        DebugOut("Hill Troops go right")
        GoToArea(Troop.Tbazooka0009, 50, -250, 10)
        GoToArea(Troop.Tbazooka0010, 50, -235, 10)
        HillMoved = 1
      elseif 1 <= NumItemsInArea(-75, -285, 40, flag.TYPE_WFRONTIER) then
        PhoneMessage(53, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Herman_Happy)
        DebugOut("Hill Troops go left")
        GoToArea(Troop.Tbazooka0009, -25, -260, 10)
        GoToArea(Troop.Tbazooka0010, -20, -235, 10)
        HillMoved = 1
      end
    end
    if WestHillMoved == 0 then
      if 1 <= NumItemsInArea(-90, -250, 40, flag.TYPE_WFRONTIER) then
        PhoneMessage(24, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nova_Happy)
        DebugOut("West Hill Troops attack")
        GoToArea(Troop.Tgrunt0024, -90, -170, 10)
        GoToArea(Troop.Tgrunt0025, -115, -225, 10)
        GoToArea(Troop.Tgrunt0026, -100, -200, 10)
        WestHillMoved = 1
      elseif 1 <= NumItemsInArea(-75, -285, 40, flag.TYPE_WFRONTIER) then
        PhoneMessage(24, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nova_Happy)
        DebugOut("West Hill Troops attack")
        GoToArea(Troop.Tgrunt0024, -90, -170, 10)
        GoToArea(Troop.Tgrunt0025, -115, -225, 10)
        GoToArea(Troop.Tgrunt0026, -100, -200, 10)
        WestHillMoved = 1
      end
    end
    if BigHillMoved == 0 then
      if 1 <= NumItemsInArea(-165, 90, 40, flag.TYPE_WFRONTIER) then
        DebugOut("Big Hill Troops go North")
        GoToArea(Troop.Tgrunt0003, -160, 30, 10)
        GoToArea(Troop.Tgrunt0004, -145, 1, 10)
        BigHillMoved = 1
      elseif 1 <= NumItemsInArea(-90, -60, 40, flag.TYPE_WFRONTIER) then
        DebugOut("Big Hill Troops go East")
        GoToArea(Troop.Tgrunt0003, -145, -10, 10)
        GoToArea(Troop.Tgrunt0004, -155, -35, 10)
        BigHillMoved = 1
      end
    end
    if LakeMoved == 0 then
      if 1 <= NumItemsInArea(90, -240, 40, flag.TYPE_WFRONTIER) then
        DebugOut("Lake Troops attack!")
        GoToArea(Troop.Tgrunt0020, 100, -180, 10)
        GoToArea(Troop.Tgrunt0023, 95, -190, 10)
        LakeMoved = 1
      elseif 1 <= NumItemsInArea(70, -120, 40, flag.TYPE_WFRONTIER) then
        DebugOut("Lake Troops attack!")
        GoToArea(Troop.Tgrunt0020, 100, -180, 10)
        GoToArea(Troop.Tgrunt0023, 95, -190, 10)
        LakeMoved = 1
      end
    end
    if MountainMoved == 0 then
      if 1 <= NumItemsInArea(275, 50, 40, flag.TYPE_WFRONTIER) then
        DebugOut("Mountain Troops attack!")
        GoToArea(Troop.Tgrunt0016, 310, 85, 10)
        GoToArea(Troop.Tgrunt0017, 305, 90, 10)
        GoToArea(Troop.Tgrunt0018, 315, 80, 10)
        MountainMoved = 1
      elseif 1 <= NumItemsInArea(240, 290, 40, flag.TYPE_WFRONTIER) then
        DebugOut("Mountain Troops attack!")
        GoToArea(Troop.Tgrunt0016, 240, 290, 10)
        GoToArea(Troop.Tgrunt0017, 235, 295, 10)
        GoToArea(Troop.Tgrunt0018, 245, 285, 10)
        MountainMoved = 1
      end
    end
    WaitFor(5)
    EndFrame()
  end
  return
end

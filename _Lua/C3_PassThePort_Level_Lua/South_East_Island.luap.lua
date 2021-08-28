function South_East_Island(owner)
  local loop = 0
  while loop == 0 do
    if GetGroupHealth(Unit_Group.aa1) < 90 then
      GoToArea(Unit_Group.xgrunt1, 125, -420, 50)
      GoToArea(Ground_Vehicle.xtank3, 75, -405, 50)
      loop = 1
    elseif 90 > GetGroupHealth(Unit_Group.aa2) then
      GoToArea(Unit_Group.xgrunt1, 125, -420, 50)
      GoToArea(Ground_Vehicle.xtank3, 95, -300, 50)
      loop = 2
    elseif 0 < NumItemsInArea(Map_Zone.se1, flag.TYPE_WFRONTIER) then
      GoToArea(Unit_Group.xgrunt1, 125, -420, 50)
      GoToArea(Ground_Vehicle.xtank3, 195, -385, 50)
      loop = 2
    else
      if 0 < NumItemsInArea(Map_Zone.bs1, flag.TYPE_WFRONTIER) - NumItemsInArea(Map_Zone.bs1, flag.GTYPE_BOMBER) then
        if IsInArea(GetPlayerUnit(), Map_Zone.setext) then
          PhoneMessage(12, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Happy)
        end
        GoToArea(Ground_Vehicle.xtank3, 175, -255, 50)
        loop = 3
      else
      end
    end
    EndFrame()
  end
  while loop == 1 do
    if 90 > GetGroupHealth(Unit_Group.aa2) then
      GoToArea(Ground_Vehicle.xtank3, 95, -300, 50)
      loop = 2
    elseif 0 < NumItemsInArea(Map_Zone.se1, flag.TYPE_WFRONTIER) then
      GoToArea(Ground_Vehicle.xtank3, 195, -385, 50)
      loop = 2
    else
      if 0 < NumItemsInArea(Map_Zone.bs1, flag.TYPE_WFRONTIER) - NumItemsInArea(Map_Zone.bs1, flag.GTYPE_BOMBER) then
        if IsInArea(GetPlayerUnit(), Map_Zone.setext) then
          PhoneMessage(12, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Happy)
        end
        GoToArea(Ground_Vehicle.xtank3, 175, -255, 50)
        loop = 3
      else
      end
    end
    EndFrame()
  end
  while loop == 2 do
    if GetHealthPercent(Ground_Vehicle.xtank3) < 60 then
      GoToArea(Ground_Vehicle.bs1, GetObjectXPosition(Ground_Vehicle.xtank3), GetObjectZPosition(Ground_Vehicle.xtank3), 50)
      if IsInArea(GetPlayerUnit(), Map_Zone.setext) then
        PhoneMessage(12, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Happy)
      end
      loop = 0
    else
      if 0 < NumItemsInArea(Map_Zone.bs1, flag.TYPE_WFRONTIER) - NumItemsInArea(Map_Zone.bs1, flag.GTYPE_BOMBER) then
        if IsInArea(GetPlayerUnit(), Map_Zone.setext) then
          PhoneMessage(12, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Happy)
        end
        GoToArea(Ground_Vehicle.bs1, 175, -255, 50)
        loop = 3
      else
      end
    end
    EndFrame()
  end
  loop = 0
end

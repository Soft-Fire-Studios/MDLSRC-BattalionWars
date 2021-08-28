function C1M1_Tutorial10(owner)
  local TransferDone = 0
  Despawn(Troop.Tgrunt0001)
  Despawn(Troop.Tgrunt0002)
  Despawn(Troop.Tgrunt0003)
  while true do
    if C1M1_Global_Variable == 10 and IsInArea(GetPlayerUnit(), Map_Zone.Hill) then
      ClearMessageQueue()
      PhoneMessage(184, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      break
    end
    EndFrame()
  end
  Spawn(Troop.Tgrunt0001)
  Spawn(Troop.Tgrunt0002)
  Spawn(Troop.Tgrunt0003)
  EnableWeapon(Troop.Tgrunt0001, 0)
  EnableWeapon(Troop.Tgrunt0002, 0)
  EnableWeapon(Troop.Tgrunt0003, 0)
  local Timer = GetTime()
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.Endzone) then
      ClearMessageQueue()
      PhoneMessage(125, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
      GoToArea(Troop.Tgrunt0001, 200, 675, 10, 0, constant.ORDER_FORCED)
      GoToArea(Troop.Tgrunt0002, 200, 675, 10, 0, constant.ORDER_FORCED)
      GoToArea(Troop.Tgrunt0003, 200, 675, 10, 0, constant.ORDER_FORCED)
      SetObjectiveData(Objective_Marker.ObjectiveEleven, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.ObjectiveEnd, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      break
    end
    EndFrame()
  end
  C1M1_Global_Variable = 11
  DebugOut("C1M1 Global Variable = ", C1M1_Global_Variable)
  local Timer = GetTime()
  while true do
    if C1M1_Global_Variable == 11 and GetTime() > Timer + 30 then
      Timer = GetTime()
      DebugOut("Tutorial 10e Timer = ", Timer, " seconds")
    end
    EndFrame()
  end
  EndFrame()
  return
end

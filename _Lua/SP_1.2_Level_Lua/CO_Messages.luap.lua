function CO_Messages(owner)
  COMessages = owner
  local AngloBazookasDead = 0
  local AAVehicleReminder = 0
  local OneNavalGunDeadStringPlayed = 0
  local AAVehicleMessagePlayed = 0
  local CapturePointMessagePlayed = 0
  repeat
    if IsDead(Troop.AIbazooka1) and IsDead(Troop.AIbazooka2) and IsDead(Troop.AIbazooka3) and IsDead(Troop.AIbazooka4) and BeginBazookaCutscene == false and AngloBazookasDead == 0 then
      AngloBazookasDead = 1
      if GetPrimaryActionState(Ground_Vehicle.SEaatank1) ~= constant.ACTION_STATE_FOLLOWING and GetPrimaryActionState(Ground_Vehicle.SEaatank1) ~= constant.ACTION_STATE_ATTACK and GetPlayerUnit() ~= Ground_Vehicle.SEaatank1 then
        PhoneMessage(12, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
        PhoneMessage(14, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
      else
        PhoneMessage(5, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
      end
    end
    EndFrame()
  until BeginBazookaCutscene == true
  repeat
    if IsInArea(GetPlayerUnit(), Map_Zone.AAVehicleReminder) and GetPrimaryActionState(Ground_Vehicle.SEaatank1) ~= constant.ACTION_STATE_FOLLOWING and GetPrimaryActionState(Ground_Vehicle.SEaatank1) ~= constant.ACTION_STATE_ATTACK and GetPlayerUnit() ~= Ground_Vehicle.SEaatank1 and AAVehicleReminder == 0 then
      AAVehicleReminder = 1
      PhoneMessage(17, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      EndFrame()
    end
    EndFrame()
  until GuardTutorialEnd == true
  repeat
    if IsDead(Building.NavalCannon1) == true and CutsceneAbandonNavalGunsStart == 0 and OneNavalGunDeadStringPlayed == 0 then
      OneNavalGunDeadStringPlayed = 1
      PhoneMessage(44, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
    end
    if IsDead(Building.NavalCannon2) == true and CutsceneAbandonNavalGunsStart == 0 and OneNavalGunDeadStringPlayed == 0 then
      OneNavalGunDeadStringPlayed = 1
      PhoneMessage(44, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
    end
    EndFrame()
  until ThirdEncounterEnd == true
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.ShowBaseWaypoint03)
  while true do
    if IsDead(Troop.WFgrunt1) and IsDead(Troop.WFgrunt2) and IsDead(Troop.WFgrunt3) and IsDead(Troop.WFgrunt4) and IsDead(Troop.WFgrunt5) and IsDead(Troop.WFgrunt6) and IsDead(Ground_Vehicle.WFlighttank1) and FourthEncounterEnd == false and WFDeadStringPlayed == 0 then
      WFDeadStringPlayed = 1
      PhoneMessage(49, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
    end
    if RepeatCapturePointStrings == 1 and IsInArea(GetPlayerUnit(), Map_Zone.docks) and CapturePointMessagePlayed == 0 then
      CapturePointMessagePlayed = 1
      repeat
        WaitFor(30)
        repeat
          EndFrame()
        until 5 <= GetNumSeatsFree(Capture_Point.dockCP) and ReinforcementsCutscenePlaying == 0
        PhoneMessage(99, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
        PhoneMessage(100, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
        EndFrame()
      until MissionWin == 1
    end
    EndFrame()
  end
end

function AA_Vehicle_Objectives(owner)
  local AA1Dead = 0
  local AA2Dead = 0
  local AAVehicleHealthMessagePlayed = 0
  repeat
    if GetHealthPercent(Ground_Vehicle.SEaatank1) < 25 and IsDead(Ground_Vehicle.SEaatank1) == false and AAVehicleHealthMessagePlayed == 0 then
      AAVehicleHealthMessagePlayed = 1
      PhoneMessage(57, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
    end
    EndFrame()
    EndFrame()
  until helpisontheway == 1
  repeat
    if AA1Dead == 0 and IsDead(Ground_Vehicle.SEaatank1) then
      AA1Dead = 1
      SetObjectiveData(Objective.SEaatanks, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SEaatanks2, constant.OBJECTIVE_DATA_VISIBLE, 1)
      PhoneMessage(2, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
    end
    EndFrame()
    if AA2Dead == 0 and IsDead(Ground_Vehicle.SEaatank2) then
      AA2Dead = 1
      SetObjectiveData(Objective.SEaatanks, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SEaatanks2, constant.OBJECTIVE_DATA_VISIBLE, 1)
      PhoneMessage(2, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
    end
    EndFrame()
    if (GetHealthPercent(Ground_Vehicle.SEaatank1) < 25 and IsDead(Ground_Vehicle.SEaatank1) == false or 25 > GetHealthPercent(Ground_Vehicle.SEaatank2) and IsDead(Ground_Vehicle.SEaatank2) == false) and AAVehicleHealthMessagePlayed < 2 then
      AAVehicleHealthMessagePlayed = 2
      PhoneMessage(24, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
    end
    EndFrame()
    if (GetHealthPercent(Ground_Vehicle.SEaatank1) < 25 and IsDead(Ground_Vehicle.SEaatank1) == false and IsDead(Ground_Vehicle.SEaatank2) or 25 > GetHealthPercent(Ground_Vehicle.SEaatank2) and IsDead(Ground_Vehicle.SEaatank2) == false and IsDead(Ground_Vehicle.SEaatank1)) and AAVehicleHealthMessagePlayed < 3 then
      AAVehicleHealthMessagePlayed = 3
      PhoneMessage(54, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
    end
    EndFrame()
    EndFrame()
  until gameover == 1
end

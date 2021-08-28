function Messages(owner)
  scriptMessages = owner
  AddToGroup(Unit_Group.TundranNaval, Water_Vehicle.TDreadnought)
  AddToGroup(Unit_Group.TundranNaval, Water_Vehicle.TundranFrigate1)
  AddToGroup(Unit_Group.TundranNaval, Water_Vehicle.TundranFrigate2)
  AddToGroup(Unit_Group.TundranNaval, Water_Vehicle.TundranFrigate3)
  AddToGroup(Unit_Group.TundranNaval, Water_Vehicle.TundranSubmarine1)
  AddToGroup(Unit_Group.TundranNaval, Water_Vehicle.TundranSubmarine2)
  local gunshipwarning = 0
  local subwarning1 = 0
  local announcetown = 0
  while notincutscene == 0 do
    if gunshipwarning == 0 and (IsInRange(Unit_Group.TundranNaval, Air_Vehicle.XGunship1, 150) or IsInRange(Unit_Group.TundranNaval, Air_Vehicle.XGunship2, 150) or GetHealthPercent(Air_Vehicle.XGunship1) < 100 or GetHealthPercent(Air_Vehicle.XGunship2) < 100) then
      ClearMessageQueue()
      PhoneMessage(14, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      gunshipwarning = 1
    end
    if subwarning1 == 0 and IsInRange(Unit_Group.TundranNaval, Water_Vehicle.Submarine5, 150) then
      ClearMessageQueue()
      PhoneMessage(49, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      subwarning1 = 1
    end
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.AnnounceTown) and announcetown == 0 then
      PhoneMessage(37, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      announcetown = 1
    end
    EndFrame()
  end
end

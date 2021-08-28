function COSpeech(owner)
  local ubelspeech01 = 0
  local ubelspeech02 = 0
  local gorgispeech01 = 0
  local gorgispeech02 = 0
  local novaspeech01 = 0
  local novaspeech02 = 0
  local burninggrunt01 = 0
  local burninggrunt02 = 0
  local gorgistatue01 = 0
  local airbasedefended = 0
  local factorydefended = 0
  local minewarning01 = 0
  local minewarning02 = 0
  local helipadmessage = 0
  local powinfo01 = 0
  local powinfo02 = 0
  local tent01 = 0
  local tent02 = 0
  local tent03 = 0
  local tent04 = 0
  while missionend == 0 do
    if ubelspeech02 == 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.UbelSpeech02) and TestFlags(GetPlayerUnit(constant.PLAYER_ONE), flag.GTYPE_GUNSHIP, constant.GTYPE) == false then
      PhoneMessage(41, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Prison_Ubel_Happy, constant.PLAYER_ONE)
      DebugOut("*COSpeech* - The player has triggered UbelSpeech02")
      ubelspeech02 = 1
    end
    EndFrame()
    if gorgispeech01 == 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.GorgiSpeech01) then
      PhoneMessage(42, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_ONE)
      PhoneMessage(43, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_ONE)
      DebugOut("*COSpeech* - The player has triggered GorgiSpeech01")
      gorgispeech01 = 1
    end
    EndFrame()
    if burninggrunt01 == 0 and IsInArea(Troop.BurningGrunt01, Map_Zone.TroopKill02) then
      Kill(Troop.BurningGrunt01)
      burninggrunt01 = 1
    end
    EndFrame()
    if burninggrunt02 == 0 and IsInArea(Troop.BurningGrunt02, Map_Zone.TroopKill01) then
      Kill(Troop.BurningGrunt02)
      burninggrunt02 = 1
    end
    EndFrame()
    if gorgispeech02 == 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.GorgiSpeech02) then
      PhoneMessage(45, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_ONE)
      DebugOut("*COSpeech* - The player has triggered GorgiSpeech02")
      gorgispeech02 = 1
    end
    EndFrame()
    if minewarning01 == 0 and TestFlags(GetPlayerUnit(constant.PLAYER_ONE), flag.GTYPE_GUNSHIP, constant.GTYPE) == false and (IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.MineZoneWarning01) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.MineZoneWarning02)) then
      PhoneMessage(116, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
      PhoneMessage(47, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      minewarning01 = 1
      DebugOut("*COSpeech* - 1. PLAYER_ONE has triggered the 'near the mine zone' warning dialogue")
    end
    EndFrame()
    if minewarning02 == 0 and TestFlags(GetPlayerUnit(constant.PLAYER_ONE), flag.GTYPE_GUNSHIP, constant.GTYPE) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.MineZoneWarning03) then
      PhoneMessage(48, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Prison_Ubel_Happy, constant.PLAYER_ONE)
      minewarning02 = 1
      DebugOut("*COSpeech* - 3. PLAYER_ONE has triggered the 'in the mine zone' warning dialogue")
    end
    EndFrame()
    if helipadmessage == 0 and IsInRange(Unit_Group.Tundrans, Capture_Point.HelipadCapturePoint, 145) == true then
      PhoneMessageWithObjective(35, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      SetObjectiveData(Objective_Marker.HelipadReinforcementsObjectiveMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.HelipadReinforcementsObjective, constant.OBJECTIVE_DATA_VISIBLE, 1)
      helipadmessage = 1
    end
    EndFrame()
    if powinfo01 == 0 and 0 < NumItemsInArea(Map_Zone.PowCampRespawnZone, flag.TYPE_TUNDRAN) then
      if powinfo02 == 0 then
        PhoneMessageWithObjective(36, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
        SetObjectiveData(Objective_Marker.POW01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.POW01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      else
        PhoneMessage(36, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      end
      powinfo01 = 1
    end
    EndFrame()
    if powinfo02 == 0 and pow01 == 0 and AllPlayerUnitsDead(constant.PLAYER_ONE) == false and 1 > CountRemainingPlayerTroops(constant.PLAYER_ONE) then
      if powinfo01 == 0 then
        PhoneMessageWithObjective(59, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
        SetObjectiveData(Objective_Marker.POW01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.POW01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      else
        PhoneMessage(59, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      end
      powinfo02 = 1
    end
    if tent01 == 0 and IsDead(Destroyable_Object.Tent01) then
      Spawn(Pickup.Vet01)
      tent01 = 1
    end
    if tent02 == 0 and IsDead(Destroyable_Object.Tent02) then
      Spawn(Pickup.Vet02)
      tent02 = 1
    end
    if tent03 == 0 and IsDead(Destroyable_Object.Tent03) then
      Spawn(Pickup.Vet03)
      tent03 = 1
    end
    if tent04 == 0 and IsDead(Destroyable_Object.Tent04) then
      Spawn(Pickup.Vet04)
      tent04 = 1
    end
    EndFrame()
  end
end

function Purge_SolarBarracksSecondaryObjective01(owner)
  local barracksTimer = 0
  local barracksCounterIsOver = 0
  while true do
    if GetState(Capture_Point.SolarBarracksCapturePoint01) == flag.TYPE_UNDERWORLD and barracks == 0 then
      Spawn(Troop.LegionAAVet01)
      Spawn(Troop.LegionAAVet02)
      Spawn(Troop.LegionAAVet03)
      SetActive(Troop.LegionAAVet01, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.LegionAAVet02, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.LegionAAVet03, constant.ACTIVE, constant.ADJUST_WEAPON)
      barracks = 1
      GoToArea(Air_Vehicle.SolarGunship04, -1235, 510, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Air_Vehicle.SolarGunship03, -1146, 488, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Ground_Vehicle.SolarLightTank01, -1065, 505, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Ground_Vehicle.SolarLightTank02, -1065, 505, 5, 0, constant.ORDER_NORMAL)
      SetObjectiveData(Objective.SolarBarracksObjective01, constant.OBJECTIVE_DATA_STATE, 1)
      DebugOut("*SolarBarracksSecondaryObjective01* - Barracks Secondary Objective complete")
      PhoneMessageWithObjective(13, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      PhoneMessage(42, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      barracksTimer = GetTime() + 10
    end
    if GetState(Capture_Point.SolarBarracksCapturePoint01) == flag.TYPE_UNDERWORLD and barracks == 2 then
      PhoneMessage(14, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      SetObjectiveData(Objective.SolarBarracksObjective01, constant.OBJECTIVE_DATA_STATE, 1)
      barracks = 1
      DebugOut("*SolarBarracksSecondaryObjective01* - The player owns the Barracks")
    end
    if GetState(Capture_Point.SolarBarracksCapturePoint01) == flag.TYPE_SOLAR and barracks == 1 then
      PhoneMessage(43, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      PhoneMessage(15, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      SetObjectiveData(Objective.SolarBarracksObjective01, constant.OBJECTIVE_DATA_STATE, 0)
      barracks = 2
      DebugOut("*SolarBarracksSecondaryObjective01* - The Solars own the Barracks")
    end
    if CheckCapturePoint(Capture_Point.SolarBarracksCapturePoint01, constant.ARMY_SOLAR, 0, 100) and barracks == 1 and barracksTimer < GetTime() then
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(16, constant.ID_NONE, constant.ARMY_UNDERWORLD, 8, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      barracksTimer = GetTime() + 20
    end
    EndFrame()
  end
end

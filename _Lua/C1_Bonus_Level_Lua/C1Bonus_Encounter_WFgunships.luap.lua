function C1Bonus_Encounter_WFgunships(owner)
  local TroopsActive = 0
  while true do
    if (NumItemsInArea(Map_Zone.WFgunships01, flag.TYPE_TUNDRAN) >= 1 or 1 <= NumItemsInArea(Map_Zone.WFgunships02, flag.TYPE_TUNDRAN)) and TroopsActive == 0 then
      TroopsActive = 1
      SetActive(Troop.Tgrunt0003, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.Tgrunt0004, constant.ACTIVE, constant.ADJUST_WEAPON)
    end
    if (NumItemsInArea(Map_Zone.WFgunships01, flag.TYPE_TUNDRAN) >= 1 or 1 <= NumItemsInArea(Map_Zone.WFgunships02, flag.TYPE_TUNDRAN)) and WFgunshipsEncounterDone == 0 then
      WFgunshipsEncounterDone = 1
      DebugOut("WF Gunships attacks!")
      FollowWaypoint(Air_Vehicle.WFgunship0004, Waypoint.Entity0226, 5, 10, constant.ORDER_NORMAL)
      PhoneMessage(6, constant.ID_NONE, 2, 8, SpriteID.CO_Nova_Sad)
    end
    if (1 <= NumItemsInArea(Map_Zone.Battle01, flag.TYPE_TUNDRAN) or 1 <= NumItemsInArea(Map_Zone.Battle02, flag.TYPE_TUNDRAN) or 1 <= NumItemsInArea(Map_Zone.Battle03, flag.TYPE_TUNDRAN) or 1 <= NumItemsInArea(Map_Zone.Battle04, flag.TYPE_TUNDRAN)) and WFgunshipsEncounterDone == 0 then
      WFgunshipsEncounterDone = 1
      DebugOut("WF Gunships attacks!")
      FollowWaypoint(Air_Vehicle.WFgunship0004, Waypoint.Entity0102, 5, 10, constant.ORDER_NORMAL)
      PhoneMessage(6, constant.ID_NONE, 2, 8, SpriteID.CO_Nova_Sad)
    end
    EndFrame()
  end
  EndFrame()
  return
end

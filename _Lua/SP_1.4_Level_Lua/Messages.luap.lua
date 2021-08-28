function Messages(owner)
  scriptMessages = owner
  local jump = 0
  local ford = 0
  local flamevet = 0
  local fordmessage = 0
  local baseattack = 0
  local makethatjump = 0
  local attophillrockets = 0
  local ramthatstatue = 0
  local statuedead = 0
  local easyjump = 0
  local bigjump = 0
  local tentdestroyed = 0
  local flamersdead = 0
  local tenttutorial = 0
  local ruinsreinforcementmessage = 0
  local warningtimer = 0
  local secrettent = 0
  local lastjump = 0
  local pickuptent1 = 0
  local pickuptent2 = 0
  local pickuptent3 = 0
  local pickuptent4 = 0
  local pickuptent5 = 0
  local pickuptent6 = 0
  local killtarget1 = 0
  local killtarget2 = 0
  local jerrytent1 = 0
  local jerrytent2 = 0
  local jerrytent3 = 0
  local jerrytent4 = 0
  local jerrytent5 = 0
  local jerrytent6 = 0
  local jerrytent7 = 0
  local jerrytent8 = 0
  local jerrytent9 = 0
  local jerrytent10 = 0
  local jerrytent11 = 0
  local jerrytent12 = 0
  local jerrytent13 = 0
  local jerrytent14 = 0
  local jerrytent15 = 0
  while true do
    if IsDead(Building.BoatTarget1) and killtarget1 == 0 then
      SetUnitInvulnerable(Building.Portcullis1, false)
      Kill(Destroyable_Object.Portcullis1)
      DebugOut("Killed portcullis 1")
      Kill(Building.Portcullis1)
      killtarget1 = 1
    end
    if IsDead(Building.BoatTarget2) and killtarget2 == 0 then
      SetUnitInvulnerable(Building.Portcullis2, false)
      DebugOut("Killed portcullis 2")
      Kill(Destroyable_Object.Portcullis2)
      Kill(Building.Portcullis2)
      killtarget2 = 1
    end
    if IsDead(Destroyable_Object.SecretTent) and secrettent == 0 then
      Spawn(Pickup.SecretTent1)
      Spawn(Pickup.SecretTent2)
      Spawn(Pickup.SecretTent3)
      Spawn(Pickup.SecretTent4)
      Spawn(Pickup.SecretTent5)
      Spawn(Pickup.SecretTent6)
      secrettent = 1
    end
    if IsDead(Destroyable_Object.PickupTent1) and pickuptent1 == 0 then
      Spawn(Pickup.PickupTent1)
      pickuptent1 = 1
    end
    if IsDead(Destroyable_Object.PickupTent2) and pickuptent2 == 0 then
      Spawn(Pickup.PickupTent2)
      pickuptent2 = 1
    end
    if IsDead(Destroyable_Object.PickupTent3) and pickuptent3 == 0 then
      Spawn(Pickup.PickupTent3)
      pickuptent3 = 1
    end
    if IsDead(Destroyable_Object.PickupTent4) and pickuptent4 == 0 then
      Spawn(Pickup.PickupTent4)
      pickuptent4 = 1
    end
    if IsDead(Destroyable_Object.PickupTent5) and pickuptent5 == 0 then
      Spawn(Pickup.PickupTent5)
      pickuptent5 = 1
    end
    if IsDead(Destroyable_Object.PickupTent6) and pickuptent6 == 0 then
      Spawn(Pickup.PickupTent6)
      pickuptent6 = 1
    end
    EndFrame()
    if IsDead(Destroyable_Object.JerryTent1) and jerrytent1 == 0 then
      Spawn(Pickup.JerryTent1)
      jerrytent1 = 1
    end
    if IsDead(Destroyable_Object.JerryTent2) and jerrytent2 == 0 then
      Spawn(Pickup.JerryTent2)
      jerrytent2 = 1
    end
    if IsDead(Destroyable_Object.JerryTent3) and jerrytent3 == 0 then
      Spawn(Pickup.JerryTent3)
      jerrytent3 = 1
    end
    if IsDead(Destroyable_Object.JerryTent4) and jerrytent4 == 0 then
      Spawn(Pickup.JerryTent4)
      jerrytent4 = 1
    end
    if IsDead(Destroyable_Object.JerryTent5) and jerrytent5 == 0 then
      Spawn(Pickup.JerryTent5)
      jerrytent5 = 1
    end
    if IsDead(Destroyable_Object.JerryTent6) and jerrytent6 == 0 then
      Spawn(Pickup.JerryTent6)
      jerrytent6 = 1
    end
    if IsDead(Destroyable_Object.JerryTent7) and jerrytent7 == 0 then
      Spawn(Pickup.JerryTent7)
      jerrytent7 = 1
    end
    if IsDead(Destroyable_Object.JerryTent8) and jerrytent8 == 0 then
      Spawn(Pickup.JerryTent8)
      jerrytent8 = 1
    end
    if IsDead(Destroyable_Object.JerryTent9) and jerrytent9 == 0 then
      Spawn(Pickup.JerryTent9)
      jerrytent9 = 1
    end
    if IsDead(Destroyable_Object.JerryTent10) and jerrytent10 == 0 then
      Spawn(Pickup.JerryTent10)
      jerrytent10 = 1
    end
    EndFrame()
    if IsDead(Destroyable_Object.JerryTent11) and jerrytent11 == 0 then
      Spawn(Pickup.JerryTent11)
      jerrytent11 = 1
    end
    if IsDead(Destroyable_Object.JerryTent12) and jerrytent12 == 0 then
      Spawn(Pickup.JerryTent12)
      jerrytent12 = 1
    end
    if IsDead(Destroyable_Object.JerryTent13) and jerrytent13 == 0 then
      Spawn(Pickup.JerryTent13)
      jerrytent13 = 1
    end
    if IsDead(Destroyable_Object.JerryTent14) and jerrytent14 == 0 then
      Spawn(Pickup.JerryTent14)
      jerrytent14 = 1
    end
    if IsDead(Destroyable_Object.JerryTent15) and jerrytent15 == 0 then
      Spawn(Pickup.JerryTent15)
      jerrytent15 = 1
    end
    if NumItemsInArea(Map_Zone.RuinsCentralPerimeter, flag.TYPE_ANGLO) < 3 and ruinsreinforcementmessage == 0 then
      if GetState(Capture_Point.SolarRecon) == flag.TYPE_SOLAR == false and foundmarker == 1 then
        ClearMessageQueue()
        PhoneMessage(50, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
        ruinsreinforcementmessage = 1
      end
    end
    if IsInArea(Ground_Vehicle.SolarRecon, Map_Zone.Ford) and ford == 0 then
      ClearMessageQueue()
      PhoneMessage(14, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
      ford = 1
    end
    EndFrame()
    if IsInArea(GetPlayerUnit(), Map_Zone.ApproachMainBase) and baseattack == 0 and CutsceneBattleshipFinished == 0 then
      ClearMessageQueue()
      PhoneMessage(39, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      DebugOut("Player sighted near main base before completing objectives")
      baseattack = 1
    end
    if IsInArea(Ground_Vehicle.SolarRecon, Map_Zone.SetupPOWCamp) and jump == 0 then
      ClearMessageQueue()
      PhoneMessage(15, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
      jump = 1
    end
    EndFrame()
    if IsInArea(Ground_Vehicle.SolarRecon, Map_Zone.FordMessage) and fordmessage == 0 then
      ClearMessageQueue()
      PhoneMessage(55, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
      fordmessage = 1
    end
    if 0 < NumItemsInArea(Map_Zone.FlameVetMessage, flag.TYPE_SOLAR) and flamevet == 0 then
      ClearMessageQueue()
      SetObjectiveData(Objective.SolarAssault, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.SolarAssault, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      PhoneMessageWithObjective(53, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      flamevet = 1
    end
    EndFrame()
    if IsInArea(Ground_Vehicle.SolarRecon, Map_Zone.ArrivedAtTopHillRockets) and attophillrockets == 0 and ruinsrockets == 1 then
      ClearMessageQueue()
      attophillrockets = 1
    end
    EndFrame()
    if admiralrescued == 1 and battleshipcutscenestart == 0 and IsPassengerInUnit(Troop.Admiral, Ground_Vehicle.SolarRecon) == false and PauseTimerActive == 0 and IsInRange(Troop.Admiral, Ground_Vehicle.SolarRecon, 50) == false and GetTime() > warningtimer + 10 then
      PhoneMessage(77, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      warningtimer = GetTime()
    end
    EndFrame()
  end
end

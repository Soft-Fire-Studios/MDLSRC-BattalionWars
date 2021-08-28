function Dock_Wave_3(owner)
  Kill(Troop.SE_Sub_1_Driver_1, false)
  Kill(Troop.SE_Sub_1_Driver_2, false)
  Kill(Troop.SE_Sub_2_Driver_1, false)
  Kill(Troop.SE_Sub_2_Driver_2, false)
  Kill(Troop.SE_Sub_3_Driver_1, false)
  Kill(Troop.SE_Sub_3_Driver_2, false)
  local counter = 0
  script05 = owner
  local land1 = 0
  local land2 = 0
  local land3 = 0
  local land4 = 0
  local text = 0
  AddToGroup(Unit_Group.Wave_3, Troop.SE_Grunt_40)
  AddToGroup(Unit_Group.Wave_3, Troop.SE_Grunt_41)
  AddToGroup(Unit_Group.Wave_3, Troop.SE_Grunt_42)
  AddToGroup(Unit_Group.Wave_3, Troop.SE_Grunt_43)
  AddToGroup(Unit_Group.Wave_3, Troop.SE_Grunt_44)
  AddToGroup(Unit_Group.Wave_3, Troop.SE_Grunt_45)
  AddToGroup(Unit_Group.Wave_3, Troop.SE_Grunt_46)
  AddToGroup(Unit_Group.Wave_3, Troop.SE_Grunt_47)
  Despawn(Water_Vehicle.SE_Sub_1)
  Despawn(Water_Vehicle.SE_Sub_2)
  Despawn(Water_Vehicle.SE_Sub_3)
  Despawn(Water_Vehicle.SE_Sea_Transport_5)
  Despawn(Water_Vehicle.SE_Sea_Transport_8)
  Despawn(Water_Vehicle.SE_Sea_Transport_6)
  Despawn(Water_Vehicle.SE_Sea_Transport_7)
  repeat
    EndFrame()
  until wave == 3
  GoToArea(Unit_Group.SE_Subs, 320, 340, 50, 0, constant.ORDER_NORMAL, constant.FORMATION_ALLOWED)
  repeat
    EndFrame()
  until wave == 3.5
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      ClearMessageQueue()
      DebugOut("cutscene skipped")
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      cutscene = 1
    else
      EndFrame()
    end
  end
  Kill(cutkiller)
  EndIntro()
  GoToArea(Water_Vehicle.SE_Sub_2, 320, 340, 50)
  GoToArea(Water_Vehicle.SE_Sub_1, 300, 340, 50)
  GoToArea(Water_Vehicle.SE_Sub_3, 280, 340, 50)
  EndFrame()
  Despawn(Water_Vehicle.CS_AI_Frigate_1)
  Despawn(Water_Vehicle.CS_AI_Frigate_2)
  Teleport(Water_Vehicle.AI_Frigate_1, 490, 290, 270, 50)
  Teleport(Water_Vehicle.AI_Frigate_2, 490, 350, 270, 50)
  EndFrame()
  Spawn(Water_Vehicle.AI_Battleship_1)
  Spawn(Water_Vehicle.AI_Sub_1)
  Spawn(Water_Vehicle.AI_Sub_2)
  EndFrame()
  if who ~= 0 and IsPassengerInUnit(GetPlayerUnit(constant.PLAYER_ONE), constant.ID_NONE) == false then
    ForceUnitTransfer(constant.PLAYER_ONE, who, true, true)
  end
  PauseTimerActive = 1
  StoreSummaryMessage(42, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Sad)
  StoreSummaryMessage(48, constant.ARMY_ANGLO, SpriteID.CO_AI_Windsor_Happy)
  SetCamera(Camera.Player_Camera)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(47, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  subcutscene = 2
  repeat
    EndFrame()
  until GetPlayerUnit() ~= nil
  Spawn(Water_Vehicle.SE_Sub_1)
  Spawn(Water_Vehicle.SE_Sub_2)
  Spawn(Water_Vehicle.SE_Sub_3)
  Spawn(Water_Vehicle.SE_Sea_Transport_6)
  Spawn(Water_Vehicle.SE_Sea_Transport_7)
  EndFrame()
  Teleport(Water_Vehicle.SE_Sub_1, GetObjectXPosition(GetPlayerUnit()) - 700, GetObjectZPosition(Water_Vehicle.SE_Sub_1), 90, 10)
  Teleport(Water_Vehicle.SE_Sub_2, GetObjectXPosition(GetPlayerUnit()) - 500, GetObjectZPosition(Water_Vehicle.SE_Sub_2), 90, 10)
  Teleport(Water_Vehicle.SE_Sub_3, GetObjectXPosition(GetPlayerUnit()) - 800, GetObjectZPosition(Water_Vehicle.SE_Sub_3), 90, 10)
  Teleport(Water_Vehicle.SE_Sea_Transport_6, GetObjectXPosition(GetPlayerUnit()) - 550, GetObjectZPosition(Water_Vehicle.SE_Sea_Transport_6), 90, 10)
  Teleport(Water_Vehicle.SE_Sea_Transport_7, GetObjectXPosition(GetPlayerUnit()) - 600, GetObjectZPosition(Water_Vehicle.SE_Sea_Transport_7), 90, 10)
  DebugOut("Sending in Wave 3")
  SubmarineDive(Water_Vehicle.SE_Sub_1)
  SubmarineDive(Water_Vehicle.SE_Sub_2)
  SubmarineDive(Water_Vehicle.SE_Sub_3)
  GoToArea(Water_Vehicle.SE_Sub_1, 460, 380, 50)
  GoToArea(Water_Vehicle.SE_Sub_2, 430, 310, 50)
  GoToArea(Water_Vehicle.SE_Sub_3, 460, 245, 50)
  BeachWaterUnit(Water_Vehicle.SE_Sea_Transport_6, 540, 450, 80, 1)
  BeachWaterUnit(Water_Vehicle.SE_Sea_Transport_7, 545, 205, 100, 1)
  repeat
    if IsDead(Water_Vehicle.SE_Sea_Transport_6) and land2 == 0 then
      DebugOut("Sea Transport 6 destroyed")
      land2 = 1
    else
      if land2 == 0 and NumPassengersInUnit(Water_Vehicle.SE_Sea_Transport_6) == 0 then
        DebugOut("Sea Transport 6 unloaded")
        EnterVehicle(Troop.SE_Grunt_40, Capture_Point.AI_Dock_CP)
        EnterVehicle(Troop.SE_Grunt_41, Capture_Point.AI_Dock_CP)
        EnterVehicle(Troop.SE_Grunt_42, Capture_Point.AI_Dock_CP)
        EnterVehicle(Troop.SE_Grunt_43, Capture_Point.AI_Dock_CP)
        WaitFor(1)
        GoToArea(Water_Vehicle.SE_Sea_Transport_6, -1815, 600, 50)
        land2 = 1
        powerland = powerland - 1
        if text == 0 then
          PhoneMessage(46, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
          text = 1
          if flagtext == 0 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_1 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_2 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_4 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_5 then
            PhoneMessage(122, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
            flagtext = 1
          end
        end
      else
      end
    end
    if IsDead(Water_Vehicle.SE_Sea_Transport_7) and land3 == 0 then
      DebugOut("Sea Transport 7 destroyed")
      land3 = 1
    else
      if land3 == 0 and NumPassengersInUnit(Water_Vehicle.SE_Sea_Transport_7) == 0 then
        DebugOut("Sea Transport 7 unloaded")
        EnterVehicle(Troop.SE_Grunt_44, Capture_Point.AI_Dock_CP)
        EnterVehicle(Troop.SE_Grunt_45, Capture_Point.AI_Dock_CP)
        EnterVehicle(Troop.SE_Grunt_46, Capture_Point.AI_Dock_CP)
        EnterVehicle(Troop.SE_Grunt_47, Capture_Point.AI_Dock_CP)
        WaitFor(1)
        GoToArea(Water_Vehicle.SE_Sea_Transport_7, -1815, 50, 50)
        land3 = 1
        powerland = powerland - 1
        if text == 0 then
          PhoneMessage(31, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
          text = 1
          if flagtext == 0 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_1 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_2 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_4 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_5 then
            PhoneMessage(122, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
            flagtext = 1
          end
        end
      else
      end
    end
    EndFrame()
    if IsDead(Building.AI_Tower_1) and IsDead(Building.AI_Tower_2) then
      flagtext = 1
    end
    EndFrame()
  until land2 + land3 == 2
  EnterVehicle(Troop.SE_Grunt_40, Capture_Point.AI_Dock_CP)
  EnterVehicle(Troop.SE_Grunt_41, Capture_Point.AI_Dock_CP)
  EnterVehicle(Troop.SE_Grunt_42, Capture_Point.AI_Dock_CP)
  EnterVehicle(Troop.SE_Grunt_43, Capture_Point.AI_Dock_CP)
  EnterVehicle(Troop.SE_Grunt_44, Capture_Point.AI_Dock_CP)
  EnterVehicle(Troop.SE_Grunt_45, Capture_Point.AI_Dock_CP)
  EnterVehicle(Troop.SE_Grunt_46, Capture_Point.AI_Dock_CP)
  EnterVehicle(Troop.SE_Grunt_47, Capture_Point.AI_Dock_CP)
  DebugOut("All Wave 3 Sea Transports destroyed or unloaded")
  repeat
    WaitFor(1)
    counter = counter + 1
    if counter > 120 then
      if IsDead(Troop.SE_Grunt_36) == false then
        Kill(Troop.SE_Grunt_36, false)
      end
      if IsDead(Troop.SE_Grunt_37) == false then
        Kill(Troop.SE_Grunt_37, false)
      end
      if IsDead(Troop.SE_Grunt_38) == false then
        Kill(Troop.SE_Grunt_38, false)
      end
      if IsDead(Troop.SE_Grunt_39) == false then
        Kill(Troop.SE_Grunt_39, false)
      end
      if IsDead(Troop.SE_Grunt_40) == false then
        Kill(Troop.SE_Grunt_40, false)
      end
      if IsDead(Troop.SE_Grunt_41) == false then
        Kill(Troop.SE_Grunt_41, false)
      end
      if IsDead(Troop.SE_Grunt_42) == false then
        Kill(Troop.SE_Grunt_42, false)
      end
      if IsDead(Troop.SE_Grunt_43) == false then
        Kill(Troop.SE_Grunt_43, false)
      end
      if IsDead(Troop.SE_Grunt_44) == false then
        Kill(Troop.SE_Grunt_44, false)
      end
      if IsDead(Troop.SE_Grunt_45) == false then
        Kill(Troop.SE_Grunt_45, false)
      end
      if IsDead(Troop.SE_Grunt_46) == false then
        Kill(Troop.SE_Grunt_46, false)
      end
      if IsDead(Troop.SE_Grunt_47) == false then
        Kill(Troop.SE_Grunt_47, false)
      end
      if IsDead(Troop.SE_Grunt_48) == false then
        Kill(Troop.SE_Grunt_48, false)
      end
      if IsDead(Troop.SE_Grunt_49) == false then
        Kill(Troop.SE_Grunt_49, false)
      end
      if IsDead(Troop.SE_Grunt_50) == false then
        Kill(Troop.SE_Grunt_50, false)
      end
      if IsDead(Troop.SE_Grunt_51) == false then
        Kill(Troop.SE_Grunt_51, false)
      end
      counter = -120
    end
    EndFrame()
  until IsDead(Water_Vehicle.SE_Sub_1) and IsDead(Water_Vehicle.SE_Sub_2) and IsDead(Water_Vehicle.SE_Sub_3) and GetGroupHealth(Unit_Group.Wave_1) == 0 and GetGroupHealth(Unit_Group.Wave_3) == 0
  DebugOut("Wave 3 Destroyed")
  WaitFor(1)
  wave = 4
  ClearMessageQueue()
  PhoneMessage(40, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  PhoneMessage(51, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
end

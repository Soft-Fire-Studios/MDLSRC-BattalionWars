function Melee_Cutscene03(owner)
  Cutscene03Dead = owner
  local HeavyTankReleased01 = 0
  local HeavyTankReleased02 = 0
  local HeavyTankReleased03 = 0
  local HeavyTankReleased04 = 0
  local HeavyTankReleasedMessage = 0
  local SolarPanelMessage01 = 0
  local SolarPanelMessage02 = 0
  local SolarPanelMessage03 = 0
  local SolarPanelMessage04 = 0
  local SolarPanelMessage05 = 0
  local Recon01 = 0
  local Gunship01 = 0
  local HeavyTank01 = 0
  local HeavyTank02 = 0
  local HeavyTank03 = 0
  local HeavyTank04 = 0
  Despawn(Troop.CutsceneDummy)
  Despawn(Ground_Vehicle.IL_Battlestation01_Cutscene)
  Despawn(Troop.OutroLegionGrunt01)
  Despawn(Troop.OutroLegionGrunt02)
  Despawn(Troop.OutroLegionGrunt03)
  Despawn(Troop.OutroLegionGrunt04)
  Despawn(Troop.OutroLegionGrunt05)
  Despawn(Troop.CutsceneGrunt01)
  Despawn(Troop.CutsceneGrunt02)
  Despawn(Troop.CutsceneGrunt03)
  Despawn(Troop.CutsceneGrunt05)
  Despawn(Troop.CutsceneGrunt06)
  Despawn(Troop.CutsceneGrunt07)
  Despawn(Air_Vehicle.OutroSolarAirTransport01)
  Despawn(Air_Vehicle.OutroSolarAirTransport02)
  Despawn(Troop.OutroSolarAirTransport01Pilot)
  Despawn(Troop.OutroSolarAirTransport02Pilot)
  repeat
    if GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded01) < 90 and HeavyTankReleased01 == 0 then
      FollowUnit(Ground_Vehicle.SE_Grounded_HeavyTank01, GetPlayerUnit(constant.PLAYER_ONE), 25, 0, constant.ORDER_NORMAL)
      FollowUnit(Ground_Vehicle.SE_Grounded_HeavyTank02, GetPlayerUnit(constant.PLAYER_ONE), 25, 0, constant.ORDER_NORMAL)
      HeavyTankReleased01 = 1
    end
    EndFrame()
    if 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded02) and HeavyTankReleased02 == 0 then
      FollowUnit(Ground_Vehicle.SE_Grounded_HeavyTank03, GetPlayerUnit(constant.PLAYER_ONE), 25, 0, constant.ORDER_NORMAL)
      FollowUnit(Ground_Vehicle.SE_Grounded_HeavyTank04, GetPlayerUnit(constant.PLAYER_ONE), 25, 0, constant.ORDER_NORMAL)
      HeavyTankReleased02 = 1
    end
    EndFrame()
    if 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded03) and HeavyTankReleased03 == 0 then
      FollowUnit(Ground_Vehicle.SE_Grounded_HeavyTank05, GetPlayerUnit(constant.PLAYER_ONE), 25, 0, constant.ORDER_NORMAL)
      HeavyTankReleased03 = 1
    end
    EndFrame()
    if 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded04) and HeavyTankReleased04 == 0 then
      FollowUnit(Ground_Vehicle.SE_HeavyTank_Grounded04_HeavyTank01, GetPlayerUnit(constant.PLAYER_ONE), 25, 0, constant.ORDER_NORMAL)
      FollowUnit(Ground_Vehicle.SE_HeavyTank_Grounded04_HeavyTank02, GetPlayerUnit(constant.PLAYER_ONE), 25, 0, constant.ORDER_NORMAL)
      HeavyTankReleased04 = 1
    end
    EndFrame()
    if IsDead(Building.AmmoDump_Recon_Grounded01) and Recon01 == 0 then
      if IsDead(Building.SE_Recon_Grounded01) == false then
        Kill(Building.SE_Recon_Grounded01)
      end
      EndFrame()
      if IsDead(Building.SE_Recon_Grounded02) == false then
        Kill(Building.SE_Recon_Grounded02)
      end
      EndFrame()
      if IsDead(Building.SE_Recon_Grounded03) == false then
        Kill(Building.SE_Recon_Grounded03)
      end
      EndFrame()
      if IsDead(Building.SE_Recon_Grounded04) == false then
        Kill(Building.SE_Recon_Grounded04)
      end
      EndFrame()
      if IsDead(Building.SE_Recon_Grounded05) == false then
        Kill(Building.SE_Recon_Grounded05)
      end
      EndFrame()
      if IsDead(Building.SE_Recon_Grounded06) == false then
        Kill(Building.SE_Recon_Grounded06)
      end
      EndFrame()
      SetObjectiveData(Objective_Marker.SE_Main_Base_Recon01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      EndFrame()
      SolarPanelCount = SolarPanelCount + 1
      EndFrame()
      Recon01 = 1
    end
    EndFrame()
    if IsDead(Building.AmmoDump_Gunship_Grounded01) and Gunship01 == 0 then
      if IsDead(Building.SE_Gunship_Grounded01) == false then
        Kill(Building.SE_Gunship_Grounded01)
      end
      EndFrame()
      if IsDead(Building.SE_Gunship_Grounded02) == false then
        Kill(Building.SE_Gunship_Grounded02)
      end
      EndFrame()
      if IsDead(Building.SE_Gunship_Grounded03) == false then
        Kill(Building.SE_Gunship_Grounded03)
      end
      EndFrame()
      if IsDead(Building.SE_Gunship_Grounded04) == false then
        Kill(Building.SE_Gunship_Grounded04)
      end
      EndFrame()
      if IsDead(Building.SE_Gunship_Grounded05) == false then
        Kill(Building.SE_Gunship_Grounded05)
      end
      EndFrame()
      if IsDead(Building.SE_Gunship_Grounded06) == false then
        Kill(Building.SE_Gunship_Grounded06)
      end
      EndFrame()
      SetObjectiveData(Objective_Marker.SE_Main_Base_Gunship01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      EndFrame()
      SolarPanelCount = SolarPanelCount + 1
      EndFrame()
      Gunship01 = 1
    end
    EndFrame()
    if IsDead(Building.AmmoDump_HeavyTank_Grounded01) and HeavyTank01 == 0 then
      if IsDead(Building.SE_HeavyTank_Grounded01) == false then
        Kill(Building.SE_HeavyTank_Grounded01)
      end
      EndFrame()
      if IsDead(Building.SE_HeavyTank_Grounded04) == false then
        Kill(Building.SE_HeavyTank_Grounded04)
      end
      EndFrame()
      if IsDead(Building.SE_HeavyTank_Grounded05) == false then
        Kill(Building.SE_HeavyTank_Grounded05)
      end
      EndFrame()
      if IsDead(Building.SE_HeavyTank_Grounded06) == false then
        Kill(Building.SE_HeavyTank_Grounded06)
      end
      EndFrame()
      SetObjectiveData(Objective_Marker.SE_Main_Base_HeavyTank01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      EndFrame()
      SolarPanelCount = SolarPanelCount + 1
      EndFrame()
      HeavyTank01 = 1
    end
    EndFrame()
    if IsDead(Building.AmmoDump_HeavyTank_Grounded02) and HeavyTank02 == 0 then
      if IsDead(Building.SE_HeavyTank_Grounded08) == false then
        Kill(Building.SE_HeavyTank_Grounded08)
      end
      EndFrame()
      if IsDead(Building.SE_HeavyTank_Grounded10) == false then
        Kill(Building.SE_HeavyTank_Grounded10)
      end
      EndFrame()
      if IsDead(Building.SE_HeavyTank_Grounded11) == false then
        Kill(Building.SE_HeavyTank_Grounded11)
      end
      EndFrame()
      if IsDead(Building.SE_HeavyTank_Grounded12) == false then
        Kill(Building.SE_HeavyTank_Grounded12)
      end
      EndFrame()
      SetObjectiveData(Objective_Marker.SE_Main_Base_HeavyTank02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      EndFrame()
      SolarPanelCount = SolarPanelCount + 1
      EndFrame()
      HeavyTank02 = 1
    end
    EndFrame()
    if IsDead(Building.AmmoDump_HeavyTank_Grounded03) and HeavyTank03 == 0 then
      if IsDead(Building.SE_HeavyTank_Grounded13) == false then
        Kill(Building.SE_HeavyTank_Grounded13)
      end
      EndFrame()
      if IsDead(Building.SE_HeavyTank_Grounded14) == false then
        Kill(Building.SE_HeavyTank_Grounded14)
      end
      EndFrame()
      if IsDead(Building.SE_HeavyTank_Grounded15) == false then
        Kill(Building.SE_HeavyTank_Grounded15)
      end
      EndFrame()
      if IsDead(Building.SE_HeavyTank_Grounded16) == false then
        Kill(Building.SE_HeavyTank_Grounded16)
      end
      EndFrame()
      if IsDead(Building.SE_HeavyTank_Grounded17) == false then
        Kill(Building.SE_HeavyTank_Grounded17)
      end
      EndFrame()
      SetObjectiveData(Objective_Marker.SE_Main_Base_HeavyTank03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      EndFrame()
      SolarPanelCount = SolarPanelCount + 1
      EndFrame()
      HeavyTank03 = 1
    end
    EndFrame()
    if IsDead(Building.AmmoDump_HeavyTank_Grounded04) and HeavyTank04 == 0 then
      if IsDead(Building.SE_HeavyTank_Grounded04_HeavyTank01) == false then
        Kill(Building.SE_HeavyTank_Grounded04_HeavyTank01)
      end
      EndFrame()
      if IsDead(Building.SE_HeavyTank_Grounded04_HeavyTank02) == false then
        Kill(Building.SE_HeavyTank_Grounded04_HeavyTank02)
      end
      EndFrame()
      if IsDead(Building.SE_HeavyTank_Grounded04_HeavyTank03) == false then
        Kill(Building.SE_HeavyTank_Grounded04_HeavyTank03)
      end
      EndFrame()
      if IsDead(Building.SE_HeavyTank_Grounded04_HeavyTank04) == false then
        Kill(Building.SE_HeavyTank_Grounded04_HeavyTank04)
      end
      EndFrame()
      SetObjectiveData(Objective_Marker.SE_Main_Base_HeavyTank04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      EndFrame()
      SolarPanelCount = SolarPanelCount + 1
      EndFrame()
      HeavyTank04 = 1
    end
    EndFrame()
    if SolarPanelCount == 1 and SolarPanelMessage01 == 0 then
      SetObjectiveData(Objective.SE_SolarPanels_06, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SE_SolarPanels_16, constant.OBJECTIVE_DATA_VISIBLE, 1)
      ClearMessageQueue()
      if (GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded01) < 90 or 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded02) or 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded03) or 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded04)) and HeavyTankReleasedMessage == 0 then
        PhoneMessage(44, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        HeavyTankReleasedMessage = 1
      end
      PhoneMessage(82, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      PhoneMessage(10, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      SolarPanelMessage01 = 1
    end
    EndFrame()
    if SolarPanelCount == 2 and SolarPanelMessage02 == 0 then
      SetObjectiveData(Objective.SE_SolarPanels_16, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SE_SolarPanels_26, constant.OBJECTIVE_DATA_VISIBLE, 1)
      ClearMessageQueue()
      if (GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded01) < 90 or 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded02) or 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded03) or 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded04)) and HeavyTankReleasedMessage == 0 then
        PhoneMessage(44, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        HeavyTankReleasedMessage = 1
      end
      PhoneMessage(83, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      PhoneMessage(28, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      SolarPanelMessage02 = 1
    end
    EndFrame()
    if SolarPanelCount == 3 and SolarPanelMessage03 == 0 then
      SetObjectiveData(Objective.SE_SolarPanels_26, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SE_SolarPanels_36, constant.OBJECTIVE_DATA_VISIBLE, 1)
      ClearMessageQueue()
      if (GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded01) < 90 or 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded02) or 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded03) or 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded04)) and HeavyTankReleasedMessage == 0 then
        PhoneMessage(44, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        HeavyTankReleasedMessage = 1
      end
      PhoneMessage(84, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      PhoneMessage(3, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      SolarPanelMessage03 = 1
    end
    EndFrame()
    if SolarPanelCount == 4 and SolarPanelMessage04 == 0 then
      SetObjectiveData(Objective.SE_SolarPanels_36, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SE_SolarPanels_46, constant.OBJECTIVE_DATA_VISIBLE, 1)
      ClearMessageQueue()
      if (GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded01) < 90 or 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded02) or 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded03) or 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded04)) and HeavyTankReleasedMessage == 0 then
        PhoneMessage(44, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        HeavyTankReleasedMessage = 1
      end
      PhoneMessage(85, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      PhoneMessage(1, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      PhoneMessage(2, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      SolarPanelMessage04 = 1
    end
    EndFrame()
    if SolarPanelCount == 5 and SolarPanelMessage05 == 0 then
      SetObjectiveData(Objective.SE_SolarPanels_46, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SE_SolarPanels_56, constant.OBJECTIVE_DATA_VISIBLE, 1)
      ClearMessageQueue()
      if (GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded01) < 90 or 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded02) or 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded03) or 90 > GetHealthPercent(Building.AmmoDump_HeavyTank_Grounded04)) and HeavyTankReleasedMessage == 0 then
        PhoneMessage(44, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        HeavyTankReleasedMessage = 1
      end
      PhoneMessage(86, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      SolarPanelMessage05 = 1
    end
    EndFrame()
  until IsDead(Building.AmmoDump_Recon_Grounded01) and IsDead(Building.AmmoDump_Gunship_Grounded01) and IsDead(Building.AmmoDump_HeavyTank_Grounded01) and IsDead(Building.AmmoDump_HeavyTank_Grounded02) and IsDead(Building.AmmoDump_HeavyTank_Grounded03) and IsDead(Building.AmmoDump_HeavyTank_Grounded04)
  FreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
  MissionComplete = 1
  ClearMessageQueue(constant.PLAYER_ONE)
  Kill(Building.SE_Recon_Grounded01)
  Kill(Building.SE_Gunship_Grounded01)
  Kill(Building.SE_HeavyTank_Grounded01)
  Kill(Building.SE_HeavyTank_Grounded04_HeavyTank01)
  EndFrame()
  Kill(Building.SE_Recon_Grounded02)
  Kill(Building.SE_Gunship_Grounded02)
  Kill(Building.SE_HeavyTank_Grounded13)
  Kill(Building.SE_HeavyTank_Grounded04_HeavyTank02)
  EndFrame()
  Kill(Building.SE_Recon_Grounded03)
  Kill(Building.SE_Gunship_Grounded03)
  Kill(Building.SE_HeavyTank_Grounded08)
  Kill(Building.SE_HeavyTank_Grounded14)
  Kill(Building.SE_HeavyTank_Grounded04_HeavyTank03)
  EndFrame()
  Kill(Building.SE_Recon_Grounded04)
  Kill(Building.SE_Gunship_Grounded04)
  Kill(Building.SE_HeavyTank_Grounded04)
  Kill(Building.SE_HeavyTank_Grounded10)
  Kill(Building.SE_HeavyTank_Grounded15)
  Kill(Building.SE_HeavyTank_Grounded04_HeavyTank04)
  EndFrame()
  Kill(Building.SE_Recon_Grounded05)
  Kill(Building.SE_Gunship_Grounded05)
  Kill(Building.SE_HeavyTank_Grounded05)
  Kill(Building.SE_HeavyTank_Grounded11)
  Kill(Building.SE_HeavyTank_Grounded16)
  EndFrame()
  Kill(Building.SE_Recon_Grounded06)
  Kill(Building.SE_Gunship_Grounded06)
  Kill(Building.SE_HeavyTank_Grounded06)
  Kill(Building.SE_HeavyTank_Grounded12)
  Kill(Building.SE_HeavyTank_Grounded17)
  EndFrame()
  if IsDead(Ground_Vehicle.SE_Grounded_HeavyTank01) == false then
    Kill(Ground_Vehicle.SE_Grounded_HeavyTank01)
  end
  if IsDead(Ground_Vehicle.SE_Grounded_HeavyTank02) == false then
    Kill(Ground_Vehicle.SE_Grounded_HeavyTank02)
  end
  if IsDead(Ground_Vehicle.SE_Grounded_HeavyTank03) == false then
    Kill(Ground_Vehicle.SE_Grounded_HeavyTank03)
  end
  if IsDead(Ground_Vehicle.SE_Grounded_HeavyTank04) == false then
    Kill(Ground_Vehicle.SE_Grounded_HeavyTank04)
  end
  if IsDead(Ground_Vehicle.SE_HeavyTank_Grounded04_HeavyTank01) == false then
    Kill(Ground_Vehicle.SE_HeavyTank_Grounded04_HeavyTank01)
  end
  if IsDead(Ground_Vehicle.SE_HeavyTank_Grounded04_HeavyTank02) == false then
    Kill(Ground_Vehicle.SE_HeavyTank_Grounded04_HeavyTank02)
  end
  if IsDead(Building.SE_Strike_AATower01) == false then
    Kill(Building.SE_Strike_AATower01)
  end
  if IsDead(Building.SE_Strike_AATower02) == false then
    Kill(Building.SE_Strike_AATower02)
  end
  if IsDead(Building.SE_Strike_AATower03) == false then
    Kill(Building.SE_Strike_AATower03)
  end
  if IsDead(Building.SE_Strike_AATower04) == false then
    Kill(Building.SE_Strike_AATower04)
  end
  DebugOut("Mission Complete")
  SetObjectiveData(Objective.SE_SolarPanels_56, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.SE_SolarPanels_66, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.SE_SolarPanels_66, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.IL_Battlestation_Defend, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.SE_Main_Base_Recon01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SE_Main_Base_Gunship01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SE_Main_Base_HeavyTank01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SE_Main_Base_HeavyTank02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SE_Main_Base_HeavyTank03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.SE_Main_Base_HeavyTank04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  ClearMessageQueue()
  PhoneMessageWithObjective(89, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  WaitFor(8)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StartOutro()
  StopScoringTimer()
  FreezePlayer()
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
  Despawn(Air_Vehicle.SE_Counter_AirTransport01)
  Despawn(Air_Vehicle.SE_Counter_AirTransport02)
  Despawn(Troop.SE_Counter_AirTransport01_Pilot01)
  Despawn(Troop.SE_Counter_AirTransport02_Pilot01)
  Despawn(Ground_Vehicle.SE_Grounded_HeavyTank01)
  Despawn(Ground_Vehicle.SE_Grounded_HeavyTank02)
  Despawn(Ground_Vehicle.SE_Grounded_HeavyTank03)
  Despawn(Ground_Vehicle.SE_Grounded_HeavyTank04)
  Despawn(Ground_Vehicle.SE_Grounded_HeavyTank05)
  Spawn(Troop.CutsceneDummy)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.CutsceneDummy)
  Despawn(Troop.IL_Grunt01)
  Despawn(Troop.IL_Grunt02)
  Despawn(Troop.IL_Grunt03)
  Despawn(Troop.IL_Grunt04)
  Despawn(Troop.IL_Grunt05)
  Despawn(Troop.IL_Grunt06)
  Despawn(Troop.IL_AntiAir01)
  Despawn(Troop.IL_AntiAir02)
  Despawn(Troop.IL_AntiAir03)
  Despawn(Troop.IL_AntiAir04)
  Despawn(Troop.IL_AntiAir05)
  Despawn(Troop.IL_AntiAir06)
  Despawn(Troop.IL_Chain01)
  Despawn(Troop.IL_Chain02)
  Despawn(Troop.IL_Chain03)
  Despawn(Troop.IL_Chain04)
  Despawn(Troop.IL_Chain05)
  Despawn(Air_Vehicle.IL_Gunship01)
  Despawn(Air_Vehicle.POW_IL_Gunship01)
  Despawn(Air_Vehicle.POW_IL_Gunship02)
  Despawn(Air_Vehicle.POW_IL_Gunship03)
  Despawn(Ground_Vehicle.IL_Battlestation01)
  Spawn(Ground_Vehicle.IL_Battlestation01_Cutscene)
  Teleport(Ground_Vehicle.IL_Battlestation01_Cutscene, GetObjectXPosition(Waypoint.OutroBattlestationTeleport), GetObjectZPosition(Waypoint.OutroBattlestationTeleport), 270)
  EnableWeapon(Ground_Vehicle.IL_Battlestation01_Cutscene, 0)
  FollowWaypoint(Ground_Vehicle.IL_Battlestation01_Cutscene, Waypoint.OutroBattlestationPath, 0, 0, constant.ORDER_FORCED)
  Spawn(Air_Vehicle.OutroSolarAirTransport01)
  Spawn(Air_Vehicle.OutroSolarAirTransport02)
  Spawn(Troop.OutroSolarAirTransport01Pilot)
  Spawn(Troop.OutroSolarAirTransport02Pilot)
  Spawn(Troop.CutsceneGrunt01)
  Spawn(Troop.CutsceneGrunt02)
  Spawn(Troop.CutsceneGrunt03)
  Spawn(Troop.CutsceneGrunt05)
  Spawn(Troop.CutsceneGrunt06)
  Spawn(Troop.CutsceneGrunt07)
  EnableWeapon(Air_Vehicle.OutroSolarAirTransport01, 0)
  EnableWeapon(Air_Vehicle.OutroSolarAirTransport02, 0)
  EnableWeapon(Troop.CutsceneGrunt01, 0)
  EnableWeapon(Troop.CutsceneGrunt02, 0)
  EnableWeapon(Troop.CutsceneGrunt03, 0)
  EnableWeapon(Troop.CutsceneGrunt05, 0)
  EnableWeapon(Troop.CutsceneGrunt06, 0)
  EnableWeapon(Troop.CutsceneGrunt07, 0)
  GoToArea(Troop.CutsceneGrunt01, GetObjectXPosition(Air_Vehicle.OutroSolarAirTransport01), GetObjectZPosition(Air_Vehicle.OutroSolarAirTransport01), 0, 0, constant.ORDER_FORCED)
  GoToArea(Troop.CutsceneGrunt02, GetObjectXPosition(Air_Vehicle.OutroSolarAirTransport01), GetObjectZPosition(Air_Vehicle.OutroSolarAirTransport01), 0, 0, constant.ORDER_FORCED)
  GoToArea(Troop.CutsceneGrunt03, GetObjectXPosition(Air_Vehicle.OutroSolarAirTransport01), GetObjectZPosition(Air_Vehicle.OutroSolarAirTransport01), 0, 0, constant.ORDER_FORCED)
  GoToArea(Troop.CutsceneGrunt05, GetObjectXPosition(Air_Vehicle.OutroSolarAirTransport01), GetObjectZPosition(Air_Vehicle.OutroSolarAirTransport01), 0, 0, constant.ORDER_FORCED)
  GoToArea(Troop.CutsceneGrunt06, GetObjectXPosition(Air_Vehicle.OutroSolarAirTransport01), GetObjectZPosition(Air_Vehicle.OutroSolarAirTransport01), 0, 0, constant.ORDER_FORCED)
  GoToArea(Troop.CutsceneGrunt07, GetObjectXPosition(Air_Vehicle.OutroSolarAirTransport01), GetObjectZPosition(Air_Vehicle.OutroSolarAirTransport01), 0, 0, constant.ORDER_FORCED)
  SetCamera(Camera.Cutscene03_Shot01)
  CameraSetFOV(Camera.Cutscene03_Shot01, 45, constant.IMMEDIATE, 25, constant.NO_WAIT)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  Cutscene03Begins = 1
  ClearMessageQueue()
  PhoneMessage(25, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
  PhoneMessage(81, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
  WaitFor(3)
  PutUnitInVehicle(Troop.OutroSolarAirTransport01Pilot, Air_Vehicle.OutroSolarAirTransport01, 0)
  PutUnitInVehicle(Troop.OutroSolarAirTransport02Pilot, Air_Vehicle.OutroSolarAirTransport02, 0)
  FollowWaypoint(Air_Vehicle.OutroSolarAirTransport01, Waypoint.OutroSolarAirTransport01Path, 0, 0, constant.ORDER_FORCED)
  WaitFor(1)
  EnableWeapon(Ground_Vehicle.IL_Battlestation01_Cutscene, 1)
  AttackTarget(Ground_Vehicle.IL_Battlestation01_Cutscene, Air_Vehicle.OutroSolarAirTransport01, constant.ORDER_FORCED)
  WaitFor(1)
  EnableWeapon(Ground_Vehicle.IL_Battlestation01_Cutscene, 0)
  FollowWaypoint(Ground_Vehicle.IL_Battlestation01_Cutscene, Waypoint.OutroBattlestationPath, 0, 0, constant.ORDER_FORCED)
  if IsDead(Air_Vehicle.OutroSolarAirTransport01) == false then
    Kill(Air_Vehicle.OutroSolarAirTransport01)
  end
  if IsDead(Troop.CutsceneGrunt01) == false then
    Kill(Troop.CutsceneGrunt01)
  end
  if IsDead(Troop.CutsceneGrunt02) == false then
    Kill(Troop.CutsceneGrunt02)
  end
  if IsDead(Troop.CutsceneGrunt03) == false then
    Kill(Troop.CutsceneGrunt03)
  end
  if IsDead(Troop.CutsceneGrunt05) == false then
    Kill(Troop.CutsceneGrunt05)
  end
  if IsDead(Troop.CutsceneGrunt06) == false then
    Kill(Troop.CutsceneGrunt06)
  end
  if IsDead(Troop.CutsceneGrunt07) == false then
    Kill(Troop.CutsceneGrunt07)
  end
  FollowWaypoint(Air_Vehicle.OutroSolarAirTransport02, Waypoint.OutroSolarAirTransport02Path, 0, 0, constant.ORDER_FORCED)
  Spawn(Troop.OutroLegionGrunt01)
  Spawn(Troop.OutroLegionGrunt02)
  Spawn(Troop.OutroLegionGrunt03)
  Spawn(Troop.OutroLegionGrunt04)
  Spawn(Troop.OutroLegionGrunt05)
  EnableWeapon(Troop.OutroLegionGrunt01, 0)
  EnableWeapon(Troop.OutroLegionGrunt02, 0)
  EnableWeapon(Troop.OutroLegionGrunt03, 0)
  EnableWeapon(Troop.OutroLegionGrunt04, 0)
  EnableWeapon(Troop.OutroLegionGrunt05, 0)
  WaitFor(2)
  CameraSetFOV(Camera.Cutscene03_Shot01, 40, constant.SMOOTH, 1, constant.NO_WAIT)
  GoToArea(Troop.OutroLegionGrunt01, GetObjectXPosition(Waypoint.OutroLegionGrunt01Path), GetObjectZPosition(Waypoint.OutroLegionGrunt01Path), 1, 0, constant.ORDER_FORCED)
  GoToArea(Troop.OutroLegionGrunt02, GetObjectXPosition(Waypoint.OutroLegionGrunt02Path), GetObjectZPosition(Waypoint.OutroLegionGrunt02Path), 1, 0, constant.ORDER_FORCED)
  GoToArea(Troop.OutroLegionGrunt03, GetObjectXPosition(Waypoint.OutroLegionGrunt03Path), GetObjectZPosition(Waypoint.OutroLegionGrunt03Path), 1, 0, constant.ORDER_FORCED)
  GoToArea(Troop.OutroLegionGrunt04, GetObjectXPosition(Waypoint.OutroLegionGrunt04Path), GetObjectZPosition(Waypoint.OutroLegionGrunt04Path), 1, 0, constant.ORDER_FORCED)
  GoToArea(Troop.OutroLegionGrunt05, GetObjectXPosition(Waypoint.OutroLegionGrunt05Path), GetObjectZPosition(Waypoint.OutroLegionGrunt05Path), 1, 0, constant.ORDER_FORCED)
  WaitFor(4)
  VictoryDance(constant.ARMY_UNDERWORLD)
  WaitFor(11)
  Cutscene03Complete = 1
  DebugOut("Cutscene03 ended naturally")
end

function CO_Messages(owner)
  COMessagesScript = owner
  local ArtilleryDeadMessage = 0
  local ArtillerySavedMessage = 0
  local AirbaseCapturedMessage = 0
  local WrongWayMessage = 0
  local SolarRecapturingAirbaseMessage = 0
  local SolarRecapturedAirbaseMessage = 0
  local LegionReRecapturedAirbaseMessage = 0
  local CounterAttackDeadMessage = 0
  local AATowersMessage = 0
  local AATowersDestroyedMessage = 0
  local FlyingOverBeachMessage = 0
  local FlyingOverBeachWithOnlyAircraftMessage = 0
  local FlyingOverBeachWithNoPOWMessage = 0
  local NavalTransportsIncomingMessage = 0
  local NavalGunFirstBloodMessage = 0
  local NavalGunHeavyDamageMessage = 0
  local NavalGunBothHeavyDamageMessage = 0
  local NavalGunDestroyedMessage = 0
  local NavalGunLastHeavyDamageMessage = 0
  repeat
    EndFrame()
  until IntroCutsceneEnd == 1
  WaitFor(3)
  repeat
    EndFrame()
  until 0 < NumItemsInArea(Map_Zone.EnemySighted, flag.TYPE_UNDERWORLD)
  PhoneMessage(57, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
  EndFrame()
  repeat
    EndFrame()
  until 0 < NumItemsInArea(Map_Zone.TriggerGunships, flag.TYPE_UNDERWORLD)
  WaitFor(6)
  ClearMessageQueue()
  PhoneMessage(29, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
  EndFrame()
  while true do
    if MidCutsceneArtilleryObjectiveEnd == 1 then
      WaitFor(1)
      if ArtilleryDeadMessage == 0 and ArtilleryDeadCounter == 2 and 0 < GetGroupHealthPercent(Unit_Group.ArtilleryAttackers) then
        ArtilleryDeadMessage = 1
        ClearMessageQueue()
        PhoneMessage(30, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
        EndFrame()
      end
      if ArtillerySavedMessage == 0 and GetGroupHealthPercent(Unit_Group.ArtilleryAttackers) == 0 and ArtilleryBothDead == 0 and NavalGunsStart == 0 then
        ArtillerySavedMessage = 1
        ArtilleryDeadMessage = 1
        ClearMessageQueue()
        if ArtilleryDeadCounter == 0 then
          PhoneMessageWithObjective(11, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
        else
          PhoneMessageWithObjective(12, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
        end
        PhoneMessage(13, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
        EndFrame()
      end
      if WrongWayMessage == 0 and (SetArtilleryObjectiveComplete == 1 or ArtilleryBothDead == 1) and IsInArea(GetPlayerUnit(), Map_Zone.TriggerAttackWave01) and StopWrongWayMessage == 0 then
        WrongWayMessage = 1
        PhoneMessage(67, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
        EndFrame()
      end
    end
    if SolarRecapturingAirbaseMessage == 0 and AirbaseCapturedByLegion == 1 and GetHealthPercent(Capture_Point.ILairbase) < 100 then
      SolarRecapturingAirbaseMessage = 1
      repeat
        EndFrame()
      until CutsceneIsPlaying == 0
      PhoneMessage(37, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      EndFrame()
    end
    if SolarRecapturedAirbaseMessage == 0 and CheckCapturePoint(Capture_Point.ILairbase, constant.ARMY_SOLAR, 97, 2, 0) == true and SolarRecapturingAirbaseMessage == 1 then
      SolarRecapturedAirbaseMessage = 1
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted - 1
      SetCapturePointHeight(Capture_Point.ILairbase, constant.ARMY_SOLAR, 100)
      SetInstallationOwner(Strategic_Installation.ILairbase, constant.ARMY_SOLAR)
      repeat
        EndFrame()
      until CutsceneIsPlaying == 0
      PhoneMessage(38, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      PhoneMessage(39, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      EndFrame()
    end
    if LegionReRecapturedAirbaseMessage == 0 and CheckCapturePoint(Capture_Point.ILairbase, constant.ARMY_UNDERWORLD, 97, 2, 0) == true and SolarRecapturedAirbaseMessage == 1 then
      LegionReRecapturedAirbaseMessage = 1
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      SetCapturePointHeight(Capture_Point.ILairbase, constant.ARMY_UNDERWORLD, 100)
      SetInstallationOwner(Strategic_Installation.ILairbase, constant.ARMY_UNDERWORLD)
      repeat
        EndFrame()
      until CutsceneIsPlaying == 0
      PhoneMessage(40, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      EndFrame()
    end
    if CounterAttackDeadMessage == 0 and IsDead(Troop.SEGrunt29) and IsDead(Troop.SEGrunt30) and IsDead(Troop.SEGrunt31) and IsDead(Troop.SEGrunt53) and IsDead(Troop.SEGrunt54) and IsDead(Troop.SEGrunt55) then
      CounterAttackDeadMessage = 1
      PhoneMessage(41, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      EndFrame()
    end
    if AATowersMessage == 0 and (IsAttacking(Building.AATower01) or IsAttacking(Building.AATower02)) then
      AATowersMessage = 1
      if GetPlayerUnit() == Air_Vehicle.ILBomber01 or GetPlayerUnit() == Air_Vehicle.ILFighter01 then
        PhoneMessage(43, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      else
        PhoneMessage(44, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      end
      EndFrame()
    end
    if AATowersDestroyedMessage == 0 and IsDead(Building.AATower01) and IsDead(Building.AATower02) and IsDead(Air_Vehicle.ILBomber01) == false and NavalGunsStart == 0 then
      AATowersDestroyedMessage = 1
      PhoneMessage(68, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      EndFrame()
    end
    if FlyingOverBeachMessage == 0 and (GetPlayerUnit() == Air_Vehicle.ILBomber01 or GetPlayerUnit() == Air_Vehicle.ILFighter01) and IsInArea(GetPlayerUnit(), Map_Zone.NavalGunArea) and NavalGunsStart == 0 then
      WaitFor(1)
      if IsDead(Troop.ILAntiAir01) and IsDead(Troop.ILAntiAir02) and IsDead(Troop.ILAntiAir03) and IsDead(Troop.ILBazooka01) and IsDead(Troop.ILBazooka02) and IsDead(Troop.ILBazooka03) and IsDead(Troop.ILBazooka04) and IsDead(Troop.ILBazooka05) and IsDead(Troop.ILGrunt01) and IsDead(Troop.ILGrunt02) and IsDead(Troop.ILGrunt03) and IsDead(Troop.ILGrunt04) and IsDead(Troop.ILGrunt05) and IsDead(Troop.ILGrunt06) and IsDead(Troop.ILGrunt07) and IsDead(Troop.ILGrunt08) and IsDead(Troop.ILGrunt09) and IsDead(Troop.ILGrunt10) then
        if (ArtilleryJoined == 1 or POWFreed == 1) and (IsDead(Ground_Vehicle.ILArtillery01) == false or IsDead(Ground_Vehicle.ILArtillery02) == false or IsDead(Troop.ILGrunt11) == false or IsDead(Troop.ILGrunt12) == false or IsDead(Troop.ILGrunt13) == false or IsDead(Troop.ILGrunt14) == false or IsDead(Troop.ILGrunt15) == false) then
          FlyingOverBeachMessage = 1
          PhoneMessage(54, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
          EndFrame()
        end
      else
        FlyingOverBeachMessage = 1
        PhoneMessage(54, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
        EndFrame()
      end
    end
    if FlyingOverBeachWithOnlyAircraftMessage == 0 and (GetPlayerUnit() == Air_Vehicle.ILBomber01 or GetPlayerUnit() == Air_Vehicle.ILFighter01) then
      DebugOut("GetPlayerUnit() == Air_Vehicle.ILBomber01 or GetPlayerUnit() == Air_Vehicle.ILFighter01")
      if IsInArea(GetPlayerUnit(), Map_Zone.NavalGunArea) and NavalGunsStart == 0 then
        DebugOut("IsInArea(GetPlayerUnit(), Map_Zone.NavalGunArea) and NavalGunsStart == 0")
        WaitFor(1)
        if IsDead(Troop.ILAntiAir01) and IsDead(Troop.ILAntiAir02) and IsDead(Troop.ILAntiAir03) and IsDead(Troop.ILBazooka01) and IsDead(Troop.ILBazooka02) and IsDead(Troop.ILBazooka03) and IsDead(Troop.ILBazooka04) and IsDead(Troop.ILBazooka05) and IsDead(Troop.ILGrunt01) and IsDead(Troop.ILGrunt02) and IsDead(Troop.ILGrunt03) and IsDead(Troop.ILGrunt04) and IsDead(Troop.ILGrunt05) and IsDead(Troop.ILGrunt06) and IsDead(Troop.ILGrunt07) and IsDead(Troop.ILGrunt08) and IsDead(Troop.ILGrunt09) and IsDead(Troop.ILGrunt10) then
          DebugOut("CountRemainingPlayerTroops(constant.PLAYER_ONE) <= 0")
          if ArtilleryJoined == 1 and POWFreed == 1 then
            if IsDead(Ground_Vehicle.ILArtillery01) and IsDead(Ground_Vehicle.ILArtillery02) and IsDead(Troop.ILGrunt11) and IsDead(Troop.ILGrunt12) and IsDead(Troop.ILGrunt13) and IsDead(Troop.ILGrunt14) and IsDead(Troop.ILGrunt15) then
              FlyingOverBeachWithOnlyAircraftMessage = 1
              NavalGunsStartWithOnlyAircraft = 1
              DebugOut("NavalGunsStartWithOnlyAircraft = 1")
              EndFrame()
            end
          elseif ArtilleryJoined == 1 and POWFreed == 0 then
            if IsDead(Ground_Vehicle.ILArtillery01) and IsDead(Ground_Vehicle.ILArtillery02) then
              FlyingOverBeachWithOnlyAircraftMessage = 1
              NavalGunsStartWithOnlyAircraft = 1
              DebugOut("NavalGunsStartWithOnlyAircraft = 1")
              EndFrame()
            end
          elseif ArtilleryJoined == 0 and POWFreed == 1 then
            if IsDead(Troop.ILGrunt11) and IsDead(Troop.ILGrunt12) and IsDead(Troop.ILGrunt13) and IsDead(Troop.ILGrunt14) and IsDead(Troop.ILGrunt15) then
              FlyingOverBeachWithOnlyAircraftMessage = 1
              NavalGunsStartWithOnlyAircraft = 1
              DebugOut("NavalGunsStartWithOnlyAircraft = 1")
              EndFrame()
            end
          else
            FlyingOverBeachWithOnlyAircraftMessage = 1
            NavalGunsStartWithOnlyAircraft = 1
            DebugOut("NavalGunsStartWithOnlyAircraft = 1")
            EndFrame()
          end
        end
      end
    end
    if NavalTransportsIncomingMessage == 0 and (IsInArea(Water_Vehicle.SENavalTransport01, Map_Zone.Map_Boundary) or IsInArea(Water_Vehicle.SENavalTransport02, Map_Zone.Map_Boundary) or IsInArea(Water_Vehicle.SENavalTransport03, Map_Zone.Map_Boundary) or IsInArea(Water_Vehicle.SENavalTransport04, Map_Zone.Map_Boundary)) then
      NavalTransportsIncomingMessage = 1
      PhoneMessage(46, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      EndFrame()
    end
    if NavalGunFirstBloodMessage == 0 and (100 > GetHealthPercent(Building.NavalGun01) or 100 > GetHealthPercent(Building.NavalGun01)) then
      NavalGunFirstBloodMessage = 1
      PhoneMessage(63, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      EndFrame()
    end
    if NavalGunHeavyDamageMessage == 0 then
      if GetHealthPercent(Building.NavalGun01) < 25 and 25 <= GetHealthPercent(Building.NavalGun02) then
        NavalGunHeavyDamageMessage = 1
        PhoneMessage(64, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
        EndFrame()
      else
        if 25 > GetHealthPercent(Building.NavalGun02) and GetHealthPercent(Building.NavalGun01) >= 25 then
          NavalGunHeavyDamageMessage = 1
          PhoneMessage(64, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
          EndFrame()
        else
        end
      end
      EndFrame()
    end
    if NavalGunBothHeavyDamageMessage == 0 and IsDead(Building.NavalGun01) == false and IsDead(Building.NavalGun02) == false and GetHealthPercent(Building.NavalGun01) < 25 and 25 > GetHealthPercent(Building.NavalGun02) then
      NavalGunBothHeavyDamageMessage = 1
      PhoneMessage(65, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      EndFrame()
    end
    if NavalGunDestroyedMessage == 0 and (IsDead(Building.NavalGun01) or IsDead(Building.NavalGun02)) then
      NavalGunDestroyedMessage = 1
      PhoneMessage(51, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      EndFrame()
    end
    if NavalGunLastHeavyDamageMessage == 0 and NavalGunBothHeavyDamageMessage == 0 then
      if IsDead(Building.NavalGun01) and 25 > GetHealthPercent(Building.NavalGun02) then
        NavalGunLastHeavyDamageMessage = 1
        PhoneMessage(66, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
        EndFrame()
      elseif IsDead(Building.NavalGun02) and GetHealthPercent(Building.NavalGun01) < 25 then
        NavalGunLastHeavyDamageMessage = 1
        PhoneMessage(66, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
        EndFrame()
      else
        EndFrame()
      end
    end
    EndFrame()
  end
end

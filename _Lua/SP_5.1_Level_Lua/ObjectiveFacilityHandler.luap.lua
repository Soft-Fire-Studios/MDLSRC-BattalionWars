function ObjectiveFacilityHandler(owner)
  local airbaseflag = 0
  local factoryflag = 0
  local airbasecounter = 0
  local factorycounter = 0
  local airbasedefended = 0
  local factorydefended = 0
  local airbasecontroller01 = 0
  local airbasecontroller02 = 0
  local factorycontroller01 = 0
  local factorycontroller02 = 0
  local airbasetime = 0
  local factorytime = 0
  repeat
    EndFrame()
  until cutscene01 == 1
  while missionend == 0 do
    if airbasedefended == 0 and GetState(Capture_Point.CPAirbase) == flag.TYPE_TUNDRAN and airbase == 0 then
      PhoneMessageWithObjective(63, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      SetObjectiveData(Objective.CapturePointXAirbase, constant.OBJECTIVE_DATA_STATE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      airbase = 2
      airbasecontroller01 = 0
      DebugOut("*ObjectiveFacilityHandler* - 1. AIRBASE Primary Objective complete")
    end
    if airbasedefended == 0 and GetState(Capture_Point.CPAirbase) == flag.TYPE_XYLVANIAN and airbase == 2 then
      ClearMessageQueue()
      PhoneMessage(66, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Prison_Ubel_Happy, constant.PLAYER_ONE)
      PhoneMessageWithObjective(67, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      SetObjectiveData(Objective.CapturePointXAirbase, constant.OBJECTIVE_DATA_STATE, 0)
      SetObjectiveData(Objective_Marker.CapturePointXAirbase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted - 1
      airbase = 1
      airbasecontroller01 = 0
      DebugOut("*ObjectiveFacilityHandler* - 2. The Xylvanians have re-captured the AIRBASE")
    end
    if airbasedefended == 0 and GetState(Capture_Point.CPAirbase) == flag.TYPE_TUNDRAN and airbase == 1 then
      ClearMessageQueue()
      PhoneMessageWithObjective(68, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      SetObjectiveData(Objective.CapturePointXAirbase, constant.OBJECTIVE_DATA_STATE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      airbase = 2
      airbaseflag = 0
      airbasecontroller01 = 0
      DebugOut("*ObjectiveFacilityHandler* - 3. The player has re-captured the AIRBASE")
    end
    EndFrame()
    if airbasedefended == 0 and airbase == 2 and airbasecounter == 0 then
      if IsDead(Troop.XylvanianGrunt07) == false or IsDead(Troop.XylvanianGrunt08) == false or IsDead(Troop.XylvanianGrunt09) == false or IsDead(Troop.XylvanianGrunt10) == false then
        PhoneMessage(64, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Prison_Ubel_Sad, constant.PLAYER_ONE)
        WaitFor(1)
        EnterVehicle(Troop.XylvanianGrunt07, Capture_Point.CPAirbase, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianGrunt08, Capture_Point.CPAirbase, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianGrunt09, Capture_Point.CPAirbase, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianGrunt10, Capture_Point.CPAirbase, constant.ORDER_FORCED)
        GoToArea(Ground_Vehicle.XylvanianLightTank01, 35, -140, 10)
        GoToArea(Ground_Vehicle.XylvanianLightTank02, 35, -140, 10)
        GoToArea(Air_Vehicle.XylvanianGunship01, 35, -140, 10)
        GoToArea(Air_Vehicle.XylvanianGunship02, 35, -140, 10)
        GoToArea(Air_Vehicle.XylvanianGunship03, 35, -140, 10)
        DebugOut("*ObjectiveFacilityHandler* - 4. The Xylvanian Grunts are going to re-capture their AIRBASE")
      end
      airbasecounter = 1
    end
    if airbasedefended == 0 and airbasecontroller01 == 0 and NumPassengersInUnit(Capture_Point.CPAirbase) == 0 and (airbase == 2 or GetHealthPercent(Capture_Point.CPAirbase) ~= 100) then
      WaitFor(1)
      if IsDead(Troop.XylvanianAirbaseGrunt01) == false or IsDead(Troop.XylvanianAirbaseGrunt02) == false or IsDead(Troop.XylvanianAirbaseGrunt03) == false or IsDead(Troop.XylvanianAirbaseGrunt04) == false or IsDead(Troop.XTransportTroop02) == false or IsDead(Troop.XTransportTroop03) == false or IsDead(Troop.XTransportTroop04) == false or IsDead(Troop.XTransportTroop05) == false or IsDead(Troop.XTransportTroop06) == false then
        EnterVehicle(Troop.XylvanianAirbaseGrunt01, Capture_Point.CPAirbase)
        EnterVehicle(Troop.XylvanianAirbaseGrunt02, Capture_Point.CPAirbase)
        EnterVehicle(Troop.XylvanianAirbaseGrunt03, Capture_Point.CPAirbase)
        EnterVehicle(Troop.XylvanianAirbaseGrunt04, Capture_Point.CPAirbase)
        EnterVehicle(Troop.XTransportTroop01, Capture_Point.CPAirbase)
        EnterVehicle(Troop.XTransportTroop02, Capture_Point.CPAirbase)
        EnterVehicle(Troop.XTransportTroop03, Capture_Point.CPAirbase)
        EnterVehicle(Troop.XTransportTroop04, Capture_Point.CPAirbase)
        EnterVehicle(Troop.XTransportTroop05, Capture_Point.CPAirbase)
        EnterVehicle(Troop.XTransportTroop06, Capture_Point.CPAirbase)
        DebugOut("*ObjectiveFacilityHandler* - 5. The Xylvanian Airbase Grunts and Bazooka Vets are going to raise the AIRBASE flag")
        airbasecontroller01 = 1
      end
      if airbasecounter == 1 and (IsDead(Troop.XylvanianGrunt07) == false or IsDead(Troop.XylvanianGrunt08) == false or IsDead(Troop.XylvanianGrunt09) == false or IsDead(Troop.XylvanianGrunt10) == false) then
        EnterVehicle(Troop.XylvanianGrunt07, Capture_Point.CPAirbase, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianGrunt08, Capture_Point.CPAirbase, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianGrunt09, Capture_Point.CPAirbase, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianGrunt10, Capture_Point.CPAirbase, constant.ORDER_FORCED)
        DebugOut("*ObjectiveFacilityHandler* - 6. The Xylvanian Airbase Counter attack Grunts are going to raise the AIRBASE flag")
        airbasecontroller01 = 1
      end
    end
    EndFrame()
    if airbasecontroller01 == 1 and airbasecontroller02 == 0 then
      airbasetime = GetTime()
      airbasecontroller02 = 1
      DebugOut("*ObjectiveFacilityHandler* - 7a. Resetting the airbasecontroller variable")
    end
    if airbasecontroller01 == 1 and airbasecontroller02 == 1 and GetTime() > airbasetime + 5 then
      airbasecontroller01 = 0
      airbasecontroller02 = 0
      DebugOut("*ObjectiveFacilityHandler* - 7b. Resetting the airbasecontroller variable")
    end
    if airbasedefended == 0 and airbase == 2 and IsDead(Ground_Vehicle.XylvanianLightTank01) and IsDead(Troop.XylvanianGrunt07) and IsDead(Troop.XylvanianGrunt08) and IsDead(Troop.XylvanianGrunt09) and IsDead(Troop.XylvanianGrunt10) and IsDead(Troop.XylvanianAirbaseGrunt01) and IsDead(Troop.XylvanianAirbaseGrunt02) and IsDead(Troop.XylvanianAirbaseGrunt03) and IsDead(Troop.XylvanianAirbaseGrunt04) and IsDead(Troop.XTransportTroop02) and IsDead(Troop.XTransportTroop03) and IsDead(Troop.XTransportTroop04) and IsDead(Troop.XTransportTroop05) and IsDead(Troop.XTransportTroop06) and GetHealthPercent(Capture_Point.CPAirbase) == 100 then
      PhoneMessage(65, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      airbasedefended = 1
      DebugOut("*ObjectiveFacilityHandler* - 8. If the player has successfully defended the AIRBASE, let them know")
    end
    if airbaseflag == 0 and airbase == 2 and CheckCapturePoint(Capture_Point.CPAirbase, constant.ARMY_XYLVANIAN, 10, 90, constant.CAPTUREPOINTFLAG_LOWERING) == true then
      PhoneMessage(20, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      airbaseflag = 1
      DebugOut("*ObjectiveFacilityHandler* - 9. The AIRBASE flag is being lowered by the Xylvanians!")
    end
    EndFrame()
    if factorydefended == 0 and GetState(Capture_Point.CPFactory) == flag.TYPE_TUNDRAN and factory == 0 then
      PhoneMessageWithObjective(70, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      SetObjectiveData(Objective.CapturePointXFactory, constant.OBJECTIVE_DATA_STATE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      factory = 2
      factorycontroller01 = 0
      DebugOut("*ObjectiveFacilityHandler* - 10. FACTORY Primary Objective complete")
    end
    if factorydefended == 0 and GetState(Capture_Point.CPFactory) == flag.TYPE_XYLVANIAN and factory == 2 then
      ClearMessageQueue()
      PhoneMessage(73, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Prison_Ubel_Happy, constant.PLAYER_ONE)
      PhoneMessageWithObjective(75, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      SetObjectiveData(Objective.CapturePointXFactory, constant.OBJECTIVE_DATA_STATE, 0)
      SetObjectiveData(Objective_Marker.CapturePointXFactory, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted - 1
      factory = 1
      factorycontroller01 = 0
      DebugOut("*ObjectiveFacilityHandler* - 11. The Xylvanians have recaptured their FACTORY")
    end
    if factorydefended == 0 and GetState(Capture_Point.CPFactory) == flag.TYPE_TUNDRAN and factory == 1 then
      if IsDead(Troop.XylvanianGrunt12) == false or IsDead(Troop.XylvanianGrunt13) == false or IsDead(Troop.XylvanianGrunt14) == false or IsDead(Troop.XylvanianGrunt15) == false or IsDead(Troop.XylvanianGrunt16) == false or IsDead(Troop.XylvanianBazookaVet10) == false or IsDead(Troop.XylvanianBazookaVet11) == false or IsDead(Troop.XylvanianBazookaVet12) == false or IsDead(Troop.XylvanianBazookaVet13) == false or IsDead(Troop.XylvanianBazookaVet14) == false or IsDead(Troop.XylvanianChainVet05) == false or IsDead(Troop.XylvanianChainVet06) == false or IsDead(Troop.XylvanianChainVet07) == false or IsDead(Troop.XylvanianChainVet08) == false or IsDead(Troop.XylvanianChainVet09) == false then
        ClearMessageQueue()
        PhoneMessageWithObjective(70, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      end
      SetObjectiveData(Objective.CapturePointXFactory, constant.OBJECTIVE_DATA_STATE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      factory = 2
      factoryflag = 0
      factorycontroller01 = 0
      DebugOut("*ObjectiveFacilityHandler* - 12. The player has recaptured their FACTORY")
    end
    EndFrame()
    if factorydefended == 0 and factory == 2 and factorycounter == 0 then
      if IsDead(Troop.XylvanianGrunt12) == false or IsDead(Troop.XylvanianGrunt13) == false or IsDead(Troop.XylvanianGrunt14) == false or IsDead(Troop.XylvanianGrunt15) == false or IsDead(Troop.XylvanianGrunt16) == false or IsDead(Troop.XylvanianBazookaVet10) == false or IsDead(Troop.XylvanianBazookaVet11) == false or IsDead(Troop.XylvanianBazookaVet12) == false or IsDead(Troop.XylvanianBazookaVet13) == false or IsDead(Troop.XylvanianBazookaVet14) == false then
        PhoneMessage(71, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Prison_Ubel_Sad, constant.PLAYER_ONE)
        WaitFor(1)
        EnterVehicle(Troop.XylvanianGrunt12, Capture_Point.CPFactory, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianGrunt13, Capture_Point.CPFactory, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianGrunt14, Capture_Point.CPFactory, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianGrunt15, Capture_Point.CPFactory, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianGrunt16, Capture_Point.CPFactory, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianBazookaVet10, Capture_Point.CPFactory, constant.ORDER_NORMAL)
        EnterVehicle(Troop.XylvanianBazookaVet11, Capture_Point.CPFactory, constant.ORDER_NORMAL)
        EnterVehicle(Troop.XylvanianBazookaVet12, Capture_Point.CPFactory, constant.ORDER_NORMAL)
        EnterVehicle(Troop.XylvanianBazookaVet13, Capture_Point.CPFactory, constant.ORDER_NORMAL)
        EnterVehicle(Troop.XylvanianBazookaVet14, Capture_Point.CPFactory, constant.ORDER_NORMAL)
        DebugOut("*ObjectiveFacilityHandler* - 13. The Xylvanian Grunts and Bazooka Vets are going to re-capture their FACTORY")
      end
      factorycounter = 1
    end
    if factorydefended == 0 and factorycontroller01 == 0 and NumPassengersInUnit(Capture_Point.CPFactory) == 0 and (factory == 2 or GetHealthPercent(Capture_Point.CPFactory) ~= 100) then
      WaitFor(1)
      if IsDead(Troop.XylvanianChainVet05) == false or IsDead(Troop.XylvanianChainVet06) == false or IsDead(Troop.XylvanianChainVet07) == false or IsDead(Troop.XylvanianChainVet08) == false or IsDead(Troop.XylvanianChainVet09) == false then
        EnterVehicle(Troop.XylvanianChainVet05, Capture_Point.CPFactory, constant.ORDER_NORMAL)
        EnterVehicle(Troop.XylvanianChainVet06, Capture_Point.CPFactory, constant.ORDER_NORMAL)
        EnterVehicle(Troop.XylvanianChainVet07, Capture_Point.CPFactory, constant.ORDER_NORMAL)
        EnterVehicle(Troop.XylvanianChainVet08, Capture_Point.CPFactory, constant.ORDER_NORMAL)
        EnterVehicle(Troop.XylvanianChainVet09, Capture_Point.CPFactory, constant.ORDER_NORMAL)
        DebugOut("*ObjectiveFacilityHandler* - 14. The Xylvanian Chain Vets are going to raise the FACTORY flag")
        factorycontroller01 = 1
      end
      if factorycounter == 1 and (IsDead(Troop.XylvanianGrunt12) == false or IsDead(Troop.XylvanianGrunt13) == false or IsDead(Troop.XylvanianGrunt14) == false or IsDead(Troop.XylvanianGrunt15) == false or IsDead(Troop.XylvanianGrunt16) == false or IsDead(Troop.XylvanianBazookaVet10) == false or IsDead(Troop.XylvanianBazookaVet11) == false or IsDead(Troop.XylvanianBazookaVet12) == false or IsDead(Troop.XylvanianBazookaVet13) == false or IsDead(Troop.XylvanianBazookaVet14) == false) then
        EnterVehicle(Troop.XylvanianGrunt12, Capture_Point.CPFactory, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianGrunt13, Capture_Point.CPFactory, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianGrunt14, Capture_Point.CPFactory, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianGrunt15, Capture_Point.CPFactory, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianGrunt16, Capture_Point.CPFactory, constant.ORDER_FORCED)
        EnterVehicle(Troop.XylvanianBazookaVet10, Capture_Point.CPFactory, constant.ORDER_NORMAL)
        EnterVehicle(Troop.XylvanianBazookaVet11, Capture_Point.CPFactory, constant.ORDER_NORMAL)
        EnterVehicle(Troop.XylvanianBazookaVet12, Capture_Point.CPFactory, constant.ORDER_NORMAL)
        EnterVehicle(Troop.XylvanianBazookaVet13, Capture_Point.CPFactory, constant.ORDER_NORMAL)
        EnterVehicle(Troop.XylvanianBazookaVet14, Capture_Point.CPFactory, constant.ORDER_NORMAL)
        DebugOut("*ObjectiveFacilityHandler* - 15. The Xylvanian Grunts and Bazooka Vets are going to raise the FACTORY flag")
        factorycontroller01 = 1
      end
    end
    EndFrame()
    if factorycontroller01 == 1 and factorycontroller02 == 0 then
      factorytime = GetTime()
      factorycontroller02 = 1
      DebugOut("*ObjectiveFacilityHandler* - 16a. Resetting the FACTORY flag variable")
    end
    if factorycontroller01 == 1 and factorycontroller02 == 1 and GetTime() > factorytime + 5 then
      factorycontroller01 = 0
      factorycontroller02 = 0
      DebugOut("*ObjectiveFacilityHandler* - 16b. Resetting the FACTORY flag variable")
    end
    if factorydefended == 0 and factory == 2 and IsDead(Troop.XylvanianGrunt12) and IsDead(Troop.XylvanianGrunt13) and IsDead(Troop.XylvanianGrunt14) and IsDead(Troop.XylvanianGrunt15) and IsDead(Troop.XylvanianGrunt16) and IsDead(Troop.XylvanianBazookaVet10) and IsDead(Troop.XylvanianBazookaVet11) and IsDead(Troop.XylvanianBazookaVet12) and IsDead(Troop.XylvanianBazookaVet13) and IsDead(Troop.XylvanianBazookaVet14) and IsDead(Troop.XylvanianChainVet05) and IsDead(Troop.XylvanianChainVet06) and IsDead(Troop.XylvanianChainVet07) and IsDead(Troop.XylvanianChainVet08) and IsDead(Troop.XylvanianChainVet09) and GetHealthPercent(Capture_Point.CPFactory) == 100 then
      PhoneMessage(76, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Prison_Ubel_Sad, constant.PLAYER_ONE)
      PhoneMessage(72, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      DebugOut("*ObjectiveFacilityHandler* - 17. If the player has successfully defended the FACTORY, let them know")
      factorydefended = 1
    end
    if factoryflag == 0 and factory == 2 and CheckCapturePoint(Capture_Point.CPFactory, constant.ARMY_XYLVANIAN, 10, 90, constant.CAPTUREPOINTFLAG_LOWERING) == true then
      PhoneMessage(21, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      factoryflag = 1
      DebugOut("*ObjectiveFacilityHandler* - 18. The FACTORY flag is being lowered by the Xylvanians!")
    end
    if factorydefended == 1 and airbasedefended == 1 then
      DebugOut("*ObjectiveFacilityHandler* - 19. Both the FACTORY and AIRBASE have been successfully defended. Breaking the script")
      break
    end
    EndFrame()
  end
end

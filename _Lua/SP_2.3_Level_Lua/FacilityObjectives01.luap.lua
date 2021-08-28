function FacilityObjectives01(owner)
  local factoryCOspeech = 0
  local southernbarracksCOspeech = 0
  local HQflag = 0
  local B1flag = 0
  local ABflag = 0
  local FYflag = 0
  local mortarvetspeech = 0
  local multiplebarracks = 0
  repeat
    EndFrame()
  until cutscenefinished01 == 1
  while missionend == 0 do
    if northernbarracks == 0 and GetState(Capture_Point.Barracks_2_Capture_Point) == flag.TYPE_WFRONTIER then
      SetObjectiveData(Objective.Northern_Barracks, constant.OBJECTIVE_DATA_STATE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      northernbarracks = 1
      if wfhqcomplete == 0 then
        PhoneMessage(28, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      else
        PhoneMessageWithObjective(28, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      end
      if mortarvetspeech == 0 then
        PhoneMessage(19, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
        mortarvetspeech = 1
      end
      if southernbarracks == 1 and multiplebarracks == 0 then
        PhoneMessage(58, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
        multiplebarracks = 1
      end
      DebugOut("*FacilityPrimary01* - 1. Northern Barracks Objective complete.")
    end
    EndFrame()
    if southernbarracks == 0 and GetState(Capture_Point.Barracks_1_Capture_Point) == flag.TYPE_WFRONTIER then
      southernbarracks = 1
      SetObjectiveData(Objective.Southern_Barracks, constant.OBJECTIVE_DATA_STATE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      if wfhqcomplete == 0 then
        PhoneMessage(18, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      else
        PhoneMessageWithObjective(18, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      end
      if mortarvetspeech == 0 then
        PhoneMessage(19, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
        mortarvetspeech = 1
      end
      if northernbarracks == 1 and multiplebarracks == 0 then
        PhoneMessage(58, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
        multiplebarracks = 1
      end
      if IsDead(Troop.TT_Grunt_Factory_1) == false or IsDead(Troop.TT_Grunt_Factory_2) == false or IsDead(Troop.TT_Grunt_Factory_3) == false or IsDead(Troop.TT_Grunt_Airbase_1) == false or IsDead(Troop.TT_Grunt_Airbase_2) == false or IsDead(Troop.TT_Grunt_Airbase_3) == false then
        PhoneMessage(20, constant.ID_NONE, constant.ARMY_TUNDRAN, 8, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
        WaitFor(3)
        EnterVehicle(Troop.TT_Grunt_Factory_1, Capture_Point.Barracks_1_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_Grunt_Factory_2, Capture_Point.Barracks_1_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_Grunt_Factory_3, Capture_Point.Barracks_1_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_Grunt_Airbase_1, Capture_Point.Barracks_1_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_Grunt_Airbase_2, Capture_Point.Barracks_1_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_Grunt_Airbase_3, Capture_Point.Barracks_1_Capture_Point, constant.ORDER_FORCED)
        DebugOut("*FacilityPrimary01* - 2. Southern Barracks Objective complete. The counter attack troops are alive, so they're goin' in")
      end
      WaitFor(11)
      GoToArea(Ground_Vehicle.TT_Recon_1, 489, 104, 10)
      GoToArea(Air_Vehicle.TT_Gunship_1, 482, 128, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Air_Vehicle.TT_Gunship_2, 482, 128, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Air_Vehicle.TT_Gunship_3, 482, 128, 10, 0, constant.ORDER_NORMAL)
      DebugOut("*FacilityPrimary01* - 3. Southern Barracks Objective complete. In go the Gunships and Recon")
    end
    EndFrame()
    if factory == 0 and GetState(Capture_Point.Factory_Capture_Point) == flag.TYPE_WFRONTIER then
      factory = 1
      SetObjectiveData(Objective.Eastern_Factory, constant.OBJECTIVE_DATA_STATE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      if wfhqcomplete == 0 then
        PhoneMessage(22, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      else
        PhoneMessageWithObjective(22, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      end
      if IsDead(Troop.TT_Bazooka_Barracks_2_1) == false or IsDead(Troop.TT_Bazooka_Barracks_2_2) == false or IsDead(Troop.TT_Bazooka_Barracks_2_3) == false or IsDead(Troop.TT_Bazooka_Barracks_2_4) == false or IsDead(Troop.TT_Grunt_Barracks_2_6) == false or IsDead(Troop.TT_Grunt_Barracks_2_7) == false or IsDead(Troop.TT_Grunt_Barracks_2_8) == false or IsDead(Troop.TT_Grunt_Barracks_2_9) == false then
        WaitFor(4)
        PhoneMessage(23, constant.ID_NONE, constant.ARMY_TUNDRAN, 8, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
        EnterVehicle(Troop.TT_Bazooka_Barracks_2_1, Capture_Point.Factory_Capture_Point)
        EnterVehicle(Troop.TT_Bazooka_Barracks_2_2, Capture_Point.Factory_Capture_Point)
        EnterVehicle(Troop.TT_Bazooka_Barracks_2_3, Capture_Point.Factory_Capture_Point)
        EnterVehicle(Troop.TT_Bazooka_Barracks_2_4, Capture_Point.Factory_Capture_Point)
        EnterVehicle(Troop.TT_Grunt_Barracks_2_6, Capture_Point.Factory_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_Grunt_Barracks_2_7, Capture_Point.Factory_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_Grunt_Barracks_2_8, Capture_Point.Factory_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_Grunt_Barracks_2_9, Capture_Point.Factory_Capture_Point, constant.ORDER_FORCED)
        DebugOut("*FacilityPrimary01* - 4. Factory Objective complete. The counter attack troops are alive, so they're goin' in")
      end
      DebugOut("*FacilityPrimary01* - 5. Factory Objective complete. There are no troops alive for the counter attack.")
    end
    EndFrame()
    if airbase == 0 and GetState(Capture_Point.Airbase_Capture_Point) == flag.TYPE_WFRONTIER then
      airbase = 1
      SetObjectiveData(Objective.Western_Airbase, constant.OBJECTIVE_DATA_STATE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      if wfhqcomplete == 0 then
        PhoneMessage(25, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      else
        PhoneMessageWithObjective(25, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      end
      if IsDead(Troop.TT_AA_Vet_Barracks_2_1) == false or IsDead(Troop.TT_AA_Vet_Barracks_2_2) == false or IsDead(Troop.TT_AA_Vet_Barracks_2_3) == false or IsDead(Troop.TT_AA_Vet_Barracks_2_4) == false or IsDead(Troop.TT_Grunt_Barracks_2_1) == false or IsDead(Troop.TT_Grunt_Barracks_2_2) == false or IsDead(Troop.TT_Grunt_Barracks_2_3) == false or IsDead(Troop.TT_Grunt_Barracks_2_4) == false then
        WaitFor(10)
        PhoneMessage(26, constant.ID_NONE, constant.ARMY_TUNDRAN, 8, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
        EnterVehicle(Troop.TT_AA_Vet_Barracks_2_1, Capture_Point.Airbase_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_AA_Vet_Barracks_2_2, Capture_Point.Airbase_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_AA_Vet_Barracks_2_3, Capture_Point.Airbase_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_AA_Vet_Barracks_2_4, Capture_Point.Airbase_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_Grunt_Barracks_2_1, Capture_Point.Airbase_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_Grunt_Barracks_2_2, Capture_Point.Airbase_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_Grunt_Barracks_2_3, Capture_Point.Airbase_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_Grunt_Barracks_2_4, Capture_Point.Airbase_Capture_Point, constant.ORDER_FORCED)
        DebugOut("*FacilityPrimary01* - 6. Airbase Objective complete. The counter attack troops are alive, so they're goin' in")
      end
      GoToArea(Air_Vehicle.TT_Gunship_1, 260, 426, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Air_Vehicle.TT_Gunship_2, 237, 401, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Air_Vehicle.TT_Gunship_3, 263, 401, 10, 0, constant.ORDER_NORMAL)
      DebugOut("*FacilityPrimary01* - 7. Airbase Objective complete. In go the Gunships")
    end
    EndFrame()
    if southernbarracks == 1 and GetState(Capture_Point.Barracks_1_Capture_Point) == flag.TYPE_TUNDRAN then
      SetObjectiveData(Objective_Marker.Southern_Barracks, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Southern_Barracks, constant.OBJECTIVE_DATA_STATE, 0)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted - 1
      PhoneMessage(79, constant.ID_NONE, constant.ARMY_TUNDRAN, 8, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_ONE)
      if wfhqcomplete == 0 then
        PhoneMessage(76, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      else
        PhoneMessageWithObjective(76, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      end
      southernbarracks = 2
      DebugOut("*FacilityPrimary01* - 8. The Tundrans have re-captured their Barracks.")
    end
    EndFrame()
    if southernbarracks == 2 and GetState(Capture_Point.Barracks_1_Capture_Point) == flag.TYPE_WFRONTIER then
      SetObjectiveData(Objective_Marker.Southern_Barracks, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Southern_Barracks, constant.OBJECTIVE_DATA_STATE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      if wfhqcomplete == 0 then
        PhoneMessage(82, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      else
        PhoneMessageWithObjective(82, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      end
      southernbarracks = 1
      B1flag = 0
      DebugOut("*FacilityPrimary01* - 9. The Western Frontier has captured the Tundran Barracks for the second time.")
    end
    EndFrame()
    if airbase == 1 and GetState(Capture_Point.Airbase_Capture_Point) == flag.TYPE_TUNDRAN then
      SetObjectiveData(Objective_Marker.Western_Airbase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Western_Airbase, constant.OBJECTIVE_DATA_STATE, 0)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted - 1
      PhoneMessage(80, constant.ID_NONE, constant.ARMY_TUNDRAN, 8, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_ONE)
      if wfhqcomplete == 0 then
        PhoneMessage(77, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      else
        PhoneMessageWithObjective(77, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      end
      airbase = 2
      DebugOut("*FacilityPrimary01* - 10. The Tundrans have re-captured their Airbase.")
    end
    EndFrame()
    if airbase == 2 and GetState(Capture_Point.Airbase_Capture_Point) == flag.TYPE_WFRONTIER then
      SetObjectiveData(Objective_Marker.Western_Airbase, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Western_Airbase, constant.OBJECTIVE_DATA_STATE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      if wfhqcomplete == 0 then
        PhoneMessage(84, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      else
        PhoneMessageWithObjective(84, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      end
      airbase = 1
      ABflag = 0
      DebugOut("*FacilityPrimary01* - 11. The Western Frontier has captured the Tundran Airbase for the second time.")
    end
    EndFrame()
    if factory == 1 and GetState(Capture_Point.Factory_Capture_Point) == flag.TYPE_TUNDRAN then
      SetObjectiveData(Objective_Marker.Eastern_Factory, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Eastern_Factory, constant.OBJECTIVE_DATA_STATE, 0)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted - 1
      PhoneMessage(81, constant.ID_NONE, constant.ARMY_TUNDRAN, 8, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_ONE)
      if wfhqcomplete == 0 then
        PhoneMessage(78, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      else
        PhoneMessageWithObjective(78, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      end
      factory = 2
      DebugOut("*FacilityPrimary01* - 12. The Tundrans have re-captured their Factory.")
    end
    EndFrame()
    if factory == 2 and GetState(Capture_Point.Factory_Capture_Point) == flag.TYPE_WFRONTIER then
      SetObjectiveData(Objective_Marker.Eastern_Factory, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Eastern_Factory, constant.OBJECTIVE_DATA_STATE, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      if wfhqcomplete == 0 then
        PhoneMessage(83, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      else
        PhoneMessageWithObjective(83, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      end
      factory = 1
      FYflag = 0
      DebugOut("*FacilityPrimary01* - 13. The Western Frontier has captured the Tundran Factory for the second time.")
    end
    EndFrame()
    if factory == 1 and factoryCOspeech == 0 and IsDead(Troop.TT_Bazooka_Barracks_2_1) and IsDead(Troop.TT_Bazooka_Barracks_2_2) and IsDead(Troop.TT_Bazooka_Barracks_2_3) and IsDead(Troop.TT_Bazooka_Barracks_2_4) and IsDead(Troop.TT_Grunt_Barracks_2_6) and IsDead(Troop.TT_Grunt_Barracks_2_7) and IsDead(Troop.TT_Grunt_Barracks_2_8) and IsDead(Troop.TT_Grunt_Barracks_2_9) then
      PhoneMessage(92, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      factoryCOspeech = 1
      DebugOut("*FacilityPrimary01* - 14. The player has killed all of the members of the Factory counter attack.")
    end
    EndFrame()
    if airbase == 1 and airbaseCOspeech == 0 and IsDead(Troop.TT_AA_Vet_Barracks_2_1) and IsDead(Troop.TT_AA_Vet_Barracks_2_2) and IsDead(Troop.TT_AA_Vet_Barracks_2_3) and IsDead(Troop.TT_AA_Vet_Barracks_2_4) and IsDead(Troop.TT_Grunt_Barracks_2_1) and IsDead(Troop.TT_Grunt_Barracks_2_2) and IsDead(Troop.TT_Grunt_Barracks_2_3) and IsDead(Troop.TT_Grunt_Barracks_2_4) then
      PhoneMessage(93, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      airbaseCOspeech = 1
      DebugOut("*FacilityPrimary01* - 15. The player has killed all of the members of the Airbase counter attack.")
    end
    EndFrame()
    if southernbarracks == 1 and southernbarracksCOspeech == 0 and IsDead(Troop.TT_Grunt_Factory_1) and IsDead(Troop.TT_Grunt_Factory_2) and IsDead(Troop.TT_Grunt_Factory_3) and IsDead(Troop.TT_Grunt_Airbase_1) and IsDead(Troop.TT_Grunt_Airbase_2) and IsDead(Troop.TT_Grunt_Airbase_3) then
      PhoneMessage(94, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
      southernbarracksCOspeech = 1
      DebugOut("*FacilityPrimary01* - 16. The player has killed all of the members of the Barracks counter attack.")
    end
    EndFrame()
    if HQflag == 0 and CheckCapturePoint(Capture_Point.WF_HQ_Capture_Point, constant.ARMY_TUNDRAN, 10, 90, constant.CAPTUREPOINTFLAG_LOWERING) then
      PhoneMessage(59, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      HQflag = 1
      DebugOut("HQ Flag Warning Triggered.")
    end
    EndFrame()
    if B1flag == 0 and southernbarracks == 1 and CheckCapturePoint(Capture_Point.Barracks_1_Capture_Point, constant.ARMY_TUNDRAN, 10, 90, constant.CAPTUREPOINTFLAG_LOWERING) then
      PhoneMessage(60, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      B1flag = 1
      DebugOut("Barracks 1 Flag Warning Triggered.")
    end
    EndFrame()
    if ABflag == 0 and airbase == 1 and CheckCapturePoint(Capture_Point.Airbase_Capture_Point, constant.ARMY_TUNDRAN, 10, 90, constant.CAPTUREPOINTFLAG_LOWERING) then
      PhoneMessage(61, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      ABflag = 1
      DebugOut("Airbase Flag Warning Triggered.")
    end
    EndFrame()
    if FYflag == 0 and factory == 1 and CheckCapturePoint(Capture_Point.Factory_Capture_Point, constant.ARMY_TUNDRAN, 10, 90, constant.CAPTUREPOINTFLAG_LOWERING) then
      PhoneMessage(62, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      FYflag = 1
      DebugOut("Factory Flag Warning Triggered.")
    end
    EndFrame()
    EndFrame()
  end
end

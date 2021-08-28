function FlagCounterAttacks(owner)
  repeat
    EndFrame()
  until cutscenefinished01 == 1
  while missionend == 0 do
    if GetHealthPercent(Capture_Point.Barracks_1_Capture_Point) < 100 and NumPassengersInUnit(Capture_Point.Barracks_1_Capture_Point) == 0 and southernbarracks ~= 1 then
      EnterVehicle(Troop.TT_Flame_Barracks_1_1, Capture_Point.Barracks_1_Capture_Point)
      EnterVehicle(Troop.TT_Grunt_Barracks_1_6, Capture_Point.Barracks_1_Capture_Point)
      EnterVehicle(Troop.TT_Grunt_Barracks_1_7, Capture_Point.Barracks_1_Capture_Point)
      EnterVehicle(Troop.TT_Grunt_Barracks_1_8, Capture_Point.Barracks_1_Capture_Point)
      DebugOut("Enemy units are capturing the Southern Barracks!")
      WaitFor(2)
    end
    EndFrame()
    if 100 > GetHealthPercent(Capture_Point.Factory_Capture_Point) and NumPassengersInUnit(Capture_Point.Factory_Capture_Point) == 0 and factory ~= 1 then
      EnterVehicle(Troop.TundranFactoryGrunt01, Capture_Point.Factory_Capture_Point)
      EnterVehicle(Troop.TundranFactoryGrunt02, Capture_Point.Factory_Capture_Point)
      EnterVehicle(Troop.TundranFactoryGrunt03, Capture_Point.Factory_Capture_Point)
      EnterVehicle(Troop.TundranFactoryGrunt04, Capture_Point.Factory_Capture_Point)
      EnterVehicle(Troop.TundranFactoryAAVet01, Capture_Point.Factory_Capture_Point)
      EnterVehicle(Troop.TT_Airbase_AA_Vet_1, Capture_Point.Factory_Capture_Point)
      EnterVehicle(Troop.TT_Flame_Vet_Factory_1, Capture_Point.Factory_Capture_Point)
      DebugOut("Enemy units are capturing the Factory!")
      WaitFor(2)
    end
    EndFrame()
    if airbaseCOspeech == 0 and 100 > GetHealthPercent(Capture_Point.Airbase_Capture_Point) then
      GoToArea(Air_Vehicle.TT_Gunship_1, 244, 420, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Air_Vehicle.TT_Gunship_2, 236, 404, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Air_Vehicle.TT_Gunship_3, 247, 408, 10, 0, constant.ORDER_NORMAL)
      if NumPassengersInUnit(Capture_Point.Airbase_Capture_Point) == 0 and airbase ~= 1 then
        EnterVehicle(Troop.TT_Flame_Airbase_1, Capture_Point.Airbase_Capture_Point)
        EnterVehicle(Troop.TT_Grunt_Airbase_6, Capture_Point.Airbase_Capture_Point)
        EnterVehicle(Troop.TT_Grunt_Airbase_7, Capture_Point.Airbase_Capture_Point)
        EnterVehicle(Troop.TT_Grunt_Airbase_8, Capture_Point.Airbase_Capture_Point)
        EnterVehicle(Troop.TT_Grunt_Airbase_9, Capture_Point.Airbase_Capture_Point)
        EnterVehicle(Troop.TT_Airbase_Bazooka_1, Capture_Point.Airbase_Capture_Point)
        EnterVehicle(Troop.TT_Airbase_Bazooka_2, Capture_Point.Airbase_Capture_Point)
        DebugOut("Enemy units are capturing the Airbase!")
        WaitFor(2)
      end
    end
    EndFrame()
    if 100 > GetHealthPercent(Capture_Point.Barracks_2_Capture_Point) and NumPassengersInUnit(Capture_Point.Barracks_2_Capture_Point) == 0 and northernbarracks ~= 1 then
      EnterVehicle(Troop.TT_Flame_Barracks_2_1, Capture_Point.Barracks_2_Capture_Point)
      EnterVehicle(Troop.TT_Flame_Barracks_2_2, Capture_Point.Barracks_2_Capture_Point)
      EnterVehicle(Troop.TT_Bazooka_Barracks_2_6, Capture_Point.Barracks_2_Capture_Point)
      EnterVehicle(Troop.TT_Bazooka_Barracks_2_7, Capture_Point.Barracks_2_Capture_Point)
      if southernbarracks == 1 then
        EnterVehicle(Troop.TT_Flame_Barracks_1_1, Capture_Point.Barracks_2_Capture_Point)
        EnterVehicle(Troop.TT_Grunt_Barracks_1_6, Capture_Point.Barracks_2_Capture_Point)
        EnterVehicle(Troop.TT_Grunt_Barracks_1_7, Capture_Point.Barracks_2_Capture_Point)
        EnterVehicle(Troop.TT_Grunt_Barracks_1_8, Capture_Point.Barracks_2_Capture_Point)
      end
      DebugOut("Enemy units are capturing the Southern Barracks!")
      WaitFor(2)
    end
    EndFrame()
  end
end

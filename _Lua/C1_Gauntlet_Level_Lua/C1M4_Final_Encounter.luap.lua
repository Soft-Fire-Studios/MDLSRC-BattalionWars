function C1M4_Final_Encounter(owner)
  WaitFor(5)
  FinalEncounterScript = owner
  repeat
    EndFrame()
  until LevelState == 4
  WaitFor(5)
  repeat
    EndFrame()
  until GetPlayerUnit() == 150013075 or IsInArea(Ground_Vehicle.WF_Recon, 200, 700, 100) == false
  GoToArea(Troop.TGrunt17, -20, 715, 10, nil, constant.ORDER_FORCED)
  GoToArea(Troop.TGrunt18, -20, 715, 10, nil, constant.ORDER_FORCED)
  GoToArea(Troop.TGrunt19, -20, 715, 10, nil, constant.ORDER_FORCED)
  GoToArea(Troop.TGrunt21, -20, 715, 10, nil, constant.ORDER_FORCED)
  GoToArea(Troop.TGrunt22, -20, 715, 10, nil, constant.ORDER_FORCED)
  Kill(Destroyable_Object.Entity1253)
  Spawn(Troop.TGrunt30)
  Spawn(Troop.TGrunt31)
  Spawn(Troop.TGrunt32)
  Spawn(Troop.TGrunt33)
  Spawn(Troop.TGrunt34)
  Kill(Destroyable_Object.Entity1252)
  Spawn(Troop.TBazooka12)
  Spawn(Troop.TBazooka13)
  Spawn(Troop.TBazooka14)
  Spawn(Air_Vehicle.TGunship2)
  WaitFor(10)
  SetObjectiveData(Objective_Marker.Be_the_Tank, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  PhoneMessage(42, 0, 2, 4, SpriteID.CO_T_Nova_Happy)
  PhoneMessage(43, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
  PhoneMessage(30, 0, 2, 4, SpriteID.CO_T_Nova_Happy)
  WaitFor(0.5)
  GoToArea(Troop.TGrunt30, 195, 705, 20)
  GoToArea(Troop.TGrunt31, 195, 705, 20)
  GoToArea(Troop.TGrunt32, 195, 705, 20)
  GoToArea(Troop.TGrunt33, 195, 705, 20)
  GoToArea(Troop.TGrunt34, 195, 705, 20)
  GoToArea(Troop.TGrunt15, 195, 705, 20)
  GoToArea(Troop.TGrunt16, 195, 705, 20)
  WaitFor(30)
  GoToArea(Ground_Vehicle.T_Recon2, 195, 705, 20)
  AttackUnderway = 1
  WaitFor(20)
  PhoneMessage(60, 0, 2, 4, SpriteID.CO_T_Nova_Happy)
  if IsDead(Ground_Vehicle.WF_LTank1) == false then
    PhoneMessage(67, 0, 0, 6, SpriteID.CO_WF_Betty_Happy)
  end
  GoToArea(Troop.TBazooka8, 195, 705, 20)
  GoToArea(Troop.TBazooka9, 195, 705, 20)
  GoToArea(Troop.TBazooka12, 195, 705, 20)
  GoToArea(Troop.TBazooka13, 195, 705, 20)
  GoToArea(Troop.TBazooka14, 195, 705, 20)
  WaitFor(30)
  GoToArea(Troop.TGrunt17, 195, 705, 20)
  GoToArea(Troop.TGrunt18, 195, 705, 20)
  GoToArea(Troop.TGrunt19, 195, 705, 20)
  GoToArea(Troop.TGrunt21, 195, 705, 20)
  GoToArea(Troop.TGrunt22, 195, 705, 20)
  WaitFor(20)
  GoToArea(Air_Vehicle.TGunship2, 195, 705, 20)
  GoToArea(Ground_Vehicle.TTank1, 195, 705, 20)
  WaitFor(5)
  if IsDead(Ground_Vehicle.TTank1) == false and IsDead(Troop.WF_Bazooka) == false and IsDead(Troop.WF_Bazooka2) == false then
    DebugOut("Playing Message")
    PhoneMessage(68, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
  end
end

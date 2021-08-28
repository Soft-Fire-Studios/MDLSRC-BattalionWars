function Startup(owner)
  startup = owner
  CoopSetup(Objective_Marker.CoOpMarkerPlayer1, Objective_Marker.CoOpMarkerPlayer2, 225)
  SetActive(Ground_Vehicle.XylvanianFuelStationHeavyTank02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.XylvanianFuelStationHeavyTank03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.XylvanianFuelStationHeavyTank04, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.XylvanianFuelStationHeavyTank05, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.XylvanianFuelStationHeavyTank06, constant.INACTIVE, constant.ADJUST_WEAPON)
  Despawn(Troop.XylvanianFuelStationHeavyTank02Pilot01, false)
  Despawn(Troop.XylvanianFuelStationHeavyTank02Pilot02, false)
  Despawn(Troop.XylvanianFuelStationHeavyTank02Pilot03, false)
  Despawn(Troop.XylvanianFuelStationHeavyTank03Pilot01, false)
  Despawn(Troop.XylvanianFuelStationHeavyTank03Pilot02, false)
  Despawn(Troop.XylvanianFuelStationHeavyTank03Pilot03, false)
  Despawn(Troop.XylvanianFuelStationHeavyTank04Pilot01, false)
  Despawn(Troop.XylvanianFuelStationHeavyTank04Pilot02, false)
  Despawn(Troop.XylvanianFuelStationHeavyTank04Pilot03, false)
  Despawn(Troop.XylvanianFuelStationHeavyTank05Pilot01, false)
  Despawn(Troop.XylvanianFuelStationHeavyTank05Pilot02, false)
  Despawn(Troop.XylvanianFuelStationHeavyTank05Pilot03, false)
  Despawn(Troop.XylvanianFuelStationHeavyTank06Pilot01, false)
  Despawn(Troop.XylvanianFuelStationHeavyTank06Pilot02, false)
  Despawn(Troop.XylvanianFuelStationHeavyTank06Pilot03, false)
  Despawn(Air_Vehicle.WFFighter01, false)
  Despawn(Air_Vehicle.WFFighter02, false)
  Despawn(Air_Vehicle.WFFighter03, false)
  Despawn(Air_Vehicle.TundranFighter01, false)
  Despawn(Air_Vehicle.TundranFighter02, false)
  Despawn(Air_Vehicle.TundranFighter03, false)
  Despawn(Air_Vehicle.WFBomber01, false)
  Despawn(Air_Vehicle.WFBomber02, false)
  Despawn(Air_Vehicle.TundranBomber01, false)
  Despawn(Air_Vehicle.TundranBomber02, false)
  Despawn(Air_Vehicle.XylvanianFighter01, true)
  Despawn(Air_Vehicle.XylvanianFighter02, true)
  Despawn(Air_Vehicle.XylvanianFighter03, true)
  Despawn(Air_Vehicle.XylvanianFighter04, true)
  Despawn(Water_Vehicle.XDreadnought01, true)
  Despawn(Water_Vehicle.XDreadnought02, true)
  Despawn(Building.SpiderGun01, false)
  Despawn(Building.SpiderGun02, false)
  Despawn(Building.SpiderGun03, false)
  Despawn(Building.SpiderGun04, false)
  Despawn(Building.VladsBigDrill, false)
  Despawn(Troop.CutSceneTroop01)
  Despawn(Troop.CutSceneTroop02)
  Despawn(Troop.CutSceneTroop03)
  Despawn(Troop.CutSceneTroop04)
  Despawn(Troop.CutSceneTroop05)
  Despawn(Troop.CutSceneTroop06)
  Despawn(Ground_Vehicle.XylvanianBattlestation01)
  Despawn(Ground_Vehicle.XylvanianBattlestation02)
  Despawn(Ground_Vehicle.XylvanianBattlestation03)
  Despawn(Ground_Vehicle.XylvanianBattlestation04)
  repeat
    EndFrame()
  until netvariable.player1.skip01 == 1 and netvariable.player2.skip01 == 1 or cutscenefinished01 == 1
  while missionend == 0 do
    WaitFor(30)
    if IsDead(Ground_Vehicle.XylvanianFuelStationHeavyTank02) == false then
      SetActive(Ground_Vehicle.XylvanianFuelStationHeavyTank02, constant.ACTIVE, constant.ADJUST_WEAPON)
      PutUnitInVehicle(Troop.XylvanianFuelStationHeavyTank02Pilot01, Ground_Vehicle.XylvanianFuelStationHeavyTank02, 0)
      PutUnitInVehicle(Troop.XylvanianFuelStationHeavyTank02Pilot02, Ground_Vehicle.XylvanianFuelStationHeavyTank02, 1)
      PutUnitInVehicle(Troop.XylvanianFuelStationHeavyTank02Pilot03, Ground_Vehicle.XylvanianFuelStationHeavyTank02, 2)
      Spawn(Troop.XylvanianFuelStationHeavyTank02Pilot01)
      Spawn(Troop.XylvanianFuelStationHeavyTank02Pilot02)
      Spawn(Troop.XylvanianFuelStationHeavyTank02Pilot03)
      PhoneMessage(16, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        AttackTarget(Ground_Vehicle.XylvanianFuelStationHeavyTank02, GetPlayerUnit(constant.PLAYER_TWO), constant.ORDER_NORMAL)
      end
    end
    WaitFor(30)
    if IsDead(Ground_Vehicle.XylvanianFuelStationHeavyTank03) == false then
      SetActive(Ground_Vehicle.XylvanianFuelStationHeavyTank03, constant.ACTIVE, constant.ADJUST_WEAPON)
      PutUnitInVehicle(Troop.XylvanianFuelStationHeavyTank03Pilot01, Ground_Vehicle.XylvanianFuelStationHeavyTank03, 0)
      PutUnitInVehicle(Troop.XylvanianFuelStationHeavyTank03Pilot02, Ground_Vehicle.XylvanianFuelStationHeavyTank03, 1)
      PutUnitInVehicle(Troop.XylvanianFuelStationHeavyTank03Pilot03, Ground_Vehicle.XylvanianFuelStationHeavyTank03, 2)
      Spawn(Troop.XylvanianFuelStationHeavyTank03Pilot01)
      Spawn(Troop.XylvanianFuelStationHeavyTank03Pilot02)
      Spawn(Troop.XylvanianFuelStationHeavyTank03Pilot03)
      PhoneMessage(22, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        AttackTarget(Ground_Vehicle.XylvanianFuelStationHeavyTank03, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      end
    end
    WaitFor(30)
    if IsDead(Ground_Vehicle.XylvanianFuelStationHeavyTank04) == false then
      SetActive(Ground_Vehicle.XylvanianFuelStationHeavyTank04, constant.ACTIVE, constant.ADJUST_WEAPON)
      PutUnitInVehicle(Troop.XylvanianFuelStationHeavyTank04Pilot01, Ground_Vehicle.XylvanianFuelStationHeavyTank04, 0)
      PutUnitInVehicle(Troop.XylvanianFuelStationHeavyTank04Pilot02, Ground_Vehicle.XylvanianFuelStationHeavyTank04, 1)
      PutUnitInVehicle(Troop.XylvanianFuelStationHeavyTank04Pilot03, Ground_Vehicle.XylvanianFuelStationHeavyTank04, 2)
      Spawn(Troop.XylvanianFuelStationHeavyTank04Pilot01)
      Spawn(Troop.XylvanianFuelStationHeavyTank04Pilot02)
      Spawn(Troop.XylvanianFuelStationHeavyTank04Pilot03)
      PhoneMessage(16, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        AttackTarget(Ground_Vehicle.XylvanianFuelStationHeavyTank04, GetPlayerUnit(constant.PLAYER_TWO), constant.ORDER_NORMAL)
      end
    end
    WaitFor(30)
    if IsDead(Ground_Vehicle.XylvanianFuelStationHeavyTank05) == false then
      SetActive(Ground_Vehicle.XylvanianFuelStationHeavyTank05, constant.ACTIVE, constant.ADJUST_WEAPON)
      PutUnitInVehicle(Troop.XylvanianFuelStationHeavyTank05Pilot01, Ground_Vehicle.XylvanianFuelStationHeavyTank05, 0)
      PutUnitInVehicle(Troop.XylvanianFuelStationHeavyTank05Pilot02, Ground_Vehicle.XylvanianFuelStationHeavyTank05, 1)
      PutUnitInVehicle(Troop.XylvanianFuelStationHeavyTank05Pilot03, Ground_Vehicle.XylvanianFuelStationHeavyTank05, 2)
      Spawn(Troop.XylvanianFuelStationHeavyTank05Pilot01)
      Spawn(Troop.XylvanianFuelStationHeavyTank05Pilot02)
      Spawn(Troop.XylvanianFuelStationHeavyTank05Pilot03)
      PhoneMessage(22, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        AttackTarget(Ground_Vehicle.XylvanianFuelStationHeavyTank05, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      end
    end
    WaitFor(30)
    if IsDead(Ground_Vehicle.XylvanianFuelStationHeavyTank06) == false then
      SetActive(Ground_Vehicle.XylvanianFuelStationHeavyTank06, constant.ACTIVE, constant.ADJUST_WEAPON)
      PutUnitInVehicle(Troop.XylvanianFuelStationHeavyTank06Pilot01, Ground_Vehicle.XylvanianFuelStationHeavyTank06, 0)
      PutUnitInVehicle(Troop.XylvanianFuelStationHeavyTank06Pilot02, Ground_Vehicle.XylvanianFuelStationHeavyTank06, 1)
      PutUnitInVehicle(Troop.XylvanianFuelStationHeavyTank06Pilot03, Ground_Vehicle.XylvanianFuelStationHeavyTank06, 2)
      Spawn(Troop.XylvanianFuelStationHeavyTank06Pilot01)
      Spawn(Troop.XylvanianFuelStationHeavyTank06Pilot02)
      Spawn(Troop.XylvanianFuelStationHeavyTank06Pilot03)
      PhoneMessage(16, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        AttackTarget(Ground_Vehicle.XylvanianFuelStationHeavyTank06, GetPlayerUnit(constant.PLAYER_TWO), constant.ORDER_NORMAL)
        do break end
        EndFrame()
      end
    end
  end
end

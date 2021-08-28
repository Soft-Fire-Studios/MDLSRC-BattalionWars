function JW_Cutscene_03_Naval_Withdrawl_Skip(owner)
  local waterchange = 0
  Despawn(Troop.SE_CS_Baz_1)
  Despawn(Troop.SE_CS_Baz_2)
  Despawn(Troop.SE_CS_Baz_3)
  Despawn(Troop.SE_CS_Baz_4)
  Despawn(Troop.SE_CS_Baz_5)
  Despawn(Capture_Point.Fake_Helipad, false)
  repeat
    EndFrame()
  until SeaUnitsWithdrawCutsceneEnd == 1
  repeat
    EndFrame()
  until SeaUnitsWithdrawCutsceneEnd == 2
  SetWaterRenderEnable(false)
  EndFrame()
  GoToArea(Water_Vehicle.SEBattleship01, -1400, 0, 40, constant.ORDER_FORCED)
  GoToArea(Water_Vehicle.SEBattleship02, -1400, 0, 40, constant.ORDER_FORCED)
  GoToArea(Water_Vehicle.SEFrigate01, -1400, 0, 40, constant.ORDER_FORCED)
  GoToArea(Water_Vehicle.SEFrigate02, -1400, 0, 40, constant.ORDER_FORCED)
  Despawn(Air_Vehicle.SolarAirTransport01)
  Despawn(Air_Vehicle.SolarAirTransport02)
  Spawn(Air_Vehicle.SolarAirTransport03)
  Spawn(Air_Vehicle.SolarAirTransport04)
  Despawn(Air_Vehicle.AngloBomber02)
  Despawn(Air_Vehicle.AngloBomber03)
  Despawn(Air_Vehicle.AngloBomber04)
  Despawn(Air_Vehicle.AngloBomber05)
  Despawn(Air_Vehicle.AngloBomber09)
  Despawn(Air_Vehicle.AngloBomber10)
  Spawn(Ground_Vehicle.AngloLightTank03)
  Despawn(Building.WesternFrontierSeaTransportBeached01)
  Despawn(Building.WesternFrontierSeaTransportBeached02)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.SolarGrunt01, GetPlayerUnit(), 15, constant.ORDER_FORCED)
    FollowUnit(Troop.SolarGrunt02, GetPlayerUnit(), 15, constant.ORDER_FORCED)
    FollowUnit(Troop.SolarGrunt03, GetPlayerUnit(), 15, constant.ORDER_FORCED)
    FollowUnit(Troop.SolarGrunt04, GetPlayerUnit(), 15, constant.ORDER_FORCED)
    FollowUnit(Troop.SolarGrunt05, GetPlayerUnit(), 15, constant.ORDER_FORCED)
    FollowUnit(Troop.SE_Grunt_06, GetPlayerUnit(), 15, constant.ORDER_FORCED)
    FollowUnit(Troop.SE_Grunt_07, GetPlayerUnit(), 15, constant.ORDER_FORCED)
    FollowUnit(Troop.SE_Grunt_08, GetPlayerUnit(), 15, constant.ORDER_FORCED)
    FollowUnit(Troop.SE_Grunt_09, GetPlayerUnit(), 15, constant.ORDER_FORCED)
    FollowUnit(Troop.SE_Grunt_10, GetPlayerUnit(), 15, constant.ORDER_FORCED)
  end
  FollowUnit(Ground_Vehicle.SolarAntiAirTank01, GetPlayerUnit(), 15, constant.ORDER_FORCED)
  FollowUnit(Ground_Vehicle.SolarLightTank01, GetPlayerUnit(), 15, constant.ORDER_FORCED)
  StopCapturePointSounds(Capture_Point.PrimaryObjectiveReinforcements)
  repeat
    if waterchange == 0 and (GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) < 100 or GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE)) < -50) then
      waterchange = 1
      SetWaterRenderEnable(true)
    end
    if waterchange == 1 and GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) > 100 and GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE)) > -50 then
      waterchange = 0
      SetWaterRenderEnable(false)
    end
    EndFrame()
  until missionend == 1
end

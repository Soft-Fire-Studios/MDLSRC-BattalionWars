function CapturedNorthernRadarStation(owner)
  repeat
    if missionfailed == 1 then
      return
    end
    if GetState(Capture_Point.NorthernPoint) == flag.TYPE_WFRONTIER then
      Kill(Destroyable_Object.RadarStationNorth)
      SetObjectiveData(Objective_Marker.RadarStationNorth, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      northernpointcaptured = 1
    end
    EndFrame()
  until northernpointcaptured == 1
  Spawn(Air_Vehicle.AirTransportReinforcements1)
  Spawn(Air_Vehicle.AirTransportReinforcements2)
  DebugOut("Reinforcements On Route")
  PhoneMessage(8, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
  LandAirUnit(Air_Vehicle.AirTransportReinforcements1, 205, 285, constant.ORDER_FORCED)
  LandAirUnit(Air_Vehicle.AirTransportReinforcements2, 185, 285, constant.ORDER_FORCED)
  AttackTarget(Ground_Vehicle.XHeavyTank7, GetPlayerUnit())
  AttackTarget(Ground_Vehicle.XHeavyTank8, GetPlayerUnit())
  AttackTarget(Ground_Vehicle.XArtillery5, GetPlayerUnit())
  AttackTarget(Ground_Vehicle.XArtillery6, GetPlayerUnit())
end

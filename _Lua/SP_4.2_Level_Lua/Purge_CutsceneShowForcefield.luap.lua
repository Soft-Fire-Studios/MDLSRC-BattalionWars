function Purge_CutsceneShowForcefield(owner)
  cutsceneshowforcefield = owner
  Despawn(Troop.Schain05)
  Despawn(Troop.Schain06)
  while true do
    if IsInArea(Troop.ILbazooka01, Map_Zone.TankPOW) or IsInArea(Troop.ILbazooka02, Map_Zone.TankPOW) or IsInArea(Troop.ILbazooka03, Map_Zone.TankPOW) or IsInArea(Troop.ILbazooka04, Map_Zone.TankPOW) or IsInArea(Troop.ILbazooka05, Map_Zone.TankPOW) or IsInArea(Troop.ILhose01, Map_Zone.TankPOW) or IsInArea(Troop.ILhose02, Map_Zone.TankPOW) or IsInArea(Troop.ILmortar01, Map_Zone.TankPOW) or IsInArea(Troop.ILmortar02, Map_Zone.TankPOW) or IsInArea(Troop.ILmortar03, Map_Zone.TankPOW) or IsInArea(Troop.ILmortar04, Map_Zone.TankPOW) or IsInArea(Troop.ILmortar05, Map_Zone.TankPOW) or IsInArea(Troop.LegionGrunt02, Map_Zone.TankPOW) or IsInArea(Troop.LegionGrunt03, Map_Zone.TankPOW) or IsInArea(Troop.LegionGrunt04, Map_Zone.TankPOW) or IsInArea(Troop.LegionGrunt05, Map_Zone.TankPOW) or IsInArea(Troop.LegionGrunt06, Map_Zone.TankPOW) or IsInArea(Troop.LegionAAVet01, Map_Zone.TankPOW) or IsInArea(Troop.LegionAAVet02, Map_Zone.TankPOW) or IsInArea(Troop.LegionAAVet03, Map_Zone.TankPOW) or IsInArea(Troop.LegionAAVet04, Map_Zone.TankPOW) or IsInArea(Troop.LegionAAVet05, Map_Zone.TankPOW) or IsInArea(Ground_Vehicle.ILtank01, Map_Zone.TankPOW) then
      cutsceneshowforcefieldstart = 1
      break
    end
    EndFrame()
  end
  StartOutro()
  FreezePlayer()
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
  PauseTimerActive = 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetWaterRenderEnable(true)
  SetCamera(Camera.CutsceneShowForcefield, constant.PLAYER_ONE)
  CameraSetFOV(Camera.CutsceneShowForcefield, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
  CameraSetWaypoint(Camera.CutsceneShowForcefield, Waypoint.CutsceneShowForcefield)
  CameraSetTarget(Camera.CutsceneShowForcefield, Waypoint.CutsceneShowForcefieldTarget)
  CameraSetFOV(Camera.CutsceneShowForcefield, 80, constant.SMOOTH, 3, constant.NO_WAIT)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessageWithObjective(69, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  SetObjectiveData(Objective.SolarForcefieldObjective, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.ForcefieldMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.ForcefieldMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.ForcefieldMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.ForcefieldMarker04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetWaterRenderEnable(true)
  cutsceneshowforcefieldend = 1
end

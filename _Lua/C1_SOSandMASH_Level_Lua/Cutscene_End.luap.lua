function Cutscene_End(owner)
  WaitFor(1)
  endscenes = owner
  repeat
    EndFrame()
  until LevelState == 2
  StartOutro()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  ClearMessageQueue()
  EndFrame()
  Despawn(Ground_Vehicle.T_LTank1)
  Despawn(Ground_Vehicle.T_LTank2)
  Despawn(Ground_Vehicle.T_LTank3)
  Despawn(Ground_Vehicle.T_LTank4)
  Despawn(Air_Vehicle.T_Gunship1)
  Despawn(Air_Vehicle.T_Gunship2)
  Despawn(Air_Vehicle.T_Gunship3)
  Despawn(Building.MG_Tower1)
  Despawn(Building.MG_Tower2)
  Despawn(Building.MG_Tower3)
  Despawn(Building.MG_Tower4)
  Despawn(Building.MG_Tower5)
  Despawn(Building.MG_Tower6)
  Despawn(Building.MG_Nest3)
  Despawn(Building.MG_Nest4)
  Despawn(Building.MG_Nest6)
  EndFrame()
  Despawn(Troop.T_Bazooka1)
  Despawn(Troop.T_Bazooka2)
  Despawn(Troop.T_Bazooka3)
  Despawn(Troop.T_Bazooka4)
  Despawn(Troop.T_Bazooka5)
  Despawn(Troop.T_Bazooka6)
  Despawn(Troop.T_Bazooka7)
  Despawn(Troop.T_Bazooka8)
  Despawn(Troop.T_Bazooka9)
  Despawn(Troop.T_Bazooka10)
  Despawn(Troop.T_Bazooka11)
  Despawn(Troop.T_Bazooka12)
  Despawn(Ground_Vehicle.WF_Artillery3)
  Despawn(Ground_Vehicle.WF_Artillery2)
  Despawn(Ground_Vehicle.WF_Artillery1)
  EndFrame()
  Despawn(Troop.T_Flamer1)
  Despawn(Troop.T_Flamer2)
  Despawn(Troop.T_Flamer3)
  Despawn(Troop.T_Flamer4)
  Despawn(Troop.T_Flamer5)
  Despawn(Troop.T_Flamer6)
  Despawn(Troop.T_Flamer7)
  Despawn(Troop.T_Flamer8)
  Despawn(Troop.T_Flamer9)
  Despawn(Troop.T_Flamer10)
  Despawn(Troop.T_Flamer11)
  Despawn(Troop.T_Flamer12)
  EndFrame()
  Despawn(Troop.T_Grunt1)
  Despawn(Troop.T_Grunt2)
  Despawn(Troop.T_Grunt3)
  Despawn(Troop.T_Grunt4)
  Despawn(Troop.T_Grunt5)
  Despawn(Troop.T_Grunt6)
  Despawn(Troop.T_Grunt7)
  Despawn(Troop.T_Grunt8)
  Despawn(Troop.T_Grunt9)
  Despawn(Troop.T_Grunt10)
  Despawn(Troop.T_Grunt11)
  Despawn(Troop.T_Grunt12)
  Despawn(Troop.T_Grunt13)
  Despawn(Troop.T_Grunt14)
  EndFrame()
  Spawn(Air_Vehicle.X_Bomber1)
  Spawn(Air_Vehicle.X_Bomber2)
  Spawn(Air_Vehicle.X_Bomber3)
  Spawn(Troop.WF_Grunt_EndCut1)
  Spawn(Troop.WF_Grunt_EndCut2)
  Spawn(Troop.WF_Grunt_EndCut3)
  Spawn(Troop.WF_Grunt_EndCut4)
  FollowWaypoint(Air_Vehicle.X_Bomber1, Waypoint.Entity0144, 0, 0)
  FollowWaypoint(Air_Vehicle.X_Bomber2, Waypoint.Entity0144, 0, 0)
  FollowWaypoint(Air_Vehicle.X_Bomber3, Waypoint.Entity0144, 0, 0)
  SetCamera(Camera.Cam4)
  CameraSetTarget(Camera.Cam4, Air_Vehicle.X_Bomber1)
  CameraSetWaypoint(Camera.Cam4, Waypoint.Entity0140)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(41, 0, 0, 3, SpriteID.CO_WF_Betty_Sad)
  WaitFor(3)
  GoToArea(Troop.WF_Grunt_EndCut3, -130, -85, 1)
  GoToArea(Troop.WF_Grunt_EndCut4, -130, -85, 1)
  PhoneMessage(42, 0, 1, 4, SpriteID.CO_X_Ingrid_Happy)
  CameraSetFOV(Camera.Cam4, 20, constant.SMOOTH, 5, constant.NO_WAIT)
  GoToArea(Troop.WF_Grunt_EndCut1, -130, -85, 1)
  GoToArea(Troop.WF_Grunt_EndCut2, -130, -85, 1)
  WaitFor(15)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Teleport(Troop.WF_Grunt_EndCut1, -45, -20, 270)
  Teleport(Troop.WF_Grunt_EndCut2, -45, -25, 270)
  Teleport(Troop.WF_Grunt_EndCut3, -45, -30, 270)
  Teleport(Troop.WF_Grunt_EndCut4, -45, -35, 270)
  GoToArea(Troop.WF_Grunt_EndCut1, -45, -20, 10)
  GoToArea(Troop.WF_Grunt_EndCut2, -45, -25, 10)
  GoToArea(Troop.WF_Grunt_EndCut3, -45, -30, 10)
  GoToArea(Troop.WF_Grunt_EndCut4, -45, -35, 10)
  Despawn(Air_Vehicle.X_Bomber1)
  Despawn(Air_Vehicle.X_Bomber3)
  FollowWaypoint(Air_Vehicle.X_Bomber2, Waypoint.Entity0146, 0, 0, constant.ORDER_FORCED)
  SetCamera(Camera.Cam5)
  CameraSetTarget(Camera.Cam5, Air_Vehicle.X_Bomber2)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(4)
  PhoneMessage(45, 0, 2, 4, SpriteID.CO_T_Nova_Sad)
  WaitFor(8)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Air_Vehicle.X_Bomber2)
  Spawn(Air_Vehicle.X_Bomber1)
  Teleport(Troop.WF_Grunt_EndCut1, -260, -84, 270, 1)
  Teleport(Troop.WF_Grunt_EndCut2, -260, -86, 270, 1)
  Teleport(Troop.WF_Grunt_EndCut3, -260, -88, 270, 1)
  Teleport(Troop.WF_Grunt_EndCut4, -260, -90, 270, 1)
  Teleport(Air_Vehicle.X_Bomber1, -495, -54, 90, 1)
  AttackTarget(Air_Vehicle.X_Bomber1, Troop.WF_Grunt_EndCut2, constant.ORDER_FORCED)
  SetCamera(Camera.Cam6)
  CameraSetTarget(Camera.Cam6, Waypoint.Entity0149)
  CameraSetWaypoint(Camera.Cam6, Waypoint.Entity0148)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(46, 0, 2, 6, SpriteID.CO_T_Gorgi_Sad)
  WaitFor(5)
  GoToArea(Troop.WF_Grunt_EndCut1, -130, -85, 5, nil, constant.ORDER_FORCED)
  GoToArea(Troop.WF_Grunt_EndCut2, -130, -85, 5, nil, constant.ORDER_FORCED)
  GoToArea(Troop.WF_Grunt_EndCut3, -130, -85, 5, nil, constant.ORDER_FORCED)
  GoToArea(Troop.WF_Grunt_EndCut4, -130, -85, 5, nil, constant.ORDER_FORCED)
  WaitFor(8)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Air_Vehicle.X_Bomber1)
  Spawn(Troop.T_Grunt_EndCut1)
  Spawn(Troop.T_Grunt_EndCut2)
  SetActive(Troop.T_Grunt_EndCut1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.T_Grunt_EndCut2, constant.INACTIVE, constant.ADJUST_WEAPON)
  Teleport(Troop.WF_Grunt_EndCut1, -310, -150, 225, 1)
  Teleport(Troop.WF_Grunt_EndCut2, -315, -145, 225, 1)
  GoToArea(Troop.WF_Grunt_EndCut1, -310, -150, nil, constant.ORDER_FORCED)
  GoToArea(Troop.WF_Grunt_EndCut2, -315, -145, nil, constant.ORDER_FORCED)
  SetCamera(Camera.Cam7)
  CameraSetTarget(Camera.Cam7, Waypoint.Entity0150)
  CameraSetWaypoint(Camera.Cam7, Waypoint.Entity0151)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(47, 0, 0, 3, SpriteID.CO_WF_Betty_Sad)
  PhoneMessage(48, 0, 2, 3, SpriteID.CO_T_Nova_Happy)
  PhoneMessage(49, 0, 0, 3, SpriteID.CO_WF_Betty_Happy)
  WaitFor(5)
  FollowWaypoint(Troop.WF_Grunt_EndCut1, Waypoint.Entity0153, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Troop.WF_Grunt_EndCut2, Waypoint.Entity0153, 0, 0, constant.ORDER_FORCED)
  WaitFor(0.5)
  FollowWaypoint(Troop.T_Grunt_EndCut1, Waypoint.Entity0153, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Troop.T_Grunt_EndCut2, Waypoint.Entity0153, 0, 0, constant.ORDER_FORCED)
  WaitFor(14)
  LevelState = 3
end

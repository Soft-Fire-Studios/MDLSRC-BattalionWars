function Melee_Cutscene04_(owner)
  Cutscene04Dead = owner
  local ArtilleryWarning = 0
  local GunshipWarning = 0
  Despawn(Air_Vehicle.CutsceneSEGunship01)
  Despawn(Troop.CutsceneSEGunship01Pilot)
  Despawn(Air_Vehicle.CutsceneSEGunship02)
  Despawn(Troop.CutsceneSEGunship02Pilot)
  Despawn(Ground_Vehicle.CutsceneSETank01)
  Despawn(Ground_Vehicle.CutsceneSETank02)
  Despawn(Ground_Vehicle.CutsceneSETank03)
  Despawn(Ground_Vehicle.CutsceneSETank04)
  repeat
    if (GetActionState(Ground_Vehicle.SE_WestRoute_Artillery01) == constant.ACTION_STATE_ATTACK or GetActionState(Ground_Vehicle.SE_WestRoute_Artillery02) == constant.ACTION_STATE_ATTACK or GetActionState(Ground_Vehicle.SE_WestRoute_Artillery03) == constant.ACTION_STATE_ATTACK or GetActionState(Ground_Vehicle.SE_WestRoute_Artillery04) == constant.ACTION_STATE_ATTACK or GetActionState(Ground_Vehicle.SE_WestRoute_Artillery05) == constant.ACTION_STATE_ATTACK or GetActionState(Ground_Vehicle.SE_WestRoute_Artillery06) == constant.ACTION_STATE_ATTACK) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.WestRoute) and ArtilleryWarning == 0 then
      PhoneMessage(31, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      ArtilleryWarning = 1
    end
    EndFrame()
    if (GetActionState(Air_Vehicle.SE_EastRoute_Gunship01) == constant.ACTION_STATE_ATTACK or GetActionState(Air_Vehicle.SE_EastRoute_Gunship02) == constant.ACTION_STATE_ATTACK or GetActionState(Air_Vehicle.SE_EastRoute_Gunship03) == constant.ACTION_STATE_ATTACK or GetActionState(Air_Vehicle.SE_EastRoute_Gunship04) == constant.ACTION_STATE_ATTACK or GetActionState(Air_Vehicle.SE_EastRoute_Gunship05) == constant.ACTION_STATE_ATTACK or GetActionState(Air_Vehicle.SE_EastRoute_Gunship06) == constant.ACTION_STATE_ATTACK or GetActionState(Air_Vehicle.SE_EastRoute_Gunship07) == constant.ACTION_STATE_ATTACK or GetActionState(Air_Vehicle.SE_EastRoute_Gunship08) == constant.ACTION_STATE_ATTACK or GetActionState(Air_Vehicle.SE_EastRoute_Gunship09) == constant.ACTION_STATE_ATTACK) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.EastRoute) and GunshipWarning == 0 then
      PhoneMessage(32, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      GunshipWarning = 1
    end
    EndFrame()
  until Cutscene02Ended == 1 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.SE_Base_Perimeter)
  StartOutro()
  ClearMessageQueue()
  FreezePlayer()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
  PauseTimerActive = 1
  Spawn(Troop.CutsceneDummy)
  SetUnitInvulnerable(Troop.CutsceneDummy, true)
  CurrentActiveUnit = GetPlayerUnit(constant.PLAYER_ONE)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.CutsceneDummy, true, true)
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) == Troop.CutsceneDummy
  SetActive(Building.SE_Strike_AATower01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.SE_Strike_AATower02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.SE_Strike_AATower03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.SE_Strike_AATower04, constant.INACTIVE, constant.ADJUST_WEAPON)
  Despawn(Building.SE_Gunship_Grounded05)
  Despawn(Building.SE_Recon_Grounded06)
  Despawn(Building.SE_HeavyTank_Grounded15)
  Despawn(Building.SE_HeavyTank_Grounded17)
  Spawn(Air_Vehicle.CutsceneSEGunship01)
  Spawn(Troop.CutsceneSEGunship01Pilot)
  Spawn(Air_Vehicle.CutsceneSEGunship02)
  Spawn(Troop.CutsceneSEGunship02Pilot)
  Spawn(Ground_Vehicle.CutsceneSETank01)
  Spawn(Ground_Vehicle.CutsceneSETank02)
  Spawn(Ground_Vehicle.CutsceneSETank03)
  Spawn(Ground_Vehicle.CutsceneSETank04)
  if IsDead(Air_Vehicle.SE_EastRoute_Gunship01) == false then
    Despawn(Air_Vehicle.SE_EastRoute_Gunship01)
  end
  if IsDead(Air_Vehicle.SE_EastRoute_Gunship02) == false then
    Despawn(Air_Vehicle.SE_EastRoute_Gunship02)
  end
  if IsDead(Air_Vehicle.SE_EastRoute_Gunship03) == false then
    Despawn(Air_Vehicle.SE_EastRoute_Gunship03)
  end
  if IsDead(Air_Vehicle.SE_EastRoute_Gunship04) == false then
    Despawn(Air_Vehicle.SE_EastRoute_Gunship04)
  end
  if IsDead(Air_Vehicle.SE_EastRoute_Gunship05) == false then
    Despawn(Air_Vehicle.SE_EastRoute_Gunship05)
  end
  if IsDead(Air_Vehicle.SE_EastRoute_Gunship06) == false then
    Despawn(Air_Vehicle.SE_EastRoute_Gunship06)
  end
  if IsDead(Air_Vehicle.SE_EastRoute_Gunship07) == false then
    Despawn(Air_Vehicle.SE_EastRoute_Gunship07)
  end
  if IsDead(Air_Vehicle.SE_EastRoute_Gunship08) == false then
    Despawn(Air_Vehicle.SE_EastRoute_Gunship08)
  end
  if IsDead(Air_Vehicle.SE_EastRoute_Gunship09) == false then
    Despawn(Air_Vehicle.SE_EastRoute_Gunship09)
  end
  if IsDead(Air_Vehicle.SE_Gunship01) == false then
    Despawn(Air_Vehicle.SE_Gunship01)
  end
  if IsDead(Air_Vehicle.SE_Gunship02) == false then
    Despawn(Air_Vehicle.SE_Gunship02)
  end
  if IsDead(Air_Vehicle.SE_Gunship03) == false then
    Despawn(Air_Vehicle.SE_Gunship03)
  end
  if IsDead(Air_Vehicle.SE_Gunship04) == false then
    Despawn(Air_Vehicle.SE_Gunship04)
  end
  if IsDead(Air_Vehicle.SE_Gunship05) == false then
    Despawn(Air_Vehicle.SE_Gunship05)
  end
  if IsDead(Air_Vehicle.SE_Gunship06) == false then
    Despawn(Air_Vehicle.SE_Gunship06)
  end
  if IsDead(Air_Vehicle.SE_Gunship07) == false then
    Despawn(Air_Vehicle.SE_Gunship07)
  end
  if IsDead(Air_Vehicle.SE_Gunship08) == false then
    Despawn(Air_Vehicle.SE_Gunship08)
  end
  if IsDead(Air_Vehicle.SE_Gunship09) == false then
    Despawn(Air_Vehicle.SE_Gunship09)
  end
  if IsDead(Air_Vehicle.SE_Gunship10) == false then
    Despawn(Air_Vehicle.SE_Gunship10)
  end
  SetCamera(Camera.Cutscene04_Shot01)
  CameraSetFOV(Camera.Cutscene04_Shot01, 65, constant.IMMEDIATE, 25, constant.NO_WAIT)
  FollowWaypoint(Ground_Vehicle.CutsceneSETank04, Waypoint.CutsceneSETankPath04, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Ground_Vehicle.CutsceneSETank02, Waypoint.CutsceneSETankPath02, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Ground_Vehicle.CutsceneSETank03, Waypoint.CutsceneSETankPath03, 0, 0, constant.ORDER_FORCED)
  FollowWaypoint(Ground_Vehicle.CutsceneSETank01, Waypoint.CutsceneSETankPath01, 0, 0, constant.ORDER_FORCED)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  Cutscene04Begins = 1
  PhoneMessage(71, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
  PhoneMessage(72, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
  WaitFor(10)
  EnterVehicle(Troop.CutsceneSEGunship01Pilot, Air_Vehicle.CutsceneSEGunship01, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.CutsceneSEGunship01) == 1
  GoToArea(Air_Vehicle.CutsceneSEGunship01, GetObjectXPosition(Waypoint.CutsceneSEGunship01Path), GetObjectZPosition(Waypoint.CutsceneSEGunship01Path), 5, 0, constant.ORDER_FORCED)
  EnterVehicle(Troop.CutsceneSEGunship02Pilot, Air_Vehicle.CutsceneSEGunship02, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until NumPassengersInUnit(Air_Vehicle.CutsceneSEGunship02) == 1
  GoToArea(Air_Vehicle.CutsceneSEGunship02, GetObjectXPosition(Waypoint.CutsceneSEGunship02Path), GetObjectZPosition(Waypoint.CutsceneSEGunship02Path), 5, 0, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  Cutscene04Complete = 1
end

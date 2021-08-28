function Purge_CutsceneForcefield(owner)
  cutsceneforcefield = owner
  while true do
    if IsDead(Building.Forcefield01) and IsDead(Building.Forcefield02) then
      break
    end
    if IsDead(Building.Forcefield03) and IsDead(Building.Forcefield04) then
      break
    end
    EndFrame()
  end
  Spawn(Air_Vehicle.SolarGunship01)
  Spawn(Air_Vehicle.SolarGunship02)
  DebugOut("Spawning Gunships at the Solar HQ")
  Spawn(Troop.Entity550041683)
  Spawn(Troop.Entity550041684)
  Spawn(Troop.Entity550041685)
  Spawn(Troop.Entity550042267)
  Spawn(Troop.SgruntCutscene01)
  Spawn(Troop.SchainCutscene01)
  Spawn(Troop.SbazookaCutscene01)
  WaitFor(0.1)
  Teleport(Troop.Entity550041683, -1175, 1108, 45, 0)
  Teleport(Troop.Entity550041684, -1143, 1133, 0, 0)
  Teleport(Troop.Entity550041685, -1139, 1059, 0, 0)
  Teleport(Troop.Entity550042267, -1130, 1055, 0, 0)
  Teleport(Troop.SgruntCutscene01, -1208, 1020, 90, 0)
  Teleport(Troop.SchainCutscene01, -1212, 1010, 90, 0)
  Teleport(Troop.SbazookaCutscene01, -1199, 1000, 90, 0)
  SetActive(Troop.Entity550041683, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.Entity550041684, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.Entity550041685, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.Entity550042267, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SgruntCutscene01, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SchainCutscene01, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SbazookaCutscene01, constant.ACTIVE, constant.ADJUST_WEAPON)
  StopAndGuard(Troop.Entity550041684)
  StopAndGuard(Troop.Entity550041685)
  StopAndGuard(Troop.Entity550042267)
  WaitFor(0.1)
  AttackTarget(Troop.Entity550041683, Building.Saw03, constant.ORDER_NORMAL)
  AttackTarget(Troop.Entity550041684, Building.Saw02, constant.ORDER_NORMAL)
  AttackTarget(Troop.Entity550041685, Building.Saw02, constant.ORDER_NORMAL)
  AttackTarget(Troop.Entity550042267, Building.Saw02, constant.ORDER_NORMAL)
  AttackTarget(Troop.SgruntCutscene01, Building.Saw01, constant.ORDER_NORMAL)
  AttackTarget(Troop.SchainCutscene01, Building.Saw01, constant.ORDER_NORMAL)
  AttackTarget(Troop.SbazookaCutscene01, Building.Saw01, constant.ORDER_NORMAL)
  StartOutro()
  FreezePlayer()
  SetInvulnerable(flag.TYPE_SOLAR, 1)
  SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
  PauseTimerActive = 1
  if IsDead(Building.Forcefield01) or IsDead(Building.Forcefield02) then
    ClearMessageQueue()
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    SetCamera(Camera.CutsceneForcefield, constant.PLAYER_ONE)
    CameraSetWaypoint(Camera.CutsceneForcefield, Waypoint.CutsceneForcefield01)
    CameraSetTarget(Camera.CutsceneForcefield, Waypoint.CutsceneForcefield01Target)
    ClearMessageQueue()
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessageWithObjective(66, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
    PhoneMessageWithObjective(62, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
    repeat
      EndFrame()
    until 0 >= GetNumItemsInMessageQueue(constant.PLAYER_ONE)
    ClearMessageQueue()
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  else
    ClearMessageQueue()
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    SetCamera(Camera.CutsceneForcefield, constant.PLAYER_ONE)
    CameraSetWaypoint(Camera.CutsceneForcefield, Waypoint.CutsceneForcefield02)
    CameraSetTarget(Camera.CutsceneForcefield, Waypoint.CutsceneForcefield02Target)
    ClearMessageQueue()
    CameraFade(constant.FADE_IN, constant.WAIT, 1)
    PhoneMessageWithObjective(66, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
    PhoneMessageWithObjective(62, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
    repeat
      EndFrame()
    until 0 >= GetNumItemsInMessageQueue(constant.PLAYER_ONE)
    ClearMessageQueue()
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  end
  EndFrame()
  cutsceneforcefieldend = 1
end

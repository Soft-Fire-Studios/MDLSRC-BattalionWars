function Purge_CutsceneBombersSkip(owner)
  local flyover01 = 0
  local flyover02 = 0
  local NeutralMGNest01Troop = 0
  local NeutralMGNest04Troop = 0
  local AAtower01Troop = 0
  local AAtower02Troop = 0
  local AAtower03Troop = 0
  repeat
    EndFrame()
  until cutscene01 >= 1
  Despawn(Troop.Entity330002120, true)
  Despawn(Troop.Entity330002121, true)
  Despawn(Troop.Entity330002122, true)
  Despawn(Troop.Entity330002123, true)
  Despawn(Troop.Entity330002124, true)
  Despawn(Troop.Entity330002125, true)
  Despawn(Troop.Entity330002126, true)
  Despawn(Troop.Entity330002127, true)
  Despawn(Troop.Entity330002128, true)
  Despawn(Troop.Entity330002129, true)
  Despawn(Troop.Entity330002130, true)
  Despawn(Troop.Entity330002131, true)
  Despawn(Building.Saw01, true)
  Despawn(Building.Saw02, true)
  Despawn(Building.Saw03, true)
  repeat
    EndFrame()
  until cutscenebombersstart == 1
  WaitFor(3)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO)) then
      Kill(cutscenebombers)
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      StoreSummaryMessage(constant.PLAYER_ONE, 12, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
      cutscenebombersend = 1
      EndFrame()
    end
    EndFrame()
  until cutscenebombersend == 1
  EndIntro()
  Spawn(Building.GateExplosion01)
  Spawn(Building.GateExplosion02)
  Spawn(Building.GateExplosion03)
  Spawn(Building.GateExplosion04)
  Spawn(Building.GateExplosion05)
  Despawn(Building.CarpetBombTarget01)
  Despawn(Building.CarpetBombTarget02)
  Despawn(Air_Vehicle.LegionBomber01)
  Despawn(Air_Vehicle.LegionBomber02)
  Despawn(Building.SolarMGNest01)
  Despawn(Building.SolarMGNest02)
  Despawn(Building.SolarMGNest03)
  Despawn(Building.SolarMGNest04)
  Kill(Building.Gates03)
  DestroyablePlayAnim(Building.Gates03, 1, 2)
  ResetPathBlocking(Building.Gates03)
  Kill(Building.Gates01)
  DestroyablePlayAnim(Building.Gates01, 1, 2)
  ResetPathBlocking(Building.Gates01)
  Kill(Building.GateExplosion05)
  Kill(Building.GateExplosion04)
  Kill(Building.GateExplosion03)
  Kill(Building.GateExplosion02)
  Kill(Building.GateExplosion01)
  Kill(Building.Searchlight03)
  Kill(Building.Searchlight02)
  Kill(Building.Searchlight01)
  Kill(Building.SbazookaTower04)
  Kill(Building.SbazookaTower03)
  Kill(Building.SbazookaTower02)
  Kill(Building.SbazookaTower01)
  SetObjectiveData(Objective.Mine, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Mine, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if not IsDead(Air_Vehicle.Sgunship01) then
    Spawn(Air_Vehicle.Sgunship01)
  end
  if not IsDead(Air_Vehicle.Sgunship02) then
    Despawn(Air_Vehicle.Sgunship02)
  end
  if not IsDead(Air_Vehicle.Sgunship03) then
    Despawn(Air_Vehicle.Sgunship03)
  end
  if not IsDead(Air_Vehicle.Sgunship04) then
    Despawn(Air_Vehicle.Sgunship04)
  end
  Despawn(Troop.Smissile01)
  Despawn(Troop.Smissile02)
  Spawn(Troop.Schain05)
  Spawn(Troop.Schain06)
  Spawn(Troop.Schain07)
  Spawn(Troop.Schain08)
  SetCamera(Camera.Player_Camera)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  UnfreezePlayer()
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  SetInvulnerable(flag.TYPE_UNDERWORLD, 0)
  PauseTimerActive = 0
  PhoneMessageWithObjective(52, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  SetActive(Morphing_Building.SolarBarracks01, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Capture_Point.SolarBarracksCapturePoint01, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.Smissile01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.Smissile02, constant.INACTIVE, constant.ADJUST_WEAPON)
  if not IsDead(Building.NeutralMGNest01) and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.NeutralMGNest01 and GetUnitInSeat(Building.NeutralMGNest01, 0) ~= 0 then
    NeutralMGNest01Troop = GetUnitInSeat(Building.NeutralMGNest01, 0)
    ExitVehicle(GetUnitInSeat(Building.NeutralMGNest01, 0))
    FollowUnit(NeutralMGNest01Troop, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
  end
  if not IsDead(Building.NeutralMGNest04) and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.NeutralMGNest04 and GetUnitInSeat(Building.NeutralMGNest04, 0) ~= 0 then
    NeutralMGNest04Troop = GetUnitInSeat(Building.NeutralMGNest04, 0)
    ExitVehicle(GetUnitInSeat(Building.NeutralMGNest04, 0))
    FollowUnit(NeutralMGNest04Troop, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
  end
  if not IsDead(Building.AAtower01) and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AAtower01 and GetUnitInSeat(Building.AAtower01, 0) ~= 0 then
    AAtower01Troop = GetUnitInSeat(Building.AAtower01, 0)
    ExitVehicle(GetUnitInSeat(Building.AAtower01, 0))
    FollowUnit(AAtower01Troop, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
  end
  if not IsDead(Building.AAtower02) and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AAtower02 and GetUnitInSeat(Building.AAtower02, 0) ~= 0 then
    AAtower02Troop = GetUnitInSeat(Building.AAtower02, 0)
    ExitVehicle(GetUnitInSeat(Building.AAtower02, 0))
    FollowUnit(AAtower02Troop, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
  end
  if not IsDead(Building.AAtower03) and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AAtower03 and GetUnitInSeat(Building.AAtower03, 0) ~= 0 then
    AAtower03Troop = GetUnitInSeat(Building.AAtower03, 0)
    ExitVehicle(GetUnitInSeat(Building.AAtower03, 0))
    FollowUnit(AAtower03Troop, GetPlayerUnit(constant.PLAYER_ONE), -1, 0, constant.ORDER_NORMAL)
  end
  WaitFor(1)
  Spawn(Ground_Vehicle.SolarLightTank01)
  Spawn(Ground_Vehicle.SolarLightTank02)
  Spawn(Ground_Vehicle.Entity550037934)
  Spawn(Ground_Vehicle.Entity550037940)
  Spawn(Air_Vehicle.SolarGunship03)
  Spawn(Air_Vehicle.SolarGunship04)
  WaitFor(1)
  Spawn(Troop.Schain03)
  Spawn(Troop.Schain04)
  Spawn(Troop.Schain09)
  Spawn(Troop.Schain10)
  Spawn(Troop.Sgrunt19)
  Spawn(Troop.Sgrunt20)
  Spawn(Troop.Sgrunt21)
  Spawn(Troop.Sgrunt22)
  Spawn(Troop.Sgrunt23)
  Spawn(Troop.Sgrunt24)
  Spawn(Troop.Sgrunt25)
  Spawn(Troop.Sgrunt26)
  Spawn(Troop.Sgrunt27)
  Spawn(Troop.Sgrunt28)
  Spawn(Troop.Sgrunt29)
  Spawn(Troop.Sgrunt30)
  Spawn(Troop.Sgrunt31)
  Spawn(Troop.Sgrunt32)
  Spawn(Troop.SolarGruntPatrol01)
  Spawn(Troop.SolarGruntPatrol02)
  Spawn(Troop.SolarGruntPatrol03)
  Spawn(Troop.SolarGruntPatrol04)
  Spawn(Troop.SolarGruntPatrol05)
  Spawn(Building.SolarMGNest06)
  WaitFor(1)
  Spawn(Troop.Entity330002120)
  Spawn(Troop.Entity330002121)
  Spawn(Troop.Entity330002122)
  Spawn(Troop.Entity330002123)
  Spawn(Troop.Entity330002124)
  Spawn(Troop.Entity330002125)
  Spawn(Troop.Entity330002126)
  Spawn(Troop.Entity330002127)
  Spawn(Troop.Entity330002128)
  Spawn(Troop.Entity330002129)
  Spawn(Troop.Entity330002130)
  Spawn(Troop.Entity330002131)
  Spawn(Building.Saw01)
  Spawn(Building.Saw02)
  Spawn(Building.Saw03)
end

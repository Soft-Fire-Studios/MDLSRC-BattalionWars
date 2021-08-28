function C3B_Gameflow(owner)
  SetObjectiveData(Objective_Marker.ObjArt1Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.ObjArt1Marker2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  WaitFor(1)
  AttackTarget(Ground_Vehicle.XArt1, Ground_Vehicle.SHeavyTank3, constant.ORDER_FORCED)
  AttackTarget(Ground_Vehicle.XArt2, Ground_Vehicle.SHeavyTank2, constant.ORDER_FORCED)
  local marker1 = 0
  local marker2 = 0
  Despawn(Air_Vehicle.SEFighter1)
  Despawn(Air_Vehicle.SEFighter2)
  Despawn(Air_Vehicle.SEFighter3)
  Despawn(Air_Vehicle.XBomber1)
  Despawn(Air_Vehicle.XBomber3)
  Despawn(Air_Vehicle.XBomber4)
  Despawn(Air_Vehicle.XBomber5)
  Despawn(Air_Vehicle.XGunship1)
  Despawn(Air_Vehicle.XGunship2)
  repeat
    EndFrame()
  until LevelState == 1
  AttackTarget(Troop.Xgrunt1, Troop.SGrunt4, constant.ORDER_FORCED)
  AttackTarget(Troop.Xgrunt2, Troop.SGrunt4, constant.ORDER_FORCED)
  AttackTarget(Troop.Xgrunt3, Troop.SGrunt4, constant.ORDER_FORCED)
  AttackTarget(Troop.Xgrunt4, Troop.Ssearchlight0001, constant.ORDER_FORCED)
  AttackTarget(Troop.Xgrunt6, Troop.Ssearchlight0002, constant.ORDER_FORCED)
  AttackTarget(Troop.Xgrunt7, Troop.SGrunt8, constant.ORDER_FORCED)
  AttackTarget(Troop.Xgrunt8, Troop.SGrunt9, constant.ORDER_FORCED)
  AttackTarget(Troop.Xgrunt9, Troop.SGrunt10, constant.ORDER_FORCED)
  PhoneMessage(6, 0, 1, 5, SpriteID.CO_X_Ingrid_Happy)
  PhoneMessage(7, 0, 3, 5, SpriteID.CO_SE_Leiqo_Happy)
  PhoneMessage(8, 0, 3, 5, SpriteID.CO_SE_Leiqo_Happy)
  local NumArtDead = 0
  local NumChange = 0
  repeat
    if IsDead(Ground_Vehicle.XArt1) and marker1 == 0 then
      SetObjectiveData(Objective_Marker.ObjArt1Marker2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      marker1 = 1
      NumArtDead = NumArtDead + 1
      NumChange = 1
    end
    if IsDead(Ground_Vehicle.XArt2) and marker2 == 0 then
      SetObjectiveData(Objective_Marker.ObjArt1Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      marker2 = 1
      NumArtDead = NumArtDead + 1
      NumChange = 1
    end
    if NumChange == 1 then
      DebugOut(NumArtDead)
      if NumArtDead == 1 then
        SetObjectiveData(Objective.Art_0of2, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Art_1of2, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if NumArtDead == 2 then
        SetObjectiveData(Objective.Art_1of2, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Art_2of2, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Art_2of2, constant.OBJECTIVE_DATA_STATE, 1)
      end
      NumChange = 0
    end
    EndFrame()
  until NumArtDead == 2
  PhoneMessage(9, 0, 3, 3, SpriteID.CO_SE_Leiqo_Happy)
  PhoneMessage(10, 0, 1, 5, SpriteID.CO_X_Ingrid_Happy)
  PhoneMessage(11, 0, 3, 5, SpriteID.CO_SE_Leiqo_Happy)
  PhoneMessage(12, 0, 1, 5, SpriteID.CO_X_Ingrid_Happy)
  PhoneMessage(13, 0, 3, 5, SpriteID.CO_SE_Leiqo_Happy)
  LevelState = 2
  WaitFor(20)
  Spawn(Air_Vehicle.XBomber1)
  Cheater = 1
  WaitFor(30)
  if CheckPOW01 == true and CheckPOW02 == true then
    PhoneMessage(31, 0, 3, 5, SpriteID.CO_SE_Leiqo_Happy)
  end
  repeat
    EndFrame()
  until NumAADead == 7
  PhoneMessage(17, 0, 3, 5, SpriteID.CO_SE_Leiqo_Happy)
  PhoneMessage(18, 0, 3, 5, SpriteID.CO_SE_Leiqo_Happy)
  PhoneMessage(19, 0, 1, 5, SpriteID.CO_X_Ingrid_Happy)
  PhoneMessage(36, 0, 1, 5, SpriteID.CO_X_Ingrid_Happy)
  PhoneMessage(20, 0, 3, 5, SpriteID.CO_SE_Leiqo_Happy)
  PhoneMessage(39, 0, 3, 5, SpriteID.CO_SE_Leiqo_Happy)
  PhoneMessage(14, 0, 3, 5, SpriteID.CO_SE_Leiqo_Happy)
  Spawn(Air_Vehicle.SEFighter1)
  Spawn(Air_Vehicle.SEFighter2)
  Spawn(Air_Vehicle.SEFighter3)
  LevelState = 3
  FollowUnit(Air_Vehicle.SEFighter1, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Air_Vehicle.SEFighter2, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Air_Vehicle.SEFighter3, GetPlayerUnit(), -1, 0, 0)
  if IsInArea(GetPlayerUnit(), 500, -800, 650) then
    Teleport(Air_Vehicle.XBomber3, -1000, -400, 90)
    Teleport(Air_Vehicle.XBomber4, -1000, -300, 90)
    Teleport(Air_Vehicle.XBomber5, -1000, -200, 90)
  end
  if IsInArea(GetPlayerUnit(), -742, -525, 650) then
    Teleport(Air_Vehicle.XGunship1, -567, 670, 135)
    Teleport(Air_Vehicle.XGunship2, -600, 630, 135)
  end
  WaitFor(1)
  Spawn(Air_Vehicle.XBomber3)
  Spawn(Air_Vehicle.XBomber4)
  Spawn(Air_Vehicle.XBomber5)
  Spawn(Air_Vehicle.XGunship1)
  Spawn(Air_Vehicle.XGunship2)
  LevelState = 4
  SetObjectiveData(Objective_Marker.XBomber1Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.XBomber3Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.XBomber4Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.XBomber5Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.XGunship1Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.XGunship2Marker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.XBomber1) and IsDead(Air_Vehicle.XBomber3) and IsDead(Air_Vehicle.XBomber4) and IsDead(Air_Vehicle.XBomber5) and IsDead(Air_Vehicle.XGunship1) and IsDead(Air_Vehicle.XGunship2)
  LevelState = 5
  SetObjectiveData(Objective.Clear_Skies, constant.OBJECTIVE_DATA_STATE, 1)
  while GetPlayerUnit() == nil do
    EndFrame()
  end
  FreezePlayer()
  DeclareVictory(constant.ARMY_SOLAR)
  PhoneMessage(24, 0, 3, 5, SpriteID.CO_SE_Leiqo_Happy)
  PhoneMessage(25, 0, 3, 5, SpriteID.CO_SE_Leiqo_Happy)
  PhoneMessage(26, 0, 3, 5, SpriteID.CO_SE_Leiqo_Happy)
  WaitFor(26)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  WinMission()
end

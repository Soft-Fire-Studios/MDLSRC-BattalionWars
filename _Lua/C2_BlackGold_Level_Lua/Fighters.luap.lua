function Fighters(owner)
  local loop = 0
  Despawn(Air_Vehicle.xfight1)
  Despawn(Air_Vehicle.xfight2)
  Despawn(Air_Vehicle.xfight3)
  Despawn(Air_Vehicle.tfight1)
  Despawn(Air_Vehicle.tfight2)
  Despawn(Air_Vehicle.tfight3)
  Despawn(Air_Vehicle.tfight4)
  Despawn(Air_Vehicle.tfight5)
  Despawn(Air_Vehicle.tfight6)
  while tower == 0 do
    EndFrame()
  end
  PhoneMessage(12, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
  PhoneMessage(20, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Sad)
  PhoneMessage(22, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
  PhoneMessage(23, constant.ID_NONE, 2, 6, SpriteID.CO_T_Gorgi_Happy)
  WaitFor(5)
  Spawn(Air_Vehicle.xfight1)
  AttackTarget(Air_Vehicle.xfight1, Air_Vehicle.Bomber2, constant.ORDER_NORMAL)
  WaitFor(5)
  Spawn(Air_Vehicle.xfight2)
  AttackTarget(Air_Vehicle.xfight2, Air_Vehicle.Bomber, constant.ORDER_NORMAL)
  WaitFor(5)
  Spawn(Air_Vehicle.tfight1)
  Spawn(Air_Vehicle.tfight2)
  Spawn(Air_Vehicle.tfight3)
  Spawn(Air_Vehicle.tfight4)
  Spawn(Air_Vehicle.tfight5)
  Spawn(Air_Vehicle.tfight6)
  FollowUnit(Air_Vehicle.tfight1, GetPlayerUnit(), 10, 30)
  FollowUnit(Air_Vehicle.tfight2, GetPlayerUnit(), 10, 30)
  FollowUnit(Air_Vehicle.tfight3, GetPlayerUnit(), 10, 30)
  FollowUnit(Air_Vehicle.tfight4, GetPlayerUnit(), 10, 30)
  FollowUnit(Air_Vehicle.tfight5, GetPlayerUnit(), 10, 30)
  FollowUnit(Air_Vehicle.tfight6, GetPlayerUnit(), 10, 30)
  PhoneMessage(24, constant.ID_NONE, 0, 3, SpriteID.CO_WF_Betty_Happy)
  WaitFor(5)
  Spawn(Air_Vehicle.xfight3)
  AttackTarget(Air_Vehicle.xfight3, Air_Vehicle.tfight1, constant.ORDER_NORMAL)
  while levelstate == 3 do
    EndFrame()
  end
  while loop == 0 do
    if GetGroupHealth(Unit_Group.aircraft) == 0 then
      WaitFor(2)
      PhoneMessage(56, constant.ID_NONE, 2, 7, SpriteID.CO_T_Gorgi_Happy)
      Teleport(Air_Vehicle.tfight1, -880, -1730, 0, 0)
      Teleport(Air_Vehicle.tfight2, -730, -1730, 0, 0)
      Teleport(Air_Vehicle.tfight3, -610, -1730, 0, 0)
      ReviveDeadUnit(Air_Vehicle.tfight1)
      ReviveDeadUnit(Air_Vehicle.tfight2)
      ReviveDeadUnit(Air_Vehicle.tfight3)
      AddToGroup(Unit_Group.aircraft, Air_Vehicle.tfight1)
      AddToGroup(Unit_Group.aircraft, Air_Vehicle.tfight2)
      AddToGroup(Unit_Group.aircraft, Air_Vehicle.tfight3)
      WaitFor(1)
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.tfight1)
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.tfight2)
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.tfight3)
      WaitFor(1)
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.tfight1)
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.tfight2)
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.tfight3)
      WaitFor(1)
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.tfight1)
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.tfight2)
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.tfight3)
      FollowUnit(Air_Vehicle.tfight1, Air_Vehicle.Bomber, 10, 30)
      FollowUnit(Air_Vehicle.tfight2, Air_Vehicle.Bomber, 10, 30)
      FollowUnit(Air_Vehicle.tfight3, Air_Vehicle.Bomber, 10, 30)
      WaitFor(20)
    else
      WaitFor(10)
      if IsDead(Air_Vehicle.xfight1) then
        FollowUnit(Air_Vehicle.tfight1, Air_Vehicle.Bomber, 10, 30)
        EndFrame()
      else
        AttackTarget(Air_Vehicle.tfight1, Air_Vehicle.xfight1, constant.ORDER_NORMAL)
      end
      if IsDead(Air_Vehicle.xfight2) then
        FollowUnit(Air_Vehicle.tfight2, Air_Vehicle.Bomber, 10, 30)
        EndFrame()
      else
        AttackTarget(Air_Vehicle.tfight2, Air_Vehicle.xfight2, constant.ORDER_NORMAL)
      end
      if IsDead(Air_Vehicle.xfight3) then
        FollowUnit(Air_Vehicle.tfight3, Air_Vehicle.Bomber, 10, 30)
        EndFrame()
      else
        AttackTarget(Air_Vehicle.tfight3, Air_Vehicle.xfight3, constant.ORDER_NORMAL)
      end
      if IsDead(Air_Vehicle.xfight1) then
        FollowUnit(Air_Vehicle.tfight4, Air_Vehicle.Bomber2, 10, 30)
        EndFrame()
      else
        AttackTarget(Air_Vehicle.tfight4, Air_Vehicle.xfight1, constant.ORDER_NORMAL)
      end
      if IsDead(Air_Vehicle.xfight2) then
        FollowUnit(Air_Vehicle.tfight5, Air_Vehicle.Bomber2, 10, 30)
        EndFrame()
      else
        AttackTarget(Air_Vehicle.tfight5, Air_Vehicle.xfight2, constant.ORDER_NORMAL)
      end
      if IsDead(Air_Vehicle.xfight3) then
        FollowUnit(Air_Vehicle.tfight6, Air_Vehicle.Bomber2, 10, 30)
        EndFrame()
      else
        AttackTarget(Air_Vehicle.tfight6, Air_Vehicle.xfight3, constant.ORDER_NORMAL)
      end
    end
    EndFrame()
  end
end

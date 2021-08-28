function level_Init(owner)
  CurrentObjective = 1
  MessagesReady = false
  InStartCutscene = true
  InEndCutscene = false
  RespawnLegionCopters = false
  DebugCopters = true
  OutOfBoundsMessageInfo(60, constant.ARMY_WF, 5, SpriteID.CO_WF_Betty_Happy)
  function DoLegionCopterLoopOn(target)
    while not RespawnLegionCopters do
      WaitFor(2)
    end
    while true do
      WaitFor(5)
      if IsDead(target.copter) then
        if target.crew01 > 0 and not IsDead(target.crew01) then
          Kill(target.crew01)
        end
        if 0 < target.crew02 and not IsDead(target.crew02) then
          Kill(target.crew02)
        end
        if 0 < target.crew03 and not IsDead(target.crew03) then
          Kill(target.crew03)
          while not Teleport(target.copter, GetRandom(-1020, -930), GetRandom(-400, -480), 10, 10) do
            if DebugCopters then
              DebugOut("Failed to teleport", target.copter)
            end
            WaitFor(1)
          end
        end
        if DebugCopters then
          DebugOut("Revive copter", target.copter)
        end
        if IsReadyToRevive(target.copter) then
          ReviveDeadUnit(target.copter)
          WaitFor(1)
          while 0 < GetNumSeatsFree(target.copter) do
            if DebugCopters then
              DebugOut("Spawn into carrier", target.copter, "Seats:", GetNumSeatsFree(target.copter))
            end
            if not IsDead(target.copter) then
              SpawnUnitInCarrier(flag.TYPE_UNDERWORLD, flag.GTYPE_GRUNT, target.copter)
            end
            WaitFor(3)
          end
        end
      end
      WaitFor(GetRandom(40, 80))
      target.crew01 = GetUnitInSeat(target.copter, 0)
      target.crew02 = GetUnitInSeat(target.copter, 1)
      target.crew03 = GetUnitInSeat(target.copter, 2)
      while not IsDead(target.copter) do
        WaitFor(8)
        if 0 < GetPlayerUnit() then
          AttackTarget(target.copter, GetPlayerUnit())
        end
      end
      EndFrame()
    end
  end
  function DoLegionTankLoopOn(target)
    local sp_x = 0
    local sp_z = 0
    local sp_s = 15
    if target.tank == Ground_Vehicle.LG_HTK01 then
      sp_x = -290
      sp_z = 290
    end
    if target.tank == Ground_Vehicle.LG_HTK02 then
      sp_x = -360
      sp_z = 265
    end
    if target.tank == Ground_Vehicle.LG_HTK03 then
      sp_x = -460
      sp_z = 333
    end
    if target.tank == Ground_Vehicle.LG_HTK04 then
      sp_x = -455
      sp_z = 470
      while not IsDead(target.tank) do
        WaitFor(2)
      end
    end
    WaitFor(20)
    if not IsDead(target.crew01) then
      Kill(target.crew01)
    end
    if not IsDead(target.crew02) then
      Kill(target.crew02)
    end
    if not IsDead(target.crew03) then
      Kill(target.crew03)
      while not Teleport(target.tank, GetRandom(sp_x - sp_s, sp_x + sp_s), GetRandom(sp_z - sp_s, sp_z + sp_s), 10, 10) do
        WaitFor(1)
      end
    end
    if IsReadyToRevive(target.tank) then
      ReviveDeadUnit(target.tank)
      WaitFor(1)
      while 0 < GetNumSeatsFree(target.tank) do
        if not IsDead(target.tank) then
          SpawnUnitInCarrier(flag.TYPE_UNDERWORLD, flag.GTYPE_GRUNT, target.tank)
        end
        WaitFor(3)
      end
    end
  end
end

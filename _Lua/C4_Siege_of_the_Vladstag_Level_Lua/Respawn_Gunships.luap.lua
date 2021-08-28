function Respawn_Gunships(owner)
  local loop = 0
  while loop == 0 do
    if IsDead(Air_Vehicle.TGunship1) then
      WaitFor(7)
      Teleport(Air_Vehicle.TGunship1, 563, 350, 0, 20)
      ReviveDeadUnit(Air_Vehicle.TGunship1)
      WaitFor(1)
      EndFrame()
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TGunship1)
      FollowUnit(Air_Vehicle.TGunship1, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
      DebugOut("Gunship1 Respawned")
    end
    if IsDead(Air_Vehicle.TGunship2) then
      WaitFor(7)
      Teleport(Air_Vehicle.TGunship2, 563, 370, 0, 20)
      ReviveDeadUnit(Air_Vehicle.TGunship2)
      EndFrame()
      WaitFor(1)
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TGunship2)
      FollowUnit(Air_Vehicle.TGunship2, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
      DebugOut("Gunship2 Respawned")
    end
    if IsDead(Air_Vehicle.TGunship3) then
      WaitFor(7)
      Teleport(Air_Vehicle.TGunship3, 563, 350, 0, 20)
      ReviveDeadUnit(Air_Vehicle.TGunship3)
      WaitFor(1)
      EndFrame()
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TGunship3)
      FollowUnit(Air_Vehicle.TGunship3, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
      DebugOut("Gunship3 Respawned")
    end
    if IsDead(Air_Vehicle.TGunship4) then
      WaitFor(7)
      Teleport(Air_Vehicle.TGunship4, 563, 370, 0, 20)
      ReviveDeadUnit(Air_Vehicle.TGunship4)
      EndFrame()
      WaitFor(1)
      SpawnUnitInCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TGunship4)
      FollowUnit(Air_Vehicle.TGunship4, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
      DebugOut("Gunship4 Respawned")
    end
    if IsDead(Ground_Vehicle.XBatStat1) and Ground_Vehicle.XBatStat2 then
      loop = 1
    end
    EndFrame()
  end
end

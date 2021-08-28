function Respawn_Legion(owner)
  local loop = 0
  while loop < 10 do
    WaitFor(30)
    if IsReadyToRevive(Ground_Vehicle.W3Tank1) then
      WaitFor(8)
      Teleport(Ground_Vehicle.W3Tank1, -103, 502, 0, 2)
      ReviveDeadUnit(Ground_Vehicle.W3Tank1)
      DebugOut("Tank1")
      EndFrame()
      while 0 < GetNumSeatsFree(Ground_Vehicle.W3Tank1) do
        SpawnUnitInCarrier(flag.TYPE_UNDERWORLD, flag.GTYPE_GRUNT, Ground_Vehicle.W3Tank1)
        EndFrame()
      end
      loop = 1
      EndFrame()
    end
    EndFrame()
    if IsReadyToRevive(Ground_Vehicle.W3Tank2) then
      WaitFor(8)
      Teleport(Ground_Vehicle.W3Tank2, 29, 502, 0, 2)
      ReviveDeadUnit(Ground_Vehicle.W3Tank2)
      DebugOut("Tank2")
      EndFrame()
      while 0 < GetNumSeatsFree(Ground_Vehicle.W3Tank2) do
        SpawnUnitInCarrier(flag.TYPE_UNDERWORLD, flag.GTYPE_GRUNT, Ground_Vehicle.W3Tank2)
        EndFrame()
      end
      loop = 1
      EndFrame()
    end
  end
  EndFrame()
end

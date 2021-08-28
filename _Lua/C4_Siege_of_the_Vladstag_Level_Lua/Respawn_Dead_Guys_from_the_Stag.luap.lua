function Respawn_Dead_Guys_from_the_Stag(owner)
  local loop = 0
  while missioncomp == 0 do
    if IsReadyToRevive(Troop.Xgrunt0003) then
      WaitFor(15)
      EndFrame()
      if missioncomp == 0 then
        DebugOut("XGrunt 3 Respawned")
        Teleport(Troop.Xgrunt0003, 35.4, 454.8, 0)
        EndFrame()
        ReviveDeadUnit(Troop.Xgrunt0003)
        EndFrame()
        EnterVehicle(Troop.Xgrunt0003, Capture_Point.Stronghold, constant.ORDER_NORMAL)
        EndFrame()
      end
    end
    if IsReadyToRevive(Troop.Xgrunt0004) then
      WaitFor(15)
      if missioncomp == 0 then
        Teleport(Troop.Xgrunt0004, 35.4, 454.8, 1)
        EndFrame()
        ReviveDeadUnit(Troop.Xgrunt0004)
        DebugOut("XGrunt 4 Respawned")
        EndFrame()
        EnterVehicle(Troop.Xgrunt0004, Capture_Point.Stronghold, constant.ORDER_NORMAL)
      end
    end
    if IsReadyToRevive(Troop.Xgrunt0001) then
      WaitFor(15)
      if missioncomp == 0 then
        Teleport(Troop.Xgrunt0001, 35.4, 454.8, 1)
        EndFrame()
        ReviveDeadUnit(Troop.Xgrunt0001)
        DebugOut("XGrunt 1 Respawned")
        EndFrame()
        EnterVehicle(Troop.Xgrunt0001, Capture_Point.Stronghold_2, constant.ORDER_NORMAL)
      end
    end
    if IsReadyToRevive(Troop.Xgrunt0002) then
      WaitFor(15)
      if missioncomp == 0 then
        Teleport(Troop.Xgrunt0002, 35.4, 454.8, 0)
        EndFrame()
        ReviveDeadUnit(Troop.Xgrunt0002)
        DebugOut("XGrunt 2 Respawned")
        EndFrame()
        EnterVehicle(Troop.Xgrunt0002, Capture_Point.Stronghold_2, constant.ORDER_NORMAL)
      end
    end
    EndFrame()
  end
end

function WF_ATP01(owner)
  local old_posX = 0
  local old_posZ = 0
  local new_posX = 0
  local new_posZ = 0
  local check = 0
  local function IsATPStuck()
    if GetTime() > check then
      check = GetTime() + 5
      new_posX = GetObjectXPosition(Air_Vehicle.WFAirTransport1)
      new_posZ = GetObjectXPosition(Air_Vehicle.WFAirTransport1)
      if new_posX == old_posX and new_posZ == old_posZ then
        return true
      end
      old_posX = new_posX
      old_posZ = new_posZ
    end
    return false
  end
  while InStartCutscene do
    EndFrame()
  end
  check = GetTime() + 5
  while GetMovementState(Air_Vehicle.WFAirTransport1) == constant.MOVEMENT_STATE_AIRBORNE do
    if IsATPStuck() then
      DebugOut("ATP01 Stuck")
      break
    end
    LandAirUnit(Air_Vehicle.WFAirTransport1, GetRandom(-253, -257), GetRandom(-823, -827), constant.ORDER_FORCED)
    WaitFor(4)
  end
  ExitVehicle(GetUnitInSeat(Air_Vehicle.WFAirTransport1, 7), Air_Vehicle.WFAirTransport1)
  while 0 < GetUnitInSeat(Air_Vehicle.WFAirTransport1, 1) do
    ExitVehicle(GetUnitInSeat(Air_Vehicle.WFAirTransport1, 1), Air_Vehicle.WFAirTransport1)
    WaitFor(1)
  end
  WaitFor(2)
  FollowUnit(Ground_Vehicle.WF_LTK01, GetPlayerUnit(), -1, 0)
  FollowUnit(Troop.WF_ATP_CRW04, GetPlayerUnit(), -1, 0)
  FollowUnit(Troop.WF_ATP_CRW05, GetPlayerUnit(), -1, 0)
  FollowUnit(Troop.WF_MTR01, GetPlayerUnit(), -1, 0)
  FollowUnit(Troop.WF_MTR02, GetPlayerUnit(), -1, 0)
  FollowUnit(Troop.WF_MTR03, GetPlayerUnit(), -1, 0)
  GoToArea(Air_Vehicle.WFAirTransport1, -250, -1500, 20)
  while not HeliPadCaptured do
    EndFrame()
  end
  messages.Show("WF_ReinInc")
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  WaitFor(5)
  Spawn(Air_Vehicle.WF_ATP03)
  SetActive(Air_Vehicle.WF_ATP03, constant.INACTIVE)
  WaitFor(2)
  local landx = -335
  local landz = -480
  check = GetTime() + 5
  while not IsInArea(Air_Vehicle.WF_ATP03, landx, landz, 10) do
    if IsATPStuck() then
      DebugOut("ATP03 Stuck")
    else
      GoToArea(Air_Vehicle.WF_ATP03, landx, landz, 1, nil, constant.ORDER_FORCED)
      WaitFor(5)
      while GetMovementState(Air_Vehicle.WF_ATP03) == constant.MOVEMENT_STATE_AIRBORNE do
        if IsATPStuck() then
          DebugOut("ATP03 Stuck")
          break
        end
        LandAirUnit(Air_Vehicle.WF_ATP03, landx, landz)
        WaitFor(10)
      end
    end
  end
  ExitVehicle(GetUnitInSeat(Air_Vehicle.WF_ATP03, 7), Air_Vehicle.WF_ATP03)
  DebugOut("Ejected")
  WaitFor(1)
  FollowUnit(Ground_Vehicle.WF_LTK03, GetPlayerUnit(), -1, 0)
  FollowUnit(Troop.WF_ATP03_CRW02, GetPlayerUnit(), -1, 0)
  FollowUnit(Troop.WF_MTR05, GetPlayerUnit(), -1, 0)
  FollowUnit(Troop.WF_MTR06, GetPlayerUnit(), -1, 0)
  FollowUnit(Troop.WF_CGN05, GetPlayerUnit(), -1, 0)
  FollowUnit(Troop.WF_CGN06, GetPlayerUnit(), -1, 0)
  WaitFor(6)
  GoToArea(Air_Vehicle.WF_ATP03, -250, -1500, 20)
end

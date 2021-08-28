function WF_ATP02(owner)
  local old_posX = 0
  local old_posZ = 0
  local new_posX = 0
  local new_posZ = 0
  local check = 0
  local function IsATPStuck()
    if GetTime() > check then
      check = GetTime() + 5
      new_posX = GetObjectXPosition(Air_Vehicle.WFAirTransport2)
      new_posZ = GetObjectXPosition(Air_Vehicle.WFAirTransport2)
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
  while GetMovementState(Air_Vehicle.WFAirTransport2) == constant.MOVEMENT_STATE_AIRBORNE do
    if IsATPStuck() then
      DebugOut("ATP01 Stuck")
      break
    end
    LandAirUnit(Air_Vehicle.WFAirTransport2, GetRandom(-218, -222), GetRandom(-828, -832), constant.ORDER_FORCED)
    WaitFor(4)
  end
  ExitVehicle(GetUnitInSeat(Air_Vehicle.WFAirTransport2, 7), Air_Vehicle.WFAirTransport2)
  while 0 < GetUnitInSeat(Air_Vehicle.WFAirTransport2, 1) do
    ExitVehicle(GetUnitInSeat(Air_Vehicle.WFAirTransport2, 1), Air_Vehicle.WFAirTransport2)
    WaitFor(1)
  end
  WaitFor(2)
  FollowUnit(Ground_Vehicle.WF_LTK02, GetPlayerUnit(), -1, 0)
  FollowUnit(Troop.WF_ATP_CRW02, GetPlayerUnit(), -1, 0)
  FollowUnit(Troop.WF_CGN01, GetPlayerUnit(), -1, 0)
  FollowUnit(Troop.WF_CGN02, GetPlayerUnit(), -1, 0)
  FollowUnit(Troop.WF_CGN03, GetPlayerUnit(), -1, 0)
  FollowUnit(Troop.WF_CGN04, GetPlayerUnit(), -1, 0)
  GoToArea(Air_Vehicle.WFAirTransport2, -230, -1500, 20)
end

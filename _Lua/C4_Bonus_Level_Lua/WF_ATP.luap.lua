function WF_ATP(owner)
  local myTargetGroup = Unit_Group.WF_ATP01
  group.Add(myTargetGroup, owner)
  group.Add(myTargetGroup, Troop.WF_ATP01_CRW01)
  group.Add(myTargetGroup, Troop.WF_ATP01_CRW02)
  group.Add(myTargetGroup, Troop.WF_ATP01_CRW03)
  group.Add(myTargetGroup, Troop.WF_ATP01_CRW04)
  group.Add(myTargetGroup, Troop.WF_ATP01_CRW05)
  group.Add(myTargetGroup, Troop.WF_ATP01_CRW06)
  group.Add(myTargetGroup, Troop.WF_ATP01_CRW07)
  while group.NumInZone(Unit_Group.LG_GROUND_UNITS, Map_Zone.Five) == 0 do
    EndFrame()
  end
  Teleport(owner, -990, -460, 40, 10)
  GoToXZ(owner, -793, -176)
  while GetMovementState(owner) == constant.MOVEMENT_STATE_AIRBORNE do
    LandAirUnit(owner, -770, -150)
    WaitFor(2)
  end
  ExitVehicle(constant.ID_NONE, owner)
  WaitFor(3)
  GoToXZ(owner, 1000, 1000)
  Kill(owner)
  Kill(Troop.WF_ATP01_CRW01)
end

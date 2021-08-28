function WestEntranceApproach(owner)
  WaitFor(1)
  Despawn(Air_Vehicle.LChopper1)
  Despawn(Air_Vehicle.LChopper2)
  repeat
    WaitFor(1)
    EndFrame()
  until NumItemsInArea(Map_Zone.West, flag.TYPE_WFRONTIER) > 0
  Spawn(Air_Vehicle.LChopper1)
  Spawn(Air_Vehicle.LChopper2)
  AttackTarget(Air_Vehicle.LChopper1, GetPlayerUnit())
  AttackTarget(Air_Vehicle.LChopper2, GetPlayerUnit())
end

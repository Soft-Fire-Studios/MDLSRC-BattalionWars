function KILL_ARTILLERYTARGET(owner)
  repeat
    EndFrame()
    WaitFor(1)
  until MidCutscene1Ended == true
  repeat
    EndFrame()
    WaitFor(1)
  until IsInArea(PlatoonLeader, Map_Zone.BridgeCrossed)
  Kill(Building.ArtilleryTarget)
  AttackTarget(Ground_Vehicle.SEartillery1, PlatoonLeader, constant.ORDER_NORMAL)
  AttackTarget(Ground_Vehicle.SEartillery2, PlatoonLeader, constant.ORDER_NORMAL)
  AttackTarget(Ground_Vehicle.SEartillery3, PlatoonLeader, constant.ORDER_NORMAL)
  AttackTarget(Ground_Vehicle.SEartillery4, PlatoonLeader, constant.ORDER_NORMAL)
  AttackTarget(Ground_Vehicle.SEartillery5, PlatoonLeader, constant.ORDER_NORMAL)
  AttackTarget(Ground_Vehicle.SEartillery6, PlatoonLeader, constant.ORDER_NORMAL)
end

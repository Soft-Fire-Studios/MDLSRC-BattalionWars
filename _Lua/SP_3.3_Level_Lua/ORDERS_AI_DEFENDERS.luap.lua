function ORDERS_AI_DEFENDERS(owner)
  repeat
    EndFrame()
  until MidCutscene1start == true
  WaitFor(0.5)
  PlatoonLeader = Troop.AIcontrolledgrunt1
  if BazookasFree == true then
    if IsDead(Troop.AIbazooka1) == false then
      SetActive(Troop.AIbazooka1, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
      Teleport(Troop.AIbazooka1, -780, -110, 270, 15)
    end
    if IsDead(Troop.AIbazooka2) == false then
      SetActive(Troop.AIbazooka2, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
      Teleport(Troop.AIbazooka2, -780, -110, 270, 15)
    end
    if IsDead(Troop.AIbazooka3) == false then
      SetActive(Troop.AIbazooka3, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
      Teleport(Troop.AIbazooka3, -780, -110, 270, 15)
    end
    if IsDead(Troop.AIbazooka4) == false then
      SetActive(Troop.AIbazooka4, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
      Teleport(Troop.AIbazooka4, -780, -110, 270, 15)
    end
  end
  if IsDead(Ground_Vehicle.AIhtank1) == false then
    SetActive(Ground_Vehicle.AIhtank1, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
    Teleport(Ground_Vehicle.AIhtank1, -785, -135, 0, 2)
    GoToArea(Ground_Vehicle.AIhtank1, -785, -135, 5, constant.ORDER_FORCED)
  end
  if TankFree == true and IsDead(Ground_Vehicle.AIhtank2) == false then
    SetActive(Ground_Vehicle.AIhtank2, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
    Teleport(Ground_Vehicle.AIhtank2, -775, -85, 270, 2)
    GoToArea(Ground_Vehicle.AIhtank2, -775, -85, 10, constant.ORDER_FORCED)
  end
  if IsDead(Troop.AIassault1) == false then
    SetActive(Troop.AIassault1, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
    Teleport(Troop.AIassault1, -780, -100, 270, 15)
  end
  if IsDead(Troop.AIassault2) == false then
    SetActive(Troop.AIassault2, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
    Teleport(Troop.AIassault2, -780, -100, 270, 15)
  end
  if IsDead(Troop.AIassault3) == false then
    SetActive(Troop.AIassault3, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
    Teleport(Troop.AIassault3, -780, -100, 270, 15)
  end
  if IsDead(Troop.AIgrunt1) == false then
    SetActive(Troop.AIgrunt1, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
    Teleport(Troop.AIgrunt1, -780, -120, 270, 15)
  end
  if IsDead(Troop.AIgrunt2) == false then
    SetActive(Troop.AIgrunt2, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
    Teleport(Troop.AIgrunt2, -780, -120, 270, 15)
  end
  if IsDead(Troop.AIgrunt3) == false then
    SetActive(Troop.AIgrunt3, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
    Teleport(Troop.AIgrunt3, -780, -120, 270, 15)
  end
  if IsDead(Troop.AIgrunt4) == false then
    SetActive(Troop.AIgrunt4, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
    Teleport(Troop.AIgrunt4, -780, -120, 270, 15)
  end
  repeat
    EndFrame()
    WaitFor(0.5)
  until IsInArea(PlatoonLeader, Map_Zone.PlatoonLeaderBegin)
  EndFrame()
  FollowUnit(Troop.AIassault1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  if BazookasFree == true then
    FollowUnit(Troop.AIbazooka1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  end
  repeat
    EndFrame()
    WaitFor(0.5)
  until IsDead(Troop.AIcontrolledgrunt1)
  PlatoonLeader = Troop.AIcontrolledgrunt2
  EndFrame()
  FollowUnit(Troop.AIassault1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  if BazookasFree == true then
    FollowUnit(Troop.AIbazooka1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  end
  repeat
    EndFrame()
    WaitFor(0.5)
  until IsDead(Troop.AIcontrolledgrunt2)
  PlatoonLeader = Troop.AIcontrolledgrunt3
  EndFrame()
  FollowUnit(Troop.AIassault1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  if BazookasFree == true then
    FollowUnit(Troop.AIbazooka1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  end
  repeat
    EndFrame()
    WaitFor(0.5)
  until IsDead(Troop.AIcontrolledgrunt3)
  PlatoonLeader = Troop.AIcontrolledgrunt4
  EndFrame()
  FollowUnit(Troop.AIassault1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  if BazookasFree == true then
    FollowUnit(Troop.AIbazooka1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  end
  repeat
    EndFrame()
    WaitFor(0.5)
  until IsDead(Troop.AIcontrolledgrunt4)
  PlatoonLeader = Troop.AIcontrolledgrunt5
  EndFrame()
  FollowUnit(Troop.AIassault1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  if BazookasFree == true then
    FollowUnit(Troop.AIbazooka1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  end
  repeat
    EndFrame()
    WaitFor(0.5)
  until IsDead(Troop.AIcontrolledgrunt5)
  PlatoonLeader = Troop.AIcontrolledgrunt6
  EndFrame()
  FollowUnit(Troop.AIassault1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  if BazookasFree == true then
    FollowUnit(Troop.AIbazooka1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  end
  repeat
    EndFrame()
    WaitFor(0.5)
  until IsDead(Troop.AIcontrolledgrunt6)
  PlatoonLeader = Troop.AIcontrolledgrunt7
  EndFrame()
  FollowUnit(Troop.AIassault1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  if BazookasFree == true then
    FollowUnit(Troop.AIbazooka1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  end
  repeat
    EndFrame()
    WaitFor(0.5)
  until IsDead(Troop.AIcontrolledgrunt7)
  PlatoonLeader = Troop.AIcontrolledgrunt8
  EndFrame()
  FollowUnit(Troop.AIassault1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  if BazookasFree == true then
    FollowUnit(Troop.AIbazooka1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  end
  repeat
    EndFrame()
    WaitFor(0.5)
  until IsDead(Troop.AIcontrolledgrunt8)
  PlatoonLeader = Troop.AIcontrolledgrunt9
  EndFrame()
  FollowUnit(Troop.AIassault1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  if BazookasFree == true then
    FollowUnit(Troop.AIbazooka1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  end
  repeat
    EndFrame()
    WaitFor(0.5)
  until IsDead(Troop.AIcontrolledgrunt9)
  PlatoonLeader = Troop.AIcontrolledgrunt10
  EndFrame()
  FollowUnit(Troop.AIassault1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIassault3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  FollowUnit(Troop.AIgrunt4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  if BazookasFree == true then
    FollowUnit(Troop.AIbazooka1, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka2, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka3, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
    FollowUnit(Troop.AIbazooka4, PlatoonLeader, 5, 0, constant.ORDER_FORCED)
  end
end

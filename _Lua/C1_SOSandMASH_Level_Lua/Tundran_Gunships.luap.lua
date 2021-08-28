function Tundran_Gunships(owner)
  local GotTarget = 0
  DebugOut(owner)
  repeat
    SetHealthPercent(owner, 99)
    EndFrame()
  until Gunshit1 == 1 and owner == 150016817 or Gunshit2 == 1 and owner == 150016828 or Gunshit3 == 1 and owner == 150016909
  DebugOut("Gunship Attacking")
  SetHealthPercent(owner, 100)
  repeat
    if IsDead(Ground_Vehicle.WF_Artillery1) == false and GotTarget == 0 then
      AttackTarget(owner, Ground_Vehicle.WF_Artillery1)
      GotTarget = 1
    end
    if IsDead(Ground_Vehicle.WF_Artillery2) == false and GotTarget == 0 then
      AttackTarget(owner, Ground_Vehicle.WF_Artillery2)
      GotTarget = 2
    end
    if IsDead(Ground_Vehicle.WF_Artillery3) == false and GotTarget == 0 then
      AttackTarget(owner, Ground_Vehicle.WF_Artillery3)
      GotTarget = 3
    end
    if GotTarget > 0 then
      if GotTarget == 1 then
        repeat
          EndFrame()
        until IsDead(Ground_Vehicle.WF_Artillery1)
        GotTarget = 0
      end
      if GotTarget == 2 then
        repeat
          EndFrame()
        until IsDead(Ground_Vehicle.WF_Artillery2)
        GotTarget = 0
      end
      if GotTarget == 3 then
        repeat
          EndFrame()
        until IsDead(Ground_Vehicle.WF_Artillery3)
        GotTarget = 0
      end
    end
    EndFrame()
  until IsDead(Ground_Vehicle.WF_Artillery1) and IsDead(Ground_Vehicle.WF_Artillery2) and IsDead(Ground_Vehicle.WF_Artillery3)
  repeat
    AttackTarget(owner, GetPlayerUnit())
    WaitFor(20)
  until LevelState == 2 or AllPlayerUnitsDead
end

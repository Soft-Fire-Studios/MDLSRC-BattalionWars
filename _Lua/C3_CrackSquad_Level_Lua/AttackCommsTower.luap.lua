function AttackCommsTower(owner)
  repeat
    WaitFor(0.5)
    EndFrame()
  until lookoutcommunicationstower == 1
  if communicationstower == 0 then
    ClearMessageQueue()
    PhoneMessage(5, 0, 1, 6, SpriteID.CO_X_Ubel_Happy)
  end
  local theplayer = GetPlayerUnit()
  DebugOut("Communications tower and barracks grunts sent to attack")
  repeat
    WaitFor(1)
    if 0 >= GetHealthPercent(theplayer) then
      theplayer = GetPlayerUnit()
    end
    AttackTarget(Troop.XGruntBarracks1, theplayer)
    AttackTarget(Troop.XGruntBarracks2, theplayer)
    AttackTarget(Troop.XGruntBarracks3, theplayer)
    AttackTarget(Troop.XGruntBarracks4, theplayer)
    AttackTarget(Troop.XGruntBarracks5, theplayer)
    AttackTarget(Troop.XGruntBarracks6, theplayer)
  until IsDead(Troop.XGruntBarracks1) and IsDead(Troop.XGruntBarracks2) and IsDead(Troop.XGruntBarracks3) and IsDead(Troop.XGruntBarracks4) and IsDead(Troop.XGruntBarracks5) and IsDead(Troop.XGruntBarracks6)
  EndFrame()
end

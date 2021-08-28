function owner_Attack_Naval_Guns_Battleships(owner)
  repeat
    EndFrame()
  until IntroCutsceneEnd == 1
  WaitFor(3)
  repeat
    EndFrame()
  until IsActive(owner)
  EnableWeapon(owner, 0)
  if owner == Water_Vehicle.SEBattleship01 or owner == Water_Vehicle.SEBattleship02 or owner == Water_Vehicle.SEBattleship05 then
    if IsDead(Building.NavalGun01) == false then
      if owner == Water_Vehicle.SEBattleship02 then
        GoToArea(owner, GetObjectXPosition(Building.NavalGun01) + 50, GetObjectZPosition(Building.NavalGun01), 20, 20, constant.ORDER_FORCED)
      else
        GoToArea(owner, GetObjectXPosition(Building.NavalGun01), GetObjectZPosition(Building.NavalGun01), 20, 20, constant.ORDER_FORCED)
      end
      repeat
        WaitFor(1)
      until IsInRange(owner, Building.NavalGun01, 250)
      EnableWeapon(owner, 1)
      EndFrame()
      repeat
        AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
        WaitFor(1)
      until IsDead(Building.NavalGun01)
      AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
      repeat
        WaitFor(1)
        AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
      until IsDead(Building.NavalGun02)
    else
      GoToArea(owner, GetObjectXPosition(Building.NavalGun02), GetObjectZPosition(Building.NavalGun02), 20, 20, constant.ORDER_FORCED)
      repeat
        WaitFor(1)
      until IsInRange(owner, Building.NavalGun01, 250)
      EnableWeapon(owner, 1)
      EndFrame()
      AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
      repeat
        AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
        WaitFor(1)
      until IsDead(Building.NavalGun02)
    end
    EndFrame()
  else
    if IsDead(Building.NavalGun02) == false then
      if owner == Water_Vehicle.SEBattleship04 then
        GoToArea(owner, GetObjectXPosition(Building.NavalGun02) - 50, GetObjectZPosition(Building.NavalGun02), 20, 20, constant.ORDER_FORCED)
      else
        GoToArea(owner, GetObjectXPosition(Building.NavalGun02), GetObjectZPosition(Building.NavalGun02), 20, 20, constant.ORDER_FORCED)
      end
      repeat
        WaitFor(1)
      until IsInRange(owner, Building.NavalGun01, 250)
      EnableWeapon(owner, 1)
      EndFrame()
      AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
      repeat
        AttackTarget(owner, Building.NavalGun02, constant.ORDER_FORCED)
        WaitFor(1)
      until IsDead(Building.NavalGun02)
      AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
      repeat
        WaitFor(1)
        AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
      until IsDead(Building.NavalGun01)
    else
      GoToArea(owner, GetObjectXPosition(Building.NavalGun01), GetObjectZPosition(Building.NavalGun01), 20, 20, constant.ORDER_FORCED)
      repeat
        WaitFor(1)
      until IsInRange(owner, Building.NavalGun01, 250)
      EnableWeapon(owner, 1)
      EndFrame()
      repeat
        AttackTarget(owner, Building.NavalGun01, constant.ORDER_FORCED)
        WaitFor(1)
      until IsDead(Building.NavalGun01)
    end
    EndFrame()
  end
  EndFrame()
end

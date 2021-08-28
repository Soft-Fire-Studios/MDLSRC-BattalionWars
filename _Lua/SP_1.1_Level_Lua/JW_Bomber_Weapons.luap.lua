function JW_Bomber_Weapons(owner)
  EnableWeapon(owner, 0)
  SetTickScriptWhenDespawned(owner, true)
  Despawn(owner)
  repeat
    EndFrame()
  until bomberweapon == 1
  WaitFor(45)
  EnableWeapon(owner, 1)
  EndFrame()
  AttackTarget(owner, Ground_Vehicle.SE_AATank01)
end

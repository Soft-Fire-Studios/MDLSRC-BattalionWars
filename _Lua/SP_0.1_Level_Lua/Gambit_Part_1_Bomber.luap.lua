function Gambit_Part_1_Bomber(owner)
  local DespawnBomberTimer = 0
  Despawn(Ground_Vehicle.SEtankbattle02)
  Despawn(Ground_Vehicle.SEtankbattle03)
  Despawn(Ground_Vehicle.SEtankbattle05)
  repeat
    EndFrame()
  until IsDead(Troop.Sstaffbearer02)
  EnableWeapon(Air_Vehicle.ILbomber01, false)
  SetActive(Air_Vehicle.ILbomber01, constant.INACTIVE, constant.ADJUST_WEAPON)
  WaitFor(1)
  GoToArea(Air_Vehicle.ILbomber01, 500, -100, 25, 0, constant.ORDER_FORCED)
  DespawnBomberTimer = GetTime() + 30
  DebugOut("Legion Bomber flying away")
  repeat
    GoToArea(Air_Vehicle.ILbomber01, 600, -100, 25, 0, constant.ORDER_FORCED)
    WaitFor(5)
  until DespawnBomberTimer < GetTime()
  SetUnitInvulnerable(Air_Vehicle.ILbomber01, false)
  Despawn(Air_Vehicle.ILbomber01)
end

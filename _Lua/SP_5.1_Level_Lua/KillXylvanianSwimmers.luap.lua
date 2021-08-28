function KillXylvanianSwimmers(owner)
  repeat
    WaitFor(2)
  until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.SpawnWF)
  repeat
    if GetMovementState(owner) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(owner)
    end
    WaitFor(1)
  until IsDead(Troop.XylvanianBazookaVet15) and IsDead(Troop.XylvanianBazookaVet16) and IsDead(Troop.XylvanianBazookaVet17) and IsDead(Troop.XylvanianBazookaVet18) and IsDead(Troop.XylvanianBazookaVet19)
end

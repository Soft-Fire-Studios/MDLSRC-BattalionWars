function level_Fighters(owner)
  local player = 0
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.WF_FIG01) and IsDead(Air_Vehicle.WF_FIG02)
  DebugOut("fighters have been killed")
  WaitFor(5)
  DebugOut("gunships go attack the player's unit")
  player = GetPlayerUnit()
  AttackTarget(Air_Vehicle.XV_FIG01, GetPlayerUnit())
  AttackTarget(Air_Vehicle.XV_FIG02, GetPlayerUnit())
  AttackTarget(Air_Vehicle.XV_FIG03, GetPlayerUnit())
  AttackTarget(Air_Vehicle.XV_FIG04, GetPlayerUnit())
  WaitFor(5)
  while true do
    if GetPlayerUnit() ~= 0 and GetPlayerUnit() ~= player then
      DebugOut("player has hot swapped, gunships go attack the new player unit")
      AttackTarget(Air_Vehicle.XV_FIG01, GetPlayerUnit())
      AttackTarget(Air_Vehicle.XV_FIG02, GetPlayerUnit())
      AttackTarget(Air_Vehicle.XV_FIG03, GetPlayerUnit())
      AttackTarget(Air_Vehicle.XV_FIG04, GetPlayerUnit())
      player = GetPlayerUnit()
      WaitFor(5)
    end
    EndFrame()
  end
end

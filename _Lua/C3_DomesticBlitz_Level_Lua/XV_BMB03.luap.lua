function XV_BMB03(owner)
  local self = Air_Vehicle.XV_BMB03
  Despawn(self)
  while not WF_AllOutAttack do
    EndFrame()
  end
  while true do
    if IsDead(self) then
      WaitFor(5)
    else
      local id = group.FirstNotDeadAfterIndex(Unit_Group.Omaha, 0)
      if id > 0 then
        AttackTarget(self, id)
      end
    end
    WaitFor(5)
  end
end

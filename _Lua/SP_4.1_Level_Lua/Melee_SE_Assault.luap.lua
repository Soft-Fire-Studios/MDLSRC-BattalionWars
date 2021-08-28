function Melee_SE_Assault(owner)
  while true do
    if GetPrimaryActionState(owner) ~= constant.ACTION_STATE_ATTACK and GetPrimaryActionState(owner) ~= constant.ACTION_STATE_MOVING_TO_AREA and IsInArea(owner, Map_Zone.SE_Assault) then
      AttackTarget(owner, Building.IL_Battlestation01, constant.ORDER_NORMAL)
    end
    EndFrame()
  end
end

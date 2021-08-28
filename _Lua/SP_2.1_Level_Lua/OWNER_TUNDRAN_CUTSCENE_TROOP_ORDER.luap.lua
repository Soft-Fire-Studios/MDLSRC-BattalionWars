function OWNER_TUNDRAN_CUTSCENE_TROOP_ORDER(owner)
  local OrderGiven = false
  repeat
    WaitFor(0.3)
    if OrderGiven == false and IsInArea(owner, Map_Zone.cutscenetroops) then
      GoToArea(owner, 108, -435, 5, constant.ORDER_FORCED)
      OrderGiven = true
    end
    EndFrame()
  until OrderGiven == true
end

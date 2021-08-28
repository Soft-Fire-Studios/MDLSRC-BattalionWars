function ReconAttackDownHill(owner)
  repeat
    EndFrame()
  until cutscenefinished == 1
  local deadgrunts = 0
  while true do
    deadgrunts = 0
    if IsDead(Troop.Hill1) then
      deadgrunts = deadgrunts + 1
    end
    if IsDead(Troop.Hill2) then
      deadgrunts = deadgrunts + 1
    end
    if IsDead(Troop.Hill3) then
      deadgrunts = deadgrunts + 1
    end
    if IsDead(Troop.Hill4) then
      deadgrunts = deadgrunts + 1
    end
    if IsDead(Troop.Hill5) then
      deadgrunts = deadgrunts + 1
    end
    if IsDead(Troop.Hill6) then
      deadgrunts = deadgrunts + 1
    end
    if deadgrunts > 1 then
      GoToArea(Ground_Vehicle.XLightAttack6, 316, -349, 15, constant.ORDER_NORMAL)
      GoToArea(Troop.Charge1, 316, -349, 15, constant.ORDER_NORMAL)
      GoToArea(Troop.Charge2, 316, -349, 15, constant.ORDER_NORMAL)
      GoToArea(Troop.Charge3, 316, -349, 15, constant.ORDER_NORMAL)
      GoToArea(Troop.Charge4, 316, -349, 15, constant.ORDER_NORMAL)
      break
    end
    WaitFor(0.5)
    EndFrame()
  end
end

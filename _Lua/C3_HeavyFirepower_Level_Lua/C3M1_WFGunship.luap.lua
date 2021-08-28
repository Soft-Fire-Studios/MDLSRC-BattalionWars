function C3M1_WFGunship(owner)
  Despawn(Air_Vehicle.WFgunship0001)
  while true do
    if FirstGunshipSent == 0 and IsDead(Troop.Xmissile0011) and IsDead(Troop.Xmissile0012) then
      FirstGunshipSent = 1
      DebugOut("Spawning Gunship")
      Spawn(Air_Vehicle.WFgunship0001)
      SetActive(Air_Vehicle.WFgunship0001, constant.ACTIVE, constant.ADJUST_WEAPON)
      WaitFor(1)
      if 0 < GetPlayerUnit() then
        FollowUnit(Air_Vehicle.WFgunship0001, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
      end
    else
      EndFrame()
      while true do
        if IsInRectangle(GetPlayerUnit(), -1000, -50, 1000, 1000) and not IsDead(Air_Vehicle.WFgunship0001) and BattlestationMessageDone == 0 then
          ClearMessageQueue()
          PhoneMessage(34, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Sad)
          break
        end
        EndFrame()
      end
    end
  end
  EndFrame()
  return
end

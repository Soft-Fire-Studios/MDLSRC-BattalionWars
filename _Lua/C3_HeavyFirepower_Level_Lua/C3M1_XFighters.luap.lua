function C3M1_XFighters(owner)
  while true do
    if BattlestationMessageDone == 1 and IsDead(Air_Vehicle.Xfighter0001) and IsDead(Air_Vehicle.Xfighter0002) and IsDead(Air_Vehicle.Xfighter0003) and IsDead(Air_Vehicle.Xfighter0004) then
      PhoneMessage(31, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(32, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      DebugOut("Spawning Gunship")
      Spawn(Air_Vehicle.WFgunship0002)
      Spawn(Air_Vehicle.WFgunship0003)
      GoToArea(Air_Vehicle.WFgunship0002, 335, -165, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Air_Vehicle.WFgunship0003, 420, -180, 10, 0, constant.ORDER_NORMAL)
      WaitFor(5)
      SetActive(Air_Vehicle.WFgunship0002, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Air_Vehicle.WFgunship0003, constant.ACTIVE, constant.ADJUST_WEAPON)
      if not IsDead(Ground_Vehicle.Xbattlestation0001) then
        SetObjectiveData(Objective.BattlestationSecond, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end

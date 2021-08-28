function HelipadWarningMessage(owner)
  repeat
    WaitFor(0.5)
  until helipad01 == 2
  repeat
    if helipad01 == 2 and IsDead(Air_Vehicle.HelipadChopper01) then
      Kill(Reinforcements)
      ClearMessageQueue()
      PhoneMessage(26, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      helipad01 = 1
      DebugOut("The transport chopper has died on its way to deliver reinforcements. Tell the player about it")
    end
    EndFrame()
  until helipad01 == 1
end

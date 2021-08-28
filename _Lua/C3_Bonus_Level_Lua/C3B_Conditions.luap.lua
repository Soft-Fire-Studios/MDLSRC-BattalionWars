function C3B_Conditions(owner)
  WaitFor(2)
  repeat
    if IsDead(Ground_Vehicle.SHeavyTank1) and IsDead(Ground_Vehicle.SHeavyTank2) and IsDead(Ground_Vehicle.SHeavyTank3) and CheckPOW01 == true then
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_XYLVANIAN)
      ClearMessageQueue()
      PhoneMessage(16, 0, constant.ARMY_SOLAR, 5, SpriteID.CO_SE_Leiqo_Sad)
      WaitFor(9)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(313)
      Kill(owner)
    end
    if IsDead(Ground_Vehicle.SHeavyTank1) and IsDead(Ground_Vehicle.SHeavyTank2) and IsDead(Ground_Vehicle.SHeavyTank3) and IsDead(Ground_Vehicle.SHeavyTank4) and IsDead(Ground_Vehicle.SHeavyTank5) and IsDead(Ground_Vehicle.SHeavyTank6) and CheckPOW01 == false then
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_XYLVANIAN)
      ClearMessageQueue()
      PhoneMessage(16, 0, constant.ARMY_SOLAR, 5, SpriteID.CO_SE_Leiqo_Sad)
      WaitFor(9)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(313)
      Kill(owner)
    end
    if IsDead(Air_Vehicle.SEFighter1) and IsDead(Air_Vehicle.SEFighter2) and IsDead(Air_Vehicle.SEFighter3) then
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_XYLVANIAN)
      ClearMessageQueue()
      PhoneMessage(38, 0, constant.ARMY_SOLAR, 5, SpriteID.CO_SE_Leiqo_Sad)
      WaitFor(10)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(314)
      Kill(owner)
    end
    if Deserted == 1 then
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_XYLVANIAN)
      PhoneMessage(29, 0, constant.ARMY_SOLAR, 5, SpriteID.CO_SE_Leiqo_Sad)
      WaitFor(9)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(315)
      Kill(owner)
    end
    EndFrame()
  until LevelState == 5
end

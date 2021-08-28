function C1M8_Conditions(owner)
  WaitFor(2)
  Lose1 = owner
  repeat
    if AllPlayerUnitsDead(0) then
      Kill(CounterScript)
      Kill(FlagsScript)
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_TUNDRAN)
      ClearMessageQueue()
      PhoneMessage(36, 0, 0, 3, SpriteID.CO_WF_Betty_Sad)
      PhoneMessage(37, 0, 2, 4, SpriteID.CO_T_Nova_Happy)
      WaitFor(14)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(301)
      Kill(owner)
    end
    if TimeLose == 1 then
      Kill(CounterScript)
      Kill(FlagsScript)
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_TUNDRAN)
      ClearMessageQueue()
      PhoneMessage(75, 0, 0, 3, SpriteID.CO_WF_Betty_Sad)
      PhoneMessage(37, 0, 2, 4, SpriteID.CO_T_Nova_Happy)
      WaitFor(17)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(312)
      Kill(owner)
    end
    EndFrame()
  until LevelState == 2
end

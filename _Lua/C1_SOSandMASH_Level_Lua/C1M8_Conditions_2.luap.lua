function C1M8_Conditions_2(owner)
  WaitFor(2)
  Lose2 = owner
  local NumTroopsLeft = 0
  repeat
    NumTroopsLeft = CountRemainingPlayerTroops()
    if NumTroopsLeft == 0 and ArtilleryActive == 1 then
      Kill(CounterScript)
      Kill(FlagsScript)
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_TUNDRAN)
      ClearMessageQueue()
      PhoneMessage(33, 0, 0, 3, SpriteID.CO_WF_Betty_Sad)
      PhoneMessage(37, 0, 2, 4, SpriteID.CO_T_Nova_Happy)
      WaitFor(17)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(302)
      Kill(owner)
    end
    WaitFor(1)
  until IsDead(Ground_Vehicle.WF_Artillery1) and IsDead(Ground_Vehicle.WF_Artillery2) and IsDead(Ground_Vehicle.WF_Artillery3) or LevelState == 2
end

function C2M1_Conditions(owner)
  WaitFor(2)
  repeat
    if AllPlayerUnitsDead(0) then
      Kill(FlagHintScript)
      Kill(AAHintScript)
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_XYLVANIAN)
      ClearMessageQueue()
      PhoneMessage(40, 0, 1, 5, SpriteID.CO_X_Ubel_Happy)
      WaitFor(11)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(301)
      Kill(owner)
    end
    if IsDead(Ground_Vehicle.AntiAirVehicle) then
      Kill(Ground_Vehicle.AntiAirVehicle)
      Kill(FlagHintScript)
      Kill(AAHintScript)
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_XYLVANIAN)
      ClearMessageQueue()
      PhoneMessage(50, 0, 0, 5, SpriteID.CO_WF_Herman_Sad)
      PhoneMessage(40, 0, 1, 5, SpriteID.CO_X_Ubel_Happy)
      WaitFor(19)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(308)
      Kill(owner)
    end
    if GetState(Capture_Point.CP_Base) == 2 then
      Kill(FlagHintScript)
      Kill(AAHintScript)
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_XYLVANIAN)
      ClearMessageQueue()
      PhoneMessage(53, 0, 0, 5, SpriteID.CO_WF_Herman_Sad)
      PhoneMessage(40, 0, 1, 5, SpriteID.CO_X_Ubel_Happy)
      WaitFor(19)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(304)
      Kill(owner)
    end
    EndFrame()
    EndFrame()
  until IsDead(Air_Vehicle.Bomber1) and IsDead(Air_Vehicle.Bomber2) and IsDead(Air_Vehicle.Bomber3) and IsDead(Air_Vehicle.Bomber4)
end

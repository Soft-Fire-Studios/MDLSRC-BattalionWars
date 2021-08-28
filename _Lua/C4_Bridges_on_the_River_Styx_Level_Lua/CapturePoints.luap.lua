function CapturePoints(owner)
  repeat
    if northernpointcaptured + easternpointcaptured + westernpointcaptured == 1 then
      WaitFor(5)
      ClearMessageQueue()
      PhoneMessage(19, 0, 1, 6, SpriteID.CO_X_Vlad_Sad)
      PhoneMessage(33, 0, 0, 5, SpriteID.CO_WF_Herman_Happy)
      twoleft = 1
    end
    EndFrame()
  until twoleft == 1
  repeat
    if northernpointcaptured + easternpointcaptured + westernpointcaptured == 2 then
      ClearMessageQueue()
      PhoneMessage(7, 0, 0, 5, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(34, 0, 1, 6, SpriteID.CO_X_Vlad_Sad)
      PhoneMessage(58, 0, 1, 7, SpriteID.CO_X_Vlad_Sad)
      PhoneMessage(35, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
      oneleft = 1
    end
    EndFrame()
  until oneleft == 1
  repeat
    if northernpointcaptured + easternpointcaptured + westernpointcaptured == 3 then
      ShowTimer(0)
      ClearMessageQueue()
      PhoneMessage(20, 0, 1, 8, SpriteID.CO_X_Vlad_Sad)
      if ambushbeaten == 0 then
        PhoneMessage(11, 0, 0, 6, SpriteID.CO_WF_Herman_Happy)
      end
      alldone = 1
    end
    EndFrame()
  until alldone == 1
end

function Fail(owner)
  local loop = 0
  while loop == 0 do
    if AllPlayerUnitsDead(0) then
      while levelend == 1 do
        EndFrame()
      end
      levelend = 1
      EndFrame()
      infant = 1
      ClearMessageQueue()
      PhoneMessage(30, 0, 1, 5, SpriteID.CO_X_Vlad_Happy)
      PhoneMessage(31, 0, 0, 5, SpriteID.CO_WF_Betty_Sad)
      DeclareVictory(constant.ARMY_XYLVANIAN)
      WaitFor(21)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(301)
    end
    EndFrame()
  end
  EndFrame()
end

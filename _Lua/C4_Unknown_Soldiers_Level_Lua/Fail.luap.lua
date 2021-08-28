function Fail(owner)
  local loop = 0
  while loop == 0 do
    if AllPlayerUnitsDead(0) then
      while levelend == 1 do
        EndFrame()
      end
      levelend = 1
      DeclareVictory(constant.ARMY_UNDERWORLD)
      ClearMessageQueue()
      PhoneMessage(34, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Sad)
      WaitFor(8)
      loop = 1
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(301)
    end
    EndFrame()
  end
end

function NoInfantry(owner)
  local loop = 0
  DebugOut("Running scrupt for capture points")
  while loop == 0 do
    WaitFor(2)
    if CountRemainingPlayerTroops() == 0 then
      while levelend == 1 do
        EndFrame()
      end
      levelend = 1
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      if infant == 0 then
        DeclareVictory(constant.ARMY_XYLVANIAN)
        DebugOut("Loser")
        PhoneMessage(36, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Betty_Sad)
        WaitFor(10)
        loop = 1
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(302)
      end
    end
    EndFrame()
  end
  EndFrame()
end

function s2_infantryCPForce(owner)
  while true do
    if InfantryReinforcements >= 1 and 1 <= TankReinforcements and CountRemainingPlayerTroops() <= 0 then
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      ClearMessageQueue()
      PhoneMessage(85, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Sad)
      DeclareVictory(constant.ARMY_XYLVANIAN)
      StopScoringTimer()
      WaitFor(8)
      DebugOut("Level Lost")
      DebugOut("Time Taken for level = ", GetTime())
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(302)
      break
    end
    WaitFor(1)
    EndFrame()
  end
  EndFrame()
  return
end

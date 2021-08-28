function C1M1_Level_Win_Lose(owner)
  while true do
    if C1M1_Global_Variable == 13 and levelAlreadyLost <= 0 then
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      DebugScoring = true
      DebugOut("Debug Scoring = ", DebugScoring)
      DebugOut("Mission_Won")
      DebugOut("Time Taken for level = ", GetTime())
      C1M1_Global_Variable = 14
      DebugOut("C1M1 Global Variable = ", C1M1_Global_Variable)
      WinMission()
      break
    end
    if C1M1_Global_Variable < 12 then
      if IsDead(Ground_Vehicle.WFrecon0001) then
        levelAlreadyLost = 1
        PhoneMessage(185, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Betty_Sad)
        WaitFor(8)
        DebugOut("Level Lost - recon vehicle lost before Barbed Wire is smashed!")
        DebugOut("Time Taken for level = ", GetTime())
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(306)
        break
      end
      if IsDead(Troop.WFgruntStart) and IsDead(Troop.WFgrunt0001) and IsDead(Troop.WFgrunt0002) and IsDead(Troop.WFgrunt0003) and IsDead(Troop.WFgrunt0004) then
        levelAlreadyLost = 1
        PhoneMessage(186, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Betty_Sad)
        WaitFor(8)
        DebugOut("Level Lost - squad is dead")
        DebugOut("Time Taken for level = ", GetTime())
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(301)
        break
      end
      if AllPlayerUnitsDead(0) then
        levelAlreadyLost = 1
        WaitFor(1)
        DebugOut("Level Lost - player is dead!")
        DebugOut("Time Taken for level = ", GetTime())
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(301)
        break
      end
    end
    EndFrame()
  end
  return
end

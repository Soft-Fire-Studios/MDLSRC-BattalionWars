function C1M4_Conditions(owner)
  WaitFor(2)
  local thecowscomehome = 0
  repeat
    if 0 >= GetGroupHealthPercent(Unit_Group.RoadBlockGuys) and IsDead(Ground_Vehicle.TTank1) and IsDead(Air_Vehicle.TGunship2) then
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      Kill(Ground_Vehicle.TTank1)
      Kill(Ground_Vehicle.T_Recon2)
      Kill(Air_Vehicle.TGunship2)
      Kill(FinalEncounterScript)
      SetObjectiveData(Objective.Fend_off_Bitches, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Be_the_Tank, constant.OBJECTIVE_DATA_STATE, 1)
      DeclareVictory(constant.ARMY_WF)
      ClearMessageQueue()
      PhoneMessage(44, 0, 0, 5, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(45, 0, 2, 5, SpriteID.CO_T_Nova_Happy)
      PhoneMessage(46, 0, 0, 5, SpriteID.CO_WF_Betty_Happy)
      WaitFor(23)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WinMission()
      Kill(owner)
    end
    if 2 >= LevelState and AllPlayerUnitsDead(0) then
      Kill(TimerScript)
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_TUNDRAN)
      ClearMessageQueue()
      PhoneMessage(48, 0, 0, 3, SpriteID.CO_WF_Betty_Sad)
      PhoneMessage(51, 0, 2, 4, SpriteID.CO_T_Nova_Happy)
      WaitFor(14)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(301)
      Kill(owner)
    end
    if AllPlayerUnitsDead(0) and LevelState == 4 then
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_TUNDRAN)
      ClearMessageQueue()
      PhoneMessage(50, 0, 0, 3, SpriteID.CO_WF_Betty_Sad)
      PhoneMessage(51, 0, 2, 4, SpriteID.CO_T_Nova_Happy)
      WaitFor(13.5)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(301)
      Kill(owner)
    end
    if 0 >= GetHealthPercent(Ground_Vehicle.WF_Recon) and HasBeenTank == 0 then
      SetActive(Ground_Vehicle.WF_LTank1, constant.INACTIVE)
      Kill(GameflowScript)
      Kill(DrivingHintsScript)
      Kill(TimerScript)
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_TUNDRAN)
      ClearMessageQueue()
      PhoneMessage(49, 0, 0, 3, SpriteID.CO_WF_Betty_Sad)
      PhoneMessage(51, 0, 2, 4, SpriteID.CO_T_Nova_Happy)
      WaitFor(15)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(306)
      Kill(owner)
    end
    if TimeUp == 1 then
      Kill(GameflowScript)
      Kill(DrivingHintsScript)
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_TUNDRAN)
      ClearMessageQueue()
      PhoneMessage(40, 0, 0, 3, SpriteID.CO_WF_Betty_Sad)
      PhoneMessage(51, 0, 2, 4, SpriteID.CO_T_Nova_Sad)
      WaitFor(13)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(312)
      Kill(owner)
    end
    if LevelState == 4 and GetPlayerUnit() == 150011899 and IsInArea(Ground_Vehicle.WF_Recon, 200, 700, 500) == false and AttackUnderway == 1 then
      while GetPlayerUnit() == nil do
        EndFrame()
      end
      FreezePlayer()
      DeclareVictory(constant.ARMY_TUNDRAN)
      Kill(Ground_Vehicle.WF_LTank1)
      Kill(Troop.WF_Anti_Air1)
      Kill(Troop.WF_Anti_Air2)
      Kill(Troop.WFGrunt5)
      Kill(Troop.WFGrunt6)
      Kill(Troop.WFGrunt7)
      Kill(Troop.WF_Bazooka)
      Kill(Troop.WF_Bazooka2)
      PhoneMessage(50, 0, 0, 3, SpriteID.CO_WF_Betty_Sad)
      PhoneMessage(51, 0, 2, 4, SpriteID.CO_T_Nova_Happy)
      WaitFor(13.5)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(315)
      Kill(owner)
    end
    EndFrame()
  until thecowscomehome == 1
end

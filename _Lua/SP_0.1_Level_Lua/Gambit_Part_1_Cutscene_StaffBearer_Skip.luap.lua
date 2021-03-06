function Gambit_Part_1_Cutscene_StaffBearer_Skip(owner)
  repeat
    EndFrame()
  until cutsceneStaffBearerBegin == 1
  WaitFor(2)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO)) then
      DebugOut("Killed cutscene", cutsceneStaffBearer)
      Kill(cutsceneStaffBearer)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      EndIntro()
      Spawn(Troop.ILgrunt04)
      Spawn(Troop.ILgrunt05)
      Spawn(Troop.ILgrunt06)
      Spawn(Troop.ILgrunt17)
      Spawn(Troop.ILgrunt18)
      Spawn(Troop.ILgrunt19)
      Spawn(Troop.ILbazooka05)
      Spawn(Troop.ILbazooka06)
      Spawn(Troop.ILgrunt26)
      Spawn(Troop.ILgrunt27)
      Despawn(Troop.Sstaffbearer02)
      Spawn(Troop.Sstaffbearer01)
      ForceUnitTransfer(constant.PLAYER_ONE, Troop.Sstaffbearer01)
      Despawn(Troop.Sgrunt01)
      Despawn(Building.StaffOfPower)
      Kill(Destroyable_Object.StaffBearerSmoke)
      StoreSummaryMessage(constant.PLAYER_ONE, 21, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Helmet_Happy)
      StoreSummaryMessage(constant.PLAYER_ONE, 106, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Helmet_Happy)
      SetCamera(Camera.Player0001, constant.PLAYER_ONE)
      CameraSetTarget(Camera.Player0001, Troop.Sstaffbearer01)
      Despawn(Troop.Entity550041641)
      Despawn(Troop.Entity550041642)
      Despawn(Troop.Entity550041643)
      Despawn(Troop.Entity550041644)
      Despawn(Troop.Entity550041645)
      Despawn(Troop.ILgrunt17)
      Despawn(Troop.ILgrunt18)
      Despawn(Troop.ILgrunt26)
      Despawn(Troop.ILgrunt27)
      Spawn(Troop.ILgrunt28)
      Spawn(Troop.ILgrunt29)
      Spawn(Troop.ILgrunt30)
      Spawn(Troop.ILgrunt31)
      EndIntro()
      SetObjectiveData(Objective.PickupStaff, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Trench00, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Trench00, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessageWithObjective(32, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      PhoneMessage(27, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
      WaitFor(0.5)
      UnfreezePlayer(constant.PLAYER_ONE)
      PauseTimerActive = 0
      DialogStrikeTeamTimer = GetTime() + 45
      cutsceneStaffBearerBegin = 2
    end
    EndFrame()
  until cutsceneStaffBearerBegin == 2
end

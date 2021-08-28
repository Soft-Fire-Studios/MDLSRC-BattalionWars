function Gambit_Part_1_Cutscene_MidGame_4_Battlestation(owner)
  cutsceneMidGameBattlestation = owner
  DebugOut("Cutscene Mid Game Battlestation = ", cutsceneMidGameBattlestation)
  while true do
    if cutsceneMidGameBattlestationBegin == 1 then
      FreezePlayer(constant.PLAYER_ONE)
      PauseTimerActive = 1
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      StartIntro()
      Teleport(GetPlayerUnit(), GetObjectXPosition(GetPlayerUnit()), GetObjectZPosition(GetPlayerUnit()), 25, 0)
      if not IsDead(Air_Vehicle.ILgunship01) then
        SetActive(Air_Vehicle.ILgunship01, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Air_Vehicle.ILgunship01)
      end
      if not IsDead(Air_Vehicle.ILgunship02) then
        SetActive(Air_Vehicle.ILgunship02, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Air_Vehicle.ILgunship02)
      end
      if not IsDead(Troop.ILgrunt20) then
        SetActive(Troop.ILgrunt20, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt20)
      end
      if not IsDead(Troop.ILgrunt21) then
        SetActive(Troop.ILgrunt21, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt21)
      end
      if not IsDead(Troop.ILgrunt22) then
        SetActive(Troop.ILgrunt22, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt22)
      end
      DebugOut("IRON LEGION Battlestation is at = ", ILBattlestattionXCoords, ", ", ILBattlestattionZCoords)
      SetCamera(Camera.CutsceneMidGame0001, constant.PLAYER_ONE)
      CameraSetWaypoint(Camera.CutsceneMidGame0001, Waypoint.cutsceneMidGameBattlestation0001)
      CameraSetTarget(Camera.CutsceneMidGame0001, Waypoint.cutsceneMidGameBattlestation0001Target)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraSetFOV(Camera.CutsceneMidGame0001, 30, constant.SMOOTH, 5, constant.NO_WAIT)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(40, constant.ID_NONE, constant.ARMY_UNDERWORLD, 8, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      CameraSetFOV(Camera.CutsceneMidGame0001, 60, constant.SMOOTH, 5, constant.NO_WAIT)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      SetCamera(Camera.Player0001, constant.PLAYER_ONE)
      EndIntro()
      Despawn(Ground_Vehicle.ILbattlestation01STATIC)
      Spawn(Ground_Vehicle.ILbattlestation01)
      SetActive(Ground_Vehicle.ILbattlestation01, constant.INACTIVE, constant.ADJUST_WEAPON)
      if not IsDead(Troop.ILgrunt20) then
        Spawn(Troop.ILgrunt20)
      end
      if not IsDead(Troop.ILgrunt21) then
        Spawn(Troop.ILgrunt21)
      end
      if not IsDead(Troop.ILgrunt22) then
        Spawn(Troop.ILgrunt22)
      end
      cutsceneMidGameBattlestationBegin = 2
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.NO_WAIT, 1)
      PhoneMessageWithObjective(41, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      WaitFor(0.5)
      UnfreezePlayer(constant.PLAYER_ONE)
      PauseTimerActive = 0
      SetObjectiveData(Objective.Trench08, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Trench08, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Battlestation01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      WaitFor(0.5)
      SetActive(Ground_Vehicle.ILbattlestation01, constant.ACTIVE, constant.ADJUST_WEAPON)
      if not IsDead(Troop.ILgrunt20) then
        SetActive(Troop.ILgrunt20, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt21) then
        SetActive(Troop.ILgrunt21, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt22) then
        SetActive(Troop.ILgrunt22, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
    end
    EndFrame()
  end
end

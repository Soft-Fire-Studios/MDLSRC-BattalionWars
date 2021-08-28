function Purge_CutsceneEnd(owner)
  cutsceneEndID = owner
  DebugOut("Cutscene End ID", cutsceneEndID)
  local XCoord = -1150
  local ZCoord = 1205
  local Angle = 173
  local RandomCoord = 0
  local RandomAngle = 0
  local XCoord1 = -1180
  local ZCoord1 = 1030
  local Angle1 = 0
  local XCoord3 = -1223
  local ZCoord3 = 1110
  local Angle3 = 90
  Despawn(Troop.TroopCutscene01, false)
  Despawn(Troop.TroopCutscene02, false)
  Despawn(Troop.TroopCutscene03, false)
  Despawn(Troop.TroopCutscene04, false)
  Despawn(Troop.TroopCutscene05, false)
  Despawn(Troop.TroopCutscene06, false)
  Despawn(Troop.TroopCutscene07, false)
  Despawn(Troop.TroopCutscene08, false)
  Despawn(Troop.TroopCutscene09, false)
  Despawn(Troop.TroopCutscene10, false)
  repeat
    EndFrame()
  until cutscene01 == 2
  WaitFor(5)
  while true do
    if cutsceneEndBegin == 1 then
      cutsceneEndBegin = 2
      StartOutro()
      ClearMessageQueue()
      SetObjectiveData(Objective_Marker.Saw01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Saw02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Saw03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      if not IsDead(Building.SolarMGNest08) then
        ExitVehicle(Troop.SolarMGGrunt11, Building.SolarMGNest08)
      end
      if not IsDead(Building.SolarMGNest07) then
        ExitVehicle(Troop.SolarMGGrunt10, Building.SolarMGNest07)
      end
      Teleport(Ground_Vehicle.ILtank01, -1135, 1205, 180, 0)
      Teleport(Ground_Vehicle.ILtank02, -1180, 1120, 85, 0)
      Teleport(Ground_Vehicle.ILtank03, -1160, 1115, 95, 0)
      Spawn(Troop.TroopCutscene01)
      Spawn(Troop.TroopCutscene02)
      Spawn(Troop.TroopCutscene03)
      Spawn(Troop.TroopCutscene04)
      Spawn(Troop.TroopCutscene05)
      Spawn(Troop.TroopCutscene06)
      Spawn(Troop.TroopCutscene07)
      Spawn(Troop.TroopCutscene08)
      Spawn(Troop.TroopCutscene09)
      Spawn(Troop.TroopCutscene10)
      WaitFor(0.1)
      Teleport(Troop.LegionGrunt02, XCoord + GetRandom(0, 10), ZCoord + GetRandom(0, 10), Angle + GetRandom(0, 10), 20)
      Teleport(Troop.LegionGrunt03, XCoord + GetRandom(0, 10), ZCoord + GetRandom(0, 10), Angle + GetRandom(0, 10), 20)
      Teleport(Troop.LegionGrunt04, XCoord + GetRandom(0, 10), ZCoord + GetRandom(0, 10), Angle + GetRandom(0, 10), 20)
      Teleport(Troop.LegionGrunt05, XCoord + GetRandom(0, 10), ZCoord + GetRandom(0, 10), Angle + GetRandom(0, 10), 20)
      Teleport(Troop.LegionGrunt06, XCoord + GetRandom(0, 10), ZCoord + GetRandom(0, 10), Angle + GetRandom(0, 10), 20)
      WaitFor(0.1)
      Teleport(Troop.ILbazooka01, XCoord + GetRandom(0, 5), ZCoord + GetRandom(0, 5), Angle + GetRandom(0, 5), 20)
      Teleport(Troop.ILbazooka02, XCoord + GetRandom(0, 5), ZCoord + GetRandom(0, 5), Angle + GetRandom(0, 5), 20)
      Teleport(Troop.ILbazooka03, XCoord + GetRandom(0, 5), ZCoord + GetRandom(0, 5), Angle + GetRandom(0, 5), 20)
      Teleport(Troop.ILbazooka04, XCoord + GetRandom(0, 5), ZCoord + GetRandom(0, 5), Angle + GetRandom(0, 5), 20)
      Teleport(Troop.ILbazooka05, XCoord + GetRandom(0, 5), ZCoord + GetRandom(0, 5), Angle + GetRandom(0, 5), 20)
      WaitFor(0.1)
      Teleport(Troop.ILmortar01, XCoord1 + GetRandom(0, 15), ZCoord1 + GetRandom(0, 15), Angle1 + GetRandom(0, 10), 20)
      Teleport(Troop.ILmortar02, XCoord1 + GetRandom(0, 15), ZCoord1 + GetRandom(0, 15), Angle1 + GetRandom(0, 10), 20)
      Teleport(Troop.ILmortar03, XCoord1 + GetRandom(0, 15), ZCoord1 + GetRandom(0, 15), Angle1 + GetRandom(0, 10), 20)
      Teleport(Troop.ILmortar04, XCoord1 + GetRandom(0, 15), ZCoord1 + GetRandom(0, 15), Angle1 + GetRandom(0, 10), 20)
      Teleport(Troop.ILmortar05, XCoord1 + GetRandom(0, 15), ZCoord1 + GetRandom(0, 15), Angle1 + GetRandom(0, 10), 20)
      WaitFor(0.1)
      Teleport(Troop.LegionAAVet01, XCoord3 + GetRandom(0, 15), ZCoord3 + GetRandom(0, 15), Angle3 + GetRandom(0, 15), 20)
      Teleport(Troop.LegionAAVet02, XCoord3 + GetRandom(0, 15), ZCoord3 + GetRandom(0, 15), Angle3 + GetRandom(0, 15), 20)
      Teleport(Troop.LegionAAVet03, XCoord3 + GetRandom(0, 15), ZCoord3 + GetRandom(0, 15), Angle3 + GetRandom(0, 15), 20)
      Teleport(Troop.LegionAAVet04, XCoord3 + GetRandom(0, 15), ZCoord3 + GetRandom(0, 15), Angle3 + GetRandom(0, 15), 20)
      Teleport(Troop.LegionAAVet05, XCoord3 + GetRandom(0, 15), ZCoord3 + GetRandom(0, 15), Angle3 + GetRandom(0, 15), 20)
      WaitFor(0.1)
      VictoryDance(constant.ARMY_UNDERWORLD, false)
      DefeatLament(constant.ARMY_SOLAR, false)
      DeclareVictory(constant.ARMY_UNDERWORLD)
      SetCamera(Camera.CutsceneEnd01, constant.PLAYER_ONE)
      CameraSetWaypoint(Camera.CutsceneEnd01, Waypoint.CutsceneEnd01a)
      CameraSetTarget(Camera.CutsceneEnd01, Waypoint.CutsceneEndTarget01a)
      CameraSetFOV(Camera.CutsceneEnd01, 60, constant.IMMEDIATE, 0, constant.NO_WAIT)
      ClearMessageQueue()
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(31, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      CameraSetFOV(Camera.CutsceneEnd01, 70, constant.SMOOTH, 1, constant.NO_WAIT)
      repeat
        EndFrame()
      until 0 >= GetNumItemsInMessageQueue(constant.PLAYER_ONE)
      WaitFor(3)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      cutsceneEndIsOver = 1
    end
    EndFrame()
  end
end

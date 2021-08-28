function CutScene02(owner)
  WaitFor(10)
  cutscene02kill = owner
  while missionend == 0 do
    if 0 < NumItemsInArea(Map_Zone.CutScene02Trigger, flag.TYPE_WFRONTIER) then
      PauseTimerActive = 1
      FreezePlayer(constant.PLAYER_ONE)
      SetInvulnerable(flag.TYPE_WFRONTIER, 1)
      SetInvulnerable(flag.TYPE_TUNDRAN, 1)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      CameraSetWaypoint(Camera.Camera5, Waypoint.Entity330101651)
      cutscene02triggered = true
      if IsReadyToRevive(Air_Vehicle.TT_Gunship_2) then
        ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TT_Gunship_2, 432, 1018, 180, 20)
      else
        Teleport(Air_Vehicle.TT_Gunship_2, 432, 1018, 180, 20)
      end
      if IsReadyToRevive(Air_Vehicle.TT_Gunship_3) then
        ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TT_Gunship_3, 459, 1018, 180, 20)
      else
        Teleport(Air_Vehicle.TT_Gunship_3, 459, 1018, 180, 20)
      end
      Spawn(Troop.Entity340001656)
      Spawn(Troop.Entity340001657)
      Spawn(Troop.Entity340001659)
      Spawn(Building.MG_Nest_1)
      Spawn(Troop.Entity340002113)
      Spawn(Troop.Entity340002112)
      Spawn(Troop.Entity340002118)
      Spawn(Troop.Entity340002119)
      Spawn(Building.Entity340002008)
      Spawn(Building.Entity340002005)
      Spawn(Air_Vehicle.TT_Gunship_4)
      Spawn(Air_Vehicle.TT_Gunship_5)
      Spawn(Air_Vehicle.TT_Gunship_6)
      Spawn(Morphing_Building.TT_HQ_MG_Turret_1)
      Spawn(Morphing_Building.TT_HQ_MG_Turret_2)
      Spawn(Morphing_Building.TT_HQ_MG_Turret_3)
      Spawn(Morphing_Building.TT_HQ_MG_Turret_4)
      Spawn(Troop.TT_Flame_TT_HQ_1)
      Spawn(Troop.TT_Flame_TT_HQ_2)
      Spawn(Troop.TT_Flame_TT_HQ_3)
      Spawn(Troop.TT_Flame_TT_HQ_4)
      StartOutro()
      SetCamera(Camera.Camera5)
      cutscene02 = 1
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(68, constant.ID_NONE, constant.ARMY_TUNDRAN, 8, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
      WaitFor(8)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      Spawn(Water_Vehicle.TT_Bship1)
      SetCamera(Camera.Camera7)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(98, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      Spawn(Troop.Cannonfodder)
      EndFrame()
      Teleport(Troop.Cannonfodder, 492, 804, 180, 1)
      AttackTarget(Water_Vehicle.TT_Bship1, Troop.Cannonfodder, constant.ORDER_FORCED)
      GoToArea(Troop.Cannonfodder, 492, 804, 1, 0, constant.ORDER_FORCED)
      WaitFor(3)
      GoToArea(Air_Vehicle.TT_Gunship_4, 417, 833, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Air_Vehicle.TT_Gunship_5, 417, 833, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Air_Vehicle.TT_Gunship_6, 417, 833, 10, 0, constant.ORDER_NORMAL)
      WaitFor(2)
      Despawn(Troop.Cannonfodder)
      GoToArea(Water_Vehicle.TT_Bship1, 574, 807, 10, 0, constant.ORDER_NORMAL)
      WaitFor(2)
      cutscenefinished02 = 1
      break
    end
    EndFrame()
  end
end

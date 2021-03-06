function CutScene01(owner)
  cutsceneabort01 = owner
  while missionend == 0 do
    if cutscenefinished01 == 0 then
      StartIntro()
      SetUnitInvulnerable(Troop.CutSceneGrunt01, 1)
      SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
      AttackTarget(Ground_Vehicle.XylvanianArtillery03, Troop.CutSceneGrunt01, constant.ORDER_FORCED)
      AttackTarget(Air_Vehicle.XylvanianGunship02, Troop.CutSceneGrunt01)
      AttackTarget(Air_Vehicle.XylvanianGunship03, Troop.CutSceneGrunt01)
      GoToArea(Troop.XylvanianBazookaVet15, 301, 422, 15)
      GoToArea(Troop.XylvanianBazookaVet16, 301, 422, 15)
      GoToArea(Troop.XylvanianBazookaVet17, 301, 422, 15)
      GoToArea(Troop.XylvanianBazookaVet18, 301, 422, 15)
      GoToArea(Troop.XylvanianBazookaVet19, 301, 422, 15)
      GoToArea(Ground_Vehicle.XylvanianLightTank03, 301, 422, 15)
      GoToArea(Ground_Vehicle.XylvanianLightTank04, 301, 422, 15)
      PhoneMessageWithObjective(16, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      WaitFor(3.5)
      Kill(Building.CutSceneAmmoDump01)
      WaitFor(6)
      Kill(Building.CutSceneAmmoDump02)
      WaitFor(2)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Teleport(Troop.XMausoleumGrunt01, 630, 452, 330, 1)
      Teleport(Troop.XMausoleumGrunt02, 630, 452, 330, 1)
      Teleport(Troop.XylvanianBazookaVet15, 624, 459, 330, 1)
      Teleport(Troop.XylvanianBazookaVet16, 624, 459, 330, 1)
      SetCamera(Camera.GorgiStatueShot)
      ClearMessageQueue()
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(44, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_ONE)
      WaitFor(8)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Kill(Troop.CutSceneGrunt01)
      Kill(Troop.CutSceneGrunt02)
      Kill(Troop.CutSceneGrunt03)
      Kill(Troop.CutSceneGrunt04)
      Despawn(Ground_Vehicle.XylvanianArtillery01, true)
      Despawn(Ground_Vehicle.XylvanianArtillery03, true)
      Despawn(Troop.XMausoleumGrunt01, true)
      Despawn(Troop.XMausoleumGrunt02, true)
      Despawn(Troop.XMausoleumGrunt03, true)
      Despawn(Troop.XMausoleumGrunt04, true)
      Despawn(Troop.XMausoleumGrunt05, true)
      Despawn(Troop.XMausoleumGrunt06, true)
      Despawn(Troop.XylvanianMortarVet01, true)
      Despawn(Troop.XylvanianMortarVet02, true)
      Despawn(Troop.XylvanianMortarVet03, true)
      Despawn(Troop.XylvanianBazookaVet15, true)
      Despawn(Troop.XylvanianBazookaVet16, true)
      Despawn(Troop.XylvanianBazookaVet17, true)
      Despawn(Troop.XylvanianBazookaVet18, true)
      Despawn(Troop.XylvanianBazookaVet19, true)
      Despawn(Ground_Vehicle.XylvanianLightTank03, true)
      Despawn(Ground_Vehicle.XylvanianLightTank04, true)
      GoToArea(Troop.XylvanianGrunt10, 138, -50, 2, 0, constant.ORDER_FORCED)
      GoToArea(Troop.XylvanianGrunt09, 146, -58, 2, 0, constant.ORDER_FORCED)
      GoToArea(Troop.XylvanianGrunt08, 138, -50, 2, 0, constant.ORDER_FORCED)
      GoToArea(Troop.XylvanianGrunt07, 146, -58, 2, 0, constant.ORDER_FORCED)
      GoToArea(Ground_Vehicle.XylvanianLightTank01, 163, -73, 5, 0, constant.ORDER_FORCED)
      GoToArea(Ground_Vehicle.XylvanianLightTank02, 143, -70, 5, 0, constant.ORDER_FORCED)
      SetCamera(Camera.CutScene02)
      CameraSetWaypoint(Camera.CutScene02, Waypoint.Entity330105008)
      CameraSetTarget(Camera.CutScene02, Waypoint.Entity330106928)
      ClearMessageQueue()
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      WaitFor(1)
      GoToArea(Air_Vehicle.CutSceneGunship01, 35, -101, 15, 0, constant.ORDER_FORCED)
      WaitFor(0.4)
      GoToArea(Air_Vehicle.CutSceneGunship02, 53, -110, 15, 0, constant.ORDER_FORCED)
      WaitFor(0.6)
      PhoneMessageWithObjective(17, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      WaitFor(4)
      GoToArea(Troop.XylvanianAirbaseGrunt01, 22, -134, 1, 0, constant.ORDER_FORCED)
      GoToArea(Troop.XylvanianAirbaseGrunt02, 26, -141, 1, 0, constant.ORDER_FORCED)
      GoToArea(Troop.XylvanianAirbaseGrunt03, 22, -134, 5, 0, constant.ORDER_FORCED)
      GoToArea(Troop.XylvanianAirbaseGrunt04, 26, -141, 5, 0, constant.ORDER_FORCED)
      GoToArea(Troop.XylvanianGrunt10, 178, -85, 0, 0, constant.ORDER_FORCED)
      GoToArea(Troop.XylvanianGrunt09, 176, -89, 0, 0, constant.ORDER_FORCED)
      GoToArea(Troop.XylvanianGrunt08, 179, -93, 0, 0, constant.ORDER_FORCED)
      GoToArea(Troop.XylvanianGrunt07, 183, -90, 0, 0, constant.ORDER_FORCED)
      WaitFor(9)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Teleport(Troop.XylvanianGrunt10, 178, -85, 170, 2)
      Teleport(Troop.XylvanianGrunt09, 176, -89, 90, 2)
      Teleport(Troop.XylvanianGrunt08, 179, -93, 0, 2)
      Teleport(Troop.XylvanianGrunt07, 183, -90, 290, 2)
      Teleport(Ground_Vehicle.XylvanianLightTank01, 186, -100, 270, 10)
      Teleport(Ground_Vehicle.XylvanianLightTank02, 191, -84, 270, 10)
      SetCamera(Camera.CutScene06)
      ClearMessageQueue()
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessageWithObjective(19, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      WaitFor(8)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Despawn(Troop.WesternFrontierMortarVet01, true)
      Despawn(Troop.WesternFrontierMortarVet02, true)
      Despawn(Troop.WesternFrontierMortarVet03, true)
      Despawn(Troop.WesternFrontierMortarVet04, true)
      Despawn(Troop.WesternFrontierMortarVet05, true)
      Spawn(Troop.TundranAntiAirVet01)
      Spawn(Troop.TundranAntiAirVet02)
      Spawn(Troop.TundranAntiAirVet03)
      Spawn(Troop.TundranAntiAirVet04)
      Spawn(Troop.TundranFlameVet01)
      Spawn(Troop.TundranFlameVet02)
      Spawn(Troop.TundranFlameVet03)
      Spawn(Troop.TundranFlameVet04)
      Spawn(Troop.TundranGrunt01)
      Spawn(Troop.TundranGrunt02)
      Spawn(Troop.TundranGrunt04)
      Spawn(Troop.TundranGrunt05)
      Spawn(Ground_Vehicle.TundranArtillery01)
      Spawn(Ground_Vehicle.TundranArtillery02)
      SetCamera(Camera.CutScene04)
      ClearMessageQueue()
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(22, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      PhoneMessage(28, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Prison_Ubel_Happy, constant.PLAYER_ONE)
      WaitFor(18)
      cutscenefinished01 = 1
      break
    end
    EndFrame()
  end
end

function MP3_Cutscene_Mid_LANDING_Skip(owner)
  local EndCutscene = function()
    DebugOut("Killed cutscene", cutsceneMidID)
    if cutsceneMidID >= 2 then
      Kill(cutsceneMidID)
    end
    CameraFade(constant.FADE_OUT, constant.WAIT, 1)
    CleanupSkipCutscene()
    Spawn(Capture_Point.HQ)
    Despawn(Building.CapturePointDummy)
    Kill(Destroyable_Object.Gate07)
    Kill(Destroyable_Object.Gate08)
    Kill(Destroyable_Object.Gate09)
    Kill(Destroyable_Object.Gate10)
    Kill(Destroyable_Object.Gate11)
    Kill(Destroyable_Object.Gate12)
    DestroyablePlayAnim(Destroyable_Object.GateFall01, 1, 2)
    DestroyablePlayAnim(Destroyable_Object.GateFall06, 1, 2)
    DestroyablePlayAnim(Destroyable_Object.GateFall02, 1, 2)
    DestroyablePlayAnim(Destroyable_Object.GateFall05, 1, 2)
    DestroyablePlayAnim(Destroyable_Object.GateFall03, 1, 2)
    DestroyablePlayAnim(Destroyable_Object.GateFall04, 1, 2)
    Kill(Destroyable_Object.Gate19)
    Kill(Destroyable_Object.Gate20)
    Kill(Destroyable_Object.Gate21)
    DestroyablePlayAnim(Destroyable_Object.GateFall19, 1, 2)
    DestroyablePlayAnim(Destroyable_Object.GateFall20, 1, 2)
    DestroyablePlayAnim(Destroyable_Object.GateFall21, 1, 2)
    Kill(Destroyable_Object.Gate22)
    Kill(Destroyable_Object.Gate23)
    Kill(Destroyable_Object.Gate24)
    DestroyablePlayAnim(Destroyable_Object.GateFall22, 1, 2)
    DestroyablePlayAnim(Destroyable_Object.GateFall23, 1, 2)
    DestroyablePlayAnim(Destroyable_Object.GateFall24, 1, 2)
    Spawn(Air_Vehicle.WFtransport04)
    Spawn(Air_Vehicle.WFtransport05)
    Spawn(Air_Vehicle.WFtransport06)
    SetUnitInvulnerable(Air_Vehicle.WFtransport04, true)
    SetUnitInvulnerable(Air_Vehicle.WFtransport05, true)
    SetUnitInvulnerable(Air_Vehicle.WFtransport06, true)
    WaitFor(0.1)
    ExitVehicle(Troop.WFbazooka04, Air_Vehicle.WFtransport06)
    ExitVehicle(Troop.WFgrunt7, Air_Vehicle.WFtransport06)
    ExitVehicle(Troop.WFgrunt1, Air_Vehicle.WFtransport05)
    ExitVehicle(Troop.WFbazooka02, Air_Vehicle.WFtransport04)
    ExitVehicle(Troop.WFgrunt3, Air_Vehicle.WFtransport04)
    WaitFor(0.1)
    DestroyablePlayAnim(Destroyable_Object.GateFall01, 1, 2)
    DestroyablePlayAnim(Destroyable_Object.GateFall06, 1, 2)
    DestroyablePlayAnim(Destroyable_Object.GateFall02, 1, 2)
    DestroyablePlayAnim(Destroyable_Object.GateFall05, 1, 2)
    DestroyablePlayAnim(Destroyable_Object.GateFall03, 1, 2)
    DestroyablePlayAnim(Destroyable_Object.GateFall04, 1, 2)
    Teleport(Troop.WFgrunt7, 102, -337, 180, 0)
    Teleport(Troop.WFgrunt1, 90, -350, 180, 0)
    Teleport(Troop.WFbazooka02, 125, -330, 180, 0)
    Teleport(Troop.WFgrunt3, 104, -325, 180, 0)
    Spawn(Troop.WFhose01)
    Spawn(Troop.WFbazooka01)
    Spawn(Troop.WFgrunt5)
    Spawn(Troop.WFgrunt6)
    Spawn(Troop.WFhose02)
    Spawn(Troop.WFbazooka03)
    Despawn(Troop.MidTTGrunt01)
    Despawn(Troop.MidTTGrunt02)
    Despawn(Troop.MidTTGrunt03)
    Despawn(Troop.MidTTGrunt04)
    Despawn(Troop.MidTTGrunt05)
    Despawn(Troop.MidTTGrunt06)
    Despawn(Ground_Vehicle.MidTTTank01)
    Despawn(Troop.MidTTTank01Driver)
    Spawn(Troop.TTgrunt1)
    Spawn(Troop.TTgrunt2)
    Spawn(Troop.TTgrunt3)
    Spawn(Troop.TTgrunt4)
    Spawn(Troop.TTgrunt5)
    Spawn(Troop.TTgrunt6)
    Spawn(Troop.TThose01)
    Spawn(Troop.TThose02)
    Spawn(Troop.TTchain03)
    Spawn(Ground_Vehicle.TTantiair01)
    Spawn(Ground_Vehicle.TTtank01)
    Spawn(Air_Vehicle.WFbomber03)
    EndOutro()
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      StoreSummaryMessage(constant.PLAYER_ONE, 14, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Happy)
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      StoreSummaryMessage(constant.PLAYER_TWO, 54, constant.ARMY_TUNDRAN, SpriteID.CO_T_Young_Gorgi_Sad)
    end
    WaitFor(0.1)
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      ForceUnitTransfer(constant.PLAYER_TWO, Ground_Vehicle.TTantiair01, true)
      WaitFor(0.5)
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      ForceUnitTransfer(constant.PLAYER_ONE, Troop.WFbazooka01, true)
      WaitFor(0.5)
    end
    SetActive(Air_Vehicle.WFfighter1, constant.INACTIVE, constant.ADJUST_WEAPON)
    SetActive(Air_Vehicle.WFfighter2, constant.INACTIVE, constant.ADJUST_WEAPON)
    SetActive(Air_Vehicle.WFbomber01, constant.INACTIVE, constant.ADJUST_WEAPON)
    SetActive(Air_Vehicle.TTfighter1, constant.INACTIVE, constant.ADJUST_WEAPON)
    SetActive(Air_Vehicle.TTfighter2, constant.INACTIVE, constant.ADJUST_WEAPON)
    Despawn(Air_Vehicle.WFfighter1)
    Despawn(Air_Vehicle.WFfighter2)
    Despawn(Air_Vehicle.WFbomber01)
    Despawn(Air_Vehicle.TTfighter1)
    Despawn(Air_Vehicle.TTfighter2)
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessageWithObjective(75, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO, false, constant.NEW_SECONDARY_OBJECTIVE)
      SetCamera(Camera.player2cam, constant.PLAYER_TWO)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessageWithObjective(25, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      SetCamera(Camera.player1cam, constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
    end
    WaitFor(FreezeDelay)
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      UnfreezePlayer(constant.PLAYER_ONE)
      SetInvulnerable(flag.TYPE_WFRONTIER, false)
      ResetCommandBar()
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      UnfreezePlayer(constant.PLAYER_TWO)
      SetInvulnerable(flag.TYPE_TUNDRAN, false)
      ResetCommandBar()
    end
    PauseTimerActive = 0
    SetTimer(MissionTimeLeft)
    ShowTimer(1)
    TimerShown = 1
    CutsceneMid = 1
  end
  repeat
    EndFrame()
  until ObjectiveOneIsDone == 1 and ObjectiveTwoIsDone == 1
  WaitFor(2)
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.cutscenemidskipped = 1
      DebugOut("Killed cutscene mid player1")
      EndCutscene()
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.cutscenemidskipped = 1
      DebugOut("Killed cutscene mid player2")
      EndCutscene()
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and IsNetworkPlayer(constant.PLAYER_TWO) and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or netvariable.player2.cutscenemidskipped == 1 or netvariable.player1.cutscenemidskipped == 1) then
      netvariable.player1.cutscenemidskipped = 1
      netvariable.player2.cutscenemidskipped = 1
      DebugOut("Killed mid level cutscene player1&2 - split screen")
      EndCutscene()
    end
    EndFrame()
  until CutsceneMid == 1
end

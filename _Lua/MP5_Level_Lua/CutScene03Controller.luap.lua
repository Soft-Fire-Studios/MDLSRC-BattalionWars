function CutScene03Controller(owner)
  local timer01 = 0
  local timer02 = 0
  local timer03 = 0
  local timer04 = 0
  local timer05 = 0
  local timer06 = 0
  local windsor01 = 0
  local capturepoint01 = 0
  repeat
    EndFrame()
  until Cutscene01End == 2
  repeat
    if capturepoint01 == 0 and CheckCapturePoint(Capture_Point.AngloHQCapturePoint, constant.ARMY_SOLAR, 89, 10, constant.CAPTUREPOINTFLAG_LOWERING) then
      capturepoint01 = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        PhoneMessage(71, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        PhoneMessage(21, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
      end
    end
    EndFrame()
    if capturepoint01 == 1 and GetHealthPercent(Capture_Point.AngloHQCapturePoint) == 100 and GetState(Capture_Point.AngloHQCapturePoint) == flag.TYPE_ANGLO then
      capturepoint01 = 0
    end
    EndFrame()
    if netvariable.player1.windsorspeech == 0 and IsNetworkPlayer(constant.PLAYER_ONE) and Cutscene01End == 2 and 2 > SeaFortDead and IsDead(Building.Generator) and GetHealthPercent(Capture_Point.AngloHQCapturePoint) == 100 then
      WaitFor(0.5)
      if CountRemainingPlayerTroops(constant.PLAYER_ONE) < 4 then
        netvariable.player1.windsorspeech = 1
      end
    end
    EndFrame()
    if netvariable.player1.windsorspeech == 1 and windsor01 == 0 then
      PhoneMessage(15, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_TWO)
      windsor01 = 1
    end
    if Cutscene01End == 2 and GetTimeLeft() <= 481 and 2 > SeaFortDead and timer01 == 0 then
      timer01 = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        PhoneMessage(32, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        PhoneMessage(38, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
      end
    end
    EndFrame()
    if Cutscene01End == 2 and GetTimeLeft() <= 301 and 2 > SeaFortDead and timer02 == 0 then
      timer02 = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        PhoneMessage(74, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        PhoneMessage(24, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
      end
    end
    EndFrame()
    if Cutscene01End == 2 and GetTimeLeft() <= 181 and 2 > SeaFortDead and timer03 == 0 then
      timer03 = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        PhoneMessage(34, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        PhoneMessage(40, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
      end
    end
    EndFrame()
    if Cutscene01End == 2 and GetTimeLeft() <= 121 and 2 > SeaFortDead and timer04 == 0 then
      timer04 = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        PhoneMessage(35, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        PhoneMessage(41, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
      end
    end
    EndFrame()
    if Cutscene01End == 2 and GetTimeLeft() <= 61 and 2 > SeaFortDead and timer05 == 0 then
      timer05 = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        PhoneMessage(75, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        PhoneMessage(25, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
      end
    end
    EndFrame()
    if Cutscene01End == 2 and GetTimeLeft() <= 31 and 2 > SeaFortDead and timer06 == 0 then
      timer06 = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        PhoneMessage(37, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        PhoneMessage(43, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
      end
    end
    EndFrame()
  until 0 >= GetTimeLeft() or GetInstallationOwner(Strategic_Installation.SolarHQ) == constant.ARMY_SOLAR
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetInvulnerable(flag.TYPE_SOLAR, 1)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetInvulnerable(flag.TYPE_ANGLO, 1)
  end
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  missionend = 1
  StopScoringTimer()
  ShowTimer(0)
  Spawn(Troop.SolarCutSceneTroop)
  Spawn(Troop.AngloCutSceneTroop)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.SolarCutSceneTroop, true, true)
  ForceUnitTransfer(constant.PLAYER_TWO, Troop.AngloCutSceneTroop, true, true)
  Despawn(Troop.SolarChainVet01)
  Despawn(Troop.SolarChainVet02)
  Despawn(Troop.SolarBazooka01)
  Despawn(Troop.SolarBazooka02)
  Despawn(Troop.SolarGrunt01)
  Despawn(Troop.SolarGrunt02)
  Despawn(Troop.SolarGrunt03)
  Despawn(Troop.SolarGrunt04)
  Despawn(Troop.SolarGrunt05)
  Despawn(Ground_Vehicle.SolarLightTank01)
  Despawn(Ground_Vehicle.SolarLightTank02)
  Despawn(Ground_Vehicle.AngloHeavyTank01)
  Despawn(Troop.AngloFlameVet01)
  Despawn(Troop.AngloFlameVet02)
  Despawn(Troop.AngloGrunt01)
  Despawn(Troop.AngloGrunt02)
  Despawn(Troop.AngloGrunt03)
  Despawn(Troop.AngloGrunt04)
  Despawn(Troop.AngloGrunt05)
  WaitFor(1)
  if 0 >= GetTimeLeft() and GetInstallationOwner(Strategic_Installation.SolarHQ) ~= constant.ARMY_SOLAR then
    netvariable.player1.CutsceneEnd = 1
  end
  if GetInstallationOwner(Strategic_Installation.SolarHQ) == constant.ARMY_SOLAR then
    netvariable.player1.CutsceneEnd = 2
  end
end

function Win_Lose_Conditions(owner)
  while true do
    WaitFor(1)
    if MissionOver == 0 then
      if GetInstallationOwner(Strategic_Installation.ILairbase) == constant.ARMY_SOLAR and AllPlayerUnitsDead(constant.PLAYER_ONE) then
        WaitFor(1)
        if AllPlayerUnitsDead(constant.PLAYER_ONE) and CutsceneIsPlaying == 0 then
          MissionOver = 1
          DebugOut("Mission Lost! - All Units Dead")
          DeclareVictory(constant.ARMY_SOLAR)
          FreezePlayer(constant.PLAYER_ONE)
          StopScoringTimer()
          Kill(GameflowScript)
          Kill(COMessagesScript)
          Kill(ObjectivesScript)
          Kill(POWArtilleryScript)
          Kill(POWGruntScript)
          Kill(NavalGunDefenseScript)
          Kill(DeadCamScript)
          Kill(MidCutsceneArtilleryObjective)
          Kill(MidCutsceneBeach)
          repeat
            EndFrame()
          until CutsceneIsPlaying == 0
          ClearMessageQueue(constant.PLAYER_ONE)
          PhoneMessage(60, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
          WaitFor(12)
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          LoseMission(131)
          break
        end
      end
      EndFrame()
      if IsDead(Building.NavalGun01) and IsDead(Building.NavalGun02) then
        MissionOver = 1
        DebugOut("Mission Lost!")
        DeclareVictory(constant.ARMY_SOLAR)
        FreezePlayer(constant.PLAYER_ONE)
        StopScoringTimer()
        Kill(GameflowScript)
        Kill(COMessagesScript)
        Kill(ObjectivesScript)
        Kill(POWArtilleryScript)
        Kill(POWGruntScript)
        Kill(NavalGunDefenseScript)
        Kill(DeadCamScript)
        Kill(MidCutsceneArtilleryObjective)
        Kill(MidCutsceneBeach)
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessage(61, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
        WaitFor(12)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(198)
        break
      end
      EndFrame()
      if NavalGunsThirdWave == 1 and IsDead(Troop.SEAssault03) and IsDead(Troop.SEAssault04) and IsDead(Troop.SEAssault05) and IsDead(Troop.SEAssault06) and IsDead(Troop.SEAssault07) and IsDead(Troop.SEAssault08) and IsDead(Troop.SEMortar01) and IsDead(Troop.SEMortar02) and IsDead(Troop.SEMortar03) and IsDead(Troop.SEMortar04) and IsDead(Troop.SEMortar05) and IsDead(Troop.SEMortar06) and IsDead(Ground_Vehicle.SELightTank03) and IsDead(Ground_Vehicle.SELightTank04) and IsDead(Water_Vehicle.SEBattleship01) and IsDead(Water_Vehicle.SEBattleship02) and IsDead(Water_Vehicle.SEBattleship03) and IsDead(Water_Vehicle.SEBattleship04) and IsDead(Water_Vehicle.SEBattleship05) and IsDead(Water_Vehicle.SEBattleship06) and IsDead(Air_Vehicle.SEGunship01) and IsDead(Air_Vehicle.SEGunship02) and RespawnGunshipsDuringThirdWave == 2 then
        MissionOver = 1
        DebugOut("Mission Won!")
        SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
        if GetPlayerUnit() == Air_Vehicle.ILBomber01 or GetPlayerUnit() == Air_Vehicle.ILFighter01 then
          DisableControls = 1
        else
          FreezePlayer(constant.PLAYER_ONE)
          VictoryDance(constant.ARMY_UNDERWORLD, true)
        end
        Kill(COMessagesScript)
        Kill(ObjectivesScript)
        Kill(POWArtilleryScript)
        Kill(POWGruntScript)
        Kill(NavalGunDefenseScript)
        Kill(DeadCamScript)
        Kill(MidCutsceneArtilleryObjective)
        Kill(MidCutsceneBeach)
        SetObjectiveData(Objective_Marker.NavalGun01Defend, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.NavalGun02Defend, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if IsDead(Building.NavalGun01) or IsDead(Building.NavalGun02) then
          SetObjectiveData(Objective.NavalGunDefend12, constant.OBJECTIVE_DATA_STATE, 1)
        else
          SetObjectiveData(Objective.NavalGunDefend22, constant.OBJECTIVE_DATA_STATE, 1)
        end
        StopScoringTimer()
        ListScoringUnits()
        Kill(GameflowScript)
        EnableWeapon(Air_Vehicle.ILBomber01, 0)
        EnableWeapon(Air_Vehicle.ILFighter01, 0)
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessageWithObjective(59, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
        SepiaFade = true
        WaitFor(8.2)
        PlayEffect(Scripted_Effect.SepiaFadeIn, 3, 0, 0, 0)
        CameraFade(constant.FADE_OUT, constant.NO_WAIT, 1.8)
        WaitFor(1.8)
        PlayEffect(Scripted_Effect.Sepia, 3, 0, 0, 0)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        SepiaFade = true
        OutroCutsceneStart = 1
        break
      end
      EndFrame()
    end
    EndFrame()
    EndFrame()
  end
end

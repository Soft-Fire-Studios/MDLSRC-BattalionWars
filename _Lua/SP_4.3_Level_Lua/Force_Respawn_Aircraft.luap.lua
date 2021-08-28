function Force_Respawn_Aircraft(owner)
  DeadCamScript = owner
  local BomberDeadFirst = 0
  local FighterDeadFirst = 0
  repeat
    EndFrame()
  until IntroCutsceneEnd == 1
  repeat
    EndFrame()
  until GetInstallationOwner(Strategic_Installation.ILairbase) == constant.ARMY_UNDERWORLD
  while true do
    if GetInstallationOwner(Strategic_Installation.ILairbase) == constant.ARMY_UNDERWORLD then
      if IsDead(Air_Vehicle.ILBomber01) and IsDead(Air_Vehicle.ILFighter01) == false and BomberDeadFirst == 0 then
        BomberDeadFirst = 1
        DebugOut("Bomber dead first")
      end
      EndFrame()
      if IsDead(Air_Vehicle.ILFighter01) and IsDead(Air_Vehicle.ILBomber01) == false and FighterDeadFirst == 0 then
        FighterDeadFirst = 1
        DebugOut("Fighter dead first")
      end
      EndFrame()
      if AllPlayerUnitsDead(constant.PLAYER_ONE) then
        SetInvulnerable(flag.TYPE_UNDERWORLD, 1)
        if BomberDeadFirst == 1 then
          DebugOut("Force respawning Bomber")
          repeat
            if IsReadyToRevive(Air_Vehicle.ILBomber01) then
              DebugOut("Ready to revive Bomber")
            end
            EndFrame()
            if IsReadyToRevive(Troop.ILBomber01Pilot) then
              DebugOut("Ready to revive Bomber Pilot")
            end
            EndFrame()
          until IsReadyToRevive(Air_Vehicle.ILBomber01) and IsReadyToRevive(Troop.ILBomber01Pilot)
          ReviveDeadUnit(Air_Vehicle.ILBomber01, GetObjectXPosition(Capture_Point.ILairbase), GetObjectZPosition(Capture_Point.ILairbase), 90, 50)
          DebugOut("Bomber force respawned")
          repeat
            EndFrame()
          until IsDead(Air_Vehicle.ILBomber01) == false
          ReviveDeadUnit(Troop.ILBomber01Pilot, 425, 1250, 0, 10)
          EndFrame()
          PutUnitInVehicle(Troop.ILBomber01Pilot, Air_Vehicle.ILBomber01, 0)
          EndFrame()
          repeat
            EndFrame()
          until AllPlayerUnitsDead(constant.PLAYER_ONE) == false
          BomberDeadFirst = 0
          FighterDeadFirst = 0
          SetInvulnerable(flag.TYPE_UNDERWORLD, 0)
          EndFrame()
        else
          if FighterDeadFirst == 1 then
            DebugOut("Force respawning Fighter")
            repeat
              if IsReadyToRevive(Air_Vehicle.ILFighter01) then
                DebugOut("Ready to revive Fighter")
              end
              EndFrame()
              if IsReadyToRevive(Troop.ILFighter01Pilot) then
                DebugOut("Ready to revive Fighter Pilot")
              end
              EndFrame()
            until IsReadyToRevive(Air_Vehicle.ILFighter01) and IsReadyToRevive(Troop.ILFighter01Pilot)
            ReviveDeadUnit(Air_Vehicle.ILFighter01, GetObjectXPosition(Capture_Point.ILairbase), GetObjectZPosition(Capture_Point.ILairbase), 90, 50)
            DebugOut("Fighter force respawned")
            repeat
              EndFrame()
            until IsDead(Air_Vehicle.ILFighter01) == false
            ReviveDeadUnit(Troop.ILFighter01Pilot, 425, 1250, 0, 10)
            EndFrame()
            PutUnitInVehicle(Troop.ILFighter01Pilot, Air_Vehicle.ILFighter01, 0)
            EndFrame()
            repeat
              EndFrame()
            until AllPlayerUnitsDead(constant.PLAYER_ONE) == false
            FighterDeadFirst = 0
            BomberDeadFirst = 0
            SetInvulnerable(flag.TYPE_UNDERWORLD, 0)
            EndFrame()
          else
          end
        end
        EndFrame()
      end
      EndFrame()
    end
    EndFrame()
    EndFrame()
  end
end

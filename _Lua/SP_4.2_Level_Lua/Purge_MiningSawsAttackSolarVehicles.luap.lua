function Purge_MiningSawsAttackSolarVehicles(owner)
  local Target = 0
  local NumberAttackersOnSaw01 = 0
  local NumberAttackersOnSaw02 = 0
  local NumberAttackersOnSaw03 = 0
  while true do
    if ForcefieldDown >= 1 then
      if not IsDead(Building.Saw01) then
        AttackTarget(Air_Vehicle.SolarGunship01, Building.Saw01, constant.ORDER_NORMAL)
        AttackTarget(Air_Vehicle.SolarGunship02, Building.Saw01, constant.ORDER_NORMAL)
        AttackTarget(Ground_Vehicle.SolarHeavyTank03, Building.Saw01, constant.ORDER_NORMAL)
      end
      if not IsDead(Building.Saw02) then
        AttackTarget(Ground_Vehicle.Stank10, Building.Saw02, constant.ORDER_NORMAL)
        AttackTarget(Ground_Vehicle.SolarHeavyTank02, Building.Saw02, constant.ORDER_NORMAL)
      end
      if not IsDead(Building.Saw03) then
        AttackTarget(Ground_Vehicle.Stank12, Building.Saw03, constant.ORDER_NORMAL)
      end
    else
      EndFrame()
      while missionend == 0 do
        if not IsDead(Air_Vehicle.SolarGunship01) then
          if GetAttackTarget(Air_Vehicle.SolarGunship01) == Building.Saw01 then
            DebugOut("Air_Vehicle.SolarGunship01 is attacking: SAW 01")
            NumberAttackersOnSaw01 = NumberAttackersOnSaw01 + 1
          elseif GetAttackTarget(Air_Vehicle.SolarGunship01) == Building.Saw02 then
            DebugOut("Air_Vehicle.SolarGunship01 is attacking: SAW 02")
            NumberAttackersOnSaw02 = NumberAttackersOnSaw02 + 1
          elseif GetAttackTarget(Air_Vehicle.SolarGunship01) == Building.Saw03 then
            DebugOut("Air_Vehicle.SolarGunship01 is attacking: SAW 03")
            NumberAttackersOnSaw03 = NumberAttackersOnSaw03 + 1
          else
            DebugOut("Air_Vehicle.SolarGunship01 is attacking: ", GetAttackTarget(Air_Vehicle.SolarGunship01))
          end
        else
        end
        if not IsDead(Air_Vehicle.SolarGunship02) then
          if GetAttackTarget(Air_Vehicle.SolarGunship02) == Building.Saw01 then
            DebugOut("Air_Vehicle.SolarGunship02is attacking: SAW 01")
            NumberAttackersOnSaw01 = NumberAttackersOnSaw01 + 1
          elseif GetAttackTarget(Air_Vehicle.SolarGunship02) == Building.Saw02 then
            DebugOut("Air_Vehicle.SolarGunship02is attacking: SAW 02")
            NumberAttackersOnSaw02 = NumberAttackersOnSaw02 + 1
          elseif GetAttackTarget(Air_Vehicle.SolarGunship02) == Building.Saw03 then
            DebugOut("Air_Vehicle.SolarGunship02is attacking: SAW 03")
            NumberAttackersOnSaw03 = NumberAttackersOnSaw03 + 1
          else
            DebugOut("Air_Vehicle.SolarGunship02is attacking: ", GetAttackTarget(Air_Vehicle.SolarGunship02))
          end
        else
        end
        if not IsDead(Ground_Vehicle.SolarHeavyTank03) then
          if GetAttackTarget(Ground_Vehicle.SolarHeavyTank03) == Building.Saw01 then
            DebugOut("Ground_Vehicle.SolarHeavyTank03 is attacking: SAW 01")
            NumberAttackersOnSaw01 = NumberAttackersOnSaw01 + 1
          elseif GetAttackTarget(Ground_Vehicle.SolarHeavyTank03) == Building.Saw02 then
            DebugOut("Ground_Vehicle.SolarHeavyTank03 is attacking: SAW 02")
            NumberAttackersOnSaw02 = NumberAttackersOnSaw02 + 1
          elseif GetAttackTarget(Ground_Vehicle.SolarHeavyTank03) == Building.Saw03 then
            DebugOut("Ground_Vehicle.SolarHeavyTank03 is attacking: SAW 03")
            NumberAttackersOnSaw03 = NumberAttackersOnSaw03 + 1
          else
            DebugOut("Ground_Vehicle.SolarHeavyTank03 is attacking: ", GetAttackTarget(Ground_Vehicle.SolarHeavyTank03))
          end
        else
        end
        if not IsDead(Ground_Vehicle.Stank10) then
          if GetAttackTarget(Ground_Vehicle.Stank10) == Building.Saw01 then
            DebugOut("Ground_Vehicle.Stank10 is attacking: SAW 01")
            NumberAttackersOnSaw01 = NumberAttackersOnSaw01 + 1
          elseif GetAttackTarget(Ground_Vehicle.Stank10) == Building.Saw02 then
            DebugOut("Ground_Vehicle.Stank10 is attacking: SAW 02")
            NumberAttackersOnSaw02 = NumberAttackersOnSaw02 + 1
          elseif GetAttackTarget(Ground_Vehicle.Stank10) == Building.Saw03 then
            DebugOut("Ground_Vehicle.Stank10 is attacking: SAW 03")
            NumberAttackersOnSaw03 = NumberAttackersOnSaw03 + 1
          else
            DebugOut("Ground_Vehicle.Stank10 is attacking: ", GetAttackTarget(Ground_Vehicle.Stank10))
          end
        else
        end
        if not IsDead(Ground_Vehicle.SolarHeavyTank02) then
          if GetAttackTarget(Ground_Vehicle.SolarHeavyTank02) == Building.Saw01 then
            DebugOut("Ground_Vehicle.SolarHeavyTank02 is attacking: SAW 01")
            NumberAttackersOnSaw01 = NumberAttackersOnSaw01 + 1
          elseif GetAttackTarget(Ground_Vehicle.SolarHeavyTank02) == Building.Saw02 then
            DebugOut("Ground_Vehicle.SolarHeavyTank02 is attacking: SAW 02")
            NumberAttackersOnSaw02 = NumberAttackersOnSaw02 + 1
          elseif GetAttackTarget(Ground_Vehicle.SolarHeavyTank02) == Building.Saw03 then
            DebugOut("Ground_Vehicle.SolarHeavyTank02 is attacking: SAW 03")
            NumberAttackersOnSaw03 = NumberAttackersOnSaw03 + 1
          else
            DebugOut("Ground_Vehicle.SolarHeavyTank02 is attacking: ", GetAttackTarget(Ground_Vehicle.SolarHeavyTank02))
          end
        else
        end
        if not IsDead(Ground_Vehicle.Stank12) then
          if GetAttackTarget(Ground_Vehicle.Stank12) == Building.Saw01 then
            DebugOut("Ground_Vehicle.Stank12 is attacking: SAW 01")
            NumberAttackersOnSaw01 = NumberAttackersOnSaw01 + 1
          elseif GetAttackTarget(Ground_Vehicle.Stank12) == Building.Saw02 then
            DebugOut("Ground_Vehicle.Stank12 is attacking: SAW 02")
            NumberAttackersOnSaw02 = NumberAttackersOnSaw02 + 1
          elseif GetAttackTarget(Ground_Vehicle.Stank12) == Building.Saw03 then
            DebugOut("Ground_Vehicle.Stank12 is attacking: SAW 03")
            NumberAttackersOnSaw03 = NumberAttackersOnSaw03 + 1
          else
            DebugOut("Ground_Vehicle.Stank12 is attacking: ", GetAttackTarget(Ground_Vehicle.Stank12))
          end
        else
        end
        DebugOut("Number of attackers on SAW 01 = ", NumberAttackersOnSaw01)
        DebugOut("Number of attackers on SAW 02 = ", NumberAttackersOnSaw02)
        DebugOut("Number of attackers on SAW 03 = ", NumberAttackersOnSaw03)
        if not IsDead(Air_Vehicle.SolarGunship01) then
          if NumItemsInArea(GetObjectXPosition(Air_Vehicle.SolarGunship01), GetObjectZPosition(Air_Vehicle.SolarGunship01), 60, 1 > flag.TYPE_UNDERWORLD) then
            if NumberAttackersOnSaw03 == 0 then
              if not IsDead(Building.Saw03) then
                AttackTarget(Air_Vehicle.SolarGunship01, Building.Saw03, constant.ORDER_NORMAL)
              end
            elseif NumberAttackersOnSaw02 == 0 then
              if not IsDead(Building.Saw02) then
                AttackTarget(Air_Vehicle.SolarGunship01, Building.Saw02, constant.ORDER_NORMAL)
              end
            elseif NumberAttackersOnSaw01 == 0 then
              if not IsDead(Building.Saw01) then
                AttackTarget(Air_Vehicle.SolarGunship01, Building.Saw01, constant.ORDER_NORMAL)
              end
            else
              StopAndGuard(Air_Vehicle.SolarGunship01)
            end
          else
            StopAndGuard(Air_Vehicle.SolarGunship01)
          end
        end
        if not IsDead(Air_Vehicle.SolarGunship02) then
          if NumItemsInArea(GetObjectXPosition(Air_Vehicle.SolarGunship02), GetObjectZPosition(Air_Vehicle.SolarGunship02), 60, 1 > flag.TYPE_UNDERWORLD) then
            if NumberAttackersOnSaw03 == 0 then
              if not IsDead(Building.Saw03) then
                AttackTarget(Air_Vehicle.SolarGunship02, Building.Saw03, constant.ORDER_NORMAL)
              end
            elseif NumberAttackersOnSaw02 == 0 then
              if not IsDead(Building.Saw02) then
                AttackTarget(Air_Vehicle.SolarGunship02, Building.Saw02, constant.ORDER_NORMAL)
              end
            elseif NumberAttackersOnSaw01 == 0 then
              if not IsDead(Building.Saw01) then
                AttackTarget(Air_Vehicle.SolarGunship02, Building.Saw01, constant.ORDER_NORMAL)
              end
            else
              StopAndGuard(Air_Vehicle.SolarGunship02)
            end
          else
            StopAndGuard(Air_Vehicle.SolarGunship02)
          end
        end
        if not IsDead(Ground_Vehicle.SolarHeavyTank03) then
          if NumItemsInArea(GetObjectXPosition(Ground_Vehicle.SolarHeavyTank03), GetObjectZPosition(Ground_Vehicle.SolarHeavyTank03), 60, 1 > flag.TYPE_UNDERWORLD) then
            if NumberAttackersOnSaw03 == 0 then
              if not IsDead(Building.Saw03) then
                AttackTarget(Ground_Vehicle.SolarHeavyTank03, Building.Saw03, constant.ORDER_NORMAL)
              end
            elseif NumberAttackersOnSaw02 == 0 then
              if not IsDead(Building.Saw02) then
                AttackTarget(Ground_Vehicle.SolarHeavyTank03, Building.Saw02, constant.ORDER_NORMAL)
              end
            elseif NumberAttackersOnSaw01 == 0 then
              if not IsDead(Building.Saw01) then
                AttackTarget(Ground_Vehicle.SolarHeavyTank03, Building.Saw01, constant.ORDER_NORMAL)
              end
            else
              StopAndGuard(Ground_Vehicle.SolarHeavyTank03)
            end
          else
            StopAndGuard(Ground_Vehicle.SolarHeavyTank03)
          end
        end
        if not IsDead(Ground_Vehicle.Stank10) then
          if NumItemsInArea(GetObjectXPosition(Ground_Vehicle.Stank10), GetObjectZPosition(Ground_Vehicle.Stank10), 60, 1 > flag.TYPE_UNDERWORLD) then
            if NumberAttackersOnSaw03 == 0 then
              if not IsDead(Building.Saw03) then
                AttackTarget(Ground_Vehicle.Stank10, Building.Saw03, constant.ORDER_NORMAL)
              end
            elseif NumberAttackersOnSaw02 == 0 then
              if not IsDead(Building.Saw02) then
                AttackTarget(Ground_Vehicle.Stank10, Building.Saw02, constant.ORDER_NORMAL)
              end
            elseif NumberAttackersOnSaw01 == 0 then
              if not IsDead(Building.Saw01) then
                AttackTarget(Ground_Vehicle.Stank10, Building.Saw01, constant.ORDER_NORMAL)
              end
            else
              StopAndGuard(Ground_Vehicle.Stank10)
            end
          else
            StopAndGuard(Ground_Vehicle.Stank10)
          end
        end
        if not IsDead(Ground_Vehicle.SolarHeavyTank02) then
          if NumItemsInArea(GetObjectXPosition(Ground_Vehicle.SolarHeavyTank02), GetObjectZPosition(Ground_Vehicle.SolarHeavyTank02), 60, 1 > flag.TYPE_UNDERWORLD) then
            if NumberAttackersOnSaw03 == 0 then
              if not IsDead(Building.Saw03) then
                AttackTarget(Ground_Vehicle.SolarHeavyTank02, Building.Saw03, constant.ORDER_NORMAL)
              end
            elseif NumberAttackersOnSaw02 == 0 then
              if not IsDead(Building.Saw02) then
                AttackTarget(Ground_Vehicle.SolarHeavyTank02, Building.Saw02, constant.ORDER_NORMAL)
              end
            elseif NumberAttackersOnSaw01 == 0 then
              if not IsDead(Building.Saw01) then
                AttackTarget(Ground_Vehicle.SolarHeavyTank02, Building.Saw01, constant.ORDER_NORMAL)
              end
            else
              StopAndGuard(Ground_Vehicle.SolarHeavyTank02)
            end
          else
            StopAndGuard(Ground_Vehicle.SolarHeavyTank02)
          end
        end
        if not IsDead(Ground_Vehicle.Stank12) then
          if NumItemsInArea(GetObjectXPosition(Ground_Vehicle.Stank12), GetObjectZPosition(Ground_Vehicle.Stank12), 60, 1 > flag.TYPE_UNDERWORLD) then
            if NumberAttackersOnSaw03 == 0 then
              if not IsDead(Building.Saw03) then
                AttackTarget(Ground_Vehicle.Stank12, Building.Saw03, constant.ORDER_NORMAL)
              end
            elseif NumberAttackersOnSaw02 == 0 then
              if not IsDead(Building.Saw02) then
                AttackTarget(Ground_Vehicle.Stank12, Building.Saw02, constant.ORDER_NORMAL)
              end
            elseif NumberAttackersOnSaw01 == 0 then
              if not IsDead(Building.Saw01) then
                AttackTarget(Ground_Vehicle.Stank12, Building.Saw01, constant.ORDER_NORMAL)
              end
            else
              StopAndGuard(Ground_Vehicle.Stank12)
            end
          else
            StopAndGuard(Ground_Vehicle.Stank12)
          end
        end
        if not IsDead(Building.Saw01) then
          AttackTarget(Air_Vehicle.SolarGunship01, Building.Saw01, constant.ORDER_NORMAL)
          AttackTarget(Air_Vehicle.SolarGunship02, Building.Saw01, constant.ORDER_NORMAL)
          AttackTarget(Ground_Vehicle.SolarHeavyTank03, Building.Saw01, constant.ORDER_NORMAL)
        end
        if not IsDead(Building.Saw02) then
          AttackTarget(Ground_Vehicle.Stank10, Building.Saw02, constant.ORDER_NORMAL)
          AttackTarget(Ground_Vehicle.SolarHeavyTank02, Building.Saw02, constant.ORDER_NORMAL)
        end
        if not IsDead(Building.Saw03) then
          AttackTarget(Ground_Vehicle.Stank12, Building.Saw03, constant.ORDER_NORMAL)
        end
        WaitFor(1)
        NumberAttackersOnSaw01 = 0
        NumberAttackersOnSaw02 = 0
        NumberAttackersOnSaw03 = 0
        DebugOut(" ")
        DebugOut("==========================================================")
        DebugOut(" ")
        EndFrame()
      end
    end
  end
end

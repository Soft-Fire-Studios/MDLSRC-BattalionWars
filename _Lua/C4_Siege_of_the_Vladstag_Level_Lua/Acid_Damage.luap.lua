function Acid_Damage(owner)
  local loop = 0
  repeat
    WaitFor(0.2)
    if GetMovementState(Troop.WFChainGun1) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFChainGun1)
    end
    if GetMovementState(Troop.WFChainGun2) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFChainGun2)
    end
    if GetMovementState(Troop.WFChainGun3) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFChainGun3)
    end
    if GetMovementState(Troop.WFChainGun4) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFChainGun4)
    end
    EndFrame()
    WaitFor(0.2)
    if GetMovementState(Troop.WFChainGun5) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFChainGun5)
    end
    if GetMovementState(Troop.WFChainGun6) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFChainGun6)
    end
    if GetMovementState(Troop.WFChainGun7) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFChainGun7)
    end
    if GetMovementState(Troop.WFgrunt0001) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFgrunt0001)
    end
    WaitFor(0.2)
    EndFrame()
    if GetMovementState(Troop.WFgrunt0012) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFgrunt0012)
    end
    if GetMovementState(Troop.WFgrunt0013) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFgrunt0013)
    end
    if GetMovementState(Troop.WFgrunt0014) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFgrunt0014)
    end
    if GetMovementState(Troop.WFgrunt0015) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFgrunt0015)
    end
    if GetMovementState(Troop.WFgrunt0020) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFgrunt0020)
    end
    if GetMovementState(Troop.WFMissile1) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMissile1)
    end
    WaitFor(0.2)
    EndFrame()
    if GetMovementState(Troop.WFMissile2) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMissile2)
    end
    if GetMovementState(Troop.WFMissile3) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMissile3)
    end
    if GetMovementState(Troop.WFMissile4) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMissile4)
    end
    if GetMovementState(Troop.WFMissile5) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMissile5)
    end
    if GetMovementState(Troop.WFMissile6) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMissile6)
    end
    if GetMovementState(Troop.WFMissile7) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMissile7)
    end
    WaitFor(0.2)
    EndFrame()
    if GetMovementState(Troop.WFMissile8) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMissile8)
    end
    if GetMovementState(Troop.WFMortar1) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMortar1)
    end
    if GetMovementState(Troop.WFMortar2) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMortar2)
    end
    if GetMovementState(Troop.WFMortar3) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMortar3)
    end
    if GetMovementState(Troop.WFMortar4) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMortar4)
    end
    if GetMovementState(Troop.WFMortar5) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMortar5)
    end
    if GetMovementState(Troop.WFMortar6) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMortar6)
    end
    if GetMovementState(Troop.WFMortar7) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMortar7)
    end
    if GetMovementState(Troop.WFMortar8) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Troop.WFMortar8)
    end
    if GetMovementState(Ground_Vehicle.WFlightTank0001) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Ground_Vehicle.WFlightTank0001)
    end
    if GetMovementState(Ground_Vehicle.WFlightTank0002) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Ground_Vehicle.WFlightTank0002)
    end
    if GetMovementState(Ground_Vehicle.WFlightTank0003) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Ground_Vehicle.WFlightTank0003)
    end
    if GetMovementState(Ground_Vehicle.WFlightTank0004) == constant.MOVEMENT_STATE_SWIMMING then
      Kill(Ground_Vehicle.WFlightTank0004)
    end
    EndFrame()
  until loop == 1
end

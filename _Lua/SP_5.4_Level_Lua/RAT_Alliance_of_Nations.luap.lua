function RAT_Alliance_of_Nations(owner)
  local AllianceHasBeenSet = 0
  local AllianceHUDOn = 0
  SetHUDMultiplePlayerArmies(constant.PLAYER_ONE, false)
  repeat
    EndFrame()
  until cutscene == 1
  while true do
    AllianceHasBeenSet = 0
    if IsActive(Ground_Vehicle.WFtank01) and not IsDead(Ground_Vehicle.WFtank01) then
      AllianceHasBeenSet = 1
    end
    if IsActive(Ground_Vehicle.WFtank03) and not IsDead(Ground_Vehicle.WFtank03) then
      AllianceHasBeenSet = 1
    end
    if IsActive(Ground_Vehicle.WFtank07) and not IsDead(Ground_Vehicle.WFtank07) then
      AllianceHasBeenSet = 1
    end
    if IsActive(Ground_Vehicle.WFtank08) and not IsDead(Ground_Vehicle.WFtank08) then
      AllianceHasBeenSet = 1
    end
    if IsActive(Ground_Vehicle.Saavehicle01) and not IsDead(Ground_Vehicle.Saavehicle01) then
      AllianceHasBeenSet = 1
    end
    if IsActive(Ground_Vehicle.Saavehicle02) and not IsDead(Ground_Vehicle.Saavehicle02) then
      AllianceHasBeenSet = 1
    end
    if IsActive(Air_Vehicle.Tfighter01) and not IsDead(Air_Vehicle.Tfighter01) then
      AllianceHasBeenSet = 1
    end
    if IsActive(Air_Vehicle.Tfighter02) and not IsDead(Air_Vehicle.Tfighter02) then
      AllianceHasBeenSet = 1
    end
    if IsActive(Air_Vehicle.Tfighter03) and not IsDead(Air_Vehicle.Tfighter03) then
      AllianceHasBeenSet = 1
    end
    if AllianceHasBeenSet == 1 and AllianceHUDOn == 0 then
      SetHUDMultiplePlayerArmies(constant.PLAYER_ONE, true)
      AllianceHUDOn = 1
    end
    if AllianceHasBeenSet == 0 and AllianceHUDOn == 1 then
      SetHUDMultiplePlayerArmies(constant.PLAYER_ONE, false)
      AllianceHUDOn = 0
    end
    WaitFor(1)
    EndFrame()
  end
end

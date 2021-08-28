function JW_Pause_Tutorial(owner)
  repeat
    if transports == 1 then
      return
    end
    EndFrame()
  until GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) > -885 or IsDead(Ground_Vehicle.AngloArtillery02) and IsDead(Building.AngloIslandRPG04) and IsDead(Building.AngloIslandRPG05) and IsDead(Building.AngloIslandRPG06)
  DebugOut("Begin Pause Tutorial")
  if transports == 1 or IsDead(Water_Vehicle.SEFrigate01) or IsDead(Water_Vehicle.SEFrigate02) then
    return
  else
    WaitFor(1)
    ptstarted = 1
    PhoneMessage(137, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
    repeat
      EndFrame()
    until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
    if IsDead(Water_Vehicle.SEFrigate01) or IsDead(Water_Vehicle.SEFrigate02) then
      return
    else
      if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
        PauseTutorialShow()
        ClearMessageQueue(constant.PLAYER_ONE)
        SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_STACK, true, Water_Vehicle.SEFrigate01)
        PhoneMessage(65, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, true)
        SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_DPAD, constant.HUD_ITEM_FLASH, 99999)
        WaitForPTText(2)
        repeat
          EndFrame()
        until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
        SetupPauseTutorialStack(false, constant.HUD_FUNC_INDICATOR_STACK, true, Water_Vehicle.SEFrigate01)
        ClearMessageQueue(constant.PLAYER_ONE)
        PauseTutorialExit()
      end
      if IsDead(Water_Vehicle.SEFrigate01) or IsDead(Water_Vehicle.SEFrigate02) or IsDead(Air_Vehicle.AngloBomber03) or IsDead(Air_Vehicle.AngloBomber05) then
        EndFrame()
      else
        PhoneMessage(68, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
      end
    end
  end
  if ptstarted == 1 then
    ptstarted = 0
  end
  repeat
    EndFrame()
  until GetHealthPercent(Air_Vehicle.AngloBomber03) < 100 or GetHealthPercent(Air_Vehicle.AngloBomber05) < 100
  AttackTarget(Air_Vehicle.AngloBomber03, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_FORCED)
  AttackTarget(Air_Vehicle.AngloBomber05, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_FORCED)
end

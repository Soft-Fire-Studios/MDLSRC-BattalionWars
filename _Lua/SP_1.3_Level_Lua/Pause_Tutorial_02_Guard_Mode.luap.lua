function Pause_Tutorial_02_Guard_Mode(owner)
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    SetEnableGuardMode(constant.PLAYER_ONE, false)
  end
  repeat
    EndFrame()
  until PauseTutorial02 == 1
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    ClearMessageQueue(constant.PLAYER_ONE)
    UnfreezePlayer(constant.PLAYER_ONE)
    SetFunctionIndicatorState(false)
    PauseTutorialShow()
    ClearMessageQueue(constant.PLAYER_ONE)
    PhoneMessage(72, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, true)
    SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_GUARD, false, Troop.SE_Palace_Grunt_1)
    SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, true)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_FLASH, 99999)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 99999)
    WaitForPTText(2)
    repeat
      EndFrame()
    until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
    SetupPauseTutorialStack(false, constant.HUD_FUNC_INDICATOR_GUARD, false, Troop.SE_Palace_Grunt_1)
    SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, false)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_OFF)
    ClearMessageQueue(constant.PLAYER_ONE)
    PauseTutorialExit()
    SetFunctionIndicatorState(true)
    SetEnableGuardMode(constant.PLAYER_ONE, true)
  end
  PauseTutorial02 = 2
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    EndFrame()
    while true do
      if missionend == 1 then
        return
      end
      if GetPrimaryActionState(Troop.SE_Grunt_1) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_Grunt_1) == false then
        break
      end
      if GetPrimaryActionState(Troop.SE_Grunt_2) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_Grunt_2) == false then
        break
      end
      if GetPrimaryActionState(Troop.SE_Grunt_3) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_Grunt_3) == false then
        break
      end
      if GetPrimaryActionState(Troop.SE_Grunt_4) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_Grunt_4) == false then
        break
      end
      if GetPrimaryActionState(Troop.SE_Grunt_5) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_Grunt_5) == false then
        break
      end
      if GetPrimaryActionState(Troop.SE_Grunt_6) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_Grunt_6) == false then
        break
      end
      if GetPrimaryActionState(Troop.SE_Grunt_7) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_Grunt_7) == false then
        break
      end
      if GetPrimaryActionState(Troop.SE_Grunt_11) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_Grunt_11) == false then
        break
      end
      if GetPrimaryActionState(Troop.SE_Grunt_12) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_Grunt_12) == false then
        break
      end
      if GetPrimaryActionState(Troop.SE_Baz_4) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_Baz_4) == false then
        break
      end
      if GetPrimaryActionState(Troop.SE_Baz_5) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_Baz_5) == false then
        break
      end
      EndFrame()
      if GetPrimaryActionState(Troop.SE_Palace_Grunt_1) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_Palace_Grunt_1) == false then
        break
      end
      if GetPrimaryActionState(Troop.SE_Palace_Grunt_2) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_Palace_Grunt_2) == false then
        break
      end
      if GetPrimaryActionState(Troop.SE_Palace_Grunt_3) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_Palace_Grunt_3) == false then
        break
      end
      EndFrame()
      if GetPrimaryActionState(Troop.SE_POW1) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_POW1) == false then
        break
      end
      if GetPrimaryActionState(Troop.SE_POW2) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_POW2) == false then
        break
      end
      if GetPrimaryActionState(Troop.SE_POW3) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_POW3) == false then
        break
      end
      if GetPrimaryActionState(Troop.SE_POW4) == constant.ACTION_STATE_GUARD and IsDead(Troop.SE_POW4) == false then
        break
      end
      EndFrame()
      if GetPrimaryActionState(Ground_Vehicle.SE_Beach_Tank_1) == constant.ACTION_STATE_GUARD and IsDead(Ground_Vehicle.SE_Beach_Tank_1) == false then
        break
      end
      if GetPrimaryActionState(Ground_Vehicle.SE_Beach_Tank_2) == constant.ACTION_STATE_GUARD and IsDead(Ground_Vehicle.SE_Beach_Tank_2) == false then
        break
      end
      EndFrame()
    end
    DebugOut("Players units in Guard, play extra message")
    PhoneMessage(77, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
  end
end

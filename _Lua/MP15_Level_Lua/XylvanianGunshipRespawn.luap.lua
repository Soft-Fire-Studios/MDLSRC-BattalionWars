function XylvanianGunshipRespawn(owner)
  local gunshiprespawn = 0
  local gunshiprespawn01 = 0
  local gunshipmessage = 1
  local gunshipcounter = 1
  killgunship01 = owner
  repeat
    EndFrame()
  until IsDead(Air_Vehicle.XylvanianGunship01)
  DebugOut("1")
  while missionend == 0 do
    if IsNetworkPlayer(constant.PLAYER_ONE) and IsDead(Ground_Vehicle.TundranBattlestation01) and netvariable.player1.tbsdead == false then
      netvariable.player1.tbsdead = true
      DebugOut("2")
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and gunshiprespawn01 == 0 and IsReadyToRevive(Air_Vehicle.XylvanianGunship01) and IsReadyToRevive(Air_Vehicle.XylvanianGunship02) then
      gunshiprespawn = GetTime()
      gunshiprespawn01 = 1
      gunshipcounter = gunshipcounter + 1
      DebugOut("3")
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) and GetTime() > gunshiprespawn + 30 and gunshiprespawn01 == 1 then
      if mod(gunshipcounter, 2) == 0 then
        ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XylvanianGunship01, -119, -323, 70, 10)
        if IsDead(Ground_Vehicle.TundranBattlestation01) == false then
          GoToArea(Air_Vehicle.XylvanianGunship01, GetObjectXPosition(Ground_Vehicle.TundranBattlestation01), GetObjectZPosition(Ground_Vehicle.TundranBattlestation01), 10, 0, constant.ORDER_NORMAL)
          DebugOut("4")
        else
          AttackTarget(Air_Vehicle.XylvanianGunship01, GetPlayerUnit(constant.PLAYER_TWO), constant.ORDER_NORMAL)
          DebugOut("5")
        end
      else
        ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XylvanianGunship01, -119, -323, 70, 10)
        ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XylvanianGunship02, -130, -340, 70, 10)
        if IsDead(Ground_Vehicle.TundranBattlestation01) == false then
          GoToArea(Air_Vehicle.XylvanianGunship01, GetObjectXPosition(Ground_Vehicle.TundranBattlestation01), GetObjectZPosition(Ground_Vehicle.TundranBattlestation01), 10, 0, constant.ORDER_NORMAL)
          GoToArea(Air_Vehicle.XylvanianGunship02, GetObjectXPosition(Ground_Vehicle.TundranBattlestation01), GetObjectZPosition(Ground_Vehicle.TundranBattlestation01), 10, 0, constant.ORDER_NORMAL)
          DebugOut("6")
        else
          AttackTarget(Air_Vehicle.XylvanianGunship01, GetPlayerUnit(constant.PLAYER_TWO), constant.ORDER_NORMAL)
          AttackTarget(Air_Vehicle.XylvanianGunship02, GetPlayerUnit(constant.PLAYER_TWO), constant.ORDER_NORMAL)
          DebugOut("7")
        end
      end
      gunshiprespawn01 = 0
    end
    if IsDead(Air_Vehicle.XylvanianGunship01) == false and IsDead(Air_Vehicle.XylvanianGunship02) == false and gunshipmessage == 0 then
      if netvariable.player1.tbsdead == false then
        PhoneMessage(59, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad)
      else
        PhoneMessage(62, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad)
      end
      repeat
        EndFrame()
      until IsDead(Air_Vehicle.XylvanianGunship01) and IsDead(Air_Vehicle.XylvanianGunship02)
      gunshipmessage = 1
      DebugOut("8")
    end
    if IsDead(Air_Vehicle.XylvanianGunship01) == false and gunshipmessage == 1 then
      if netvariable.player1.tbsdead == false then
        PhoneMessage(61, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad)
        DebugOut("7")
      else
        PhoneMessage(60, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad)
        DebugOut("9")
      end
      repeat
        EndFrame()
      until IsDead(Air_Vehicle.XylvanianGunship01)
      DebugOut("9")
      gunshipmessage = 0
    end
    EndFrame()
    if aatowers == 2 then
      DebugOut("*XylvanianGunshipRespawn01* - The PowerGenerator has been destroyed. Gunships have been terminated*")
      break
    end
    EndFrame()
  end
end

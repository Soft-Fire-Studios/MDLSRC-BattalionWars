function Reinforcements(owner)
  local loop = 0
  local baz = 0
  local entrance = 0
  local land = 0
  Despawn(Air_Vehicle.ttrans1)
  Despawn(Air_Vehicle.ttrans2)
  WaitFor(5)
  refscript = owner
  while loop == 0 do
    if baz == 0 and 0 < NumItemsInArea(Map_Zone.base, flag.TYPE_WFRONTIER) then
      DebugOut("player in base")
      GoToArea(Unit_Group.baz, 560, 505, 10)
      GoToArea(Unit_Group.base, 560, 505, 10)
      ClearMessageQueue()
      PhoneMessage(48, constant.ID_NONE, 2, 5, SpriteID.CO_T_Nelly_Sad)
      PhoneMessage(42, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
      baz = 1
      entrance = 1
    end
    if entrance == 0 and 0 < NumItemsInArea(Map_Zone.entrance, flag.TYPE_WFRONTIER) then
      DebugOut("player at entrance")
      AddToGroup(Unit_Group.baz, Ground_Vehicle.xlt2)
      GoToArea(Ground_Vehicle.xlt2, 540, 390, 10)
      entrance = 1
    end
    if baz == 0 and GetGroupHealth(Unit_Group.baz) == 0 then
      DebugOut("group baz dead")
      baz = 1
    end
    if IsDead(Ground_Vehicle.xht1) and IsDead(Ground_Vehicle.xlt2) then
      DebugOut("Tundran tanks in base destroyed")
      ClearMessageQueue()
      PhoneMessage(37, constant.ID_NONE, 2, 5, SpriteID.CO_T_Nelly_Happy)
      PhoneMessage(38, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
      PhoneMessage(49, constant.ID_NONE, 2, 5, SpriteID.CO_T_Nelly_Happy)
      WaitFor(6)
      Spawn(Air_Vehicle.ttrans2)
      LandAirUnit(Air_Vehicle.ttrans2, 500, 445, constant.ORDER_FORCED)
      AddToGroup(Unit_Group.base, GetUnitInSeat(Air_Vehicle.ttrans2, 1))
      AddToGroup(Unit_Group.base, GetUnitInSeat(Air_Vehicle.ttrans2, 2))
      AddToGroup(Unit_Group.base, GetUnitInSeat(Air_Vehicle.ttrans2, 3))
      AddToGroup(Unit_Group.base, Ground_Vehicle.Entity0000)
      WaitFor(6)
      while land == 0 do
        if GetMovementState(Air_Vehicle.ttrans2) == constant.MOVEMENT_STATE_ON_GROUND then
          WaitFor(1)
          ExitVehicle(constant.ID_NONE, Air_Vehicle.ttrans2)
          land = 1
        end
        EndFrame()
      end
      WaitFor(1)
      GoToArea(Unit_Group.base, 545, 510, 10)
      GoToArea(Air_Vehicle.ttrans2, 1215, 390, 10)
      WaitFor(15)
      Kill(Air_Vehicle.ttrans2)
      loop = 1
    else
    end
    EndFrame()
  end
  loop = 0
  DebugOut("checking for no tundrans by the flag")
  while loop == 0 do
    if NumItemsInArea(Map_Zone.base, flag.TYPE_TUNDRAN) < 4 then
      DebugOut("tundrans almost dead")
      loop = 1
    end
    if levelend == 1 then
      DebutOut("level ends")
      loop = 2
    end
    EndFrame()
  end
  land = 0
  if loop == 1 then
    ClearMessageQueue()
    DebugOut("capture flag tutorial")
    PhoneMessage(50, constant.ID_NONE, 2, 5, SpriteID.CO_T_Nelly_Sad)
    PhoneMessage(43, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
    while 0 < NumPassengersInUnit(Capture_Point.base) do
      WaitFor(240)
    end
    PhoneMessage(44, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
    while 0 < NumPassengersInUnit(Capture_Point.base) do
      WaitFor(240)
    end
    PhoneMessage(45, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
    WaitFor(17)
    while levelend == 1 do
      EndFrame()
    end
    while 0 < NumPassengersInUnit(Capture_Point.base) do
      WaitFor(30)
    end
    SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON, 540, 380, 0.6)
    SetHudState(constant.HUD_CONTROLIMAGE_Y, constant.HUD_ITEM_FLASH, 6, 540, 380, 0.6)
    while 0 < NumPassengersInUnit(Capture_Point.base) do
      SetHudState(constant.HUD_CONTROLIMAGE_Y, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
      WaitFor(60)
    end
    WaitFor(2)
    while levelend == 1 do
      SetHudState(constant.HUD_CONTROLIMAGE_Y, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
      WaitFor(60)
    end
    WaitFor(3)
    while levelend == 1 do
      SetHudState(constant.HUD_CONTROLIMAGE_Y, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
      WaitFor(60)
    end
    WaitFor(3)
    while levelend == 1 do
      SetHudState(constant.HUD_CONTROLIMAGE_Y, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
      WaitFor(60)
    end
    SetHudState(constant.HUD_CONTROLIMAGE_Y, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
    SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_FLASH, 6, 540, 380, 0.6)
    WaitFor(2)
    while levelend == 1 do
      SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
      WaitFor(60)
    end
    WaitFor(2)
    while levelend == 1 do
      SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
      WaitFor(60)
    end
    WaitFor(3)
    while levelend == 1 do
      SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
      WaitFor(60)
    end
    SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
    SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  end
  Spawn(Air_Vehicle.ttrans1)
  LandAirUnit(Air_Vehicle.ttrans1, 500, 445, constant.ORDER_FORCED)
  AddToGroup(Unit_Group.base, GetUnitInSeat(Air_Vehicle.ttrans1, 1))
  AddToGroup(Unit_Group.base, GetUnitInSeat(Air_Vehicle.ttrans1, 2))
  AddToGroup(Unit_Group.base, GetUnitInSeat(Air_Vehicle.ttrans1, 3))
  AddToGroup(Unit_Group.base, GetUnitInSeat(Air_Vehicle.ttrans1, 4))
  AddToGroup(Unit_Group.base, GetUnitInSeat(Air_Vehicle.ttrans1, 5))
  while land == 0 do
    if GetMovementState(Air_Vehicle.ttrans1) == constant.MOVEMENT_STATE_ON_GROUND then
      WaitFor(1)
      ExitVehicle(constant.ID_NONE, Air_Vehicle.ttrans1)
      tcopter = 1
      land = 1
    end
    EndFrame()
  end
  WaitFor(1)
  GoToArea(Unit_Group.base, 545, 510, 10)
  GoToArea(Air_Vehicle.ttrans1, 1215, 390, 10)
  WaitFor(25)
  Kill(Air_Vehicle.ttrans1)
  loop = 0
  local timer = 0
  while loop == 0 do
    if timer == 25 then
      PhoneMessage(44, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
      while 0 < NumPassengersInUnit(Capture_Point.base) do
        WaitFor(180)
      end
      PhoneMessage(45, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Austin_Happy)
      while levelend == 1 do
        EndFrame()
      end
      while 0 < NumPassengersInUnit(Capture_Point.base) do
        WaitFor(30)
      end
      SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_Y, constant.HUD_ITEM_FLASH, 6, 540, 380, 0.6)
      while 0 < NumPassengersInUnit(Capture_Point.base) do
        SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        WaitFor(60)
      end
      WaitFor(2)
      while levelend == 1 do
        SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        WaitFor(60)
      end
      WaitFor(3)
      while levelend == 1 do
        SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        WaitFor(60)
      end
      WaitFor(3)
      while levelend == 1 do
        SetHudState(constant.HUD_CONTROLIMAGE_Y, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        WaitFor(60)
      end
      SetHudState(constant.HUD_CONTROLIMAGE_Y, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_FLASH, 6, 540, 380, 0.6)
      WaitFor(2)
      while levelend == 1 do
        SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        WaitFor(60)
      end
      WaitFor(2)
      while levelend == 1 do
        SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        WaitFor(60)
      end
      WaitFor(3)
      while levelend == 1 do
        SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        WaitFor(60)
      end
      SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_OFF, 6, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
      timer = 0
      WaitFor(1)
    end
    if levelend == 1 then
      loop = 1
    end
    timer = timer + 1
    WaitFor(1)
  end
end

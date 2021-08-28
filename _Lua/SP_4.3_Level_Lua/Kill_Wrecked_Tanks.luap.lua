function Kill_Wrecked_Tanks(owner)
  local DestroyWreckedTank02 = 0
  local DestroyWreckedTank03 = 0
  local DestroyWreckedTank04 = 0
  local KillWreckedTank01Fire = 0
  repeat
    if IsDead(Air_Vehicle.ILBomber01) == false then
      Teleport(Air_Vehicle.ILBomber01, 1226.75, -23.931, 0, 0)
    end
    if IsDead(Air_Vehicle.ILFighter01) == false then
      Teleport(Air_Vehicle.ILFighter01, 1232.78, 53.071, 0, 0)
    end
    EndFrame()
  until IntroCutsceneEnd == 1
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.StartKillingWreckedTanks) == false then
      if 0 < NumItemsInArea(Map_Zone.KillWreckedTank02, flag.TYPE_UNDERWORLD) and DestroyWreckedTank02 == 0 then
        DestroyWreckedTank02 = 1
        Kill(Destroyable_Object.WreckedTank02)
      end
      if 0 < NumItemsInArea(Map_Zone.KillWreckedTank03, flag.TYPE_UNDERWORLD) and DestroyWreckedTank03 == 0 then
        DestroyWreckedTank03 = 1
        Kill(Destroyable_Object.WreckedTank03)
      end
      if 0 < NumItemsInArea(Map_Zone.KillWreckedTank04, flag.TYPE_UNDERWORLD) and DestroyWreckedTank04 == 0 then
        DestroyWreckedTank04 = 1
        Kill(Destroyable_Object.WreckedTank04)
      end
    end
    if IsDead(Destroyable_Object.WreckedTank01) and KillWreckedTank01Fire == 0 then
      KillWreckedTank01Fire = 1
      Kill(Destroyable_Object.WreckedTank01Fire)
    end
    EndFrame()
  end
end

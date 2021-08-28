function RAT_Tundran_Base_Defend(owner)
  while missionend == 0 do
    if IsDead(Ground_Vehicle.X_Heavy_Tank_1) and X_Heavy_Tank_1DiedOnce == 0 then
      X_Heavy_Tank_1DiedOnce = 1
    end
    if IsDead(Ground_Vehicle.X_Heavy_Tank_3) and X_Heavy_Tank_3DiedOnce == 0 then
      X_Heavy_Tank_3DiedOnce = 1
    end
    if IsDead(Ground_Vehicle.Xtank04) and Xtank04DiedOnce == 0 then
      Xtank04DiedOnce = 1
    end
    if IsDead(Ground_Vehicle.Xtank06) and Xtank06DiedOnce == 0 then
      Xtank06DiedOnce = 1
    end
    if IsDead(Air_Vehicle.Xgunship02) and Xgunship02DiedOnce == 0 then
      Xgunship02DiedOnce = 1
    end
    if IsDead(Air_Vehicle.Xgunship04) and Xgunship04DiedOnce == 0 then
      Xgunship04DiedOnce = 1
    end
    if IsDead(Air_Vehicle.Xgunship05) and Xgunship05DiedOnce == 0 then
      Xgunship05DiedOnce = 1
    end
    EndFrame()
  end
end

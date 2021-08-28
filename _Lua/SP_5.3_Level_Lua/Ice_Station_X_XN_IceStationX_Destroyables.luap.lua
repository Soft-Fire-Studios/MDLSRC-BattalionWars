function Ice_Station_X_XN_IceStationX_Destroyables(owner)
  local Jetty01Dead = 0
  local Jetty02Dead = 0
  local Jetty03Dead = 0
  local Jetty04Dead = 0
  local Jetty05Dead = 0
  local Jetty10Dead = 0
  local Jetty11Dead = 0
  local IceStationDead = 0
  repeat
    if IsDead(Building.XN_IceStationX) and IceStationDead == 0 then
      Kill(Building.XN_Jetty01_FuelTank01)
      EndFrame()
      Kill(Building.XN_Jetty02_FuelTank01)
      EndFrame()
      Kill(Building.XN_Jetty03_FuelTank01)
      EndFrame()
      Kill(Building.XN_Jetty04_FuelTank01)
      EndFrame()
      Kill(Building.XN_Jetty05_FuelTank01)
      EndFrame()
      Kill(Building.XN_Jetty06_FuelTank01)
      EndFrame()
      Kill(Building.XN_Jetty10_FuelTank01)
      EndFrame()
      Kill(Building.XN_Jetty11_FuelTank01)
      EndFrame()
      IceStationDead = 1
    end
    EndFrame()
    if IsDead(Building.XN_Jetty01_FuelTank01) and Jetty01Dead == 0 then
      DebugOut("Jetty01 is DEAD")
      Kill(Destroyable_Object.XN_Jetty01_Section01)
      DebugOut("Jetty01 Section01 is DEAD")
      EndFrame()
      Kill(Destroyable_Object.XN_Jetty01_Section02)
      DebugOut("Jetty01 Section02 is DEAD")
      EndFrame()
      Kill(Destroyable_Object.XN_Jetty01_Section03)
      DebugOut("Jetty01 Section03 is DEAD")
      EndFrame()
      Jetty01Dead = 1
    end
    EndFrame()
    if IsDead(Building.XN_Jetty02_FuelTank01) and Jetty02Dead == 0 then
      DebugOut("Jetty02 is DEAD")
      Kill(Destroyable_Object.XN_Jetty02_Section01)
      DebugOut("Jetty02 Section01 is DEAD")
      EndFrame()
      Kill(Destroyable_Object.XN_Jetty02_Section02)
      DebugOut("Jetty02 Section02 is DEAD")
      EndFrame()
      Jetty02Dead = 1
    end
    EndFrame()
    if IsDead(Building.XN_Jetty03_FuelTank01) and Jetty03Dead == 0 then
      DebugOut("Jetty03 is DEAD")
      Kill(Destroyable_Object.XN_Jetty03_Section01)
      DebugOut("Jetty03 Section01 is DEAD")
      EndFrame()
      Kill(Destroyable_Object.XN_Jetty03_Section02)
      DebugOut("Jetty03 Section02 is DEAD")
      EndFrame()
      Kill(Destroyable_Object.XN_Jetty03_Section03)
      DebugOut("Jetty03 Section03 is DEAD")
      EndFrame()
      Kill(Destroyable_Object.XN_Jetty03_Section04)
      DebugOut("Jetty03 Section04 is DEAD")
      EndFrame()
      Jetty03Dead = 1
    end
    EndFrame()
    if IsDead(Building.XN_Jetty04_FuelTank01) and Jetty04Dead == 0 then
      DebugOut("Jetty04 is DEAD")
      Kill(Destroyable_Object.XN_Jetty04_Section01)
      DebugOut("Jetty04 Section01 is DEAD")
      EndFrame()
      Kill(Destroyable_Object.XN_Jetty04_Section02)
      DebugOut("Jetty04 Section02 is DEAD")
      EndFrame()
      Jetty04Dead = 1
    end
    EndFrame()
    if IsDead(Building.XN_Jetty05_FuelTank01) and Jetty05Dead == 0 then
      DebugOut("Jetty05 is DEAD")
      Kill(Destroyable_Object.XN_Jetty05_Section01)
      DebugOut("Jetty05 Section01 is DEAD")
      EndFrame()
      Kill(Destroyable_Object.XN_Jetty05_Section02)
      DebugOut("Jetty05 Section02 is DEAD")
      EndFrame()
      Kill(Destroyable_Object.XN_Jetty05_Section03)
      DebugOut("Jetty05 Section03 is DEAD")
      EndFrame()
      Kill(Destroyable_Object.XN_Jetty05_Section04)
      DebugOut("Jetty05 Section04 is DEAD")
      EndFrame()
      Jetty05Dead = 1
    end
    EndFrame()
    if IsDead(Building.XN_Jetty10_FuelTank01) and Jetty10Dead == 0 then
      DebugOut("Jetty10 is DEAD")
      Kill(Destroyable_Object.XN_Jetty10_Section01)
      DebugOut("Jetty10 Section01 is DEAD")
      EndFrame()
      Jetty10Dead = 1
    end
    EndFrame()
    if IsDead(Building.XN_Jetty11_FuelTank01) and Jetty11Dead == 0 then
      DebugOut("Jetty11 is DEAD")
      Kill(Destroyable_Object.XN_Jetty11_Section01)
      DebugOut("Jetty11 Section01 is DEAD")
      EndFrame()
      Jetty11Dead = 1
    end
    EndFrame()
  until IsDead(Building.XN_IceStationX)
end

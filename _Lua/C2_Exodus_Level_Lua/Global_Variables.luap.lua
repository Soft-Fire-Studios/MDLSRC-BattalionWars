function Global_Variables(owner)
  wavetwo = 0
  levelend = 0
  levelstate = 0
  tbridge = 0
  cutkiller = 0
  cutscene = 0
  ref = 0
  heli = 0
  battle = 0
  north = 0
  south = 0
  timer1 = 0
  timer2 = 0
  outro = 0
  tank = 0
  hq = 0
  OutOfBoundsMessageInfo(60, 0, 5, SpriteID.CO_WF_Betty_Sad)
  function capture(cockmunch)
    local loop = 0
    while loop == 0 do
      if GetMovementState(cockmunch) == constant.MOVEMENT_STATE_ON_GROUND then
        loop = 1
      end
      EndFrame()
    end
    WaitFor(5)
    EnterVehicle(cockmunch, Capture_Point.tundran)
  end
end

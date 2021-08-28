function C1M1_Barbed_Wire(owner)
  while true do
    if IsDead(Destroyable_Object.BarbedWire0001) or IsDead(Destroyable_Object.BarbedWire0002) or IsDead(Destroyable_Object.BarbedWire0003) or IsDead(Destroyable_Object.BarbedWire0004) or IsDead(Destroyable_Object.BarbedWire0005) or IsDead(Destroyable_Object.BarbedWire0006) then
      C1M1_BarbedWireBusted = 1
      Kill(Destroyable_Object.BarbedWire0001)
      Kill(Destroyable_Object.BarbedWire0002)
      Kill(Destroyable_Object.BarbedWire0003)
      Kill(Destroyable_Object.BarbedWire0004)
      Kill(Destroyable_Object.BarbedWire0005)
      Kill(Destroyable_Object.BarbedWire0006)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end

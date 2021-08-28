function Tundran_Heavy_Recons_in_NE_Base(owner)
  local loop = 0
  while loop == 0 do
    if IsDead(Destroyable_Object.wire1) or IsDead(Destroyable_Object.wire2) then
      loop = 1
    end
    EndFrame()
  end
  GoToArea(Ground_Vehicle.hrecon1, -400, -315, 25)
  WaitFor(5)
  WaitFor(10)
  GoToArea(Ground_Vehicle.recon1, -400, -315, 25)
  EndFrame()
end

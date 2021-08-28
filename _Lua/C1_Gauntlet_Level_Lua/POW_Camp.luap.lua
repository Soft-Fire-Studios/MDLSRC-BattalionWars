function POW_Camp(owner)
  while pows == 0 do
    if IsDead(Destroyable_Object.Wire1) then
      pows = 1
    elseif IsDead(Destroyable_Object.Wire2) then
      pows = 1
    elseif IsDead(Destroyable_Object.Wire3) then
      pows = 1
    elseif IsDead(Destroyable_Object.Wire4) then
      pows = 1
    elseif IsDead(Destroyable_Object.Wire5) then
      pows = 1
    elseif IsDead(Destroyable_Object.Wire6) then
      pows = 1
    else
      EndFrame()
    end
  end
  Kill(Destroyable_Object.Wire1)
  Kill(Destroyable_Object.Wire2)
  Kill(Destroyable_Object.Wire3)
  Kill(Destroyable_Object.Wire4)
  Kill(Destroyable_Object.Wire5)
  Kill(Destroyable_Object.Wire6)
  Kill(Building.Entity0000)
  EnterVehicle(Troop.WF_PlayerStartUnit, Ground_Vehicle.WF_Recon, constant.ORDER_FORCED)
  EnterVehicle(Troop.WF_Start_Grunt, Ground_Vehicle.WF_Recon, constant.ORDER_FORCED)
end

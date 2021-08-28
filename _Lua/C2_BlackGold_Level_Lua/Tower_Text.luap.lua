function Tower_Text(owner)
  local loop = 0
  while loop == 0 do
    if GetPlayerUnit() == Air_Vehicle.Bomber or GetPlayerUnit() == Air_Vehicle.Bomber2 then
      EndFrame()
    elseif GetTargetedObject() == (Building.Tower1 or Building.Tower2 or Building.Tower3) then
      if GetPlayerUnit() == Air_Vehicle.Entity0000 or GetPlayerUnit() == Air_Vehicle.Entity0001 then
        PhoneMessage(57, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
      else
        PhoneMessage(58, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
      end
      loop = 1
    end
    EndFrame()
  end
end

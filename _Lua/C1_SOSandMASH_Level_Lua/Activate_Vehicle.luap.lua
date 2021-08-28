function Activate_Vehicle(owner)
  WaitFor(2)
  repeat
    if (IsInRange(Ground_Vehicle.WF_Artillery1, GetPlayerUnit(), 30) or IsInRange(Ground_Vehicle.WF_Artillery2, GetPlayerUnit(), 30) or IsInRange(Ground_Vehicle.WF_Artillery3, GetPlayerUnit(), 30)) and ArtilleryActive == 0 then
      SetActive(Ground_Vehicle.WF_Artillery1, constant.ACTIVE)
      SetActive(Ground_Vehicle.WF_Artillery2, constant.ACTIVE)
      SetActive(Ground_Vehicle.WF_Artillery3, constant.ACTIVE)
      ArtilleryActive = 1
      ClearMessageQueue()
      PhoneMessage(12, 0, 0, 3, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(13, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(14, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(15, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
    end
    EndFrame()
  until ArtilleryActive == 1
  WaitFor(15)
  if ArtilleryWeapons == 0 then
    ArtilleryWeapons = 1
    SetActive(Ground_Vehicle.WF_Artillery1, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Ground_Vehicle.WF_Artillery2, constant.ACTIVE, constant.ADJUST_WEAPON)
    SetActive(Ground_Vehicle.WF_Artillery3, constant.ACTIVE, constant.ADJUST_WEAPON)
  end
end

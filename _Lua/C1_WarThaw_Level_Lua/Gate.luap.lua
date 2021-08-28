function Gate(owner)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.Trigger9)
  PhoneMessage(10, 0, 0, 4, SpriteID.CO_WF_Herman_Happy)
end

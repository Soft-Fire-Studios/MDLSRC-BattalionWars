function AA_Break_Tut(owner)
  aascript = owner
  repeat
    if missionend == 1 then
      return
    end
    EndFrame()
  until ((IsDead(Troop.Entity260019969) == false or IsDead(Troop.Entity260019970) == false or IsDead(Troop.Entity260019971) == false) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), -515, 710, 125) == true or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), -35, 485, 125) == true and (IsDead(Troop.SE_AA1) == false or IsDead(Troop.SE_AA2) == false or IsDead(Troop.SE_AA3) == false) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), 275, 630, 125) == true and (IsDead(Troop.Entity260020630) == false or IsDead(Troop.Entity260020631) == false or IsDead(Troop.Entity260020632) == false or IsDead(Troop.Entity260020633) == false) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), 725, 650, 125) == true) and (GetPlayerUnit(constant.PLAYER_ONE) == Air_Vehicle.AI_Fighter_1 or GetPlayerUnit(constant.PLAYER_ONE) == Air_Vehicle.AI_Fighter_2)
  DebugOut("Begin AA Break tut")
  PhoneMessage(61, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
  PhoneMessage(62, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_ONE)
end

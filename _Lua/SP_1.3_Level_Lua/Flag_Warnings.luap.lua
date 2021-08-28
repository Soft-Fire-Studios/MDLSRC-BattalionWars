function Flag_Warnings(owner)
  Script01 = owner
  local flagtext = 0
  local text1 = 0
  local text2 = 0
  while missionend == 0 do
    if (IsPassengerInUnit(Troop.SE_Grunt_1, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_Grunt_2, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_Grunt_3, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_Grunt_4, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_Grunt_5, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_Grunt_6, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_Grunt_7, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_Grunt_11, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_Grunt_12, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_Baz_4, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_Baz_5, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_Palace_Grunt_1, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_Palace_Grunt_2, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_Palace_Grunt_3, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_POW1, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_POW2, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_POW3, Capture_Point.Palace) == false and IsPassengerInUnit(Troop.SE_POW4, Capture_Point.Palace) == false and 0 < NumPassengersInUnit(Capture_Point.Palace) or GetState(Capture_Point.Palace) == flag.TYPE_ANGLO) and flagtext == 0 then
      PhoneMessage(86, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      flagtext = 1
    end
    if flagtext == 1 and (NumPassengersInUnit(Capture_Point.Palace) == 0 or GetState(Capture_Point.Palace) == flag.TYPE_SOLAR) then
      WaitFor(20)
      flagtext = 0
    end
    EndFrame()
  end
end

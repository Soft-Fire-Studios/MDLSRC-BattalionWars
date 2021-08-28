function C1M8_Gameflow(owner)
  WaitFor(1)
  local message1 = 0
  SetActive(Ground_Vehicle.WF_Artillery1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.WF_Artillery2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.WF_Artillery3, constant.INACTIVE, constant.ADJUST_WEAPON)
  Despawn(Air_Vehicle.X_Bomber1)
  Despawn(Air_Vehicle.X_Bomber2)
  Despawn(Air_Vehicle.X_Bomber3)
  Despawn(Air_Vehicle.T_Gunship1)
  Despawn(Air_Vehicle.T_Gunship2)
  Despawn(Air_Vehicle.T_Gunship3)
  Despawn(Troop.WF_Grunt_EndCut1)
  Despawn(Troop.WF_Grunt_EndCut2)
  Despawn(Troop.WF_Grunt_EndCut3)
  Despawn(Troop.WF_Grunt_EndCut4)
  Despawn(Troop.T_Grunt_EndCut1)
  Despawn(Troop.T_Grunt_EndCut2)
  repeat
    EndFrame()
  until LevelState == 1
  PhoneMessage(58, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
  PhoneMessage(60, 0, 0, 3, SpriteID.CO_WF_Betty_Happy)
  PhoneMessage(62, 0, 0, 3, SpriteID.CO_WF_Betty_Happy)
  FollowUnit(Troop.WF_Chain1, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Troop.WF_Chain2, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Troop.WF_Chain3, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Troop.WF_Chain4, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Troop.WF_Chain5, GetPlayerUnit(), -1, 0, 0)
  repeat
    EndFrame()
  until GetHealthPercent(Troop.T_Flamer11) < 100 or 100 > GetHealthPercent(Troop.T_Flamer12) or IsInArea(GetPlayerUnit(), Map_Zone.Trigger_Zone_2)
  SetActive(Troop.WF_Grunt1, constant.ACTIVE)
  SetActive(Troop.WF_Grunt2, constant.ACTIVE)
  SetActive(Troop.WF_Grunt3, constant.ACTIVE)
  SetActive(Troop.WF_Grunt4, constant.ACTIVE)
  SetActive(Troop.WF_Grunt5, constant.ACTIVE)
  SetActive(Troop.WF_Grunt6, constant.ACTIVE)
  SetActive(Troop.WF_AntiAir1, constant.ACTIVE)
  SetActive(Troop.WF_AntiAir2, constant.ACTIVE)
  SetActive(Troop.WF_Bazooka1, constant.ACTIVE)
  SetActive(Troop.WF_Bazooka2, constant.ACTIVE)
  SetActive(Troop.WF_Bazooka3, constant.ACTIVE)
  SetActive(Troop.WF_Bazooka4, constant.ACTIVE)
  FollowUnit(Troop.WF_Grunt1, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Troop.WF_Grunt2, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Troop.WF_Grunt3, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Troop.WF_Grunt4, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Troop.WF_Grunt5, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Troop.WF_Grunt6, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Troop.WF_AntiAir1, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Troop.WF_AntiAir2, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Troop.WF_Bazooka1, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Troop.WF_Bazooka2, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Troop.WF_Bazooka3, GetPlayerUnit(), -1, 0, 0)
  FollowUnit(Troop.WF_Bazooka4, GetPlayerUnit(), -1, 0, 0)
  repeat
    EndFrame()
  until GetHealthPercent(Troop.T_Flamer11) < 100 or 100 > GetHealthPercent(Troop.T_Flamer12) or IsInArea(GetPlayerUnit(), Map_Zone.Trigger_Zone_1)
  ClearMessageQueue()
  PhoneMessage(64, 0, 0, 3, SpriteID.CO_WF_Betty_Sad)
  repeat
    if IsDead(Troop.T_Flamer11) and IsDead(Troop.T_Flamer12) and message1 == 0 then
      PhoneMessage(66, 0, 0, 3, SpriteID.CO_WF_Betty_Happy)
      message1 = 1
    end
    EndFrame()
  until NumFlagsCaptured == 3
end

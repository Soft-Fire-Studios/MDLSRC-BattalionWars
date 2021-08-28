function SE_POWs(owner)
  local pows = 0
  SetActive(Troop.SEPilot1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SEPilot2, constant.INACTIVE, constant.ADJUST_WEAPON)
  while pows == 0 do
    if IsDead(Destroyable_Object.wire1) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire2) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire3) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire4) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire5) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire6) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire7) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire8) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire9) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire10) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire11) then
      pows = 1
    elseif IsDead(Destroyable_Object.wire12) then
      pows = 1
    else
      EndFrame()
    end
  end
  PhoneMessage(25, 0, 3, 4, SpriteID.CO_SE_Leiqo_Happy)
  PhoneMessage(41, 0, 4, 4, SpriteID.CO_X_Ingrid_Sad)
  PhoneMessage(42, 0, 3, 4, SpriteID.CO_SE_Leiqo_Happy)
  SetObjectiveData(Objective_Marker.SE_Fighters, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.SE_Fighters, constant.OBJECTIVE_DATA_STATE, 1)
  SetActive(Troop.SEPilot1, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.SEPilot2, constant.ACTIVE, constant.ADJUST_WEAPON)
  EnterVehicle(Troop.SEPilot1, Air_Vehicle.SEFighter3, constant.ORDER_FORCED)
  EnterVehicle(Troop.SEPilot2, Air_Vehicle.SEFighter4, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.SEFighter3, 208, 476, 20, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.SEFighter4, 208, 476, 20, constant.ORDER_FORCED)
  Kill(Destroyable_Object.wire1)
  Kill(Destroyable_Object.wire2)
  Kill(Destroyable_Object.wire3)
  Kill(Destroyable_Object.wire4)
  Kill(Destroyable_Object.wire5)
  Kill(Destroyable_Object.wire6)
  Kill(Destroyable_Object.wire7)
  Kill(Destroyable_Object.wire8)
  Kill(Destroyable_Object.wire9)
  Kill(Destroyable_Object.wire10)
  Kill(Destroyable_Object.wire11)
  Kill(Destroyable_Object.wire12)
  WaitFor(4)
  pows = 1
  while pows == 1 do
    WaitFor(1)
    AttackTarget(Air_Vehicle.SEFighter3, Air_Vehicle.LChopper5)
    AttackTarget(Air_Vehicle.SEFighter4, Air_Vehicle.LChopper6)
    DebugOut("SE attack")
    EndFrame()
  end
  EndFrame()
end

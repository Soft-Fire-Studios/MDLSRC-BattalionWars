function NavalTransportObjectiveCounter(owner)
  local navaltransport01 = 0
  local navaltransport02 = 0
  local navalobjective01 = 0
  local navalobjective02 = 0
  local navaltransports = 0
  while missionend == 0 do
    if navaltransport01 == 0 and IsDead(Water_Vehicle.SE_Naval_Transport) then
      navaltransport01 = 1
      navaltransports = navaltransports + 1
    end
    EndFrame()
    if navaltransport02 == 0 and IsDead(Water_Vehicle.SE_Naval_Transport_2) then
      navaltransport02 = 1
      navaltransports = navaltransports + 1
    end
    EndFrame()
    if navaltransports == 1 and navalobjective01 == 0 then
      SetObjectiveData(Objective.PO_Sea_Transports_02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PO_Sea_Transports_01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      navalobjective01 = 1
    end
    EndFrame()
    if navaltransports == 2 and navalobjective02 == 0 then
      SetObjectiveData(Objective.PO_Sea_Transports_02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PO_Sea_Transports_01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PO_Sea_Transports_00, constant.OBJECTIVE_DATA_VISIBLE, 1)
      navalobjective02 = 1
      break
    end
    EndFrame()
  end
end

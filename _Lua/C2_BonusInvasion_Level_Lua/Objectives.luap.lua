function Objectives(owner)
  local choppersdead = 0
  repeat
    choppersdead = 0
    if IsDead(Air_Vehicle.EvacuationChopper1) then
      choppersdead = choppersdead + 1
    end
    if IsDead(Air_Vehicle.EvacuationChopper2) then
      choppersdead = choppersdead + 1
    end
    if IsDead(Air_Vehicle.EvacuationChopper3) then
      choppersdead = choppersdead + 1
    end
    if IsDead(Air_Vehicle.EvacuationChopper4) then
      choppersdead = choppersdead + 1
    end
    EndFrame()
  until choppersdead == 1
  SetObjectiveData(Objective.Transports0, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Transports0, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Transports1, constant.OBJECTIVE_DATA_VISIBLE, 1)
  repeat
    choppersdead = 0
    if IsDead(Air_Vehicle.EvacuationChopper1) then
      choppersdead = choppersdead + 1
    end
    if IsDead(Air_Vehicle.EvacuationChopper2) then
      choppersdead = choppersdead + 1
    end
    if IsDead(Air_Vehicle.EvacuationChopper3) then
      choppersdead = choppersdead + 1
    end
    if IsDead(Air_Vehicle.EvacuationChopper4) then
      choppersdead = choppersdead + 1
    end
    EndFrame()
  until choppersdead == 2
  SetObjectiveData(Objective.Transports1, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Transports1, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Transports2, constant.OBJECTIVE_DATA_VISIBLE, 1)
  repeat
    choppersdead = 0
    if IsDead(Air_Vehicle.EvacuationChopper1) then
      choppersdead = choppersdead + 1
    end
    if IsDead(Air_Vehicle.EvacuationChopper2) then
      choppersdead = choppersdead + 1
    end
    if IsDead(Air_Vehicle.EvacuationChopper3) then
      choppersdead = choppersdead + 1
    end
    if IsDead(Air_Vehicle.EvacuationChopper4) then
      choppersdead = choppersdead + 1
    end
    EndFrame()
  until choppersdead == 3
  SetObjectiveData(Objective.Transports2, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Transports2, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Transports3, constant.OBJECTIVE_DATA_VISIBLE, 1)
  repeat
    choppersdead = 0
    if IsDead(Air_Vehicle.EvacuationChopper1) then
      choppersdead = choppersdead + 1
    end
    if IsDead(Air_Vehicle.EvacuationChopper2) then
      choppersdead = choppersdead + 1
    end
    if IsDead(Air_Vehicle.EvacuationChopper3) then
      choppersdead = choppersdead + 1
    end
    if IsDead(Air_Vehicle.EvacuationChopper4) then
      choppersdead = choppersdead + 1
    end
    EndFrame()
  until choppersdead == 4
  SetObjectiveData(Objective.Transports3, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Transports3, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Transports4, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Transports4, constant.OBJECTIVE_DATA_STATE, 1)
  Kill(announcer)
end

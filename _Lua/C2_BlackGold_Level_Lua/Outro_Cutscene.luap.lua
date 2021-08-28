function Outro_Cutscene(owner)
  Despawn(Air_Vehicle.xout1)
  Despawn(Air_Vehicle.xout2)
  Despawn(Air_Vehicle.tout1)
  Despawn(Air_Vehicle.tout2)
  while outro == 0 do
    EndFrame()
  end
  cutkiller = owner
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Spawn(Air_Vehicle.xout1)
  Spawn(Air_Vehicle.xout2)
  Spawn(Air_Vehicle.tout1)
  Spawn(Air_Vehicle.tout2)
  GoToArea(Air_Vehicle.xout1, -435, 650, 10, 0, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.xout2, -260, 650, 10, 0, constant.ORDER_FORCED)
  AttackTarget(Air_Vehicle.tout1, Air_Vehicle.xout1, constant.ORDER_FORCED)
  AttackTarget(Air_Vehicle.tout2, Air_Vehicle.xout2, constant.ORDER_FORCED)
  StartOutro()
  SetCamera(Camera.outro2)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessage(29, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
  WaitFor(8)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  cutscene = 2
end

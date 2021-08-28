function Artillery_No_Fire(owner)
  WaitFor(0.5)
  repeat
    EndFrame()
  until IsUnderPlayerCommand(owner) or LevelState == 3
  SetActive(Ground_Vehicle.WF_Artillery1, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Ground_Vehicle.WF_Artillery2, constant.ACTIVE, constant.ADJUST_WEAPON)
end

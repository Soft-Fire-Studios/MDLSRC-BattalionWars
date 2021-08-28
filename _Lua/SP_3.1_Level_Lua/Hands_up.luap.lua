function Hands_up(owner)
  repeat
    EndFrame()
  until CheckCapturePoint(Capture_Point.SE_Dock_CP, constant.ARMY_ANGLO, 100, 1, constant.CAPTUREPOINTFLAG_RAISING) or GetState(Capture_Point.SE_Dock_CP) == flag.TYPE_ANGLO
  DebugOut("Unit", owner, "Is becoming Inactive and losing their weapon as the Dock has been captured")
  SetActive(owner, constant.INACTIVE, constant.ADJUST_WEAPON)
  repeat
    EndFrame()
  until dock == 1
  if TestFlags(owner, flag.GTYPE_GRUNT, constant.GTYPE) == true and gruntkill < 10 then
    DebugOut("Unit", owner, "is a grunt and killing themselves now")
    Kill(owner, false)
    gruntkill = gruntkill + 1
  else
    Despawn(owner)
  end
end

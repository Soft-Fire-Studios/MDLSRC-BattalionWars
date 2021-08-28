function Tundran_Recon(owner)
  WaitFor(1)
  repeat
    EndFrame()
  until IsInRange(owner, GetPlayerUnit(), 200)
  GoToArea(owner, -270, -460, 10)
end

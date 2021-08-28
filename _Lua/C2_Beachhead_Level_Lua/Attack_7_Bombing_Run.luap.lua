function Attack_7_Bombing_Run(owner)
  WaitFor(10)
  repeat
    EndFrame()
  until BombGo == 1
  GoToArea(owner, 90, 170, 40)
end

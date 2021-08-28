function XylvanianFighterRespawn(owner)
  SetTickScriptWhenDead(owner, 1)
  while missionend == 0 do
    while not IsDead(Building.VladsBigDrill) do
      if IsDead(Building.VladsBigDrill) == false and IsReadyToRevive(owner) and vladsbigdrill == 0 then
        WaitFor(15)
        ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, owner, -616, 265, 0, 20)
        WaitFor(1)
        GoToArea(owner, -471, -141, 10, 180, constant.ORDER_NORMAL)
      end
      EndFrame()
    end
    repeat
      if missionend == 0 and IsReadyToRevive(owner) then
        DebugOut("*XylvanianFighterRespawn* - 3. An Xylvanian Fighter is ready to revive")
        WaitFor(20)
        ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, owner, -28, 913, 160, 20)
        WaitFor(1)
        DebugOut("*XylvanianFighterRespawn* - 4. Revived an Xylvanian Fighter")
        GoToArea(owner, 511, 455, 10, 180, constant.ORDER_NORMAL)
      end
      EndFrame()
    until missionend == 1
    EndFrame()
  end
end

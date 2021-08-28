function BoatGameFlow(owner)
  scriptBoatGameFlow = owner
  AddToGroup(Unit_Group.CentralBattleships, Water_Vehicle.Battleship1)
  AddToGroup(Unit_Group.CentralBattleships, Water_Vehicle.Battleship2)
  AddToGroup(Unit_Group.DocksSubs, Water_Vehicle.Submarine1)
  AddToGroup(Unit_Group.DocksSubs, Water_Vehicle.Submarine2)
  AddToGroup(Unit_Group.Frigates, Water_Vehicle.Frigate1)
  AddToGroup(Unit_Group.Frigates, Water_Vehicle.Frigate2)
  AddToGroup(Unit_Group.Frigates, Water_Vehicle.Frigate3)
  AddToGroup(Unit_Group.LandingPointBattleships, Water_Vehicle.Battleship6)
  AddToGroup(Unit_Group.LandingPointBattleships, Water_Vehicle.Battleship7)
  local subattack = 0
  local dockattack = 0
  local dockbattleshipattack = 0
  local landingpointattack = 0
  while true do
    if GetGroupHealthPercent(Unit_Group.CentralBattleships) < 25 and subattack == 0 then
      if IsDead(Water_Vehicle.Submarine1) == false or IsDead(Water_Vehicle.Submarine1) == false then
        PhoneMessage(7, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
        PhoneMessage(9, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
        GoToArea(Water_Vehicle.Submarine1, -35, -601, 5, 0, constant.ORDER_NORMAL)
        GoToArea(Water_Vehicle.Submarine2, -35, -611, 5, 0, constant.ORDER_NORMAL)
      end
      subattack = 1
    end
    if GetGroupHealthPercent(Unit_Group.DocksSubs) < 15 and dockattack == 0 then
      if IsDead(Water_Vehicle.Frigate1) == false or IsDead(Water_Vehicle.Frigate2) == false or IsDead(Water_Vehicle.Frigate3) == false then
        PhoneMessage(10, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
        GoToArea(Water_Vehicle.Frigate1, -204, -622, 5, 0, constant.ORDER_NORMAL)
        GoToArea(Water_Vehicle.Frigate2, -139, -633, 5, 0, constant.ORDER_NORMAL)
        GoToArea(Water_Vehicle.Frigate3, -89, -630, 5, 0, constant.ORDER_NORMAL)
      end
      dockattack = 1
    end
    if GetGroupHealthPercent(Unit_Group.Frigates) < 50 and dockbattleshipattack == 0 then
      GoToArea(Water_Vehicle.Battleship4, -166, -467, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Water_Vehicle.Battleship5, -182, -510, 5, 0, constant.ORDER_NORMAL)
      dockbattleshipattack = 1
    end
    if IsInRange(Unit_Group.LandingPointBattleships, Unit_Group.TundranNaval, 200) and landingpointattack == 0 then
      GoToArea(Water_Vehicle.Battleship6, -20, -274, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Water_Vehicle.Battleship7, 4, -274, 5, 0, constant.ORDER_NORMAL)
      if IsDead(Water_Vehicle.TDreadnought) == false then
        AttackTarget(Water_Vehicle.Submarine3, Water_Vehicle.TDreadnought, constant.ORDER_NORMAL)
        AttackTarget(Water_Vehicle.Submarine4, Water_Vehicle.TDreadnought, constant.ORDER_NORMAL)
      else
        GoToArea(Water_Vehicle.Submarine3, 15, -300, 5, 0, constant.ORDER_NORMAL)
        GoToArea(Water_Vehicle.Submarine4, 25, -300, 5, 0, constant.ORDER_NORMAL)
      end
      landingpointattack = 1
    end
    EndFrame()
  end
end

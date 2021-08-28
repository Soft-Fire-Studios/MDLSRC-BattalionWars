function WF_Grunt_Teleport_Hack(owner)
  repeat
    EndFrame()
  until WFTeleportHack == 1
  repeat
    Teleport(Troop.WFgrunt1, -85.474, -113.312, 45, 0)
    Teleport(Troop.WFgrunt2, -83.052, -116.29, 45, 0)
    Teleport(Troop.WFgrunt3, -80.479, -118.612, 45, 0)
    Teleport(Troop.WFgrunt4, -89.763, -114.776, 45, 0)
    Teleport(Troop.WFgrunt5, -87.19, -117.501, 45, 0)
    Teleport(Troop.WFgrunt6, -84.414, -120.379, 45, 0)
    EndFrame()
  until WFTeleportHack == 0
end

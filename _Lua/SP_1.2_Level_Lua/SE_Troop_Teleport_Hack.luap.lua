function SE_Troop_Teleport_Hack(owner)
  repeat
    EndFrame()
  until SETeleportHack == 1
  repeat
    if TeleportSEAAVehicle01 == 1 then
      Teleport(Ground_Vehicle.SEaatank1, GetObjectXPosition(Waypoint.TeleportAAVehicle), GetObjectZPosition(Waypoint.TeleportAAVehicle), 0, 0)
    end
    if TeleportSEGrunt01 == 1 then
      Teleport(Troop.SEgrunt1, GetObjectXPosition(Waypoint.TeleportSEGrunt01), GetObjectZPosition(Waypoint.TeleportSEGrunt01), 0, 0)
    end
    if TeleportSEGrunt02 == 1 then
      Teleport(Troop.SEgrunt2, GetObjectXPosition(Waypoint.TeleportSEGrunt02), GetObjectZPosition(Waypoint.TeleportSEGrunt02), 0, 0)
    end
    if TeleportSEGrunt03 == 1 then
      Teleport(Troop.SEgrunt3, GetObjectXPosition(Waypoint.TeleportSEGrunt03), GetObjectZPosition(Waypoint.TeleportSEGrunt03), 0, 0)
    end
    if TeleportSEGrunt04 == 1 then
      Teleport(Troop.SEgrunt4, GetObjectXPosition(Waypoint.TeleportSEGrunt04), GetObjectZPosition(Waypoint.TeleportSEGrunt04), 0, 0)
    end
    if TeleportSEGrunt05 == 1 then
      Teleport(Troop.SEgrunt5, GetObjectXPosition(Waypoint.TeleportSEGrunt05), GetObjectZPosition(Waypoint.TeleportSEGrunt05), 0, 0)
    end
    if TeleportSEFlame01 == 1 then
      Teleport(Troop.SEflame1, GetObjectXPosition(Waypoint.TeleportSEFlame01), GetObjectZPosition(Waypoint.TeleportSEFlame01), 0, 0)
    end
    if TeleportSEFlame02 == 1 then
      Teleport(Troop.SEflame2, GetObjectXPosition(Waypoint.TeleportSEFlame02), GetObjectZPosition(Waypoint.TeleportSEFlame02), 0, 0)
    end
    if TeleportSEFlame07 == 1 then
      Teleport(Troop.SEflame7, GetObjectXPosition(Waypoint.TeleportSEFlame07), GetObjectZPosition(Waypoint.TeleportSEFlame07), 0, 0)
    end
    if TeleportSEFlame08 == 1 then
      Teleport(Troop.SEflame8, GetObjectXPosition(Waypoint.TeleportSEFlame08), GetObjectZPosition(Waypoint.TeleportSEFlame08), 0, 0)
    end
    if TeleportSEFlame09 == 1 then
      Teleport(Troop.SEflame9, GetObjectXPosition(Waypoint.TeleportSEFlame09), GetObjectZPosition(Waypoint.TeleportSEFlame09), 0, 0)
    end
    if TeleportSEBazooka02 == 1 then
      Teleport(Troop.SEbazooka2, GetObjectXPosition(Waypoint.TeleportSEBazooka02), GetObjectZPosition(Waypoint.TeleportSEBazooka02), 0, 0)
    end
    if TeleportSEBazooka03 == 1 then
      Teleport(Troop.SEbazooka3, GetObjectXPosition(Waypoint.TeleportSEBazooka03), GetObjectZPosition(Waypoint.TeleportSEBazooka03), 0, 0)
    end
    if TeleportSEBazooka04 == 1 then
      Teleport(Troop.SEbazooka4, GetObjectXPosition(Waypoint.TeleportSEBazooka04), GetObjectZPosition(Waypoint.TeleportSEBazooka04), 0, 0)
    end
    if TeleportSEBazooka05 == 1 then
      Teleport(Troop.SEbazooka5, GetObjectXPosition(Waypoint.TeleportSEBazooka05), GetObjectZPosition(Waypoint.TeleportSEBazooka05), 0, 0)
    end
    EndFrame()
  until SETeleportHack == 0
end

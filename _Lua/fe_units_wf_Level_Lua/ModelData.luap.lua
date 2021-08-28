function ModelData(owner)
end
local pvtHazardName = 26
local pvtHazardDesc = 28
UnitNames = {
  {
    2,
    6,
    10,
    14,
    18,
    22,
    pvtHazardName
  },
  {
    44,
    48,
    52,
    56,
    60,
    64
  },
  {
    86,
    90,
    94,
    98,
    102,
    106
  },
  {
    124,
    128,
    132,
    136,
    140,
    144
  }
}
UnitDescriptions = {
  {
    4,
    8,
    12,
    16,
    20,
    24,
    pvtHazardDesc
  },
  {
    46,
    50,
    54,
    58,
    62,
    66
  },
  {
    88,
    92,
    96,
    100,
    104,
    108
  },
  {
    126,
    130,
    134,
    138,
    142,
    146
  }
}
function GetModelWidget(unit)
  local units = {
    {
      GUI_3D_Model_Array.Unit_Troop_Ground_WF_Grunt,
      GUI_3D_Model_Array.Unit_Troop_Ground_WF_Bazooka_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_WF_Flamer_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_WF_A_A_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_WF_Mortar_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_WF_H_M_Gun_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_WF_Private_Hazard
    },
    {
      GUI_3D_Model_Array.Unit_Ground_WF_Recon,
      GUI_3D_Model_Array.Unit_Ground_WF_Light_Tank,
      GUI_3D_Model_Array.Unit_Ground_WF_Heavy_Tank,
      GUI_3D_Model_Array.Unit_Ground_WF_Battlestation,
      GUI_3D_Model_Array.Unit_Ground_WF_Anti_Air,
      GUI_3D_Model_Array.Unit_Ground_WF_Artillery
    },
    {
      GUI_3D_Model_Array.Unit_Air_WF_Gunship,
      GUI_3D_Model_Array.Unit_Air_WF_Fighter,
      GUI_3D_Model_Array.Unit_Air_WF_Bomber,
      GUI_3D_Model_Array.Unit_Air_WF_Stratofortress,
      GUI_3D_Model_Array.Unit_Air_WF_Air_Transport,
      0
    },
    {
      GUI_3D_Model_Array.Unit_Water_WF_Frigate,
      GUI_3D_Model_Array.Unit_Water_WF_Battleship,
      GUI_3D_Model_Array.Unit_Water_WF_Dreadnought,
      GUI_3D_Model_Array.Unit_Water_WF_Submarine,
      GUI_3D_Model_Array.Unit_Water_WF_Transport,
      0
    }
  }
  return units[ForcesType][unit]
end
function GetModelCount()
  local units = {
    7,
    6,
    5,
    5
  }
  return units[ForcesType]
end
function ModelData_end()
end

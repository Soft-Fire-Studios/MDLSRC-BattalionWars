function ModelData(owner)
end
local spyBlimpName = 106
local spyBlimpDesc = 108
local munitionExpertName = 26
local munitionExpertDesc = 28
UnitNames = {
  {
    2,
    6,
    10,
    14,
    18,
    22,
    munitionExpertName
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
    106,
    spyBlimpName
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
    munitionExpertDesc
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
    108,
    spyBlimpDesc
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
      GUI_3D_Model_Array.Unit_Troop_Ground_T_Grunt,
      GUI_3D_Model_Array.Unit_Troop_Ground_T_Bazooka_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_T_Flamer_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_T_A_A_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_T_Mortar_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_T_H_M_Gun_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_T_Munitions_Expert
    },
    {
      GUI_3D_Model_Array.Unit_Ground_T_Recon,
      GUI_3D_Model_Array.Unit_Ground_T_Light_Tank,
      GUI_3D_Model_Array.Unit_Ground_T_Heavy_Tank,
      GUI_3D_Model_Array.Unit_Ground_T_Battlestation,
      GUI_3D_Model_Array.Unit_Ground_T_Anti_Air,
      GUI_3D_Model_Array.Unit_Ground_T_Artillery
    },
    {
      GUI_3D_Model_Array.Unit_Air_T_Gunship,
      GUI_3D_Model_Array.Unit_Air_T_Fighter,
      GUI_3D_Model_Array.Unit_Air_T_Bomber,
      0,
      GUI_3D_Model_Array.Unit_Air_T_Air_Transport,
      0,
      GUI_3D_Model_Array.Unit_Air_T_Spy_Blimp
    },
    {
      GUI_3D_Model_Array.Unit_Water_T_Frigate,
      GUI_3D_Model_Array.Unit_Water_T_Battleship,
      GUI_3D_Model_Array.Unit_Water_T_Dreadnought,
      GUI_3D_Model_Array.Unit_Water_T_Submarine,
      0,
      0
    }
  }
  return units[ForcesType][unit]
end
function GetModelCount()
  local units = {
    7,
    6,
    7,
    4
  }
  return units[ForcesType]
end
function ModelData_end()
end

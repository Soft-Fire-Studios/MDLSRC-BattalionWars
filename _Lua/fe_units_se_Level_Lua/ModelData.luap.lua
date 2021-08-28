function ModelData(owner)
end
local staffBearerName = 30
local staffBearerDesc = 32
local munitionsExpertName = 26
local munitionsExpertDesc = 28
UnitNames = {
  {
    2,
    6,
    10,
    14,
    18,
    22,
    staffBearerName,
    munitionsExpertName
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
    staffBearerDesc,
    munitionsExpertDesc
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
      GUI_3D_Model_Array.Unit_Troop_Ground_SE_Grunt,
      GUI_3D_Model_Array.Unit_Troop_Ground_SE_Bazooka_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_SE_Flamer_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_SE_A_A_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_SE_Mortar_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_SE_H_M_Gun_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_SE_Staff_Bearer,
      GUI_3D_Model_Array.Unit_Troop_Ground_SE_Munitions_Expert
    },
    {
      GUI_3D_Model_Array.Unit_Ground_SE_Recon,
      GUI_3D_Model_Array.Unit_Ground_SE_Light_Tank,
      GUI_3D_Model_Array.Unit_Ground_SE_Heavy_Tank,
      0,
      GUI_3D_Model_Array.Unit_Ground_SE_Anti_Air,
      GUI_3D_Model_Array.Unit_Ground_SE_Artillery
    },
    {
      GUI_3D_Model_Array.Unit_Air_SE_Gunship,
      GUI_3D_Model_Array.Unit_Air_SE_Fighter,
      0,
      0,
      GUI_3D_Model_Array.Unit_Air_SE_Air_Transport,
      0
    },
    {
      GUI_3D_Model_Array.Unit_Water_SE_Frigate,
      GUI_3D_Model_Array.Unit_Water_SE_Battleship,
      GUI_3D_Model_Array.Unit_Water_SE_Dreadnought,
      GUI_3D_Model_Array.Unit_Water_SE_Submarine,
      GUI_3D_Model_Array.Unit_Water_SE_Transport,
      0
    }
  }
  return units[ForcesType][unit]
end
function GetModelCount()
  local units = {
    8,
    6,
    5,
    5
  }
  return units[ForcesType]
end
function ModelData_end()
end

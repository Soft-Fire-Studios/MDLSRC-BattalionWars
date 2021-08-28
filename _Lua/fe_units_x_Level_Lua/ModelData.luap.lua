function ModelData(owner)
end
local miningUnitName = 68
local miningUnitDesc = 70
UnitNames = {
  {
    2,
    6,
    10,
    14,
    18,
    22
  },
  {
    44,
    48,
    52,
    56,
    60,
    64,
    miningUnitName
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
    24
  },
  {
    46,
    50,
    54,
    58,
    62,
    66,
    miningUnitDesc
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
      GUI_3D_Model_Array.Unit_Troop_Ground_X_Grunt,
      GUI_3D_Model_Array.Unit_Troop_Ground_X_Bazooka_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_X_Flamer_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_X_A_A_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_X_Mortar_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_X_H_M_Gun_Vet
    },
    {
      GUI_3D_Model_Array.Unit_Ground_X_Recon,
      GUI_3D_Model_Array.Unit_Ground_X_Light_Tank,
      GUI_3D_Model_Array.Unit_Ground_X_Heavy_Tank,
      GUI_3D_Model_Array.Unit_Ground_X_Battlestation,
      GUI_3D_Model_Array.Unit_Ground_X_Anti_Air,
      GUI_3D_Model_Array.Unit_Ground_X_Artillery,
      GUI_3D_Model_Array.Unit_Ground_X_Mining_Spider
    },
    {
      GUI_3D_Model_Array.Unit_Air_X_Gunship,
      GUI_3D_Model_Array.Unit_Air_X_Fighter,
      GUI_3D_Model_Array.Unit_Air_X_Bomber,
      GUI_3D_Model_Array.Unit_Air_X_Stratofortress,
      GUI_3D_Model_Array.Unit_Air_X_Air_Transport,
      0
    },
    {
      GUI_3D_Model_Array.Unit_Water_X_Frigate,
      GUI_3D_Model_Array.Unit_Water_X_Battleship,
      GUI_3D_Model_Array.Unit_Water_X_Dreadnought,
      GUI_3D_Model_Array.Unit_Water_X_Submarine,
      0,
      0
    }
  }
  return units[ForcesType][unit]
end
function GetModelCount()
  local units = {
    6,
    7,
    5,
    4
  }
  return units[ForcesType]
end
function ModelData_end()
end

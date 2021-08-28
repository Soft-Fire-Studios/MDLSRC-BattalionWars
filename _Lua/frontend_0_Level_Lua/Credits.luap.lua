function Credits(owner)
  local tableData = {}
  tableData.selectedButton = 1
  tableData.clearColour = {
    0,
    0,
    0,
    127
  }
  tableData.backgrounds = {
    {
      "BG_MAP01",
      "bg1pos",
      {640, 379},
      {0, 0},
      {640, 379},
      {
        127,
        127,
        0,
        127
      }
    },
    {
      "BG_MAP01",
      "bg2pos",
      {640, 379},
      {0, 0},
      {640, 379},
      {
        127,
        127,
        0,
        127
      }
    },
    {
      "OVR_MAP08_EDGE",
      {-10, 22},
      {330, 190},
      {2, 2},
      {316, 186},
      {
        127,
        127,
        0,
        64
      }
    },
    {
      "OVR_MAP08_EDGE",
      {320, 22},
      {330, 190},
      {316, 2},
      {-316, 186},
      {
        127,
        127,
        0,
        64
      }
    },
    {
      "OVR_MAP08_EDGE",
      {-10, 212},
      {330, 190},
      {2, 186},
      {316, -186},
      {
        127,
        127,
        0,
        64
      }
    },
    {
      "OVR_MAP08_EDGE",
      {320, 212},
      {330, 190},
      {316, 186},
      {-316, -186},
      {
        127,
        127,
        0,
        64
      }
    },
    {
      "OVR_MAP01_CONT",
      "bg3pos",
      {616, 336},
      {0, 0},
      {616, 336},
      "bg3colour"
    },
    {
      "OVR_MAP02_DOTS",
      "bg3pos",
      {648, 160},
      {0, 0},
      {648, 160},
      "bg3colour"
    },
    {
      "OVR_MAP03_SCALE",
      "bg3pos",
      {40, 29},
      {0, 0},
      {40, 29},
      "bg3colour"
    },
    {
      "OVR_MAP04_SQU",
      "bg3pos",
      {48, 48},
      {0, 0},
      {48, 48},
      "bg3colour"
    },
    {
      "OVR_MAP05_TAPE",
      "bg3pos",
      {512, 48},
      {0, 0},
      {512, 48},
      "bg3colour"
    },
    {
      "OVR_MAP06_TAPE",
      "bg3pos",
      {560, 48},
      {0, 0},
      {560, 48},
      "bg3colour"
    },
    {
      "OVR_MAP07_TAPE",
      "bg3pos",
      {304, 48},
      {0, 0},
      {304, 48},
      "bg3colour"
    },
    {
      "PHTO_01_VLAD",
      "bg3pos",
      {320, 240},
      {0, 0},
      {320, 240},
      "bg3colour"
    },
    {
      "PHTO_02_AUSTIN",
      "bg3pos",
      {320, 240},
      {0, 0},
      {320, 240},
      "bg3colour"
    },
    {
      "PHTO_03_AIR",
      "bg3pos",
      {320, 240},
      {0, 0},
      {320, 240},
      "bg3colour"
    },
    {
      "PHTO_05_TUNDRA",
      "bg3pos",
      {240, 320},
      {0, 0},
      {240, 320},
      "bg3colour"
    },
    {
      "PHTO_06_HERMAN",
      "bg3pos",
      {240, 320},
      {0, 0},
      {240, 320},
      "bg3colour"
    },
    {
      "LOGO_F_01",
      "bg3pos",
      {112, 112},
      {0, 0},
      {112, 112},
      "bg3colour"
    },
    {
      "LOGO_S_01",
      "bg3pos",
      {112, 112},
      {0, 0},
      {112, 112},
      "bg3colour"
    },
    {
      "LOGO_T_01",
      "bg3pos",
      {112, 112},
      {0, 0},
      {112, 112},
      "bg3colour"
    },
    {
      "LOGO_U_01",
      "bg3pos",
      {112, 112},
      {0, 0},
      {112, 112},
      "bg3colour"
    },
    {
      "LOGO_X_01",
      "bg3pos",
      {112, 112},
      {0, 0},
      {112, 112},
      "bg3colour"
    },
    {
      "BP_TMP_TXT_01",
      "bg3pos",
      {256, 48},
      {0, 0},
      {256, 48},
      "bg3colour"
    },
    {
      "BP_TMP_TXT_02",
      "bg3pos",
      {256, 48},
      {0, 0},
      {256, 48},
      "bg3colour"
    },
    {
      "BP_TMP_TXT_03",
      "bg3pos",
      {256, 48},
      {0, 0},
      {256, 48},
      "bg3colour"
    },
    {
      "BP_TMP_TXT_04",
      "bg3pos",
      {256, 48},
      {0, 0},
      {256, 48},
      "bg3colour"
    },
    {
      "BP_TMP_TXT_05",
      "bg3pos",
      {256, 48},
      {0, 0},
      {256, 48},
      "bg3colour"
    },
    {
      "BP_TMP_MAZE_01",
      "bg3pos",
      {640, 80},
      {0, 0},
      {640, 80},
      "bg3colour"
    },
    {
      "BP_TMP_GRID_02",
      "bg3pos",
      {152, 240},
      {0, 0},
      {152, 240},
      "bg3colour"
    },
    {
      "BP_TMP_GUIDL_01",
      "bg3pos",
      {576, 400},
      {0, 0},
      {576, 400},
      "bg3colour"
    },
    {
      "BP_TMP_GUID_01",
      "bg3pos",
      {56, 56},
      {0, 0},
      {56, 56},
      "bg3colour"
    },
    {
      "BP_TMP_GUID_02",
      "bg3pos",
      {64, 64},
      {0, 0},
      {64, 64},
      "bg3colour"
    },
    {
      "BP_TMP_GUID_03",
      "bg3pos",
      {56, 56},
      {0, 0},
      {56, 56},
      "bg3colour"
    },
    {
      "BP_TMP_GUID_04",
      "bg3pos",
      {112, 56},
      {0, 0},
      {112, 56},
      "bg3colour"
    },
    {
      "BP_TMP_GUID_05",
      "bg3pos",
      {48, 48},
      {0, 0},
      {48, 48},
      "bg3colour"
    },
    {}
  }
  tableData.buttons = {
    {onPressA = "bPopPage", onPressB = "bPopPage"}
  }
  tableData.sprites = {
    {
      SpriteID.FE_GAMEPAD_A,
      {600, 424}
    },
    {
      SpriteID.FE_GAMEPAD_B,
      {40, 424}
    }
  }
  tableData.textBoxes = {
    {
      StringID.BACK,
      {60, 404},
      {250, 15},
      {
        127,
        32,
        32,
        127
      },
      StatusFont,
      JUSTIFY.LEFT
    },
    {
      StringID.CREDITS,
      {250, 404},
      {140, 15},
      {
        127,
        127,
        0,
        127
      },
      StatusFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.BACK,
      {320, 404},
      {250, 15},
      {
        0,
        127,
        0,
        127
      },
      StatusFont,
      JUSTIFY.RIGHT
    }
  }
  local function updateFadeIn()
    updateFadeColour(tableData)
  end
  local initScrollY = 160
  local startScrollY = 340
  local lineHeight = 19
  local windowTop = 28
  local windowBottom = 350
  local scrollY, lineY
  local creditsStr = {
    "Nintendo Credits",
    "\r\n",
    "Executive Producer",
    "                                     Satoru Iwata",
    "\r\n",
    "Producer",
    "                                     Kensuke Tanabe",
    "\r\n",
    "Supervisors",
    "                                     Keisuke Terasaki",
    "                                     Hiro Yamada",
    "                                     Masakazu Miyazaki",
    "                                     Brett Gow",
    "\r\n",
    "Nintendo Testing Teams",
    "                                     NOA Product Testing",
    "                                     NCL Super Mario Club",
    "\r\n",
    "NOA Testing Coordination",
    "                                     Jim Holdeman",
    "\r\n",
    "Special Thanks",
    "                                     Tatsumi Kimishima",
    "                                     Mike Fukuda",
    "                                     Tom Prata",
    "                                     Jeff Miller",
    "                                     Jeff Gilbert",
    "                                     Chiko Bird",
    "\r\n",
    "Kuju Credits",
    "\r\n",
    "Executive Producer",
    "                                     Mark Washbrook",
    "\r\n",
    "Project Managers",
    "                                     Mat Hart",
    "                                     Anthony Redfern",
    "\r\n",
    "Lead Design",
    "                                     Tancred Dyke-Wells",
    "\r\n",
    "Lead Level Design",
    "                                     Benoit Macon",
    "                                     Andy Trowers",
    "\r\n",
    "Technical Design Coordination",
    "                                     Toby Woolley",
    "\r\n",
    "Level Design Team",
    "                                     Louis Ho",
    "                                     Bob Jones",
    "                                     Gavin Skinner",
    "                                     Davide Soliani",
    "                                     Stephen Stanyon",
    "                                     Jamie Whitworth",
    "                                     Toby Woolley",
    "\r\n",
    "Lead Programmer",
    "                                     Jon Robinson",
    "\r\n",
    "Application Programming Team",
    "                                     Ian Crowther",
    "                                     Oliver Dibben",
    "                                     Andy Heap",
    "                                     Ed Key",
    "                                     Kingsley Pratt",
    "                                     Jeremy Sallis",
    "                                     Mark Sinclair",
    "                                     Kieron Wheeler",
    "\r\n",
    "Engine Programming",
    "                                     Alan Hinton",
    "                                     Mike Jacobsen",
    "                                     Dominic Jackson",
    "                                     Dominic Penfold",
    "\r\n",
    "Animation Programming",
    "                                     Jim Brewster",
    "\r\n",
    "Audio Programming",
    "                                     Dave Shillito",
    "\r\n",
    "Tools Programming Team",
    "                                     Stephen Boissiere",
    "                                     Paul Louth",
    "                                     Joe Taylor",
    "\r\n",
    "FX Tools Programming Team",
    "                                     Don Boogert",
    "                                     Jeremy Longley",
    "\r\n",
    "Key Programming Contributions",
    "                                     James Cox",
    "                                     Adam Croston",
    "\r\n",
    "Art Director",
    "                                     Tancred Dyke-Wells",
    "\r\n",
    "Lead Artists",
    "                                     Cumron Ashtiani",
    "                                     Ben Hebb",
    "\r\n",
    "Environment and Scenery Art Team",
    "                                     Martin Clemie",
    "                                     Caroline Green",
    "                                     Richard Fornara",
    "                                     Kees Gajentaan",
    "                                     Mark Harrison-Ball",
    "                                     Mark Slater",
    "                                     Dave Swan",
    "                                     Julia Wren",
    "                                     Chris Young",
    "                                     Tony Zottola",
    "\r\n",
    "Special FX Artists",
    "                                     Robin Deitch",
    "                                     Kees Gajentaan",
    "\r\n",
    "Concept Art",
    "                                     Tancred Dyke-Wells",
    "                                     Richard Evans",
    "                                     Etienne Jabbour",
    "                                     Gavin J. Rothery",
    "                                     Dave Swan",
    "                                     Doug Telford",
    "\r\n",
    "Vehicle Team",
    "                                     Mark Davies",
    "                                     Kevin Duffy",
    "                                     Robert Greenwood",
    "                                     Stephen Hales",
    "                                     Gavin J. Rothery",
    "                                     Andrew Wheater",
    "\r\n",
    "Lead Character Artist and Animator",
    "                                     Etienne Jabbour",
    "\r\n",
    "Character Artists",
    "                                     Dave Swan",
    "                                     Roman Van der Haven",
    "\r\n",
    "Animators",
    "                                     James Finlay",
    "                                     David Houston",
    "\r\n",
    "Front End and HUD Design",
    "                                     Matthew Burton McFaul",
    "                                     Julia Wren",
    "\r\n",
    "Storyboard",
    "                                     Pascale Degrune",
    "\r\n",
    "Movie Sequences",
    "                                     Jon Allen",
    "                                     Adam Coglan",
    "                                     Andy Day",
    "                                     Kees Gajentaan",
    "                                     Rhys Griffin",
    "                                     David Houston",
    "                                     Etienne Jabbour",
    "\r\n",
    "Script Supervisor",
    "                                     Tancred Dyke-Wells",
    "\r\n",
    "Scriptwriter",
    "                                     Paul Mackman",
    "\r\n",
    "Story",
    "                                     Richard Boon",
    "                                     Paul Mackman",
    "\r\n",
    "Packaging Artwork",
    "                                     Niklas Jansson",
    "\r\n",
    "Logo Design",
    "                                     Tze Lim",
    "                                     Julia Wren",
    "\r\n",
    "Music and Movie Audio",
    "                                     Nick Arundel",
    "                                     Justin Scharvona",
    "\r\n",
    "Sound Effects",
    "                                     Ciaran Walsh",
    "\r\n",
    "QA Manager",
    "                                     Asad Habib",
    "\r\n",
    "QA Lead",
    "                                     Aaron Ludlow",
    "\r\n",
    "QA Team",
    "                                     Nick Codd",
    "                                     James McDonald",
    "                                     Greg Moniz",
    "                                     Anthony Pepper",
    "\r\n",
    "Voice Recording",
    "                                     Phil Morris - Allinthegame Ltd.",
    "\r\n",
    "Voice Cast",
    "Commanding Officers",
    "General Herman",
    "                                     Stefan Ashton Frank",
    "\r\n",
    "Brigadier Betty",
    "                                     Penny Rawlins",
    "\r\n",
    "Colonel Austin",
    "                                     Kenny Andrews",
    "\r\n",
    "Tsar Gorgi",
    "                                     Kerry Shale",
    "\r\n",
    "Marshal Nova",
    "                                     Kerry Shale",
    "\r\n",
    "Narrator",
    "                                     Kerry Shale",
    "\r\n",
    "Kaiser Vlad",
    "                                     Wolf Kahler",
    "\r\n",
    "Major Nelly",
    "                                     Sarah Parnell",
    "\r\n",
    "Countess Ingrid",
    "                                     Sarah Parnell",
    "\r\n",
    "Kommander Ubel",
    "                                     Simon Greenall",
    "\r\n",
    "Empress Lei-qo",
    "                                     Haruka Kuroda",
    "\r\n",
    "Troops",
    "Western Frontier Grunt",
    "                                     Russell Bentley",
    "\r\n",
    "Western Frontier Veteran",
    "                                     Glenn Wrage",
    "\r\n",
    "Tundran Grunt",
    "                                     Brian Bowles",
    "\r\n",
    "Tundran Veteran",
    "                                     Brian Bowles",
    "\r\n",
    "Xylvanian Grunt",
    "                                     Brian Bowles",
    "\r\n",
    "Xylvanian Veteran",
    "                                     Brian Bowles",
    "\r\n",
    "Solar Empire Grunt",
    "                                     Dai Tabuchi",
    "\r\n",
    "Solar Empire Veteran",
    "                                     Dai Tabuchi",
    "\r\n",
    "Legion Grunt",
    "                                     Mark Silk",
    "\r\n",
    "Legion Veteran",
    "                                     Brian Bowles",
    "\r\n",
    "Special Thanks",
    "                                     Calista Anstee",
    "                                     Ian Baverstock",
    "                                     Josiah Blackbourn",
    "                                     Claire Boissiere",
    "                                     Siobhan Calfe",
    "                                     Jules Davis",
    "                                     John Folan",
    "                                     David Foster",
    "                                     Kate Griffin",
    "                                     Adrian Hawkins",
    "                                     Roberto Katalinic",
    "                                     Sheila Kettle",
    "                                     Jonathan Newth",
    "                                     Graham Parker",
    "                                     Alison Porteous",
    "                                     David Stanley",
    "                                     Jean-Marc Troit",
    "                                     Jon Vernon",
    "                                     Mark Wesley",
    "\r\n",
    "Dolby, Pro Logic, and the double-D symbol are trademarks of Dolby Laboratories.",
    "\r\n",
    "\r\n",
    "All Rights, including the copyrights of Game, Scenario, Music and Program, reserved by NINTENDO."
  }
  local function txtPos()
    return 90, scrollY + lineY * lineHeight
  end
  local function creditsLine()
    return creditsStr[lineY]
  end
  local function txtCol()
    local a = 0
    local y = scrollY + lineY * lineHeight - windowTop
    if y > 0 and y < windowBottom then
      a = sin(180 / windowBottom * y) * 200
    end
    return 127, 127, 127, a
  end
  local credits = {
    creditsLine,
    txtPos,
    {500, 400},
    txtCol,
    GUIFont,
    JUSTIFY.LEFT
  }
  local function updateScrollY()
    scrollY = scrollY - 1
  end
  local function renderText()
    lineY = 1
    while creditsStr[lineY] do
      RenderTextBox(credits, 0)
      lineY = lineY + 1
    end
    if scrollY + lineY * lineHeight < 0 then
      scrollY = startScrollY
    end
  end
  local function init()
    scrollY = initScrollY
  end
  local function localOpenGlobe()
    openGlobe(tableData.backgrounds)
  end
  local function localUpdateGlobe()
    updateGlobe(tableData.backgrounds)
  end
  tableData.open = {
    init,
    initFadeIn,
    localOpenGlobe
  }
  tableData.update = {
    updateFadeIn,
    updateScrollY,
    localUpdateGlobe
  }
  tableData.render = {renderText}
  tableData.close = {closeGlobe}
  function GetCreditsPage()
    return tableData
  end
  DebugOut("Credits ticked ***")
end

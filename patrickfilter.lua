--- Filter Title: patrickfilter
--- Filter Type: MultiStrict
--- Filter Description: Multi-level filter
--- Filter Link: https://raw.githubusercontent.com/patrick-solving-problems/patrickfilter/refs/heads/main/patrickfilter.lua
return {
    reload = "{red}big juicy patrickfilter 1 {blue}xdd",
    debug = false,
    audioPlayback = true,
    allowOverrides = false,
    filter_titles = {"Leveling","Strict","Very-Strict","Uber-Strict"},
    filter_level = 4,
    rules = 
    {

    -- Debugging codes
    {
      codes = "allitems",
       location = {"onplayer", "atvendor","equipped"},
       suffix = "\n{red}Quality: {quality}\nRarity: {rarity}\nCode: {code}",
    },


    -- Highlight and notifications for accidentally dropping things out of your inventory
    {   
        codes = {"box","led","ast","cm7","kv0","ky0","kb0","kg0","kr0","kw0","ks0","kk0","xu0","xu1","xu2","xu3","xu4","xu5","xu6","xu7","xu8","xu9","xux","xuy","s01","s02","s03","s04","s05","s06","s07","s08","s09","s10","s11","s12","s13","s14","s15","s16","s17","s18","s19","s20","s21","s22","s23","s24","s25","s26","s27","s28","s29","s30","s31","s32","s33","s34","s35","s36","s37","s38","s39","s40","s41","s42","s43","s44","s45","s46","s50","t51","t52","t53","t54","t55","t56","t57","t58","t59","t60","t61","t62","t63","t64","t65","t66","t67","t68","t69","t70","t71","t72","t73","t74","t75","t76","s51","s52","s53","s54","s55","s56","s57","s58","s59","s60","s61","s62","s63","s64","s65","s66","s67","s68","s69","s70","s71","s72","s73","s74","s75","s76","s77","s78","s79","s80","s81","s82","s83","t01","t02","t03","t04","t05","t06","t07","t08","t09","t10","t11","t12","t13","t14","t15","t16","t17","t18","t19","t20","t21","t22","t23","t24","t25","t26","t27","t28","t29","t30","ko0","ko1","ko2","ko3","ko4","ko5","cm9"},
        audio = "You dropped something",
        notify = "{red}!!! You dropped something important !!!",
        prefix = "{black}!!! ",
        suffix = " !!!",
        background = {255, 50, 50, 255},
        border = {0, 0, 0, 255, 10},
    },

    -- Consumables
    -- Hide utility potions
    {
        codes = { "vps","yps","wms" },
        hide = true,
    },
    -- Hide hp, mana, scrolls 
    {
        codes = { "hp5" },
        hide = false,
    },
    {
        codes = { "mp0", "mp1", "mp2", "mp3", "mp4", "mp5", "hp0", "hp1", "hp2", "hp3", "hp4", "isc", "tsc", "rvs"},
        hide = true,
    },

    -- Small Rejuv
    {   
        code = "rvs",
        prefix = "> ",
		name_override = "{purple}25",
        suffix = "{white} <",
        border = {255, 0, 255, 255, 1},	
    },
    -- Big Rejuv
    {   
        code = "rvl",
        prefix = "> ",
        name_override = "{purple}50",
        suffix = "{white} <",
        border = {255, 0, 255, 255, 1},	 
    },
    -- Flask of renewal
    {   
        code = "po3",
        prefix = "> ",
        name_override = "{purple}100",
        suffix = "{white} <",
        border = {255, 0, 255, 255, 1},	 
    },


    -- Deco Rules -- 
    -- Bordering 
    {
        codes = "allitems",
        quality = "7",
        border = { 175, 125, 0, 255, 3 }
    },
    {
        codes = "allitems",
        quality = "5",
        border = { 0, 175, 128, 255, 3 }
    },
    {
        codes = "allitems",
        itype = 74,
        border = { 255, 255, 255, 255, 1 }
    },
    {
        codes = "allitems",
        itype = 20,
        border = { 255, 255, 255, 255, 1 }
    },
    {
        codes = "allitems",
        itype = { 134, 135, 136, 137 },
        border = { 255, 255, 255, 255, 2 }
    },
    {
        codes = {"jew","cm1","cm2","cm3"},
        quality = "6",
        border = {200, 200, 100, 255, 1},
    },

    -- Star better bases
    {
        codes = "allitems",
        quality = "3",
        prefix = "* ",
        suffix = " *"
    }, 

    -- Hide Decpihers
    {   
        code = "ddd",
        hide = true,
    },

    -- D-Stones
    {   
        codes = {"ppp","hly","eee","hh2","ggg","sss","ttt"},
        notify = "{gold}>>> D-Stone Drop <<<",
        prefix = "{purple}> ",
        suffix = " <",
        background = {0, 0, 0, 255},
        border = {255, 25, 255, 255, 2},
    },

    -- Aura stones
    {   
        codes = {"an3", "an4", "an5", "an6", "an7", "an8", "an9"},
        notify = "{gold}>>> Aurastone Drop <<<",
        prefix = ">>> ",
        suffix = " <<<",
        name_style = "Rainbow Static",
        background = {127, 127, 127, 255},
        background_style = "Rainbow",
        border = {255, 255, 255, 255, 10},
    },

    -- Socket Donut
    {   
        code = "sdo",
        notify = "{Orange}>>> Mmm.. Donut <<<",
        prefix = ">> ",
        name_override = "Socket Donut",
        suffix = " <<",
        name_style = "Open Flames",
        background = {0, 0, 0, 255},
        border = {255, 255, 25, 255, 2},
    },

    -- Maple, Anvil, Elixir, Cookbook
    {   
        code = "map",
        notify = "{gold}>>> Crafting Drop <<<",
        audio = "Maple Leaf",
        prefix = "{black}>>> ",
        name_override = "Maple Leaf",
        suffix = " <<<",
        name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {150, 150, 0, 255, 5},
    },
    {   
        code = "qqq",
        notify = "{gold}>>> Crafting Drop <<<",
        audio = "Anvil Stone",
        prefix = "{black}>>> ",
        name_override = "Anvil Stone",
        suffix = " <<<",
        name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {150, 0, 0, 255, 5},
    },
    {   
        code = "elx",
        notify = "{gold}>>> Crafting Drop <<<",
        audio = "Elixir",
        prefix = "{black}>>> ",
        name_override = "Elixir",
        suffix = " <<<",
        name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 5},
    },
    {   
        code = "yyy",
        notify = "{gold}>>> Crafting Drop <<<",
        audio = "Cookbook",
        prefix = "{black}>>> ",
        name_override = "Cookbook",
        suffix = " <<<",
        name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 5},
    },

    -- Cash/XP Items
    {   
        code = "fkn",
        --notify = "",
        prefix = "{black}$$$ ",
        name_override = "Fake Note",
        suffix = " $$$",
        --name_style = "Rainbow",
        background = {0, 150, 100, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 2},
    },
    {   
        code = "ore",
        --notify = "",
        prefix = "{black}$$$ ",
        name_override = "Ore",
        suffix = " $$$",
        --name_style = "Rainbow",
        background = {150, 150, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 2},
    },
    {   
        code = "po4",
        --notify = "",
        prefix = "{black}[XP] ",
        name_override = "Nervana Grass",
        suffix = " [XP]",
        --name_style = "Rainbow",
        background = {0, 150, 100, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 2},
    },

    -- Corruption/Annoint/Uber items
    {   
        code = "wss",
        notify = "WORLDSTAR",
        prefix = "{black}>>> ",
        name_override = "Worldstone Shard",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {255, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 5},
    },
    {   
        code = "ht1",
        notify = "Diablo is finished.. here's a horn",
        prefix = "{black}>>> ",
        name_override = "Diablo's Enh Horn",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {255, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 5},
    },
    {   
        code = "ht2",
        notify = "Baal is finished.. here's an eye ball",
        prefix = "{black}>>> ",
        name_override = "Baal's Enh Eye",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {255, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 5},
    },
    {   
        code = "ht3",
        notify = "Mephisto is finished.. here is brainzzz",
        prefix = "{black}>>> ",
        name_override = "Mephisto's Enh Brain",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {255, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 5},
    },
    {   
        code = "um1",
        notify = "Diablo is finished.. here's a horn",
        prefix = "{black}>>> ",
        name_override = "Diablo's Enh Horn",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {255, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        code = "um2",
        notify = "Baal is finished.. here's an eye ball",
        prefix = "{black}>>> ",
        name_override = "Baal's Enh Eye",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {255, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        code = "um3",
        notify = "Mephisto is finished.. here is brainzzz",
        prefix = "{black}>>> ",
        name_override = "Mephisto's Enh Brain",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {255, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        codes = {"um4","um5"},
        notify = "Who broke the houglass?",
        prefix = "{black}>>> ",
        name_override = "Broken Hourglass Shard",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {255, 100, 100, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        code = "um6",
        notify = "Even a broken hourglass is right twice a day",
        prefix = "{black}>>> ",
        name_override = "Broken Hourglass",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {255, 100, 100, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        code = "um7",
        notify = "Annoint this, annoint that, gosh..",
        audio = "Orb of Annointment",
        prefix = ">>> ",
        name_override = "Orb of Annointment",
        suffix = " <<<",
        name_style = "Rainbow",
        background = {255, 127, 127, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        code = "um8",
        notify = "Why you crying dear?",
        audio = "Lilith Tear",
        prefix = ">>> ",
        name_override = "Lilith's Crystallized Tear",
        suffix = " <<<",
        name_style = "Rainbow Group",
        background = {255, 255, 255, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        code = "um9",
        notify = "I found a feather",
        audio = "Tie Real Feather",
        prefix = ">>> ",
        name_override = "Tyreal's Eternal Feather",
        suffix = " <<<",
        name_style = "Rainbow",
        background = {255, 255, 255, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        code = "u17",
        notify = "Luci I'm home",
        audio = "Lucy On Essence",
        prefix = ">>> ",
        name_override = "Lucion Essence",
        suffix = " <<<",
        name_style = "Rainbow",
        background = {255, 255, 255, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        code = "u18",
        notify = "Luci what is the world is this",
        audio = "Lucy On Fiery Relic",
        prefix = ">>> ",
        name_override = "Lucion Fiery Relic",
        suffix = " <<<",
        name_style = "Rainbow",
        background = {255, 255, 255, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        code = "u19",
        prefix = "> ",
        name_override = "Primordial Soulstone",
        suffix = " <",
        --name_style = "Rainbow",
        background = {255, 255, 255, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        code = "u20",
        notify = "Astro, you gave me your heart?",
        audio = "Astro Gha Petrified Heart",
        prefix = ">>> ",
        name_override = "Astrogha's Petrified Heart",
        suffix = " <<<",
        name_style = "Rainbow",
        background = {255, 255, 255, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        code = "u21",
        notify = "Shards of Ore",
        prefix = ">>> ",
        name_override = "Ore Shards",
        suffix = " <<<",
        name_style = "Rainbow",
        background = {255, 255, 255, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },

    -- Maps
    -- Tier 1

    {   
    --    codes = {"z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","z19","z20"},
        code = "z01",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}> ",
        name_override = "Cellar of Pain T1",
        suffix = " <",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 4},
    },
    {   
    --    codes = {"z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","z19","z20"},
        code = "z02",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}> ",
        name_override = "Chasm of Horrors T1",
        suffix = " <",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 4},
    },
    {   
    --    codes = {"z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","z19","z20"},
        code = "z03",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}> ",
        name_override = "Crypt of Damnation T1",
        suffix = " <",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 4},
    },
    {   
    --    codes = {"z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","z19","z20"},
        code = "z04",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}> ",
        name_override = "Necropolis T1",
        suffix = " <",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 4},
    },

    -- Tier 2

    {   
    --    codes = {"z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","z19","z20"},
        code = "z05",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}> ",
        name_override = "Ancient Tomb T2",
        suffix = " <",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 4},
    },
    {   
    --    codes = {"z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","z19","z20"},
        code = "z06",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}> ",
        name_override = "Chaos Rift T2",
        suffix = " <",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 4},
    },
    {   
    --    codes = {"z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","z19","z20"},
        code = "z07",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}> ",
        name_override = "Infested Lair T2",
        suffix = " <",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 4},
    },
    {   
    --    codes = {"z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","z19","z20"},
        code = "z08",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}> ",
        name_override = "Labyrinth of Suffering T2",
        suffix = " <",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 4},
    },

    -- Tier 3

    {   
    --    codes = {"z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","z19","z20"},
        code = "z09",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}>> ",
        name_override = "Decaying Depths T3",
        suffix = " <<",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 0, 255, 4},
    },
    {   
    --    codes = {"z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","z19","z20"},
        code = "z10",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}>> ",
        name_override = "Endless Abyss T3",
        suffix = " <<",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 0, 255, 4},
    },
    {   
    --    codes = {"z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","z19","z20"},
        code = "z11",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}>> ",
        name_override = "Frozen Wastes T3",
        suffix = " <<",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 0, 255, 4},
    },
    {   
    --    codes = {"z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","z19","z20"},
        code = "z12",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}>> ",
        name_override = "Twisted Maze T3",
        suffix = " <<",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 0, 255, 4},
    },

    -- Tier 4

    {   
    --    codes = {"z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","z19","z20"},
        code = "z13",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}>>> ",
        name_override = "Cursed Ossuary T4",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 127, 0, 255, 8},
    },
    {   
    --    codes = {"z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","z19","z20"},
        code = "z14",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}>>> ",
        name_override = "Infernal Nexus T4",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 127, 0, 255, 8},
    },
    {   
        code = "z15",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}>>> ",
        name_override = "Reliquary of Souls T4",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 127, 0, 255, 8},
    },
    {   
        code = "z16",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{white}>>> ",
        name_override = "Shrine of Destruction T4",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 127, 0, 255, 8},
    },

    -- Tier 5

    {   
        code = "z17",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{red}>>> ",
        name_override = "Eye of the Storm T5",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 0, 0, 255, 8},
    },
    {   
        code = "z18",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{red}>>> ",
        name_override = "Ice Crown Citadel T5",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 0, 0, 255, 8},
    },
    {   
        code = "z19",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{red}>>> ",
        name_override = "The Sanctum of the Dead T5",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 0, 0, 255, 8},
    },
    {   
        code = "z20",
        notify = "Map Dropped",
        audio = "Map",
        prefix = "{red}>>> ",
        name_override = "The Reliquary of False Light T5",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 0, 0, 255, 8},
    },
    

    -- Notify high rune drops
    {
        notify = "High LOD Rune Decal!",
        audio = "High LOD Rune",
        codes = {"30l","31l","32l","33l"}
    },
    {
        notify = "High ESR Rune!",
        audio = "High ESR Rune",
        codes = {"r45","r46","r50","r84","r85","r86","r87","r88","r89","r90","r91","r92","r93","r94","r95","r96","r97"}
    },

    -- Notify unique rings, amulets, charms
    {
        notify = "Bling!",
        audio = "Bling",
        quality = 7,
        codes = {"amu","rin","zrn","srn","nrn","prn","brg","drn","arn","jew"},
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 0, 0, 255, 8},
    },
    {
        notify = "Charming!",
        audio = "Charm",
        quality = 7,
        codes = {"cm1","cm2","cm3"}
    },

    -- Socket info for ground items
    {   
        codes = {"02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
        location = {"onground"},
        suffix = " {lilac}[{sockets}]"
    },

    -- hightlight mythical unique items
    {
        codes = {"7wd","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","mam","mrn","m10","m06","m20","m15"},
        quality = "7",
        notify = "Mythical drop!!",
        audio = "Mythic Unique",
        name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 0, 0, 255, 8},
        suffix = " {lilac}[{sockets}]"
    },

    -- hightlight mythical items
    {
        codes = {"7wd","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","mam","mrn","m10","m06","m20","m15"},
        quality = "4-",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        border = {255, 0, 0, 255, 8},
        suffix = " {lilac}[{sockets}]"
    },



    
    -- Armor/Weap Decal Highlights

    {   
        codes = {"01c","02c","03c","04c","05c","06c","07c","08c","09c","10c","11c","12c","13c","14c","15c","16c","17c","18c","19c","20c","21c","22c","23c","24c","25c","26c","27c","28c","29c","30c","31c","32c","33c","34c","35c","36c","37c","38c","39c","40c","41c","42c","43c","44c","45c","46c","01f","02f","03f","04f","05f","06f","07f","08f","09f","10f","11f","12f","13f","14f","15f","16f","17f","18f","19f","20f","21f","22f","23f","24f","25f","26f","27f","28f","29f","30f","31f","32f","33f","34f","35f","36f","37f","38f","39f","40f","41f","42f","43f","44f","45f","46f","47f","48f","49f","50f","51f","52f","53f","54f","55f","56f","57f","58f","59f","60f","61f","62f","63f","64f","65f","66f","67f","68f","69f","70f","71f","01i","02i","03i","01j","02j","03j","04j"},
        prefix = "{gold}[N] ",
        --name_override = "Normal Coupon",
        --suffix = " <",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {0, 255, 0, 255, 3},
    },
    {   
        codes = {"01d","02d","03d","04d","05d","06d","07d","08d","09d","10d","11d","12d","13d","14d","15d","16d","17d","18d","19d","20d","21d","22d","23d","24d","25d","26d","27d","28d","29d","30d","31d","32d","33d","34d","35d","36d","37d","38d","39d","40d","41d","42d","43d","44d","45d","46d","47d","48d","49d","50d","01g","02g","03g","04g","05g","06g","07g","08g","09g","10g","11g","12g","13g","14g","15g","16g","17g","18g","19g","20g","21g","22g","23g","24g","25g","26g","27g","28g","29g","30g","31g","32g","33g","34g","35g","36g","37g","38g","39g","40g","41g","42g","43g","44g","45g","46g","47g","48g","49g","50g","51g","52g","53g","54g","55g","56g","57g","58g","59g","60g","61g","62g","63g","64g","65g","66g","67g","68g","69g","70g","71g","72g","73g","74g","75g","76g","77g","78g","05i","06i","07i","08i","05j","06j","07j","08j","04i"},
        prefix = "{gold}[NM] ",
        --name_override = "Normal Coupon",
        --suffix = " <",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 0, 255, 3},
    },
    {   
        codes = {"01e","02e","03e","04e","05e","06e","07e","08e","09e","10e","11e","12e","13e","14e","15e","16e","17e","18e","19e","20e","21e","22e","23e","24e","25e","26e","27e","28e","29e","30e","31e","32e","33e","34e","35e","36e","37e","38e","39e","40e","41e","01h","02k","03h","04h","05h","06h","07h","08h","09h","10h","11h","12k","13h","14h","15h","16h","17h","18h","19h","20h","21h","22k","23h","24h","25h","26h","27h","28h","29h","30h","31h","32k","33h","34h","35h","36h","37h","38h","39h","40h","41h","42k","43h","44h","45h","46h","47h","48h","49h","50h","51h","52k","53h","54h","55h","56h","57h","58h","59h","60h","61h","62k","09i","10i","11i","12i","09j","10j"},        
        prefix = "{gold}[H] ",
        --name_override = "Normal Coupon",
        --suffix = " <",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 0, 0, 255, 3},
    },




    -- Subjective Filtering Logic Begins

    -- Hide unwanted bases by filter level
    {
        codes = {"02h", "0ax", "0b0", "0b6", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
        quality = 1,
        hide = true,  
    },

    -- Hide 1 socket items
    {
        codes = {"02h", "0ax", "0b0", "0b6", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
        quality = "4-",
        sockets = "1",
        hide = true,
    },

    -- Hide non-superior white except leveling
    {
        codes = {"02h", "0ax", "0b0", "0b6", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pb", "0pi", "0qs", "0rd", "0rm", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0wa", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7p7", "7pi", "7qr", "7qs", "7s7", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7wa", "7wb", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
        quality = 2,
        hide = false,
        filter_levels = 1
    },
    {
        codes = {"02h", "0ax", "0b0", "0b6", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pb", "0pi", "0qs", "0rd", "0rm", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0wa", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7p7", "7pi", "7qr", "7qs", "7s7", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7wa", "7wb", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
        quality = 2,
        hide = true,
        filter_levels = 2
    },
    {
        codes = {"02h", "0ax", "0b6", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cr", "0dg", "0di", "0fc", "0fl", "0ga", "0gi", "0gl", "0gm", "0gp", "0gw", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pb", "0pi", "0qs", "0rd", "0rm", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0wa", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cr", "7cs", "7dg", "7di", "7fc", "7fl", "7ga", "7gi", "7gl", "7gm", "7gw", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7p7", "7pi", "7qr", "7qs", "7s7", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7wa", "7wb", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
        quality = 2,
        hide = true,
        filter_levels = "3+"
    },

    -- Hide unwanted magic armor/weapons
    -- Highs all blue armor and weapons 
    {
        codes = {"02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
        quality = 4,
        hide = false,
        filter_levels = 1
    },
    {
        codes = {"02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
        quality = 4,
        hide = true,
        filter_levels = 2
    },
    {
        codes = {"02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
        quality = 4,
        hide = true,
        filter_levels = "3+"
    },


    -- hide magic arrow/bolts on very and uber
    {
        codes = {"cqv","cq2","cq0","aq0","aq2","aqv"},
        quality = "4-",
        hide = true,
        filter_levels = "3+"
    },



    -- Hide jewels and charms based on strictness
            
    {
        codes = {"jew","cm1","cm2","cm3","cx1","cx2","cx3"},
        quality = 4,
        hide = false,
        filter_levels = 1
    },
    {
        codes = {"jew","cm1","cm2","cm3","cx1","cx2","cx3"},
        quality = 4,
        hide = false,
        filter_levels = 2
    },
    {
        codes = {"jew","cm1","cm2","cm3","cx1","cx2","cx3"},
        quality = 4,
        hide = true,
        filter_levels = 3
    },    
    {
        codes = {"jew","cm1","cm2","cm3","cx1","cx2","cx3"},
        quality = 4,
        hide = true,
        filter_levels = 4
    },

    -- Hide magic rings and amulets based on strictness
            
    {
        codes = {"amu","rin","zrn","srn","nrn","prn","brg","drn","arn","aa0","aam","amu","au0","au2","au9","ba0","bam","da0","dam","mam","na0","nam","pa0","pam","sa0","sam","vip","za0","zam",},
        quality = 4,
        hide = false,
        filter_levels = 1
    },
    {
        codes = {"amu","rin","zrn","srn","nrn","prn","brg","drn","arn","aa0","aam","amu","au0","au2","au9","ba0","bam","da0","dam","mam","na0","nam","pa0","pam","sa0","sam","vip","za0","zam",},
        quality = 4,
        hide = false,
        filter_levels = 2
    },
    {
        codes = {"amu","rin","zrn","srn","nrn","prn","brg","drn","arn","aa0","aam","amu","au0","au2","au9","ba0","bam","da0","dam","mam","na0","nam","pa0","pam","sa0","sam","vip","za0","zam",},
        quality = 4,
        hide = true,
        filter_levels = 3
    },
    
    {
        codes = {"amu","rin","zrn","srn","nrn","prn","brg","drn","arn","aa0","aam","amu","au0","au2","au9","ba0","bam","da0","dam","mam","na0","nam","pa0","pam","sa0","sam","vip","za0","zam",},
        quality = 4,
        hide = true,
        filter_levels = 4
    },

    -- Uber-strict rules, hide sets, hide all non-mythical bases, small rejuvs

    {
        codes = "allitems",
        quality = 5,
        hide = true,
        filter_levels = 4
    },
    {
        codes = {"02h", "0ax", "0b0", "0b6", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
        quality = 6,
        sockets = "0",
        hide = true,
        filter_levels = 4
    },
    {   
        code = "rvs",
        hide = true,
        filter_levels = 1,
        border = {255, 0, 255, 255, 1},	
    },





    -- Rune Logic
    -- Low tier LOD Decals by strictness
    -- Leveling hide nothing, strict only hides low tier, very hides mid and low tier decals
    {
        codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l","10l","11l","12l","13l","14l","15l","16l","17l","18l","19l","20l","21l","22l","23l","24l","25l","26l","27l","28l","29l","30l","31l","32l","33l"},
        hide = false,
        filter_levels = 1,
    },
    {
        codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l"},
        hide = true,
        filter_levels = 2,
    },
    {
        codes = {"10l","11l","12l","13l","14l","15l","16l","17l","18l","19l","20l","21l","22l"},
        hide = false,
        filter_levels = 2,
    },
    {
        codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l","10l","11l","12l","13l","14l","15l","16l","17l","18l","19l","20l","21l","22l"},
        hide = true,
        filter_levels = "3+",
    },

    -- Low tier ESR runes by strictness
    -- Leveling hide nothing, strict only hides white tier, very strict hides white, red, yellow
    {
        codes = {"r01","r02","r03","r04","r05","r06","r07","r08","r09","r10","r11","r12","r13","r14","r15","r16","r17","r18","r19","r20","r21","r22","r23","r24","r25","r26","r27","r28"},
        hide = false,
        filter_levels = 1,
    },    
    {
        codes = {"r01","r02","r03","r04","r05","r08","r09","r10","r11","r12","r15","r16","r17","r18","r19"},
        hide = true,
        filter_levels = 2,
    },
    {
        codes = {"r06","r07","r13","r14","r20","r21","r22","r23","r24","r25","r26","r27","r28"},
        hide = false,
        filter_levels = 2,
    },      
    {
        codes = {"r01","r02","r03","r04","r05","r06","r08","r09","r10","r11","r12","r13","r15","r16","r17","r18","r19","r20","r22","r23","r24","r25","r26","r27","r29","r30","r31","r32","r33","r34","r36","r37","r38","r39"},
        hide = true,
        filter_levels = "3+",
    },



    -- Rune tooltip updates (Thanks QUAN)
    {code="r01",location={"onplayer","atvendor"},prefix="{gray}+1 White Rune Points when bagged{orange}\n"}, --I Rune
    {code="r02",location={"onplayer","atvendor"},prefix="{gray}+2 White Rune Points when bagged{orange}\n"}, --U Rune
    {code="r03",location={"onplayer","atvendor"},prefix="{gray}+4 White Rune Points when bagged{orange}\n"}, --Shi Rune
    {code="r04",location={"onplayer","atvendor"},prefix="{gray}+8 White Rune Points when bagged{orange}\n"}, --Ka Rune
    {code="r05",location={"onplayer","atvendor"},prefix="{gray}+16 White Rune Points when bagged{orange}\n"}, --N Rune
    {code="r06",location={"onplayer","atvendor"},prefix="{gray}+32 White Rune Points when bagged{orange}\n"}, --Ku Rune
    {code="r07",location={"onplayer","atvendor"},prefix="{gray}+64 White Rune Points when bagged{orange}\n"}, --Yo Rune
    {code="r08",location={"onplayer","atvendor"},prefix="{gray}+1 Red Rune Points when bagged{orange}\n"}, --Ki Rune
    {code="r09",location={"onplayer","atvendor"},prefix="{gray}+2 Red Rune Points when bagged{orange}\n"}, --Ri Rune
    {code="r10",location={"onplayer","atvendor"},prefix="{gray}+4 Red Rune Points when bagged{orange}\n"}, --Mi Rune
    {code="r11",location={"onplayer","atvendor"},prefix="{gray}+8 Red Rune Points when bagged{orange}\n"}, --Ya Rune
    {code="r12",location={"onplayer","atvendor"},prefix="{gray}+16 Red Rune Points when bagged{orange}\n"}, --A Rune
    {code="r13",location={"onplayer","atvendor"},prefix="{gray}+32 Red Rune Points when bagged{orange}\n"}, --Tsu Rune
    {code="r14",location={"onplayer","atvendor"},prefix="{gray}+64 Red Rune Points when bagged{orange}\n"}, --Chi Rune
    {code="r15",location={"onplayer","atvendor"},prefix="{gray}+1 Yellow Rune Points when bagged{orange}\n"}, --Sa Rune
    {code="r16",location={"onplayer","atvendor"},prefix="{gray}+2 Yellow Rune Points when bagged{orange}\n"}, --Yu Rune
    {code="r17",location={"onplayer","atvendor"},prefix="{gray}+4 Yellow Rune Points when bagged{orange}\n"}, --Ke Rune
    {code="r18",location={"onplayer","atvendor"},prefix="{gray}+8 Yellow Rune Points when bagged{orange}\n"}, --E Rune
    {code="r19",location={"onplayer","atvendor"},prefix="{gray}+16 Yellow Rune Points when bagged{orange}\n"}, --Ko Rune
    {code="r20",location={"onplayer","atvendor"},prefix="{gray}+32 Yellow Rune Points when bagged{orange}\n"}, --Ra Rune
    {code="r21",location={"onplayer","atvendor"},prefix="{gray}+64 Yellow Rune Points when bagged{orange}\n"}, --O Rune
    {code="r22",location={"onplayer","atvendor"},prefix="{gray}+1 Orange Rune Points when bagged{orange}\n"}, --Ho Rune
    {code="r23",location={"onplayer","atvendor"},prefix="{gray}+2 Orange Rune Points when bagged{orange}\n"}, --Me Rune
    {code="r24",location={"onplayer","atvendor"},prefix="{gray}+4 Orange Rune Points when bagged{orange}\n"}, --Ru Rune
    {code="r25",location={"onplayer","atvendor"},prefix="{gray}+8 Orange Rune Points when bagged{orange}\n"}, --Ta Rune
    {code="r26",location={"onplayer","atvendor"},prefix="{gray}+16 Orange Rune Points when bagged{orange}\n"}, --To Rune
    {code="r27",location={"onplayer","atvendor"},prefix="{gray}+32 Orange Rune Points when bagged{orange}\n"}, --Wa Rune
    {code="r28",location={"onplayer","atvendor"},prefix="{gray}+64 Orange Rune Points when bagged{orange}\n"}, --Ha Rune
    {code="r29",location={"onplayer","atvendor"},prefix="{gray}+1 Green Rune Points when bagged{orange}\n"}, --Na Rune
    {code="r30",location={"onplayer","atvendor"},prefix="{gray}+2 Green Rune Points when bagged{orange}\n"}, --Ni Rune
    {code="r31",location={"onplayer","atvendor"},prefix="{gray}+4 Green Rune Points when bagged{orange}\n"}, --Se Rune
    {code="r32",location={"onplayer","atvendor"},prefix="{gray}+8 Green Rune Points when bagged{orange}\n"}, --Fu Rune
    {code="r33",location={"onplayer","atvendor"},prefix="{gray}+16 Green Rune Points when bagged{orange}\n"}, --Ma Rune
    {code="r34",location={"onplayer","atvendor"},prefix="{gray}+32 Green Rune Points when bagged{orange}\n"}, --Hi Rune
    {code="r35",location={"onplayer","atvendor"},prefix="{gray}+64 Green Rune Points when bagged{orange}\n"}, --Mo Rune
    {code="r36",location={"onplayer","atvendor"},prefix="{gray}+1 Gold Rune Points when bagged{orange}\n"}, --No Rune
    {code="r37",location={"onplayer","atvendor"},prefix="{gray}+2 Gold Rune Points when bagged{orange}\n"}, --Te Rune
    {code="r38",location={"onplayer","atvendor"},prefix="{gray}+4 Gold Rune Points when bagged{orange}\n"}, --Ro Rune		
    {code="r39",location={"onplayer","atvendor"},prefix="{gray}+8 Gold Rune Points when bagged{orange}\n"}, --So Rune		
    {code="r40",location={"onplayer","atvendor"},prefix="{gray}+16 Gold Rune Points when bagged{orange}\n"}, --Mu Rune		
    {code="r41",location={"onplayer","atvendor"},prefix="{gray}+32 Gold Rune Points when bagged{orange}\n"}, --Ne Rune
    {code="r42",location={"onplayer","atvendor"},prefix="{gray}+64 Gold Rune Points when bagged{orange}\n"}, --Re Rune
    {code="r43",location={"onplayer","atvendor"},prefix="{gray}+1 Purple Rune Points when bagged{orange}\n"}, --Su Rune
    {code="r44",location={"onplayer","atvendor"},prefix="{gray}+2 Purple Rune Points when bagged{orange}\n"}, --He Rune
    {code="r45",location={"onplayer","atvendor"},prefix="{gray}+4 Purple Rune Points when bagged{orange}\n"}, --Nu Rune
    {code="r46",location={"onplayer","atvendor"},prefix="{gray}+8 Purple Rune Points when bagged{orange}\n"}, --Wo Rune
    {code="r50",location={"onplayer","atvendor"},prefix="{gray}+16 Purple Rune Points when bagged{orange}\n"}, --Null Rune

    -- Tooltip max sockets info
    {   
        codes = "allitems",
        location = {"onplayer", "atvendor", "equipped", "onground"},
        suffix_desc = "{green}Sockets: {maxsock}\n{blue}",
        sockets = "1+",
        maxsock = true
    },

    {   
        codes = "allitems",
        location = {"onplayer", "atvendor", "equipped", "onground"},
        suffix_desc = "{red}Sockets: {maxsock}\n{blue}",
        sockets = "0+",
        maxsock = false
    },


    -- Manual paste/post custom stuff below this line --

    -- hide low gems
    {
        codes = {"gcv","gfv","gsv","gzv","gpv","gcb","gfb","gsb","glb","gpb","gcg","gfg","gsg","glg","gpg","gcr","gfr","gsr","glr","gpr","gcw","gfw","gsw","glw","gpw","gcy","gfy","gsy","gly","gpy","skc","skf","sku","skl","skz","gck","gfk","gsk","gzk","gpk"},
        hide = true,
        filter_levels = "3+",
    },



    {  -- MERC any eth elite POLEARM
        codes = {"0b7","0vo","0s8","0pa","0h0","0wc","7o7","7vo","7s8","7pa","7h7","7wc"},
        quality = "3-",
        ethereal = true,
        notify = "eth merc polearm",
        prefix = "{white}>>> ",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 127, 0, 255, 8},
    },



    {  -- MERC any eth elite SWORD
        codes = {"0cm","0gs","0b0","0fb","0gd","7cm","7gs","7b7","7fb","7gd","q3b","q3c","q3d","q3e","q3f","q4b","q4c","q4d","q4e","q4f","m22","m18","dd1"},
        quality = "3-",
        ethereal = true,
        notify = "eth merc sword",
        prefix = "{white}>>> ",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 127, 0, 255, 8},
    },


    -- Dont put anything else below this --


    }
}






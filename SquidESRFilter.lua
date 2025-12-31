--- Filter Title: SquidFilter Beta-Audio v07c
--- Filter Type: MultiStrict
--- Filter Description: Multi-level filter
--- Filter Link: https://raw.githubusercontent.com/kraimoor/squidfilter/refs/heads/main/SquidESRFilter.lua
return {
    reload = "{red}SquidFilter Beta-Audio v07c [{yellow}Reloaded{red}]",
    debug = false,
    audioPlayback = true,
    allowOverrides = false,
    filter_titles = {"Leveling","Strict","Very-Strict","Uber-Strict"},
    filter_level = 4,
    rules = 
    {

    -- Debugging codes
    --{   
    --  codes = "allitems",
    --   location = {"onplayer", "atvendor"},
    --   suffix = "\n{red}Quality: {quality}\nRarity: {rarity}\nCode: {code}",
    --},

    -- Consumables
    -- Hide utility potions
    {
        codes = { "vps","yps","wms" },
        hide = true,
    },
    -- Hide hp, mana, scrolls 
    {
        codes = { "mp0", "mp1", "mp2", "mp3", "mp4", "mp5", "hp0", "hp1", "hp2", "hp3", "hp4", "hp5", "isc", "tsc"},
        hide = false,
        filter_levels = 1
    },
    {
        codes = { "mp0", "mp1", "mp2", "mp3", "mp4", "mp5", "hp0", "hp1", "hp2", "hp3", "hp4", "hp5", "isc", "tsc"},
        hide = true,
        filter_levels = 2
    },
    {
        codes = { "mp0", "mp1", "mp2", "mp3", "mp4", "mp5", "hp0", "hp1", "hp2", "hp3", "hp4", "hp5", "isc", "tsc"},
        hide = true,
        filter_levels = 3
    },
    
    {
        codes = { "mp0", "mp1", "mp2", "mp3", "mp4", "mp5", "hp0", "hp1", "hp2", "hp3", "hp4", "hp5", "isc", "tsc"},
        hide = true,
        filter_levels = 4
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

    -- Deciphers
    {   
        code = "ddd",
        prefix = "{gold}> ",
        name_override = "Ancient Decipher",
        suffix = " <",
        background = {0, 0, 0, 255},
        border = {200, 200, 100, 255, 1},
    },

    -- Hide Decpihers for uber-strict

    {   
        code = "ddd",
        hide = true,
        filter_levels = 4
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
        code = "p04",
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
        name_override = "Ancient Tome T2",
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
        codes = {"23l","24l","25l","26l","27l","28l","29l","30l","31l","32l","33l"}
        
    },
    {
        notify = "High ESR Rune!",
        audio = "High ESR Rune",
        codes = {"r43","r44","r45","r46","r84","r85","r86","r87","r88","r89","r90","r91","r92","r93","r94","r95","r96","r97"}
    },

    -- Notify unique rings, amulets, charms
    {
        notify = "Bling!",
        audio = "Bling",
        quality = 7,
        codes = {"amu","rin","zrn","srn","nrn","prn","brg","drn","arn"},
    },
    {
        notify = "Charming!",
        audio = "Charm",
        quality = 7,
        codes = {"cm1","cm2","cm3"}
    },

    -- hightlight mythical unique items
    {
        codes = {"7wd","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","mam","mrn","m10","m06","m20","m15",},
        quality = "7",
        notify = "Mythical drop!!",
        audio = "Mythic Unique",
        name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 0, 0, 255, 8},
    },

    -- hightlight mythical unique items
    {
        codes = {"7wd","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","mam","mrn","m10","m06","m20","m15",},
        quality = "4-",
        --notify = "Mythical Base!!",
        name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 0, 0, 255, 8},
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
        codes = {"am1","am2","am6","am7","amb","amc","q77","q80","am5","ama","amf","m31","q79","q82","pa1","pa2","pa3","pa4","pa5","pa6","pa7","pa8","pa9","paa","pab","pac","pad","pae","paf","qp9","qpc","qpe","9nn","nin","0nn","9nj","m37","njt","am3","am4","am8","am9","amd","ame","q78","q81","0ax","0ba","0bt","0ga","0gi","0ha","0la","0mp","0wa","2ax","72a","7ax","7ba","7bt","7ga","7gi","7ha","7la","7mp","7wa","82a","92a","9ax","9ba","9bt","9ga","9gi","9ha","9la","9mp","9wa","axe","bax","btx","gax","gix","hax","lax","m21","mpi","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","wax","0be","9be","m35","pbe","3hb","3lb","3mb","3tb","3vb","5hb","5lb","5mb","5tb","5vb","ahb","alb","atb","avb","bmb","hbl","lbl","mbl","msb","tbl","uhc","ulc","umc","utc","uvc","vbl","xms","yms","zhb","zlb","zmb","ztb","zvb","0xb","9xb","bts","m38","2hb","2lb","2mb","2tb","2vb","4hb","4lb","4mb","4tb","4vb","dbt","hbt","lbt","mbt","tbt","uhb","ulb","umb","utb","uvb","vbt","xbt","xhb","xlb","xmb","xtb","xvb","ybt","yhb","ylb","ymb","ytb","yvb","1cb","1hb","1l8","1lb","1lw","1s8","1sb","1sw","6cb","6hb","6l7","6lb","6lw","6s7","6sb","6sw","8cb","8hb","8l8","8lb","8lw","8s8","8sb","8sw","cbw","hbw","lbb","lbw","lwb","m01","m24","m30","p60","p61","p62","p63","p64","p65","p66","p67","q59","q60","q61","q62","q63","q64","q65","q66","sbb","sbw","swb","ci0","ci1","ci2","ci3","ci4","cix","qi2","qi3","clk","xlk","ylk","0cl","0sp","7cl","7sp","9cl","9sp","clb","p15","p19","q14","q18","spc","0sh","9sh","m34","shc","2hg","2lg","2mg","2tg","2vg","4hg","4lg","4mg","4tg","4vg","hgl","irg","lgl","mgl","tgl","uhg","ulg","umg","utg","uvg","vgl","xhg","xig","xlg","xmg","xtg","xvg","yhg","yig","ylg","ymg","ytg","yvg","9ar","9wb","9xf","axf","btl","ces","clw","ktr","skr","wrb","7ar","7cs","7lw","7qr","7tw","7wb","7xf","9cs","9lw","9qr","9tw","m13","q73","q74","q75","q76","q86","0gm","0m0","0wh","7gm","7m7","7wh","9gm","9m9","9wh","gma","m03","mau","p23","p24","p25","q22","q23","q24","whm","ne1","ne2","ne3","ne4","ne5","ne6","ne7","ne8","ne9","nea","neb","ned","nee","nef","neg","qna","qne","qnf","2ap","2h9","2hl","2hm","2kp","2lm","2rn","2sk","4ap","4h9","4hl","4hm","4kp","4lm","4rn","4sk","bhm","cap","crn","dwc","fhl","ghm","hlm","msk","skp","uap","uh9","uhl","uhm","ukp","ulm","urn","usk","xap","xdw","xh9","xhl","xhm","xkp","xlm","xrn","xsk","yap","ydw","yh9","yhl","yhm","ykp","ylm","yrn","ysk","0gl","0ja","0pi","0s9","0ts","7gl","7ja","7pi","7s7","7ts","9gl","9ja","9pi","9s9","9ts","glv","jav","m28","m32","m33","pil","ssp","tsp","0bl","0dg","0di","0kr","7bl","7dg","7di","7kr","9bl","9dg","9di","9kr","bld","dgr","dir","kri","p40","p41","p42","p43","q39","q40","q41","q42","0kl","0rm","9kl","9rm","arm","kkl","0fl","0ma","0mt","7fl","7ma","7mt","9fl","9ma","9mt","fla","mac","mst","p20","p21","p22","q19","q20","q21","0mn","9mn","m09","mnb","0rd","9rd","m14","nrd","0ns","0sy","9ns","9sy","m05","nsy","syn","m07","ob1","ob2","ob3","ob4","ob5","ob6","ob7","ob8","ob9","oba","obb","obc","obd","obe","obf","q83","q84","q85","0pb","9pb","apb","dr1","dr2","dr3","dr4","dr5","dr6","dr7","dr8","dr9","dra","drb","drc","drd","dre","drf","qda","qdb","qdd","qde","qdf","ba1","ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","baa","bab","bac","bad","bae","baf","qba","qbc","qbd","qbe","0b7","0h0","0pa","0s8","0vo","0wc","7h7","7o7","7pa","7s8","7vo","7wc","9b7","9h9","9pa","9s8","9vo","9wc","bar","hal","p49","p50","p51","p52","p53","p54","pax","q48","q49","q50","q51","q52","q53","scy","vou","wsc","rob","xrb","yrb","0gp","0qs","0ws","5sc","7qs","7sc","7ws","9gp","9qs","9sc","9ws","gsc","gsp","m12","m17","p16","p17","p18","q15","q16","q17","scp","wsp","eht","xht","yht","2it","2ml","2ow","2pk","2rg","2sh","2ts","2uc","4it","4ml","4ow","4pk","4rg","4sh","4ts","4uc","bsh","buc","fts","gts","kit","lrg","sml","sp2","spk","tow","uit","uml","uow","upk","urg","ush","uts","uuc","xft","xit","xml","xow","xpk","xrg","xsh","xts","xuc","yft","yit","yml","yow","ypk","yrg","ysh","yts","yuc","0br","0p0","0sr","0st","0tr","7br","7p7","7sr","7st","7tr","9br","9p9","9sr","9st","9tr","brn","p44","p45","p46","p47","p48","pik","q43","q44","q45","q46","q47","spr","spt","tri","1bs","1cs","1ls","1ss","1ws","6bs","6cs","6ls","6ss","6ws","8bs","8cs","8ls","8ss","8ws","bst","cst","lst","m11","m29","m36","p55","p56","p57","p58","p59","q54","q55","q56","q57","q58","sst","wst","02h","0b0","0bs","0cm","0cr","0fb","0fc","0gd","0gs","0ls","0sb","0sm","0ss","0wd","2hs","72h","7b7","7bs","7cm","7cr","7fb","7fc","7gd","7gs","7ls","7sb","7sm","7ss","7wd","92h","9b9","9bs","9cm","9cr","9fb","9fc","9gd","9gs","9ls","9sb","9sm","9ss","9wd","bsd","bsw","clm","cr2","crs","dd1","flb","flc","gis","gsd","lsd","m16","m18","m22","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","q25","q26","q27","q28","q29","q2a","q2b","q2c","q2d","q2e","q2f","q30","q31","q32","q33","q34","q35","q36","q37","q38","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","sbr","scm","ssd","wsd","0b6","0ta","7b8","7ta","9b8","9ta","bal","m26","q72","tax","0bk","0tk","7bk","7tk","9bk","9tk","bkf","m08","m27","q71","tkf","2ar","2cl","2ea","2hn","2la","2ld","2lt","2ng","2pl","2rs","2th","2tp","2tu","2ui","2ul","4ar","4cl","4ea","4hn","4la","4ld","4lt","4ng","4pl","4rs","4th","4tp","4tu","4ui","4ul","aar","br2","brs","chn","elv","fld","ful","gth","hla","lea","ltp","plt","qui","rng","scl","shl","spl","stu","uar","ucl","uea","uhn","ula","uld","ult","ung","upl","urs","uth","utp","utu","uui","uul","xar","xcl","xea","xhh","xhn","xla","xld","xlt","xlv","xng","xpl","xrs","xth","xtp","xtu","xui","xul","yar","ycl","yea","yhh","yhn","yla","yld","ylt","ylv","yng","ypl","yrs","yth","ytp","ytu","yui","yul","0bw","0gw","0wn","0yw","7bw","7gw","7wn","7yw","9bw","9gw","9wn","9yw","bwn","gwn","m04","m23","p11","p12","p13","p14","q10","q11","q12","q13","wnd","ywn","1hx","1lx","1mx","1rx","6hx","6lx","6mx","6rx","8hx","8lx","8mx","8rx","hxb","lxb","m02","m25","mxb","p68","p69","p70","p71","q67","q68","q69","q70","rxb"},
        quality = 1,
        hide = true,  
    },

    -- Hide 1 socket items
    {
        codes = {"am1","am2","am6","am7","amb","amc","q77","q80","am5","ama","amf","m31","q79","q82","pa1","pa2","pa3","pa4","pa5","pa6","pa7","pa8","pa9","paa","pab","pac","pad","pae","paf","qp9","qpc","qpe","9nn","nin","0nn","9nj","m37","njt","am3","am4","am8","am9","amd","ame","q78","q81","0ax","0ba","0bt","0ga","0gi","0ha","0la","0mp","0wa","2ax","72a","7ax","7ba","7bt","7ga","7gi","7ha","7la","7mp","7wa","82a","92a","9ax","9ba","9bt","9ga","9gi","9ha","9la","9mp","9wa","axe","bax","btx","gax","gix","hax","lax","m21","mpi","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","wax","0be","9be","m35","pbe","3hb","3lb","3mb","3tb","3vb","5hb","5lb","5mb","5tb","5vb","ahb","alb","atb","avb","bmb","hbl","lbl","mbl","msb","tbl","uhc","ulc","umc","utc","uvc","vbl","xms","yms","zhb","zlb","zmb","ztb","zvb","0xb","9xb","bts","m38","2hb","2lb","2mb","2tb","2vb","4hb","4lb","4mb","4tb","4vb","dbt","hbt","lbt","mbt","tbt","uhb","ulb","umb","utb","uvb","vbt","xbt","xhb","xlb","xmb","xtb","xvb","ybt","yhb","ylb","ymb","ytb","yvb","1cb","1hb","1l8","1lb","1lw","1s8","1sb","1sw","6cb","6hb","6l7","6lb","6lw","6s7","6sb","6sw","8cb","8hb","8l8","8lb","8lw","8s8","8sb","8sw","cbw","hbw","lbb","lbw","lwb","m01","m24","m30","p60","p61","p62","p63","p64","p65","p66","p67","q59","q60","q61","q62","q63","q64","q65","q66","sbb","sbw","swb","ci0","ci1","ci2","ci3","ci4","cix","qi2","qi3","clk","xlk","ylk","0cl","0sp","7cl","7sp","9cl","9sp","clb","p15","p19","q14","q18","spc","0sh","9sh","m34","shc","2hg","2lg","2mg","2tg","2vg","4hg","4lg","4mg","4tg","4vg","hgl","irg","lgl","mgl","tgl","uhg","ulg","umg","utg","uvg","vgl","xhg","xig","xlg","xmg","xtg","xvg","yhg","yig","ylg","ymg","ytg","yvg","9ar","9wb","9xf","axf","btl","ces","clw","ktr","skr","wrb","7ar","7cs","7lw","7qr","7tw","7wb","7xf","9cs","9lw","9qr","9tw","m13","q73","q74","q75","q76","q86","0gm","0m0","0wh","7gm","7m7","7wh","9gm","9m9","9wh","gma","m03","mau","p23","p24","p25","q22","q23","q24","whm","ne1","ne2","ne3","ne4","ne5","ne6","ne7","ne8","ne9","nea","neb","ned","nee","nef","neg","qna","qne","qnf","2ap","2h9","2hl","2hm","2kp","2lm","2rn","2sk","4ap","4h9","4hl","4hm","4kp","4lm","4rn","4sk","bhm","cap","crn","dwc","fhl","ghm","hlm","msk","skp","uap","uh9","uhl","uhm","ukp","ulm","urn","usk","xap","xdw","xh9","xhl","xhm","xkp","xlm","xrn","xsk","yap","ydw","yh9","yhl","yhm","ykp","ylm","yrn","ysk","0gl","0ja","0pi","0s9","0ts","7gl","7ja","7pi","7s7","7ts","9gl","9ja","9pi","9s9","9ts","glv","jav","m28","m32","m33","pil","ssp","tsp","0bl","0dg","0di","0kr","7bl","7dg","7di","7kr","9bl","9dg","9di","9kr","bld","dgr","dir","kri","p40","p41","p42","p43","q39","q40","q41","q42","0kl","0rm","9kl","9rm","arm","kkl","0fl","0ma","0mt","7fl","7ma","7mt","9fl","9ma","9mt","fla","mac","mst","p20","p21","p22","q19","q20","q21","0mn","9mn","m09","mnb","0rd","9rd","m14","nrd","0ns","0sy","9ns","9sy","m05","nsy","syn","m07","ob1","ob2","ob3","ob4","ob5","ob6","ob7","ob8","ob9","oba","obb","obc","obd","obe","obf","q83","q84","q85","0pb","9pb","apb","dr1","dr2","dr3","dr4","dr5","dr6","dr7","dr8","dr9","dra","drb","drc","drd","dre","drf","qda","qdb","qdd","qde","qdf","ba1","ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","baa","bab","bac","bad","bae","baf","qba","qbc","qbd","qbe","0b7","0h0","0pa","0s8","0vo","0wc","7h7","7o7","7pa","7s8","7vo","7wc","9b7","9h9","9pa","9s8","9vo","9wc","bar","hal","p49","p50","p51","p52","p53","p54","pax","q48","q49","q50","q51","q52","q53","scy","vou","wsc","rob","xrb","yrb","0gp","0qs","0ws","5sc","7qs","7sc","7ws","9gp","9qs","9sc","9ws","gsc","gsp","m12","m17","p16","p17","p18","q15","q16","q17","scp","wsp","eht","xht","yht","2it","2ml","2ow","2pk","2rg","2sh","2ts","2uc","4it","4ml","4ow","4pk","4rg","4sh","4ts","4uc","bsh","buc","fts","gts","kit","lrg","sml","sp2","spk","tow","uit","uml","uow","upk","urg","ush","uts","uuc","xft","xit","xml","xow","xpk","xrg","xsh","xts","xuc","yft","yit","yml","yow","ypk","yrg","ysh","yts","yuc","0br","0p0","0sr","0st","0tr","7br","7p7","7sr","7st","7tr","9br","9p9","9sr","9st","9tr","brn","p44","p45","p46","p47","p48","pik","q43","q44","q45","q46","q47","spr","spt","tri","1bs","1cs","1ls","1ss","1ws","6bs","6cs","6ls","6ss","6ws","8bs","8cs","8ls","8ss","8ws","bst","cst","lst","m11","m29","m36","p55","p56","p57","p58","p59","q54","q55","q56","q57","q58","sst","wst","02h","0b0","0bs","0cm","0cr","0fb","0fc","0gd","0gs","0ls","0sb","0sm","0ss","0wd","2hs","72h","7b7","7bs","7cm","7cr","7fb","7fc","7gd","7gs","7ls","7sb","7sm","7ss","7wd","92h","9b9","9bs","9cm","9cr","9fb","9fc","9gd","9gs","9ls","9sb","9sm","9ss","9wd","bsd","bsw","clm","cr2","crs","dd1","flb","flc","gis","gsd","lsd","m16","m18","m22","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","q25","q26","q27","q28","q29","q2a","q2b","q2c","q2d","q2e","q2f","q30","q31","q32","q33","q34","q35","q36","q37","q38","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","sbr","scm","ssd","wsd","0b6","0ta","7b8","7ta","9b8","9ta","bal","m26","q72","tax","0bk","0tk","7bk","7tk","9bk","9tk","bkf","m08","m27","q71","tkf","2ar","2cl","2ea","2hn","2la","2ld","2lt","2ng","2pl","2rs","2th","2tp","2tu","2ui","2ul","4ar","4cl","4ea","4hn","4la","4ld","4lt","4ng","4pl","4rs","4th","4tp","4tu","4ui","4ul","aar","br2","brs","chn","elv","fld","ful","gth","hla","lea","ltp","plt","qui","rng","scl","shl","spl","stu","uar","ucl","uea","uhn","ula","uld","ult","ung","upl","urs","uth","utp","utu","uui","uul","xar","xcl","xea","xhh","xhn","xla","xld","xlt","xlv","xng","xpl","xrs","xth","xtp","xtu","xui","xul","yar","ycl","yea","yhh","yhn","yla","yld","ylt","ylv","yng","ypl","yrs","yth","ytp","ytu","yui","yul","0bw","0gw","0wn","0yw","7bw","7gw","7wn","7yw","9bw","9gw","9wn","9yw","bwn","gwn","m04","m23","p11","p12","p13","p14","q10","q11","q12","q13","wnd","ywn","1hx","1lx","1mx","1rx","6hx","6lx","6mx","6rx","8hx","8lx","8mx","8rx","hxb","lxb","m02","m25","mxb","p68","p69","p70","p71","q67","q68","q69","q70","rxb"},
        quality = "4-",
        sockets = "1",
        hide = true,
    },

    -- Hide non-superior white except leveling
    {
        codes = {"am1","am2","am6","am7","amb","amc","q77","q80","am5","ama","amf","m31","q79","q82","pa1","pa2","pa3","pa4","pa5","pa6","pa7","pa8","pa9","paa","pab","pac","pad","pae","paf","qp9","qpc","qpe","9nn","nin","0nn","9nj","m37","njt","am3","am4","am8","am9","amd","ame","q78","q81","0ax","0ba","0bt","0ga","0gi","0ha","0la","0mp","0wa","2ax","72a","7ax","7ba","7bt","7ga","7gi","7ha","7la","7mp","7wa","82a","92a","9ax","9ba","9bt","9ga","9gi","9ha","9la","9mp","9wa","axe","bax","btx","gax","gix","hax","lax","m21","mpi","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","wax","0be","9be","m35","pbe","3hb","3lb","3mb","3tb","3vb","5hb","5lb","5mb","5tb","5vb","ahb","alb","atb","avb","bmb","hbl","lbl","mbl","msb","tbl","uhc","ulc","umc","utc","uvc","vbl","xms","yms","zhb","zlb","zmb","ztb","zvb","0xb","9xb","bts","m38","2hb","2lb","2mb","2tb","2vb","4hb","4lb","4mb","4tb","4vb","dbt","hbt","lbt","mbt","tbt","uhb","ulb","umb","utb","uvb","vbt","xbt","xhb","xlb","xmb","xtb","xvb","ybt","yhb","ylb","ymb","ytb","yvb","1cb","1hb","1l8","1lb","1lw","1s8","1sb","1sw","6cb","6hb","6l7","6lb","6lw","6s7","6sb","6sw","8cb","8hb","8l8","8lb","8lw","8s8","8sb","8sw","cbw","hbw","lbb","lbw","lwb","m01","m24","m30","p60","p61","p62","p63","p64","p65","p66","p67","q59","q60","q61","q62","q63","q64","q65","q66","sbb","sbw","swb","ci0","ci1","ci2","ci3","ci4","cix","qi2","qi3","clk","xlk","ylk","0cl","0sp","7cl","7sp","9cl","9sp","clb","p15","p19","q14","q18","spc","0sh","9sh","m34","shc","2hg","2lg","2mg","2tg","2vg","4hg","4lg","4mg","4tg","4vg","hgl","irg","lgl","mgl","tgl","uhg","ulg","umg","utg","uvg","vgl","xhg","xig","xlg","xmg","xtg","xvg","yhg","yig","ylg","ymg","ytg","yvg","9ar","9wb","9xf","axf","btl","ces","clw","ktr","skr","wrb","7ar","7cs","7lw","7qr","7tw","7wb","7xf","9cs","9lw","9qr","9tw","m13","q73","q74","q75","q76","q86","0gm","0m0","0wh","7gm","7m7","7wh","9gm","9m9","9wh","gma","m03","mau","p23","p24","p25","q22","q23","q24","whm","ne1","ne2","ne3","ne4","ne5","ne6","ne7","ne8","ne9","nea","neb","ned","nee","nef","neg","qna","qne","qnf","2ap","2h9","2hl","2hm","2kp","2lm","2rn","2sk","4ap","4h9","4hl","4hm","4kp","4lm","4rn","4sk","bhm","cap","crn","dwc","fhl","ghm","hlm","msk","skp","uap","uh9","uhl","uhm","ukp","ulm","urn","usk","xap","xdw","xh9","xhl","xhm","xkp","xlm","xrn","xsk","yap","ydw","yh9","yhl","yhm","ykp","ylm","yrn","ysk","0gl","0ja","0pi","0s9","0ts","7gl","7ja","7pi","7s7","7ts","9gl","9ja","9pi","9s9","9ts","glv","jav","m28","m32","m33","pil","ssp","tsp","0bl","0dg","0di","0kr","7bl","7dg","7di","7kr","9bl","9dg","9di","9kr","bld","dgr","dir","kri","p40","p41","p42","p43","q39","q40","q41","q42","0kl","0rm","9kl","9rm","arm","kkl","0fl","0ma","0mt","7fl","7ma","7mt","9fl","9ma","9mt","fla","mac","mst","p20","p21","p22","q19","q20","q21","0mn","9mn","m09","mnb","0rd","9rd","m14","nrd","0ns","0sy","9ns","9sy","m05","nsy","syn","m07","ob1","ob2","ob3","ob4","ob5","ob6","ob7","ob8","ob9","oba","obb","obc","obd","obe","obf","q83","q84","q85","0pb","9pb","apb","dr1","dr2","dr3","dr4","dr5","dr6","dr7","dr8","dr9","dra","drb","drc","drd","dre","drf","qda","qdb","qdd","qde","qdf","ba1","ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","baa","bab","bac","bad","bae","baf","qba","qbc","qbd","qbe","0b7","0h0","0pa","0s8","0vo","0wc","7h7","7o7","7pa","7s8","7vo","7wc","9b7","9h9","9pa","9s8","9vo","9wc","bar","hal","p49","p50","p51","p52","p53","p54","pax","q48","q49","q50","q51","q52","q53","scy","vou","wsc","rob","xrb","yrb","0gp","0qs","0ws","5sc","7qs","7sc","7ws","9gp","9qs","9sc","9ws","gsc","gsp","m12","m17","p16","p17","p18","q15","q16","q17","scp","wsp","eht","xht","yht","2it","2ml","2ow","2pk","2rg","2sh","2ts","2uc","4it","4ml","4ow","4pk","4rg","4sh","4ts","4uc","bsh","buc","fts","gts","kit","lrg","sml","sp2","spk","tow","uit","uml","uow","upk","urg","ush","uts","uuc","xft","xit","xml","xow","xpk","xrg","xsh","xts","xuc","yft","yit","yml","yow","ypk","yrg","ysh","yts","yuc","0br","0p0","0sr","0st","0tr","7br","7p7","7sr","7st","7tr","9br","9p9","9sr","9st","9tr","brn","p44","p45","p46","p47","p48","pik","q43","q44","q45","q46","q47","spr","spt","tri","1bs","1cs","1ls","1ss","1ws","6bs","6cs","6ls","6ss","6ws","8bs","8cs","8ls","8ss","8ws","bst","cst","lst","m11","m29","m36","p55","p56","p57","p58","p59","q54","q55","q56","q57","q58","sst","wst","02h","0b0","0bs","0cm","0cr","0fb","0fc","0gd","0gs","0ls","0sb","0sm","0ss","0wd","2hs","72h","7b7","7bs","7cm","7cr","7fb","7fc","7gd","7gs","7ls","7sb","7sm","7ss","7wd","92h","9b9","9bs","9cm","9cr","9fb","9fc","9gd","9gs","9ls","9sb","9sm","9ss","9wd","bsd","bsw","clm","cr2","crs","dd1","flb","flc","gis","gsd","lsd","m16","m18","m22","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","q25","q26","q27","q28","q29","q2a","q2b","q2c","q2d","q2e","q2f","q30","q31","q32","q33","q34","q35","q36","q37","q38","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","sbr","scm","ssd","wsd","0b6","0ta","7b8","7ta","9b8","9ta","bal","m26","q72","tax","0bk","0tk","7bk","7tk","9bk","9tk","bkf","m08","m27","q71","tkf","2ar","2cl","2ea","2hn","2la","2ld","2lt","2ng","2pl","2rs","2th","2tp","2tu","2ui","2ul","4ar","4cl","4ea","4hn","4la","4ld","4lt","4ng","4pl","4rs","4th","4tp","4tu","4ui","4ul","aar","br2","brs","chn","elv","fld","ful","gth","hla","lea","ltp","plt","qui","rng","scl","shl","spl","stu","uar","ucl","uea","uhn","ula","uld","ult","ung","upl","urs","uth","utp","utu","uui","uul","xar","xcl","xea","xhh","xhn","xla","xld","xlt","xlv","xng","xpl","xrs","xth","xtp","xtu","xui","xul","yar","ycl","yea","yhh","yhn","yla","yld","ylt","ylv","yng","ypl","yrs","yth","ytp","ytu","yui","yul","0bw","0gw","0wn","0yw","7bw","7gw","7wn","7yw","9bw","9gw","9wn","9yw","bwn","gwn","m04","m23","p11","p12","p13","p14","q10","q11","q12","q13","wnd","ywn","1hx","1lx","1mx","1rx","6hx","6lx","6mx","6rx","8hx","8lx","8mx","8rx","hxb","lxb","m02","m25","mxb","p68","p69","p70","p71","q67","q68","q69","q70","rxb"},
        quality = 2,
        hide = false,
        filter_levels = 1
    },
    {
        codes = {"am1","am2","am6","am7","amb","amc","q77","q80","am5","ama","amf","m31","q79","q82","pa1","pa2","pa3","pa4","pa5","pa6","pa7","pa8","pa9","paa","pab","pac","pad","pae","paf","qp9","qpc","qpe","9nn","nin","0nn","9nj","m37","njt","am3","am4","am8","am9","amd","ame","q78","q81","0ax","0ba","0bt","0ga","0gi","0ha","0la","0mp","0wa","2ax","72a","7ax","7ba","7bt","7ga","7gi","7ha","7la","7mp","7wa","82a","92a","9ax","9ba","9bt","9ga","9gi","9ha","9la","9mp","9wa","axe","bax","btx","gax","gix","hax","lax","m21","mpi","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","wax","0be","9be","m35","pbe","3hb","3lb","3mb","3tb","3vb","5hb","5lb","5mb","5tb","5vb","ahb","alb","atb","avb","bmb","hbl","lbl","mbl","msb","tbl","uhc","ulc","umc","utc","uvc","vbl","xms","yms","zhb","zlb","zmb","ztb","zvb","0xb","9xb","bts","m38","2hb","2lb","2mb","2tb","2vb","4hb","4lb","4mb","4tb","4vb","dbt","hbt","lbt","mbt","tbt","uhb","ulb","umb","utb","uvb","vbt","xbt","xhb","xlb","xmb","xtb","xvb","ybt","yhb","ylb","ymb","ytb","yvb","1cb","1hb","1l8","1lb","1lw","1s8","1sb","1sw","6cb","6hb","6l7","6lb","6lw","6s7","6sb","6sw","8cb","8hb","8l8","8lb","8lw","8s8","8sb","8sw","cbw","hbw","lbb","lbw","lwb","m01","m24","m30","p60","p61","p62","p63","p64","p65","p66","p67","q59","q60","q61","q62","q63","q64","q65","q66","sbb","sbw","swb","ci0","ci1","ci2","ci3","ci4","cix","qi2","qi3","clk","xlk","ylk","0cl","0sp","7cl","7sp","9cl","9sp","clb","p15","p19","q14","q18","spc","0sh","9sh","m34","shc","2hg","2lg","2mg","2tg","2vg","4hg","4lg","4mg","4tg","4vg","hgl","irg","lgl","mgl","tgl","uhg","ulg","umg","utg","uvg","vgl","xhg","xig","xlg","xmg","xtg","xvg","yhg","yig","ylg","ymg","ytg","yvg","9ar","9wb","9xf","axf","btl","ces","clw","ktr","skr","wrb","7ar","7cs","7lw","7qr","7tw","7wb","7xf","9cs","9lw","9qr","9tw","m13","q73","q74","q75","q76","q86","0gm","0m0","0wh","7gm","7m7","7wh","9gm","9m9","9wh","gma","m03","mau","p23","p24","p25","q22","q23","q24","whm","ne1","ne2","ne3","ne4","ne5","ne6","ne7","ne8","ne9","nea","neb","ned","nee","nef","neg","qna","qne","qnf","2ap","2h9","2hl","2hm","2kp","2lm","2rn","2sk","4ap","4h9","4hl","4hm","4kp","4lm","4rn","4sk","bhm","cap","crn","dwc","fhl","ghm","hlm","msk","skp","uap","uh9","uhl","uhm","ukp","ulm","urn","usk","xap","xdw","xh9","xhl","xhm","xkp","xlm","xrn","xsk","yap","ydw","yh9","yhl","yhm","ykp","ylm","yrn","ysk","0gl","0ja","0pi","0s9","0ts","7gl","7ja","7pi","7s7","7ts","9gl","9ja","9pi","9s9","9ts","glv","jav","m28","m32","m33","pil","ssp","tsp","0bl","0dg","0di","0kr","7bl","7dg","7di","7kr","9bl","9dg","9di","9kr","bld","dgr","dir","kri","p40","p41","p42","p43","q39","q40","q41","q42","0kl","0rm","9kl","9rm","arm","kkl","0fl","0ma","0mt","7fl","7ma","7mt","9fl","9ma","9mt","fla","mac","mst","p20","p21","p22","q19","q20","q21","0mn","9mn","m09","mnb","0rd","9rd","m14","nrd","0ns","0sy","9ns","9sy","m05","nsy","syn","m07","ob1","ob2","ob3","ob4","ob5","ob6","ob7","ob8","ob9","oba","obb","obc","obd","obe","obf","q83","q84","q85","0pb","9pb","apb","dr1","dr2","dr3","dr4","dr5","dr6","dr7","dr8","dr9","dra","drb","drc","drd","dre","drf","qda","qdb","qdd","qde","qdf","ba1","ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","baa","bab","bac","bad","bae","baf","qba","qbc","qbd","qbe","0b7","0h0","0pa","0s8","0vo","0wc","7h7","7o7","7pa","7s8","7vo","7wc","9b7","9h9","9pa","9s8","9vo","9wc","bar","hal","p49","p50","p51","p52","p53","p54","pax","q48","q49","q50","q51","q52","q53","scy","vou","wsc","rob","xrb","yrb","0gp","0qs","0ws","5sc","7qs","7sc","7ws","9gp","9qs","9sc","9ws","gsc","gsp","m12","m17","p16","p17","p18","q15","q16","q17","scp","wsp","eht","xht","yht","2it","2ml","2ow","2pk","2rg","2sh","2ts","2uc","4it","4ml","4ow","4pk","4rg","4sh","4ts","4uc","bsh","buc","fts","gts","kit","lrg","sml","sp2","spk","tow","uit","uml","uow","upk","urg","ush","uts","uuc","xft","xit","xml","xow","xpk","xrg","xsh","xts","xuc","yft","yit","yml","yow","ypk","yrg","ysh","yts","yuc","0br","0p0","0sr","0st","0tr","7br","7p7","7sr","7st","7tr","9br","9p9","9sr","9st","9tr","brn","p44","p45","p46","p47","p48","pik","q43","q44","q45","q46","q47","spr","spt","tri","1bs","1cs","1ls","1ss","1ws","6bs","6cs","6ls","6ss","6ws","8bs","8cs","8ls","8ss","8ws","bst","cst","lst","m11","m29","m36","p55","p56","p57","p58","p59","q54","q55","q56","q57","q58","sst","wst","02h","0b0","0bs","0cm","0cr","0fb","0fc","0gd","0gs","0ls","0sb","0sm","0ss","0wd","2hs","72h","7b7","7bs","7cm","7cr","7fb","7fc","7gd","7gs","7ls","7sb","7sm","7ss","7wd","92h","9b9","9bs","9cm","9cr","9fb","9fc","9gd","9gs","9ls","9sb","9sm","9ss","9wd","bsd","bsw","clm","cr2","crs","dd1","flb","flc","gis","gsd","lsd","m16","m18","m22","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","q25","q26","q27","q28","q29","q2a","q2b","q2c","q2d","q2e","q2f","q30","q31","q32","q33","q34","q35","q36","q37","q38","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","sbr","scm","ssd","wsd","0b6","0ta","7b8","7ta","9b8","9ta","bal","m26","q72","tax","0bk","0tk","7bk","7tk","9bk","9tk","bkf","m08","m27","q71","tkf","2ar","2cl","2ea","2hn","2la","2ld","2lt","2ng","2pl","2rs","2th","2tp","2tu","2ui","2ul","4ar","4cl","4ea","4hn","4la","4ld","4lt","4ng","4pl","4rs","4th","4tp","4tu","4ui","4ul","aar","br2","brs","chn","elv","fld","ful","gth","hla","lea","ltp","plt","qui","rng","scl","shl","spl","stu","uar","ucl","uea","uhn","ula","uld","ult","ung","upl","urs","uth","utp","utu","uui","uul","xar","xcl","xea","xhh","xhn","xla","xld","xlt","xlv","xng","xpl","xrs","xth","xtp","xtu","xui","xul","yar","ycl","yea","yhh","yhn","yla","yld","ylt","ylv","yng","ypl","yrs","yth","ytp","ytu","yui","yul","0bw","0gw","0wn","0yw","7bw","7gw","7wn","7yw","9bw","9gw","9wn","9yw","bwn","gwn","m04","m23","p11","p12","p13","p14","q10","q11","q12","q13","wnd","ywn","1hx","1lx","1mx","1rx","6hx","6lx","6mx","6rx","8hx","8lx","8mx","8rx","hxb","lxb","m02","m25","mxb","p68","p69","p70","p71","q67","q68","q69","q70","rxb"},
        quality = 2,
        hide = true,
        filter_levels = 2
    },
    {
        codes = {"am1","am2","am6","am7","amb","amc","q77","q80","am5","ama","amf","m31","q79","q82","pa1","pa2","pa3","pa4","pa5","pa6","pa7","pa8","pa9","paa","pab","pac","pad","pae","paf","qp9","qpc","qpe","9nn","nin","0nn","9nj","m37","njt","am3","am4","am8","am9","amd","ame","q78","q81","0ax","0ba","0bt","0ga","0gi","0ha","0la","0mp","0wa","2ax","72a","7ax","7ba","7bt","7ga","7gi","7ha","7la","7mp","7wa","82a","92a","9ax","9ba","9bt","9ga","9gi","9ha","9la","9mp","9wa","axe","bax","btx","gax","gix","hax","lax","m21","mpi","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","wax","0be","9be","m35","pbe","3hb","3lb","3mb","3tb","3vb","5hb","5lb","5mb","5tb","5vb","ahb","alb","atb","avb","bmb","hbl","lbl","mbl","msb","tbl","uhc","ulc","umc","utc","uvc","vbl","xms","yms","zhb","zlb","zmb","ztb","zvb","0xb","9xb","bts","m38","2hb","2lb","2mb","2tb","2vb","4hb","4lb","4mb","4tb","4vb","dbt","hbt","lbt","mbt","tbt","uhb","ulb","umb","utb","uvb","vbt","xbt","xhb","xlb","xmb","xtb","xvb","ybt","yhb","ylb","ymb","ytb","yvb","1cb","1hb","1l8","1lb","1lw","1s8","1sb","1sw","6cb","6hb","6l7","6lb","6lw","6s7","6sb","6sw","8cb","8hb","8l8","8lb","8lw","8s8","8sb","8sw","cbw","hbw","lbb","lbw","lwb","m01","m24","m30","p60","p61","p62","p63","p64","p65","p66","p67","q59","q60","q61","q62","q63","q64","q65","q66","sbb","sbw","swb","ci0","ci1","ci2","ci3","ci4","cix","qi2","qi3","clk","xlk","ylk","0cl","0sp","7cl","7sp","9cl","9sp","clb","p15","p19","q14","q18","spc","0sh","9sh","m34","shc","2hg","2lg","2mg","2tg","2vg","4hg","4lg","4mg","4tg","4vg","hgl","irg","lgl","mgl","tgl","uhg","ulg","umg","utg","uvg","vgl","xhg","xig","xlg","xmg","xtg","xvg","yhg","yig","ylg","ymg","ytg","yvg","9ar","9wb","9xf","axf","btl","ces","clw","ktr","skr","wrb","7ar","7cs","7lw","7qr","7tw","7wb","7xf","9cs","9lw","9qr","9tw","m13","q73","q74","q75","q76","q86","0gm","0m0","0wh","7gm","7m7","7wh","9gm","9m9","9wh","gma","m03","mau","p23","p24","p25","q22","q23","q24","whm","ne1","ne2","ne3","ne4","ne5","ne6","ne7","ne8","ne9","nea","neb","ned","nee","nef","neg","qna","qne","qnf","2ap","2h9","2hl","2hm","2kp","2lm","2rn","2sk","4ap","4h9","4hl","4hm","4kp","4lm","4rn","4sk","bhm","cap","crn","dwc","fhl","ghm","hlm","msk","skp","uap","uh9","uhl","uhm","ukp","ulm","urn","usk","xap","xdw","xh9","xhl","xhm","xkp","xlm","xrn","xsk","yap","ydw","yh9","yhl","yhm","ykp","ylm","yrn","ysk","0gl","0ja","0pi","0s9","0ts","7gl","7ja","7pi","7s7","7ts","9gl","9ja","9pi","9s9","9ts","glv","jav","m28","m32","m33","pil","ssp","tsp","0bl","0dg","0di","0kr","7bl","7dg","7di","7kr","9bl","9dg","9di","9kr","bld","dgr","dir","kri","p40","p41","p42","p43","q39","q40","q41","q42","0kl","0rm","9kl","9rm","arm","kkl","0fl","0ma","0mt","7fl","7ma","7mt","9fl","9ma","9mt","fla","mac","mst","p20","p21","p22","q19","q20","q21","0mn","9mn","m09","mnb","0rd","9rd","m14","nrd","0ns","0sy","9ns","9sy","m05","nsy","syn","m07","ob1","ob2","ob3","ob4","ob5","ob6","ob7","ob8","ob9","oba","obb","obc","obd","obe","obf","q83","q84","q85","0pb","9pb","apb","dr1","dr2","dr3","dr4","dr5","dr6","dr7","dr8","dr9","dra","drb","drc","drd","dre","drf","qda","qdb","qdd","qde","qdf","ba1","ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","baa","bab","bac","bad","bae","baf","qba","qbc","qbd","qbe","0b7","0h0","0pa","0s8","0vo","0wc","7h7","7o7","7pa","7s8","7vo","7wc","9b7","9h9","9pa","9s8","9vo","9wc","bar","hal","p49","p50","p51","p52","p53","p54","pax","q48","q49","q50","q51","q52","q53","scy","vou","wsc","rob","xrb","yrb","0gp","0qs","0ws","5sc","7qs","7sc","7ws","9gp","9qs","9sc","9ws","gsc","gsp","m12","m17","p16","p17","p18","q15","q16","q17","scp","wsp","eht","xht","yht","2it","2ml","2ow","2pk","2rg","2sh","2ts","2uc","4it","4ml","4ow","4pk","4rg","4sh","4ts","4uc","bsh","buc","fts","gts","kit","lrg","sml","sp2","spk","tow","uit","uml","uow","upk","urg","ush","uts","uuc","xft","xit","xml","xow","xpk","xrg","xsh","xts","xuc","yft","yit","yml","yow","ypk","yrg","ysh","yts","yuc","0br","0p0","0sr","0st","0tr","7br","7p7","7sr","7st","7tr","9br","9p9","9sr","9st","9tr","brn","p44","p45","p46","p47","p48","pik","q43","q44","q45","q46","q47","spr","spt","tri","1bs","1cs","1ls","1ss","1ws","6bs","6cs","6ls","6ss","6ws","8bs","8cs","8ls","8ss","8ws","bst","cst","lst","m11","m29","m36","p55","p56","p57","p58","p59","q54","q55","q56","q57","q58","sst","wst","02h","0b0","0bs","0cm","0cr","0fb","0fc","0gd","0gs","0ls","0sb","0sm","0ss","0wd","2hs","72h","7b7","7bs","7cm","7cr","7fb","7fc","7gd","7gs","7ls","7sb","7sm","7ss","7wd","92h","9b9","9bs","9cm","9cr","9fb","9fc","9gd","9gs","9ls","9sb","9sm","9ss","9wd","bsd","bsw","clm","cr2","crs","dd1","flb","flc","gis","gsd","lsd","m16","m18","m22","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","q25","q26","q27","q28","q29","q2a","q2b","q2c","q2d","q2e","q2f","q30","q31","q32","q33","q34","q35","q36","q37","q38","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","sbr","scm","ssd","wsd","0b6","0ta","7b8","7ta","9b8","9ta","bal","m26","q72","tax","0bk","0tk","7bk","7tk","9bk","9tk","bkf","m08","m27","q71","tkf","2ar","2cl","2ea","2hn","2la","2ld","2lt","2ng","2pl","2rs","2th","2tp","2tu","2ui","2ul","4ar","4cl","4ea","4hn","4la","4ld","4lt","4ng","4pl","4rs","4th","4tp","4tu","4ui","4ul","aar","br2","brs","chn","elv","fld","ful","gth","hla","lea","ltp","plt","qui","rng","scl","shl","spl","stu","uar","ucl","uea","uhn","ula","uld","ult","ung","upl","urs","uth","utp","utu","uui","uul","xar","xcl","xea","xhh","xhn","xla","xld","xlt","xlv","xng","xpl","xrs","xth","xtp","xtu","xui","xul","yar","ycl","yea","yhh","yhn","yla","yld","ylt","ylv","yng","ypl","yrs","yth","ytp","ytu","yui","yul","0bw","0gw","0wn","0yw","7bw","7gw","7wn","7yw","9bw","9gw","9wn","9yw","bwn","gwn","m04","m23","p11","p12","p13","p14","q10","q11","q12","q13","wnd","ywn","1hx","1lx","1mx","1rx","6hx","6lx","6mx","6rx","8hx","8lx","8mx","8rx","hxb","lxb","m02","m25","mxb","p68","p69","p70","p71","q67","q68","q69","q70","rxb"},
        quality = 2,
        hide = true,
        filter_levels = 3
    },
    {
        codes = {"am1","am2","am6","am7","amb","amc","q77","q80","am5","ama","amf","m31","q79","q82","pa1","pa2","pa3","pa4","pa5","pa6","pa7","pa8","pa9","paa","pab","pac","pad","pae","paf","qp9","qpc","qpe","9nn","nin","0nn","9nj","m37","njt","am3","am4","am8","am9","amd","ame","q78","q81","0ax","0ba","0bt","0ga","0gi","0ha","0la","0mp","0wa","2ax","72a","7ax","7ba","7bt","7ga","7gi","7ha","7la","7mp","7wa","82a","92a","9ax","9ba","9bt","9ga","9gi","9ha","9la","9mp","9wa","axe","bax","btx","gax","gix","hax","lax","m21","mpi","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","wax","0be","9be","m35","pbe","3hb","3lb","3mb","3tb","3vb","5hb","5lb","5mb","5tb","5vb","ahb","alb","atb","avb","bmb","hbl","lbl","mbl","msb","tbl","uhc","ulc","umc","utc","uvc","vbl","xms","yms","zhb","zlb","zmb","ztb","zvb","0xb","9xb","bts","m38","2hb","2lb","2mb","2tb","2vb","4hb","4lb","4mb","4tb","4vb","dbt","hbt","lbt","mbt","tbt","uhb","ulb","umb","utb","uvb","vbt","xbt","xhb","xlb","xmb","xtb","xvb","ybt","yhb","ylb","ymb","ytb","yvb","1cb","1hb","1l8","1lb","1lw","1s8","1sb","1sw","6cb","6hb","6l7","6lb","6lw","6s7","6sb","6sw","8cb","8hb","8l8","8lb","8lw","8s8","8sb","8sw","cbw","hbw","lbb","lbw","lwb","m01","m24","m30","p60","p61","p62","p63","p64","p65","p66","p67","q59","q60","q61","q62","q63","q64","q65","q66","sbb","sbw","swb","ci0","ci1","ci2","ci3","ci4","cix","qi2","qi3","clk","xlk","ylk","0cl","0sp","7cl","7sp","9cl","9sp","clb","p15","p19","q14","q18","spc","0sh","9sh","m34","shc","2hg","2lg","2mg","2tg","2vg","4hg","4lg","4mg","4tg","4vg","hgl","irg","lgl","mgl","tgl","uhg","ulg","umg","utg","uvg","vgl","xhg","xig","xlg","xmg","xtg","xvg","yhg","yig","ylg","ymg","ytg","yvg","9ar","9wb","9xf","axf","btl","ces","clw","ktr","skr","wrb","7ar","7cs","7lw","7qr","7tw","7wb","7xf","9cs","9lw","9qr","9tw","m13","q73","q74","q75","q76","q86","0gm","0m0","0wh","7gm","7m7","7wh","9gm","9m9","9wh","gma","m03","mau","p23","p24","p25","q22","q23","q24","whm","ne1","ne2","ne3","ne4","ne5","ne6","ne7","ne8","ne9","nea","neb","ned","nee","nef","neg","qna","qne","qnf","2ap","2h9","2hl","2hm","2kp","2lm","2rn","2sk","4ap","4h9","4hl","4hm","4kp","4lm","4rn","4sk","bhm","cap","crn","dwc","fhl","ghm","hlm","msk","skp","uap","uh9","uhl","uhm","ukp","ulm","urn","usk","xap","xdw","xh9","xhl","xhm","xkp","xlm","xrn","xsk","yap","ydw","yh9","yhl","yhm","ykp","ylm","yrn","ysk","0gl","0ja","0pi","0s9","0ts","7gl","7ja","7pi","7s7","7ts","9gl","9ja","9pi","9s9","9ts","glv","jav","m28","m32","m33","pil","ssp","tsp","0bl","0dg","0di","0kr","7bl","7dg","7di","7kr","9bl","9dg","9di","9kr","bld","dgr","dir","kri","p40","p41","p42","p43","q39","q40","q41","q42","0kl","0rm","9kl","9rm","arm","kkl","0fl","0ma","0mt","7fl","7ma","7mt","9fl","9ma","9mt","fla","mac","mst","p20","p21","p22","q19","q20","q21","0mn","9mn","m09","mnb","0rd","9rd","m14","nrd","0ns","0sy","9ns","9sy","m05","nsy","syn","m07","ob1","ob2","ob3","ob4","ob5","ob6","ob7","ob8","ob9","oba","obb","obc","obd","obe","obf","q83","q84","q85","0pb","9pb","apb","dr1","dr2","dr3","dr4","dr5","dr6","dr7","dr8","dr9","dra","drb","drc","drd","dre","drf","qda","qdb","qdd","qde","qdf","ba1","ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","baa","bab","bac","bad","bae","baf","qba","qbc","qbd","qbe","0b7","0h0","0pa","0s8","0vo","0wc","7h7","7o7","7pa","7s8","7vo","7wc","9b7","9h9","9pa","9s8","9vo","9wc","bar","hal","p49","p50","p51","p52","p53","p54","pax","q48","q49","q50","q51","q52","q53","scy","vou","wsc","rob","xrb","yrb","0gp","0qs","0ws","5sc","7qs","7sc","7ws","9gp","9qs","9sc","9ws","gsc","gsp","m12","m17","p16","p17","p18","q15","q16","q17","scp","wsp","eht","xht","yht","2it","2ml","2ow","2pk","2rg","2sh","2ts","2uc","4it","4ml","4ow","4pk","4rg","4sh","4ts","4uc","bsh","buc","fts","gts","kit","lrg","sml","sp2","spk","tow","uit","uml","uow","upk","urg","ush","uts","uuc","xft","xit","xml","xow","xpk","xrg","xsh","xts","xuc","yft","yit","yml","yow","ypk","yrg","ysh","yts","yuc","0br","0p0","0sr","0st","0tr","7br","7p7","7sr","7st","7tr","9br","9p9","9sr","9st","9tr","brn","p44","p45","p46","p47","p48","pik","q43","q44","q45","q46","q47","spr","spt","tri","1bs","1cs","1ls","1ss","1ws","6bs","6cs","6ls","6ss","6ws","8bs","8cs","8ls","8ss","8ws","bst","cst","lst","m11","m29","m36","p55","p56","p57","p58","p59","q54","q55","q56","q57","q58","sst","wst","02h","0b0","0bs","0cm","0cr","0fb","0fc","0gd","0gs","0ls","0sb","0sm","0ss","0wd","2hs","72h","7b7","7bs","7cm","7cr","7fb","7fc","7gd","7gs","7ls","7sb","7sm","7ss","7wd","92h","9b9","9bs","9cm","9cr","9fb","9fc","9gd","9gs","9ls","9sb","9sm","9ss","9wd","bsd","bsw","clm","cr2","crs","dd1","flb","flc","gis","gsd","lsd","m16","m18","m22","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","q25","q26","q27","q28","q29","q2a","q2b","q2c","q2d","q2e","q2f","q30","q31","q32","q33","q34","q35","q36","q37","q38","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","sbr","scm","ssd","wsd","0b6","0ta","7b8","7ta","9b8","9ta","bal","m26","q72","tax","0bk","0tk","7bk","7tk","9bk","9tk","bkf","m08","m27","q71","tkf","2ar","2cl","2ea","2hn","2la","2ld","2lt","2ng","2pl","2rs","2th","2tp","2tu","2ui","2ul","4ar","4cl","4ea","4hn","4la","4ld","4lt","4ng","4pl","4rs","4th","4tp","4tu","4ui","4ul","aar","br2","brs","chn","elv","fld","ful","gth","hla","lea","ltp","plt","qui","rng","scl","shl","spl","stu","uar","ucl","uea","uhn","ula","uld","ult","ung","upl","urs","uth","utp","utu","uui","uul","xar","xcl","xea","xhh","xhn","xla","xld","xlt","xlv","xng","xpl","xrs","xth","xtp","xtu","xui","xul","yar","ycl","yea","yhh","yhn","yla","yld","ylt","ylv","yng","ypl","yrs","yth","ytp","ytu","yui","yul","0bw","0gw","0wn","0yw","7bw","7gw","7wn","7yw","9bw","9gw","9wn","9yw","bwn","gwn","m04","m23","p11","p12","p13","p14","q10","q11","q12","q13","wnd","ywn","1hx","1lx","1mx","1rx","6hx","6lx","6mx","6rx","8hx","8lx","8mx","8rx","hxb","lxb","m02","m25","mxb","p68","p69","p70","p71","q67","q68","q69","q70","rxb"},
        quality = 2,
        hide = true,
        filter_levels = 4
    },

    -- Hide unwanted magic armor/weapons
    -- Highs all blue armor and weapons 
    {
        codes = {"am1","am2","am6","am7","amb","amc","q77","q80","am5","ama","amf","m31","q79","q82","pa1","pa2","pa3","pa4","pa5","pa6","pa7","pa8","pa9","paa","pab","pac","pad","pae","paf","qp9","qpc","qpe","9nn","nin","0nn","9nj","m37","njt","am3","am4","am8","am9","amd","ame","q78","q81","0ax","0ba","0bt","0ga","0gi","0ha","0la","0mp","0wa","2ax","72a","7ax","7ba","7bt","7ga","7gi","7ha","7la","7mp","7wa","82a","92a","9ax","9ba","9bt","9ga","9gi","9ha","9la","9mp","9wa","axe","bax","btx","gax","gix","hax","lax","m21","mpi","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","wax","0be","9be","m35","pbe","3hb","3lb","3mb","3tb","3vb","5hb","5lb","5mb","5tb","5vb","ahb","alb","atb","avb","bmb","hbl","lbl","mbl","msb","tbl","uhc","ulc","umc","utc","uvc","vbl","xms","yms","zhb","zlb","zmb","ztb","zvb","0xb","9xb","bts","m38","2hb","2lb","2mb","2tb","2vb","4hb","4lb","4mb","4tb","4vb","dbt","hbt","lbt","mbt","tbt","uhb","ulb","umb","utb","uvb","vbt","xbt","xhb","xlb","xmb","xtb","xvb","ybt","yhb","ylb","ymb","ytb","yvb","1cb","1hb","1l8","1lb","1lw","1s8","1sb","1sw","6cb","6hb","6l7","6lb","6lw","6s7","6sb","6sw","8cb","8hb","8l8","8lb","8lw","8s8","8sb","8sw","cbw","hbw","lbb","lbw","lwb","m01","m24","m30","p60","p61","p62","p63","p64","p65","p66","p67","q59","q60","q61","q62","q63","q64","q65","q66","sbb","sbw","swb","ci0","ci1","ci2","ci3","ci4","cix","qi2","qi3","clk","xlk","ylk","0cl","0sp","7cl","7sp","9cl","9sp","clb","p15","p19","q14","q18","spc","0sh","9sh","m34","shc","2hg","2lg","2mg","2tg","2vg","4hg","4lg","4mg","4tg","4vg","hgl","irg","lgl","mgl","tgl","uhg","ulg","umg","utg","uvg","vgl","xhg","xig","xlg","xmg","xtg","xvg","yhg","yig","ylg","ymg","ytg","yvg","9ar","9wb","9xf","axf","btl","ces","clw","ktr","skr","wrb","7ar","7cs","7lw","7qr","7tw","7wb","7xf","9cs","9lw","9qr","9tw","m13","q73","q74","q75","q76","q86","0gm","0m0","0wh","7gm","7m7","7wh","9gm","9m9","9wh","gma","m03","mau","p23","p24","p25","q22","q23","q24","whm","ne1","ne2","ne3","ne4","ne5","ne6","ne7","ne8","ne9","nea","neb","ned","nee","nef","neg","qna","qne","qnf","2ap","2h9","2hl","2hm","2kp","2lm","2rn","2sk","4ap","4h9","4hl","4hm","4kp","4lm","4rn","4sk","bhm","cap","crn","dwc","fhl","ghm","hlm","msk","skp","uap","uh9","uhl","uhm","ukp","ulm","urn","usk","xap","xdw","xh9","xhl","xhm","xkp","xlm","xrn","xsk","yap","ydw","yh9","yhl","yhm","ykp","ylm","yrn","ysk","0gl","0ja","0pi","0s9","0ts","7gl","7ja","7pi","7s7","7ts","9gl","9ja","9pi","9s9","9ts","glv","jav","m28","m32","m33","pil","ssp","tsp","0bl","0dg","0di","0kr","7bl","7dg","7di","7kr","9bl","9dg","9di","9kr","bld","dgr","dir","kri","p40","p41","p42","p43","q39","q40","q41","q42","0kl","0rm","9kl","9rm","arm","kkl","0fl","0ma","0mt","7fl","7ma","7mt","9fl","9ma","9mt","fla","mac","mst","p20","p21","p22","q19","q20","q21","0mn","9mn","m09","mnb","0rd","9rd","m14","nrd","0ns","0sy","9ns","9sy","m05","nsy","syn","m07","ob1","ob2","ob3","ob4","ob5","ob6","ob7","ob8","ob9","oba","obb","obc","obd","obe","obf","q83","q84","q85","0pb","9pb","apb","dr1","dr2","dr3","dr4","dr5","dr6","dr7","dr8","dr9","dra","drb","drc","drd","dre","drf","qda","qdb","qdd","qde","qdf","ba1","ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","baa","bab","bac","bad","bae","baf","qba","qbc","qbd","qbe","0b7","0h0","0pa","0s8","0vo","0wc","7h7","7o7","7pa","7s8","7vo","7wc","9b7","9h9","9pa","9s8","9vo","9wc","bar","hal","p49","p50","p51","p52","p53","p54","pax","q48","q49","q50","q51","q52","q53","scy","vou","wsc","rob","xrb","yrb","0gp","0qs","0ws","5sc","7qs","7sc","7ws","9gp","9qs","9sc","9ws","gsc","gsp","m12","m17","p16","p17","p18","q15","q16","q17","scp","wsp","eht","xht","yht","2it","2ml","2ow","2pk","2rg","2sh","2ts","2uc","4it","4ml","4ow","4pk","4rg","4sh","4ts","4uc","bsh","buc","fts","gts","kit","lrg","sml","sp2","spk","tow","uit","uml","uow","upk","urg","ush","uts","uuc","xft","xit","xml","xow","xpk","xrg","xsh","xts","xuc","yft","yit","yml","yow","ypk","yrg","ysh","yts","yuc","0br","0p0","0sr","0st","0tr","7br","7p7","7sr","7st","7tr","9br","9p9","9sr","9st","9tr","brn","p44","p45","p46","p47","p48","pik","q43","q44","q45","q46","q47","spr","spt","tri","1bs","1cs","1ls","1ss","1ws","6bs","6cs","6ls","6ss","6ws","8bs","8cs","8ls","8ss","8ws","bst","cst","lst","m11","m29","m36","p55","p56","p57","p58","p59","q54","q55","q56","q57","q58","sst","wst","02h","0b0","0bs","0cm","0cr","0fb","0fc","0gd","0gs","0ls","0sb","0sm","0ss","0wd","2hs","72h","7b7","7bs","7cm","7cr","7fb","7fc","7gd","7gs","7ls","7sb","7sm","7ss","7wd","92h","9b9","9bs","9cm","9cr","9fb","9fc","9gd","9gs","9ls","9sb","9sm","9ss","9wd","bsd","bsw","clm","cr2","crs","dd1","flb","flc","gis","gsd","lsd","m16","m18","m22","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","q25","q26","q27","q28","q29","q2a","q2b","q2c","q2d","q2e","q2f","q30","q31","q32","q33","q34","q35","q36","q37","q38","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","sbr","scm","ssd","wsd","0b6","0ta","7b8","7ta","9b8","9ta","bal","m26","q72","tax","0bk","0tk","7bk","7tk","9bk","9tk","bkf","m08","m27","q71","tkf","2ar","2cl","2ea","2hn","2la","2ld","2lt","2ng","2pl","2rs","2th","2tp","2tu","2ui","2ul","4ar","4cl","4ea","4hn","4la","4ld","4lt","4ng","4pl","4rs","4th","4tp","4tu","4ui","4ul","aar","br2","brs","chn","elv","fld","ful","gth","hla","lea","ltp","plt","qui","rng","scl","shl","spl","stu","uar","ucl","uea","uhn","ula","uld","ult","ung","upl","urs","uth","utp","utu","uui","uul","xar","xcl","xea","xhh","xhn","xla","xld","xlt","xlv","xng","xpl","xrs","xth","xtp","xtu","xui","xul","yar","ycl","yea","yhh","yhn","yla","yld","ylt","ylv","yng","ypl","yrs","yth","ytp","ytu","yui","yul","0bw","0gw","0wn","0yw","7bw","7gw","7wn","7yw","9bw","9gw","9wn","9yw","bwn","gwn","m04","m23","p11","p12","p13","p14","q10","q11","q12","q13","wnd","ywn","1hx","1lx","1mx","1rx","6hx","6lx","6mx","6rx","8hx","8lx","8mx","8rx","hxb","lxb","m02","m25","mxb","p68","p69","p70","p71","q67","q68","q69","q70","rxb"},
        quality = 4,
        hide = false,
        filter_levels = 1
    },
    {
        codes = {"am1","am2","am6","am7","amb","amc","q77","q80","am5","ama","amf","m31","q79","q82","pa1","pa2","pa3","pa4","pa5","pa6","pa7","pa8","pa9","paa","pab","pac","pad","pae","paf","qp9","qpc","qpe","9nn","nin","0nn","9nj","m37","njt","am3","am4","am8","am9","amd","ame","q78","q81","0ax","0ba","0bt","0ga","0gi","0ha","0la","0mp","0wa","2ax","72a","7ax","7ba","7bt","7ga","7gi","7ha","7la","7mp","7wa","82a","92a","9ax","9ba","9bt","9ga","9gi","9ha","9la","9mp","9wa","axe","bax","btx","gax","gix","hax","lax","m21","mpi","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","wax","0be","9be","m35","pbe","3hb","3lb","3mb","3tb","3vb","5hb","5lb","5mb","5tb","5vb","ahb","alb","atb","avb","bmb","hbl","lbl","mbl","msb","tbl","uhc","ulc","umc","utc","uvc","vbl","xms","yms","zhb","zlb","zmb","ztb","zvb","0xb","9xb","bts","m38","2hb","2lb","2mb","2tb","2vb","4hb","4lb","4mb","4tb","4vb","dbt","hbt","lbt","mbt","tbt","uhb","ulb","umb","utb","uvb","vbt","xbt","xhb","xlb","xmb","xtb","xvb","ybt","yhb","ylb","ymb","ytb","yvb","1cb","1hb","1l8","1lb","1lw","1s8","1sb","1sw","6cb","6hb","6l7","6lb","6lw","6s7","6sb","6sw","8cb","8hb","8l8","8lb","8lw","8s8","8sb","8sw","cbw","hbw","lbb","lbw","lwb","m01","m24","m30","p60","p61","p62","p63","p64","p65","p66","p67","q59","q60","q61","q62","q63","q64","q65","q66","sbb","sbw","swb","ci0","ci1","ci2","ci3","ci4","cix","qi2","qi3","clk","xlk","ylk","0cl","0sp","7cl","7sp","9cl","9sp","clb","p15","p19","q14","q18","spc","0sh","9sh","m34","shc","2hg","2lg","2mg","2tg","2vg","4hg","4lg","4mg","4tg","4vg","hgl","irg","lgl","mgl","tgl","uhg","ulg","umg","utg","uvg","vgl","xhg","xig","xlg","xmg","xtg","xvg","yhg","yig","ylg","ymg","ytg","yvg","9ar","9wb","9xf","axf","btl","ces","clw","ktr","skr","wrb","7ar","7cs","7lw","7qr","7tw","7wb","7xf","9cs","9lw","9qr","9tw","m13","q73","q74","q75","q76","q86","0gm","0m0","0wh","7gm","7m7","7wh","9gm","9m9","9wh","gma","m03","mau","p23","p24","p25","q22","q23","q24","whm","ne1","ne2","ne3","ne4","ne5","ne6","ne7","ne8","ne9","nea","neb","ned","nee","nef","neg","qna","qne","qnf","2ap","2h9","2hl","2hm","2kp","2lm","2rn","2sk","4ap","4h9","4hl","4hm","4kp","4lm","4rn","4sk","bhm","cap","crn","dwc","fhl","ghm","hlm","msk","skp","uap","uh9","uhl","uhm","ukp","ulm","urn","usk","xap","xdw","xh9","xhl","xhm","xkp","xlm","xrn","xsk","yap","ydw","yh9","yhl","yhm","ykp","ylm","yrn","ysk","0gl","0ja","0pi","0s9","0ts","7gl","7ja","7pi","7s7","7ts","9gl","9ja","9pi","9s9","9ts","glv","jav","m28","m32","m33","pil","ssp","tsp","0bl","0dg","0di","0kr","7bl","7dg","7di","7kr","9bl","9dg","9di","9kr","bld","dgr","dir","kri","p40","p41","p42","p43","q39","q40","q41","q42","0kl","0rm","9kl","9rm","arm","kkl","0fl","0ma","0mt","7fl","7ma","7mt","9fl","9ma","9mt","fla","mac","mst","p20","p21","p22","q19","q20","q21","0mn","9mn","m09","mnb","0rd","9rd","m14","nrd","0ns","0sy","9ns","9sy","m05","nsy","syn","m07","ob1","ob2","ob3","ob4","ob5","ob6","ob7","ob8","ob9","oba","obb","obc","obd","obe","obf","q83","q84","q85","0pb","9pb","apb","dr1","dr2","dr3","dr4","dr5","dr6","dr7","dr8","dr9","dra","drb","drc","drd","dre","drf","qda","qdb","qdd","qde","qdf","ba1","ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","baa","bab","bac","bad","bae","baf","qba","qbc","qbd","qbe","0b7","0h0","0pa","0s8","0vo","0wc","7h7","7o7","7pa","7s8","7vo","7wc","9b7","9h9","9pa","9s8","9vo","9wc","bar","hal","p49","p50","p51","p52","p53","p54","pax","q48","q49","q50","q51","q52","q53","scy","vou","wsc","rob","xrb","yrb","0gp","0qs","0ws","5sc","7qs","7sc","7ws","9gp","9qs","9sc","9ws","gsc","gsp","m12","m17","p16","p17","p18","q15","q16","q17","scp","wsp","eht","xht","yht","2it","2ml","2ow","2pk","2rg","2sh","2ts","2uc","4it","4ml","4ow","4pk","4rg","4sh","4ts","4uc","bsh","buc","fts","gts","kit","lrg","sml","sp2","spk","tow","uit","uml","uow","upk","urg","ush","uts","uuc","xft","xit","xml","xow","xpk","xrg","xsh","xts","xuc","yft","yit","yml","yow","ypk","yrg","ysh","yts","yuc","0br","0p0","0sr","0st","0tr","7br","7p7","7sr","7st","7tr","9br","9p9","9sr","9st","9tr","brn","p44","p45","p46","p47","p48","pik","q43","q44","q45","q46","q47","spr","spt","tri","1bs","1cs","1ls","1ss","1ws","6bs","6cs","6ls","6ss","6ws","8bs","8cs","8ls","8ss","8ws","bst","cst","lst","m11","m29","m36","p55","p56","p57","p58","p59","q54","q55","q56","q57","q58","sst","wst","02h","0b0","0bs","0cm","0cr","0fb","0fc","0gd","0gs","0ls","0sb","0sm","0ss","0wd","2hs","72h","7b7","7bs","7cm","7cr","7fb","7fc","7gd","7gs","7ls","7sb","7sm","7ss","7wd","92h","9b9","9bs","9cm","9cr","9fb","9fc","9gd","9gs","9ls","9sb","9sm","9ss","9wd","bsd","bsw","clm","cr2","crs","dd1","flb","flc","gis","gsd","lsd","m16","m18","m22","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","q25","q26","q27","q28","q29","q2a","q2b","q2c","q2d","q2e","q2f","q30","q31","q32","q33","q34","q35","q36","q37","q38","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","sbr","scm","ssd","wsd","0b6","0ta","7b8","7ta","9b8","9ta","bal","m26","q72","tax","0bk","0tk","7bk","7tk","9bk","9tk","bkf","m08","m27","q71","tkf","2ar","2cl","2ea","2hn","2la","2ld","2lt","2ng","2pl","2rs","2th","2tp","2tu","2ui","2ul","4ar","4cl","4ea","4hn","4la","4ld","4lt","4ng","4pl","4rs","4th","4tp","4tu","4ui","4ul","aar","br2","brs","chn","elv","fld","ful","gth","hla","lea","ltp","plt","qui","rng","scl","shl","spl","stu","uar","ucl","uea","uhn","ula","uld","ult","ung","upl","urs","uth","utp","utu","uui","uul","xar","xcl","xea","xhh","xhn","xla","xld","xlt","xlv","xng","xpl","xrs","xth","xtp","xtu","xui","xul","yar","ycl","yea","yhh","yhn","yla","yld","ylt","ylv","yng","ypl","yrs","yth","ytp","ytu","yui","yul","0bw","0gw","0wn","0yw","7bw","7gw","7wn","7yw","9bw","9gw","9wn","9yw","bwn","gwn","m04","m23","p11","p12","p13","p14","q10","q11","q12","q13","wnd","ywn","1hx","1lx","1mx","1rx","6hx","6lx","6mx","6rx","8hx","8lx","8mx","8rx","hxb","lxb","m02","m25","mxb","p68","p69","p70","p71","q67","q68","q69","q70","rxb"},
        quality = 4,
        hide = true,
        filter_levels = 2
    },
    {
        codes = {"am1","am2","am6","am7","amb","amc","q77","q80","am5","ama","amf","m31","q79","q82","pa1","pa2","pa3","pa4","pa5","pa6","pa7","pa8","pa9","paa","pab","pac","pad","pae","paf","qp9","qpc","qpe","9nn","nin","0nn","9nj","m37","njt","am3","am4","am8","am9","amd","ame","q78","q81","0ax","0ba","0bt","0ga","0gi","0ha","0la","0mp","0wa","2ax","72a","7ax","7ba","7bt","7ga","7gi","7ha","7la","7mp","7wa","82a","92a","9ax","9ba","9bt","9ga","9gi","9ha","9la","9mp","9wa","axe","bax","btx","gax","gix","hax","lax","m21","mpi","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","wax","0be","9be","m35","pbe","3hb","3lb","3mb","3tb","3vb","5hb","5lb","5mb","5tb","5vb","ahb","alb","atb","avb","bmb","hbl","lbl","mbl","msb","tbl","uhc","ulc","umc","utc","uvc","vbl","xms","yms","zhb","zlb","zmb","ztb","zvb","0xb","9xb","bts","m38","2hb","2lb","2mb","2tb","2vb","4hb","4lb","4mb","4tb","4vb","dbt","hbt","lbt","mbt","tbt","uhb","ulb","umb","utb","uvb","vbt","xbt","xhb","xlb","xmb","xtb","xvb","ybt","yhb","ylb","ymb","ytb","yvb","1cb","1hb","1l8","1lb","1lw","1s8","1sb","1sw","6cb","6hb","6l7","6lb","6lw","6s7","6sb","6sw","8cb","8hb","8l8","8lb","8lw","8s8","8sb","8sw","cbw","hbw","lbb","lbw","lwb","m01","m24","m30","p60","p61","p62","p63","p64","p65","p66","p67","q59","q60","q61","q62","q63","q64","q65","q66","sbb","sbw","swb","ci0","ci1","ci2","ci3","ci4","cix","qi2","qi3","clk","xlk","ylk","0cl","0sp","7cl","7sp","9cl","9sp","clb","p15","p19","q14","q18","spc","0sh","9sh","m34","shc","2hg","2lg","2mg","2tg","2vg","4hg","4lg","4mg","4tg","4vg","hgl","irg","lgl","mgl","tgl","uhg","ulg","umg","utg","uvg","vgl","xhg","xig","xlg","xmg","xtg","xvg","yhg","yig","ylg","ymg","ytg","yvg","9ar","9wb","9xf","axf","btl","ces","clw","ktr","skr","wrb","7ar","7cs","7lw","7qr","7tw","7wb","7xf","9cs","9lw","9qr","9tw","m13","q73","q74","q75","q76","q86","0gm","0m0","0wh","7gm","7m7","7wh","9gm","9m9","9wh","gma","m03","mau","p23","p24","p25","q22","q23","q24","whm","ne1","ne2","ne3","ne4","ne5","ne6","ne7","ne8","ne9","nea","neb","ned","nee","nef","neg","qna","qne","qnf","2ap","2h9","2hl","2hm","2kp","2lm","2rn","2sk","4ap","4h9","4hl","4hm","4kp","4lm","4rn","4sk","bhm","cap","crn","dwc","fhl","ghm","hlm","msk","skp","uap","uh9","uhl","uhm","ukp","ulm","urn","usk","xap","xdw","xh9","xhl","xhm","xkp","xlm","xrn","xsk","yap","ydw","yh9","yhl","yhm","ykp","ylm","yrn","ysk","0gl","0ja","0pi","0s9","0ts","7gl","7ja","7pi","7s7","7ts","9gl","9ja","9pi","9s9","9ts","glv","jav","m28","m32","m33","pil","ssp","tsp","0bl","0dg","0di","0kr","7bl","7dg","7di","7kr","9bl","9dg","9di","9kr","bld","dgr","dir","kri","p40","p41","p42","p43","q39","q40","q41","q42","0kl","0rm","9kl","9rm","arm","kkl","0fl","0ma","0mt","7fl","7ma","7mt","9fl","9ma","9mt","fla","mac","mst","p20","p21","p22","q19","q20","q21","0mn","9mn","m09","mnb","0rd","9rd","m14","nrd","0ns","0sy","9ns","9sy","m05","nsy","syn","m07","ob1","ob2","ob3","ob4","ob5","ob6","ob7","ob8","ob9","oba","obb","obc","obd","obe","obf","q83","q84","q85","0pb","9pb","apb","dr1","dr2","dr3","dr4","dr5","dr6","dr7","dr8","dr9","dra","drb","drc","drd","dre","drf","qda","qdb","qdd","qde","qdf","ba1","ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","baa","bab","bac","bad","bae","baf","qba","qbc","qbd","qbe","0b7","0h0","0pa","0s8","0vo","0wc","7h7","7o7","7pa","7s8","7vo","7wc","9b7","9h9","9pa","9s8","9vo","9wc","bar","hal","p49","p50","p51","p52","p53","p54","pax","q48","q49","q50","q51","q52","q53","scy","vou","wsc","rob","xrb","yrb","0gp","0qs","0ws","5sc","7qs","7sc","7ws","9gp","9qs","9sc","9ws","gsc","gsp","m12","m17","p16","p17","p18","q15","q16","q17","scp","wsp","eht","xht","yht","2it","2ml","2ow","2pk","2rg","2sh","2ts","2uc","4it","4ml","4ow","4pk","4rg","4sh","4ts","4uc","bsh","buc","fts","gts","kit","lrg","sml","sp2","spk","tow","uit","uml","uow","upk","urg","ush","uts","uuc","xft","xit","xml","xow","xpk","xrg","xsh","xts","xuc","yft","yit","yml","yow","ypk","yrg","ysh","yts","yuc","0br","0p0","0sr","0st","0tr","7br","7p7","7sr","7st","7tr","9br","9p9","9sr","9st","9tr","brn","p44","p45","p46","p47","p48","pik","q43","q44","q45","q46","q47","spr","spt","tri","1bs","1cs","1ls","1ss","1ws","6bs","6cs","6ls","6ss","6ws","8bs","8cs","8ls","8ss","8ws","bst","cst","lst","m11","m29","m36","p55","p56","p57","p58","p59","q54","q55","q56","q57","q58","sst","wst","02h","0b0","0bs","0cm","0cr","0fb","0fc","0gd","0gs","0ls","0sb","0sm","0ss","0wd","2hs","72h","7b7","7bs","7cm","7cr","7fb","7fc","7gd","7gs","7ls","7sb","7sm","7ss","7wd","92h","9b9","9bs","9cm","9cr","9fb","9fc","9gd","9gs","9ls","9sb","9sm","9ss","9wd","bsd","bsw","clm","cr2","crs","dd1","flb","flc","gis","gsd","lsd","m16","m18","m22","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","q25","q26","q27","q28","q29","q2a","q2b","q2c","q2d","q2e","q2f","q30","q31","q32","q33","q34","q35","q36","q37","q38","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","sbr","scm","ssd","wsd","0b6","0ta","7b8","7ta","9b8","9ta","bal","m26","q72","tax","0bk","0tk","7bk","7tk","9bk","9tk","bkf","m08","m27","q71","tkf","2ar","2cl","2ea","2hn","2la","2ld","2lt","2ng","2pl","2rs","2th","2tp","2tu","2ui","2ul","4ar","4cl","4ea","4hn","4la","4ld","4lt","4ng","4pl","4rs","4th","4tp","4tu","4ui","4ul","aar","br2","brs","chn","elv","fld","ful","gth","hla","lea","ltp","plt","qui","rng","scl","shl","spl","stu","uar","ucl","uea","uhn","ula","uld","ult","ung","upl","urs","uth","utp","utu","uui","uul","xar","xcl","xea","xhh","xhn","xla","xld","xlt","xlv","xng","xpl","xrs","xth","xtp","xtu","xui","xul","yar","ycl","yea","yhh","yhn","yla","yld","ylt","ylv","yng","ypl","yrs","yth","ytp","ytu","yui","yul","0bw","0gw","0wn","0yw","7bw","7gw","7wn","7yw","9bw","9gw","9wn","9yw","bwn","gwn","m04","m23","p11","p12","p13","p14","q10","q11","q12","q13","wnd","ywn","1hx","1lx","1mx","1rx","6hx","6lx","6mx","6rx","8hx","8lx","8mx","8rx","hxb","lxb","m02","m25","mxb","p68","p69","p70","p71","q67","q68","q69","q70","rxb"},
        quality = 4,
        hide = true,
        filter_levels = 3
    },
    
    {
        codes = {"am1","am2","am6","am7","amb","amc","q77","q80","am5","ama","amf","m31","q79","q82","pa1","pa2","pa3","pa4","pa5","pa6","pa7","pa8","pa9","paa","pab","pac","pad","pae","paf","qp9","qpc","qpe","9nn","nin","0nn","9nj","m37","njt","am3","am4","am8","am9","amd","ame","q78","q81","0ax","0ba","0bt","0ga","0gi","0ha","0la","0mp","0wa","2ax","72a","7ax","7ba","7bt","7ga","7gi","7ha","7la","7mp","7wa","82a","92a","9ax","9ba","9bt","9ga","9gi","9ha","9la","9mp","9wa","axe","bax","btx","gax","gix","hax","lax","m21","mpi","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","wax","0be","9be","m35","pbe","3hb","3lb","3mb","3tb","3vb","5hb","5lb","5mb","5tb","5vb","ahb","alb","atb","avb","bmb","hbl","lbl","mbl","msb","tbl","uhc","ulc","umc","utc","uvc","vbl","xms","yms","zhb","zlb","zmb","ztb","zvb","0xb","9xb","bts","m38","2hb","2lb","2mb","2tb","2vb","4hb","4lb","4mb","4tb","4vb","dbt","hbt","lbt","mbt","tbt","uhb","ulb","umb","utb","uvb","vbt","xbt","xhb","xlb","xmb","xtb","xvb","ybt","yhb","ylb","ymb","ytb","yvb","1cb","1hb","1l8","1lb","1lw","1s8","1sb","1sw","6cb","6hb","6l7","6lb","6lw","6s7","6sb","6sw","8cb","8hb","8l8","8lb","8lw","8s8","8sb","8sw","cbw","hbw","lbb","lbw","lwb","m01","m24","m30","p60","p61","p62","p63","p64","p65","p66","p67","q59","q60","q61","q62","q63","q64","q65","q66","sbb","sbw","swb","ci0","ci1","ci2","ci3","ci4","cix","qi2","qi3","clk","xlk","ylk","0cl","0sp","7cl","7sp","9cl","9sp","clb","p15","p19","q14","q18","spc","0sh","9sh","m34","shc","2hg","2lg","2mg","2tg","2vg","4hg","4lg","4mg","4tg","4vg","hgl","irg","lgl","mgl","tgl","uhg","ulg","umg","utg","uvg","vgl","xhg","xig","xlg","xmg","xtg","xvg","yhg","yig","ylg","ymg","ytg","yvg","9ar","9wb","9xf","axf","btl","ces","clw","ktr","skr","wrb","7ar","7cs","7lw","7qr","7tw","7wb","7xf","9cs","9lw","9qr","9tw","m13","q73","q74","q75","q76","q86","0gm","0m0","0wh","7gm","7m7","7wh","9gm","9m9","9wh","gma","m03","mau","p23","p24","p25","q22","q23","q24","whm","ne1","ne2","ne3","ne4","ne5","ne6","ne7","ne8","ne9","nea","neb","ned","nee","nef","neg","qna","qne","qnf","2ap","2h9","2hl","2hm","2kp","2lm","2rn","2sk","4ap","4h9","4hl","4hm","4kp","4lm","4rn","4sk","bhm","cap","crn","dwc","fhl","ghm","hlm","msk","skp","uap","uh9","uhl","uhm","ukp","ulm","urn","usk","xap","xdw","xh9","xhl","xhm","xkp","xlm","xrn","xsk","yap","ydw","yh9","yhl","yhm","ykp","ylm","yrn","ysk","0gl","0ja","0pi","0s9","0ts","7gl","7ja","7pi","7s7","7ts","9gl","9ja","9pi","9s9","9ts","glv","jav","m28","m32","m33","pil","ssp","tsp","0bl","0dg","0di","0kr","7bl","7dg","7di","7kr","9bl","9dg","9di","9kr","bld","dgr","dir","kri","p40","p41","p42","p43","q39","q40","q41","q42","0kl","0rm","9kl","9rm","arm","kkl","0fl","0ma","0mt","7fl","7ma","7mt","9fl","9ma","9mt","fla","mac","mst","p20","p21","p22","q19","q20","q21","0mn","9mn","m09","mnb","0rd","9rd","m14","nrd","0ns","0sy","9ns","9sy","m05","nsy","syn","m07","ob1","ob2","ob3","ob4","ob5","ob6","ob7","ob8","ob9","oba","obb","obc","obd","obe","obf","q83","q84","q85","0pb","9pb","apb","dr1","dr2","dr3","dr4","dr5","dr6","dr7","dr8","dr9","dra","drb","drc","drd","dre","drf","qda","qdb","qdd","qde","qdf","ba1","ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","baa","bab","bac","bad","bae","baf","qba","qbc","qbd","qbe","0b7","0h0","0pa","0s8","0vo","0wc","7h7","7o7","7pa","7s8","7vo","7wc","9b7","9h9","9pa","9s8","9vo","9wc","bar","hal","p49","p50","p51","p52","p53","p54","pax","q48","q49","q50","q51","q52","q53","scy","vou","wsc","rob","xrb","yrb","0gp","0qs","0ws","5sc","7qs","7sc","7ws","9gp","9qs","9sc","9ws","gsc","gsp","m12","m17","p16","p17","p18","q15","q16","q17","scp","wsp","eht","xht","yht","2it","2ml","2ow","2pk","2rg","2sh","2ts","2uc","4it","4ml","4ow","4pk","4rg","4sh","4ts","4uc","bsh","buc","fts","gts","kit","lrg","sml","sp2","spk","tow","uit","uml","uow","upk","urg","ush","uts","uuc","xft","xit","xml","xow","xpk","xrg","xsh","xts","xuc","yft","yit","yml","yow","ypk","yrg","ysh","yts","yuc","0br","0p0","0sr","0st","0tr","7br","7p7","7sr","7st","7tr","9br","9p9","9sr","9st","9tr","brn","p44","p45","p46","p47","p48","pik","q43","q44","q45","q46","q47","spr","spt","tri","1bs","1cs","1ls","1ss","1ws","6bs","6cs","6ls","6ss","6ws","8bs","8cs","8ls","8ss","8ws","bst","cst","lst","m11","m29","m36","p55","p56","p57","p58","p59","q54","q55","q56","q57","q58","sst","wst","02h","0b0","0bs","0cm","0cr","0fb","0fc","0gd","0gs","0ls","0sb","0sm","0ss","0wd","2hs","72h","7b7","7bs","7cm","7cr","7fb","7fc","7gd","7gs","7ls","7sb","7sm","7ss","7wd","92h","9b9","9bs","9cm","9cr","9fb","9fc","9gd","9gs","9ls","9sb","9sm","9ss","9wd","bsd","bsw","clm","cr2","crs","dd1","flb","flc","gis","gsd","lsd","m16","m18","m22","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","q25","q26","q27","q28","q29","q2a","q2b","q2c","q2d","q2e","q2f","q30","q31","q32","q33","q34","q35","q36","q37","q38","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","sbr","scm","ssd","wsd","0b6","0ta","7b8","7ta","9b8","9ta","bal","m26","q72","tax","0bk","0tk","7bk","7tk","9bk","9tk","bkf","m08","m27","q71","tkf","2ar","2cl","2ea","2hn","2la","2ld","2lt","2ng","2pl","2rs","2th","2tp","2tu","2ui","2ul","4ar","4cl","4ea","4hn","4la","4ld","4lt","4ng","4pl","4rs","4th","4tp","4tu","4ui","4ul","aar","br2","brs","chn","elv","fld","ful","gth","hla","lea","ltp","plt","qui","rng","scl","shl","spl","stu","uar","ucl","uea","uhn","ula","uld","ult","ung","upl","urs","uth","utp","utu","uui","uul","xar","xcl","xea","xhh","xhn","xla","xld","xlt","xlv","xng","xpl","xrs","xth","xtp","xtu","xui","xul","yar","ycl","yea","yhh","yhn","yla","yld","ylt","ylv","yng","ypl","yrs","yth","ytp","ytu","yui","yul","0bw","0gw","0wn","0yw","7bw","7gw","7wn","7yw","9bw","9gw","9wn","9yw","bwn","gwn","m04","m23","p11","p12","p13","p14","q10","q11","q12","q13","wnd","ywn","1hx","1lx","1mx","1rx","6hx","6lx","6mx","6rx","8hx","8lx","8mx","8rx","hxb","lxb","m02","m25","mxb","p68","p69","p70","p71","q67","q68","q69","q70","rxb"},
        quality = 4,
        hide = true,
        filter_levels = 4
    },


    -- hide magic arrow/bolts on very and uber
    {
        codes = {"cqv","cq2","cq0","aq0","aq2","aqv"},
        quality = "4-",
        hide = true,
        filter_levels = 3
    },
    {
        codes = {"cqv","cq2","cq0","aq0","aq2","aqv"},
        quality = "4-",
        hide = true,
        filter_levels = 4
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
        codes = {"amu","rin","zrn","srn","nrn","prn","brg","drn","arn"},
        quality = 4,
        hide = false,
        filter_levels = 1
    },
    {
        codes = {"amu","rin","zrn","srn","nrn","prn","brg","drn","arn"},
        quality = 4,
        hide = false,
        filter_levels = 2
    },
    {
        codes = {"amu","rin","zrn","srn","nrn","prn","brg","drn","arn"},
        quality = 4,
        hide = true,
        filter_levels = 3
    },
    
    {
        codes = {"amu","rin","zrn","srn","nrn","prn","brg","drn","arn"},
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
        codes = {"am1","am2","am6","am7","amb","amc","q77","q80","am5","ama","amf","m31","q79","q82","pa1","pa2","pa3","pa4","pa5","pa6","pa7","pa8","pa9","paa","pab","pac","pad","pae","paf","qp9","qpc","qpe","9nn","nin","0nn","9nj","m37","njt","am3","am4","am8","am9","amd","ame","q78","q81","0ax","0ba","0bt","0ga","0gi","0ha","0la","0mp","0wa","2ax","72a","7ax","7ba","7bt","7ga","7gi","7ha","7la","7mp","7wa","82a","92a","9ax","9ba","9bt","9ga","9gi","9ha","9la","9mp","9wa","axe","bax","btx","gax","gix","hax","lax","m21","mpi","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","wax","0be","9be","m35","pbe","3hb","3lb","3mb","3tb","3vb","5hb","5lb","5mb","5tb","5vb","ahb","alb","atb","avb","bmb","hbl","lbl","mbl","msb","tbl","uhc","ulc","umc","utc","uvc","vbl","xms","yms","zhb","zlb","zmb","ztb","zvb","0xb","9xb","bts","m38","2hb","2lb","2mb","2tb","2vb","4hb","4lb","4mb","4tb","4vb","dbt","hbt","lbt","mbt","tbt","uhb","ulb","umb","utb","uvb","vbt","xbt","xhb","xlb","xmb","xtb","xvb","ybt","yhb","ylb","ymb","ytb","yvb","1cb","1hb","1l8","1lb","1lw","1s8","1sb","1sw","6cb","6hb","6l7","6lb","6lw","6s7","6sb","6sw","8cb","8hb","8l8","8lb","8lw","8s8","8sb","8sw","cbw","hbw","lbb","lbw","lwb","m01","m24","m30","p60","p61","p62","p63","p64","p65","p66","p67","q59","q60","q61","q62","q63","q64","q65","q66","sbb","sbw","swb","ci0","ci1","ci2","ci3","ci4","cix","qi2","qi3","clk","xlk","ylk","0cl","0sp","7cl","7sp","9cl","9sp","clb","p15","p19","q14","q18","spc","0sh","9sh","m34","shc","2hg","2lg","2mg","2tg","2vg","4hg","4lg","4mg","4tg","4vg","hgl","irg","lgl","mgl","tgl","uhg","ulg","umg","utg","uvg","vgl","xhg","xig","xlg","xmg","xtg","xvg","yhg","yig","ylg","ymg","ytg","yvg","9ar","9wb","9xf","axf","btl","ces","clw","ktr","skr","wrb","7ar","7cs","7lw","7qr","7tw","7wb","7xf","9cs","9lw","9qr","9tw","m13","q73","q74","q75","q76","q86","0gm","0m0","0wh","7gm","7m7","7wh","9gm","9m9","9wh","gma","m03","mau","p23","p24","p25","q22","q23","q24","whm","ne1","ne2","ne3","ne4","ne5","ne6","ne7","ne8","ne9","nea","neb","ned","nee","nef","neg","qna","qne","qnf","2ap","2h9","2hl","2hm","2kp","2lm","2rn","2sk","4ap","4h9","4hl","4hm","4kp","4lm","4rn","4sk","bhm","cap","crn","dwc","fhl","ghm","hlm","msk","skp","uap","uh9","uhl","uhm","ukp","ulm","urn","usk","xap","xdw","xh9","xhl","xhm","xkp","xlm","xrn","xsk","yap","ydw","yh9","yhl","yhm","ykp","ylm","yrn","ysk","0gl","0ja","0pi","0s9","0ts","7gl","7ja","7pi","7s7","7ts","9gl","9ja","9pi","9s9","9ts","glv","jav","m28","m32","m33","pil","ssp","tsp","0bl","0dg","0di","0kr","7bl","7dg","7di","7kr","9bl","9dg","9di","9kr","bld","dgr","dir","kri","p40","p41","p42","p43","q39","q40","q41","q42","0kl","0rm","9kl","9rm","arm","kkl","0fl","0ma","0mt","7fl","7ma","7mt","9fl","9ma","9mt","fla","mac","mst","p20","p21","p22","q19","q20","q21","0mn","9mn","m09","mnb","0rd","9rd","m14","nrd","0ns","0sy","9ns","9sy","m05","nsy","syn","m07","ob1","ob2","ob3","ob4","ob5","ob6","ob7","ob8","ob9","oba","obb","obc","obd","obe","obf","q83","q84","q85","0pb","9pb","apb","dr1","dr2","dr3","dr4","dr5","dr6","dr7","dr8","dr9","dra","drb","drc","drd","dre","drf","qda","qdb","qdd","qde","qdf","ba1","ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","baa","bab","bac","bad","bae","baf","qba","qbc","qbd","qbe","0b7","0h0","0pa","0s8","0vo","0wc","7h7","7o7","7pa","7s8","7vo","7wc","9b7","9h9","9pa","9s8","9vo","9wc","bar","hal","p49","p50","p51","p52","p53","p54","pax","q48","q49","q50","q51","q52","q53","scy","vou","wsc","rob","xrb","yrb","0gp","0qs","0ws","5sc","7qs","7sc","7ws","9gp","9qs","9sc","9ws","gsc","gsp","m12","m17","p16","p17","p18","q15","q16","q17","scp","wsp","eht","xht","yht","2it","2ml","2ow","2pk","2rg","2sh","2ts","2uc","4it","4ml","4ow","4pk","4rg","4sh","4ts","4uc","bsh","buc","fts","gts","kit","lrg","sml","sp2","spk","tow","uit","uml","uow","upk","urg","ush","uts","uuc","xft","xit","xml","xow","xpk","xrg","xsh","xts","xuc","yft","yit","yml","yow","ypk","yrg","ysh","yts","yuc","0br","0p0","0sr","0st","0tr","7br","7p7","7sr","7st","7tr","9br","9p9","9sr","9st","9tr","brn","p44","p45","p46","p47","p48","pik","q43","q44","q45","q46","q47","spr","spt","tri","1bs","1cs","1ls","1ss","1ws","6bs","6cs","6ls","6ss","6ws","8bs","8cs","8ls","8ss","8ws","bst","cst","lst","m11","m29","m36","p55","p56","p57","p58","p59","q54","q55","q56","q57","q58","sst","wst","02h","0b0","0bs","0cm","0cr","0fb","0fc","0gd","0gs","0ls","0sb","0sm","0ss","0wd","2hs","72h","7b7","7bs","7cm","7cr","7fb","7fc","7gd","7gs","7ls","7sb","7sm","7ss","7wd","92h","9b9","9bs","9cm","9cr","9fb","9fc","9gd","9gs","9ls","9sb","9sm","9ss","9wd","bsd","bsw","clm","cr2","crs","dd1","flb","flc","gis","gsd","lsd","m16","m18","m22","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","q25","q26","q27","q28","q29","q2a","q2b","q2c","q2d","q2e","q2f","q30","q31","q32","q33","q34","q35","q36","q37","q38","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","sbr","scm","ssd","wsd","0b6","0ta","7b8","7ta","9b8","9ta","bal","m26","q72","tax","0bk","0tk","7bk","7tk","9bk","9tk","bkf","m08","m27","q71","tkf","2ar","2cl","2ea","2hn","2la","2ld","2lt","2ng","2pl","2rs","2th","2tp","2tu","2ui","2ul","4ar","4cl","4ea","4hn","4la","4ld","4lt","4ng","4pl","4rs","4th","4tp","4tu","4ui","4ul","aar","br2","brs","chn","elv","fld","ful","gth","hla","lea","ltp","plt","qui","rng","scl","shl","spl","stu","uar","ucl","uea","uhn","ula","uld","ult","ung","upl","urs","uth","utp","utu","uui","uul","xar","xcl","xea","xhh","xhn","xla","xld","xlt","xlv","xng","xpl","xrs","xth","xtp","xtu","xui","xul","yar","ycl","yea","yhh","yhn","yla","yld","ylt","ylv","yng","ypl","yrs","yth","ytp","ytu","yui","yul","0bw","0gw","0wn","0yw","7bw","7gw","7wn","7yw","9bw","9gw","9wn","9yw","bwn","gwn","m04","m23","p11","p12","p13","p14","q10","q11","q12","q13","wnd","ywn","1hx","1lx","1mx","1rx","6hx","6lx","6mx","6rx","8hx","8lx","8mx","8rx","hxb","lxb","m02","m25","mxb","p68","p69","p70","p71","q67","q68","q69","q70","rxb"},
        quality = 3,
        hide = true,
        filter_levels = 4
    },
    {
        codes = {"am1","am2","am6","am7","amb","amc","q77","q80","am5","ama","amf","m31","q79","q82","pa1","pa2","pa3","pa4","pa5","pa6","pa7","pa8","pa9","paa","pab","pac","pad","pae","paf","qp9","qpc","qpe","9nn","nin","0nn","9nj","m37","njt","am3","am4","am8","am9","amd","ame","q78","q81","0ax","0ba","0bt","0ga","0gi","0ha","0la","0mp","0wa","2ax","72a","7ax","7ba","7bt","7ga","7gi","7ha","7la","7mp","7wa","82a","92a","9ax","9ba","9bt","9ga","9gi","9ha","9la","9mp","9wa","axe","bax","btx","gax","gix","hax","lax","m21","mpi","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","wax","0be","9be","m35","pbe","3hb","3lb","3mb","3tb","3vb","5hb","5lb","5mb","5tb","5vb","ahb","alb","atb","avb","bmb","hbl","lbl","mbl","msb","tbl","uhc","ulc","umc","utc","uvc","vbl","xms","yms","zhb","zlb","zmb","ztb","zvb","0xb","9xb","bts","m38","2hb","2lb","2mb","2tb","2vb","4hb","4lb","4mb","4tb","4vb","dbt","hbt","lbt","mbt","tbt","uhb","ulb","umb","utb","uvb","vbt","xbt","xhb","xlb","xmb","xtb","xvb","ybt","yhb","ylb","ymb","ytb","yvb","1cb","1hb","1l8","1lb","1lw","1s8","1sb","1sw","6cb","6hb","6l7","6lb","6lw","6s7","6sb","6sw","8cb","8hb","8l8","8lb","8lw","8s8","8sb","8sw","cbw","hbw","lbb","lbw","lwb","m01","m24","m30","p60","p61","p62","p63","p64","p65","p66","p67","q59","q60","q61","q62","q63","q64","q65","q66","sbb","sbw","swb","ci0","ci1","ci2","ci3","ci4","cix","qi2","qi3","clk","xlk","ylk","0cl","0sp","7cl","7sp","9cl","9sp","clb","p15","p19","q14","q18","spc","0sh","9sh","m34","shc","2hg","2lg","2mg","2tg","2vg","4hg","4lg","4mg","4tg","4vg","hgl","irg","lgl","mgl","tgl","uhg","ulg","umg","utg","uvg","vgl","xhg","xig","xlg","xmg","xtg","xvg","yhg","yig","ylg","ymg","ytg","yvg","9ar","9wb","9xf","axf","btl","ces","clw","ktr","skr","wrb","7ar","7cs","7lw","7qr","7tw","7wb","7xf","9cs","9lw","9qr","9tw","m13","q73","q74","q75","q76","q86","0gm","0m0","0wh","7gm","7m7","7wh","9gm","9m9","9wh","gma","m03","mau","p23","p24","p25","q22","q23","q24","whm","ne1","ne2","ne3","ne4","ne5","ne6","ne7","ne8","ne9","nea","neb","ned","nee","nef","neg","qna","qne","qnf","2ap","2h9","2hl","2hm","2kp","2lm","2rn","2sk","4ap","4h9","4hl","4hm","4kp","4lm","4rn","4sk","bhm","cap","crn","dwc","fhl","ghm","hlm","msk","skp","uap","uh9","uhl","uhm","ukp","ulm","urn","usk","xap","xdw","xh9","xhl","xhm","xkp","xlm","xrn","xsk","yap","ydw","yh9","yhl","yhm","ykp","ylm","yrn","ysk","0gl","0ja","0pi","0s9","0ts","7gl","7ja","7pi","7s7","7ts","9gl","9ja","9pi","9s9","9ts","glv","jav","m28","m32","m33","pil","ssp","tsp","0bl","0dg","0di","0kr","7bl","7dg","7di","7kr","9bl","9dg","9di","9kr","bld","dgr","dir","kri","p40","p41","p42","p43","q39","q40","q41","q42","0kl","0rm","9kl","9rm","arm","kkl","0fl","0ma","0mt","7fl","7ma","7mt","9fl","9ma","9mt","fla","mac","mst","p20","p21","p22","q19","q20","q21","0mn","9mn","m09","mnb","0rd","9rd","m14","nrd","0ns","0sy","9ns","9sy","m05","nsy","syn","m07","ob1","ob2","ob3","ob4","ob5","ob6","ob7","ob8","ob9","oba","obb","obc","obd","obe","obf","q83","q84","q85","0pb","9pb","apb","dr1","dr2","dr3","dr4","dr5","dr6","dr7","dr8","dr9","dra","drb","drc","drd","dre","drf","qda","qdb","qdd","qde","qdf","ba1","ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","baa","bab","bac","bad","bae","baf","qba","qbc","qbd","qbe","0b7","0h0","0pa","0s8","0vo","0wc","7h7","7o7","7pa","7s8","7vo","7wc","9b7","9h9","9pa","9s8","9vo","9wc","bar","hal","p49","p50","p51","p52","p53","p54","pax","q48","q49","q50","q51","q52","q53","scy","vou","wsc","rob","xrb","yrb","0gp","0qs","0ws","5sc","7qs","7sc","7ws","9gp","9qs","9sc","9ws","gsc","gsp","m12","m17","p16","p17","p18","q15","q16","q17","scp","wsp","eht","xht","yht","2it","2ml","2ow","2pk","2rg","2sh","2ts","2uc","4it","4ml","4ow","4pk","4rg","4sh","4ts","4uc","bsh","buc","fts","gts","kit","lrg","sml","sp2","spk","tow","uit","uml","uow","upk","urg","ush","uts","uuc","xft","xit","xml","xow","xpk","xrg","xsh","xts","xuc","yft","yit","yml","yow","ypk","yrg","ysh","yts","yuc","0br","0p0","0sr","0st","0tr","7br","7p7","7sr","7st","7tr","9br","9p9","9sr","9st","9tr","brn","p44","p45","p46","p47","p48","pik","q43","q44","q45","q46","q47","spr","spt","tri","1bs","1cs","1ls","1ss","1ws","6bs","6cs","6ls","6ss","6ws","8bs","8cs","8ls","8ss","8ws","bst","cst","lst","m11","m29","m36","p55","p56","p57","p58","p59","q54","q55","q56","q57","q58","sst","wst","02h","0b0","0bs","0cm","0cr","0fb","0fc","0gd","0gs","0ls","0sb","0sm","0ss","0wd","2hs","72h","7b7","7bs","7cm","7cr","7fb","7fc","7gd","7gs","7ls","7sb","7sm","7ss","7wd","92h","9b9","9bs","9cm","9cr","9fb","9fc","9gd","9gs","9ls","9sb","9sm","9ss","9wd","bsd","bsw","clm","cr2","crs","dd1","flb","flc","gis","gsd","lsd","m16","m18","m22","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","q25","q26","q27","q28","q29","q2a","q2b","q2c","q2d","q2e","q2f","q30","q31","q32","q33","q34","q35","q36","q37","q38","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","sbr","scm","ssd","wsd","0b6","0ta","7b8","7ta","9b8","9ta","bal","m26","q72","tax","0bk","0tk","7bk","7tk","9bk","9tk","bkf","m08","m27","q71","tkf","2ar","2cl","2ea","2hn","2la","2ld","2lt","2ng","2pl","2rs","2th","2tp","2tu","2ui","2ul","4ar","4cl","4ea","4hn","4la","4ld","4lt","4ng","4pl","4rs","4th","4tp","4tu","4ui","4ul","aar","br2","brs","chn","elv","fld","ful","gth","hla","lea","ltp","plt","qui","rng","scl","shl","spl","stu","uar","ucl","uea","uhn","ula","uld","ult","ung","upl","urs","uth","utp","utu","uui","uul","xar","xcl","xea","xhh","xhn","xla","xld","xlt","xlv","xng","xpl","xrs","xth","xtp","xtu","xui","xul","yar","ycl","yea","yhh","yhn","yla","yld","ylt","ylv","yng","ypl","yrs","yth","ytp","ytu","yui","yul","0bw","0gw","0wn","0yw","7bw","7gw","7wn","7yw","9bw","9gw","9wn","9yw","bwn","gwn","m04","m23","p11","p12","p13","p14","q10","q11","q12","q13","wnd","ywn","1hx","1lx","1mx","1rx","6hx","6lx","6mx","6rx","8hx","8lx","8mx","8rx","hxb","lxb","m02","m25","mxb","p68","p69","p70","p71","q67","q68","q69","q70","rxb"},
        quality = 6,
        sockets = "0",
        hide = true,
        filter_levels = 4
    },
    {   
        code = "rvs",
        hide = true,
        filter_levels = 4,
        border = {255, 0, 255, 255, 1},	
    },





    -- Rune Logic
    -- Low tier LOD Decals by strictness
    -- Leveling hide nothing, strict only hides low tier, very hides mid and low tier decals
    {
        codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l","10l","11l","12l","13l","14l","15l","16l","17l","18l","19l","20l","21l","22l","23l","24l","25l","26l","27l","28l","29l","30l","31l","32l","33l"},
        hide = false,
        filter_levels = 1
    },
    {
        codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l"},
        hide = true,
        filter_levels = 2
    },
    {
        codes = {"10l","11l","12l","13l","14l","15l","16l","17l","18l","19l","20l","21l","22l"},
        hide = false,
        filter_levels = 2
    },
    {
        codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l","10l","11l","12l","13l","14l","15l","16l","17l","18l","19l","20l","21l","22l"},
        hide = true,
        filter_levels = 3
    },

    -- Low tier ESR runes by strictness
    -- Leveling hide nothing, strict only hides white tier, very strict hides white, red, yellow
    {
        codes = {"r01","r02","r03","r04","r05","r06","r07","r08","r09","r10","r11","r12","r13","r14","r15","r16","r17","r18","r19","r20","r21","r22","r23","r24","r25","r26","r27","r28"},
        hide = false,
        filter_levels = 1
    },    
    {
        codes = {"r01","r02","r03","r04","r05","r08","r09","r10","r11","r12","r15","r16","r17","r18","r19"},
        hide = true,
        filter_levels = 2
    },
    {
        codes = {"r06","r07","r13","r14","r20","r21","r22","r23","r24","r25","r26","r27","r28"},
        hide = false,
        filter_levels = 2
    },      
    {
        codes = {"r01","r02","r03","r04","r05","r06","r08","r09","r10","r11","r12","r13","r15","r16","r17","r18","r19","r20","r22","r23","r24","r25","r26","r27"},
        hide = true,
        filter_levels = 3
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

    -- Socket info for ground items
    {   
        codes = {"am1","am2","am6","am7","amb","amc","q77","q80","am5","ama","amf","m31","q79","q82","pa1","pa2","pa3","pa4","pa5","pa6","pa7","pa8","pa9","paa","pab","pac","pad","pae","paf","qp9","qpc","qpe","9nn","nin","0nn","9nj","m37","njt","am3","am4","am8","am9","amd","ame","q78","q81","0ax","0ba","0bt","0ga","0gi","0ha","0la","0mp","0wa","2ax","72a","7ax","7ba","7bt","7ga","7gi","7ha","7la","7mp","7wa","82a","92a","9ax","9ba","9bt","9ga","9gi","9ha","9la","9mp","9wa","axe","bax","btx","gax","gix","hax","lax","m21","mpi","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","wax","0be","9be","m35","pbe","3hb","3lb","3mb","3tb","3vb","5hb","5lb","5mb","5tb","5vb","ahb","alb","atb","avb","bmb","hbl","lbl","mbl","msb","tbl","uhc","ulc","umc","utc","uvc","vbl","xms","yms","zhb","zlb","zmb","ztb","zvb","0xb","9xb","bts","m38","2hb","2lb","2mb","2tb","2vb","4hb","4lb","4mb","4tb","4vb","dbt","hbt","lbt","mbt","tbt","uhb","ulb","umb","utb","uvb","vbt","xbt","xhb","xlb","xmb","xtb","xvb","ybt","yhb","ylb","ymb","ytb","yvb","1cb","1hb","1l8","1lb","1lw","1s8","1sb","1sw","6cb","6hb","6l7","6lb","6lw","6s7","6sb","6sw","8cb","8hb","8l8","8lb","8lw","8s8","8sb","8sw","cbw","hbw","lbb","lbw","lwb","m01","m24","m30","p60","p61","p62","p63","p64","p65","p66","p67","q59","q60","q61","q62","q63","q64","q65","q66","sbb","sbw","swb","ci0","ci1","ci2","ci3","ci4","cix","qi2","qi3","clk","xlk","ylk","0cl","0sp","7cl","7sp","9cl","9sp","clb","p15","p19","q14","q18","spc","0sh","9sh","m34","shc","2hg","2lg","2mg","2tg","2vg","4hg","4lg","4mg","4tg","4vg","hgl","irg","lgl","mgl","tgl","uhg","ulg","umg","utg","uvg","vgl","xhg","xig","xlg","xmg","xtg","xvg","yhg","yig","ylg","ymg","ytg","yvg","9ar","9wb","9xf","axf","btl","ces","clw","ktr","skr","wrb","7ar","7cs","7lw","7qr","7tw","7wb","7xf","9cs","9lw","9qr","9tw","m13","q73","q74","q75","q76","q86","0gm","0m0","0wh","7gm","7m7","7wh","9gm","9m9","9wh","gma","m03","mau","p23","p24","p25","q22","q23","q24","whm","ne1","ne2","ne3","ne4","ne5","ne6","ne7","ne8","ne9","nea","neb","ned","nee","nef","neg","qna","qne","qnf","2ap","2h9","2hl","2hm","2kp","2lm","2rn","2sk","4ap","4h9","4hl","4hm","4kp","4lm","4rn","4sk","bhm","cap","crn","dwc","fhl","ghm","hlm","msk","skp","uap","uh9","uhl","uhm","ukp","ulm","urn","usk","xap","xdw","xh9","xhl","xhm","xkp","xlm","xrn","xsk","yap","ydw","yh9","yhl","yhm","ykp","ylm","yrn","ysk","0gl","0ja","0pi","0s9","0ts","7gl","7ja","7pi","7s7","7ts","9gl","9ja","9pi","9s9","9ts","glv","jav","m28","m32","m33","pil","ssp","tsp","0bl","0dg","0di","0kr","7bl","7dg","7di","7kr","9bl","9dg","9di","9kr","bld","dgr","dir","kri","p40","p41","p42","p43","q39","q40","q41","q42","0kl","0rm","9kl","9rm","arm","kkl","0fl","0ma","0mt","7fl","7ma","7mt","9fl","9ma","9mt","fla","mac","mst","p20","p21","p22","q19","q20","q21","0mn","9mn","m09","mnb","0rd","9rd","m14","nrd","0ns","0sy","9ns","9sy","m05","nsy","syn","m07","ob1","ob2","ob3","ob4","ob5","ob6","ob7","ob8","ob9","oba","obb","obc","obd","obe","obf","q83","q84","q85","0pb","9pb","apb","dr1","dr2","dr3","dr4","dr5","dr6","dr7","dr8","dr9","dra","drb","drc","drd","dre","drf","qda","qdb","qdd","qde","qdf","ba1","ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","baa","bab","bac","bad","bae","baf","qba","qbc","qbd","qbe","0b7","0h0","0pa","0s8","0vo","0wc","7h7","7o7","7pa","7s8","7vo","7wc","9b7","9h9","9pa","9s8","9vo","9wc","bar","hal","p49","p50","p51","p52","p53","p54","pax","q48","q49","q50","q51","q52","q53","scy","vou","wsc","rob","xrb","yrb","0gp","0qs","0ws","5sc","7qs","7sc","7ws","9gp","9qs","9sc","9ws","gsc","gsp","m12","m17","p16","p17","p18","q15","q16","q17","scp","wsp","eht","xht","yht","2it","2ml","2ow","2pk","2rg","2sh","2ts","2uc","4it","4ml","4ow","4pk","4rg","4sh","4ts","4uc","bsh","buc","fts","gts","kit","lrg","sml","sp2","spk","tow","uit","uml","uow","upk","urg","ush","uts","uuc","xft","xit","xml","xow","xpk","xrg","xsh","xts","xuc","yft","yit","yml","yow","ypk","yrg","ysh","yts","yuc","0br","0p0","0sr","0st","0tr","7br","7p7","7sr","7st","7tr","9br","9p9","9sr","9st","9tr","brn","p44","p45","p46","p47","p48","pik","q43","q44","q45","q46","q47","spr","spt","tri","1bs","1cs","1ls","1ss","1ws","6bs","6cs","6ls","6ss","6ws","8bs","8cs","8ls","8ss","8ws","bst","cst","lst","m11","m29","m36","p55","p56","p57","p58","p59","q54","q55","q56","q57","q58","sst","wst","02h","0b0","0bs","0cm","0cr","0fb","0fc","0gd","0gs","0ls","0sb","0sm","0ss","0wd","2hs","72h","7b7","7bs","7cm","7cr","7fb","7fc","7gd","7gs","7ls","7sb","7sm","7ss","7wd","92h","9b9","9bs","9cm","9cr","9fb","9fc","9gd","9gs","9ls","9sb","9sm","9ss","9wd","bsd","bsw","clm","cr2","crs","dd1","flb","flc","gis","gsd","lsd","m16","m18","m22","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","q25","q26","q27","q28","q29","q2a","q2b","q2c","q2d","q2e","q2f","q30","q31","q32","q33","q34","q35","q36","q37","q38","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","sbr","scm","ssd","wsd","0b6","0ta","7b8","7ta","9b8","9ta","bal","m26","q72","tax","0bk","0tk","7bk","7tk","9bk","9tk","bkf","m08","m27","q71","tkf","2ar","2cl","2ea","2hn","2la","2ld","2lt","2ng","2pl","2rs","2th","2tp","2tu","2ui","2ul","4ar","4cl","4ea","4hn","4la","4ld","4lt","4ng","4pl","4rs","4th","4tp","4tu","4ui","4ul","aar","br2","brs","chn","elv","fld","ful","gth","hla","lea","ltp","plt","qui","rng","scl","shl","spl","stu","uar","ucl","uea","uhn","ula","uld","ult","ung","upl","urs","uth","utp","utu","uui","uul","xar","xcl","xea","xhh","xhn","xla","xld","xlt","xlv","xng","xpl","xrs","xth","xtp","xtu","xui","xul","yar","ycl","yea","yhh","yhn","yla","yld","ylt","ylv","yng","ypl","yrs","yth","ytp","ytu","yui","yul","0bw","0gw","0wn","0yw","7bw","7gw","7wn","7yw","9bw","9gw","9wn","9yw","bwn","gwn","m04","m23","p11","p12","p13","p14","q10","q11","q12","q13","wnd","ywn","1hx","1lx","1mx","1rx","6hx","6lx","6mx","6rx","8hx","8lx","8mx","8rx","hxb","lxb","m02","m25","mxb","p68","p69","p70","p71","q67","q68","q69","q70","rxb"},
        location = {"onground"},
        suffix = " {lilac}[{sockets}]"
    },


    }
}



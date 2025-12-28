--- Filter Title: SquidFilter Beta v02
--- Filter Type: MultiStrict
--- Filter Description: Multi-level filter
--- Filter Link: https://github.com/kraimoor/squidfilter/blob/main/SquidESRFilter.lua
return {
    reload = "{red}SquidFilter Beta v02 [{yellow}Reloaded{red}]",
    debug = false,
    allowOverrides = false,
    filter_titles = {"Leveling","Strict","Very-Strict"},
    filter_level = 2,
    rules = 
    {

    -- Debugging codes
    --{   
    --    codes = "allitems",
    --    location = {"onplayer", "atvendor"},
    --    suffix = "\n{red}Quality: {quality}\nRarity: {rarity}\nCode: {code}",
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
        hide = false,
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
        prefix = "{black}>>> ",
        name_override = "Cookbook",
        suffix = " <<<",
        name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 5},
    },
    {   
        code = "dfc",
        notify = "{gold}>>> Crafting Drop <<<",
        prefix = "{black}>>> ",
        name_override = "Devil's Food",
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
        prefix = ">>> ",
        name_override = "Orb of Annointment",
        suffix = " <<<",
        name_style = "Rainbow",
        background = {255, 127, 127, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        code = "mam",
        notify = "Good Mythical Amulet",
        prefix = ">>> ",
        name_override = "Mythical Amulet",
        suffix = " <<<",
        name_style = "Rainbow Group",
        background = {255, 127, 127, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        code = "mrn",
        notify = "Good Mythical Ring",
        prefix = ">>> ",
        name_override = "Mythical Ring",
        suffix = " <<<",
        name_style = "Rainbow Group",
        background = {255, 127, 127, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        code = "um8",
        notify = "Why you crying dear?",
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
        notify = "The Prime Stone",
        prefix = ">>> ",
        name_override = "Primordial Soulstone",
        suffix = " <<<",
        name_style = "Rainbow",
        background = {255, 255, 255, 255},
        --background_style = "Rainbow",
        border = {255, 255, 255, 255, 8},
    },
    {   
        code = "u20",
        notify = "Astro, you gave me your heart?",
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

    {   
        codes = {"z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","z19","z20"},
        notify = "How are your maps?",
        prefix = "{white}>>> ",
        name_override = "Map",
        suffix = " <<<",
        --name_style = "Rainbow",
        background = {0, 0, 0, 255},
        --background_style = "Rainbow",
        border = {255, 127, 0, 255, 8},
    },

    -- Notify high rune drops
    {
        notify = "High LOD Rune Decal!",
        codes = {"23l","24l","25l","26l","27l","28l","29l","30l","31l","32l","33l"}
    },
    {
        notify = "High ESR Rune!",
        codes = {"r43","r44","r45","r46","r84","r85","r86","r87","r88","r89","r90","r91","r92","r93","r94","r95","r96","r97"}
    },

    -- Notify unique rings, amulets, charms
    {
        notify = "Bling!",
        quality = 7,
        codes = {"rin","amu","jew"}
    },
    {
        notify = "Charming!",
        quality = 7,
        codes = {"cm1","cm2","cm3"}
    },



    -- Subjective Filtering Logic Begins

    -- Hide unwanted bases by filter level
    {
        codes = "allitems",
        quality = 1,
        hide = true,  
    },

    -- Hide 1 socket items
    {
        codes = {"cap","skp","hlm","fhl","ghm","crn","msk","qui","lea","hla","stu","rng","scl","chn","brs","spl","plt","fld","gth","ful","aar","ltp","buc","sml","lrg","kit","tow","gts","lgl","vgl","mgl","tgl","hgl","lbt","vbt","mbt","tbt","hbt","bhm","bsh","spk","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr1","dr2","dr3","dr4","dr5","ba1","ba2","ba3","ba4","ba5","pa1","pa2","pa3","pa4","pa5","ne1","ne2","ne3","ne4","ne5","ci0","ci1","ci2","ci3","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","cix","eht","xht","yht","dwc","xdw","ydw","clk","xlk","ylk","rob","xrb","yrb","shl","xhh","yhh","elv","xlv","ylv","fts","xft","yft","irg","xig","yig","dbt","xbt","ybt","ci4","m06","m15","m20","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","ci1","ci4","4ap","4kp","4lm","4hl","4hm","4rn","4sk","4ui","4ea","4la","4tu","4ng","4cl","4hn","4rs","4pl","4lt","4ld","4th","4ul","4ar","4tp","4uc","4ml","4rg","4it","4ow","4ts","4lg","4vg","4mg","4tg","4hg","4lb","4vb","4mb","4tb","4hb","4h9","4sh","4pk","xht","xdw","xlk","xrb","xhh","xlv","xft","xig","xbt","qi2","ci2","qba","qda","qna","qp9","m06","m15","m20","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","ci3","ci2","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","yht","ydw","ylk","yrb","yhh","ylv","yft","yig","ybt","qi3","qdb","qnf","qbc","qbd","qbe","qdd","qde","qne","qpc","qpe","m06","m15","m20","hax","axe","2ax","mpi","wax","lax","bax","btx","gax","gix","wnd","ywn","bwn","gwn","clb","scp","gsc","wsp","spc","mac","mst","fla","whm","mau","gma","ssd","scm","sbr","flc","crs","bsd","lsd","wsd","2hs","clm","gis","bsw","flb","gsd","dgr","dir","kri","bld","tkf","tax","bkf","bal","jav","pil","ssp","glv","tsp","spr","tri","brn","spt","pik","bar","vou","scy","pax","hal","wsc","sst","lst","cst","bst","wst","sbw","hbw","lbw","cbw","sbb","lbb","swb","lwb","lxb","mxb","hxb","rxb","gps","ops","gpm","opm","gpl","opl","d33","g33","leg","hdm","hfh","hst","msf","ktr","wrb","axf","ces","clw","btl","skr","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","p11","p12","p13","p14","p15","p16","p17","p18","p19","p20","p21","p22","p23","p24","p25","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","p40","p41","p42","p43","p44","p45","p46","p47","p48","p49","p50","p51","p52","p53","p54","p55","p56","p57","p58","p59","p60","p61","p62","p63","p64","p65","p66","p67","p68","p69","p70","p71","ob1","ob2","ob3","ob4","ob5","am1","am2","am3","am4","am5","aq2","cq2","gsp","apb","nin","njt","bts","shc","nrd","nsy","syn","pbe","mnb","kkl","arm","q1a","q1b","q1c","q1d","q1e","q1f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","cr2","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","9ha","9ax","92a","9mp","9wa","9la","9ba","9bt","9ga","9gi","9wn","9yw","9bw","9gw","9cl","9sc","9qs","9ws","9sp","9ma","9mt","9fl","9wh","9m9","9gm","9ss","9sm","9sb","9fc","9cr","9bs","9ls","9wd","92h","9cm","9gs","9b9","9fb","9gd","9dg","9di","9kr","9bl","9tk","9ta","9bk","9b8","9ja","9pi","9s9","9gl","9ts","9sr","9tr","9br","9st","9p9","9b7","9vo","9s8","9pa","9h9","9wc","8ss","8ls","8cs","8bs","8ws","8sb","8hb","8lb","8cb","8s8","8l8","8sw","8lw","8lx","8mx","8hx","8rx","9ar","9wb","9xf","9cs","9lw","9tw","9qr","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","q10","q11","q12","q13","q14","q15","q16","q17","q18","q19","q20","q21","q22","q23","q24","q25","q26","q27","q28","q29","q30","q31","q32","q33","q34","q35","q36","q37","q38","q39","q40","q41","q42","q43","q44","q45","q46","q47","q48","q49","q50","q51","q52","q53","q54","q55","q56","q57","q58","q59","q60","q61","q62","q63","q64","q65","q66","q67","q68","q69","q70","q71","q72","q73","q77","q78","q79","q83","ob6","ob7","ob8","ob9","oba","am6","am7","am8","am9","ama","aq2","cq2","9gp","9pb","9nn","9nj","9xb","9sh","9rd","9ns","9sy","9be","9mn","9kl","9rm","q2a","q2b","q2c","q2d","q2e","q2f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","0ha","0ax","82a","0mp","0wa","0la","0ba","0bt","0ga","0gi","0wn","0yw","0bw","0gw","0cl","5sc","0qs","0ws","0sp","0ma","0mt","0fl","0wh","0m0","0gm","0ss","0sm","0sb","0fc","0cr","0bs","0ls","0wd","02h","0cm","0gs","0b0","0fb","0gd","0dg","0di","0kr","0bl","0tk","0ta","0bk","0b6","0ja","0pi","0s9","0gl","0ts","0sr","0tr","0br","0st","0p0","0b7","0vo","0s8","0pa","0h0","0wc","1ss","1ls","1cs","1bs","1ws","1sb","1hb","1lb","1cb","1s8","1l8","1sw","1lw","1lx","1mx","1hx","1rx","7ar","7wb","7xf","7cs","7lw","7tw","7qr","7ha","7ax","72a","7mp","7wa","7la","7ba","7bt","7ga","7gi","7wn","7yw","7bw","7gw","7cl","7sc","7qs","7ws","7sp","7ma","7mt","7fl","7wh","7m7","7gm","7ss","7sm","7sb","7fc","7cr","7bs","7ls","7wd","72h","7cm","7gs","7b7","7fb","7gd","7dg","7di","7kr","7bl","7tk","7ta","7bk","7b8","7ja","7pi","7s7","7gl","7ts","7sr","7tr","7br","7st","7p7","7o7","7vo","7s8","7pa","7h7","7wc","6ss","6ls","6cs","6bs","6ws","6sb","6hb","6lb","6cb","6s7","6l7","6sw","6lw","6lx","6mx","6hx","6rx","obb","obc","obd","obe","obf","amb","amc","amd","ame","amf","aq2","cq2","0gp","0pb","0nn","0xb","0sh","0rd","0ns","0sy","0be","0mn","7tw","q74","q75","q76","q80","q81","q82","q84","q85","0kl","0rm","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","lbl","vbl","mbl","tbl","hbl","lbl","vbl","mbl","tbl","hbl","3lb","3vb","3mb","3tb","alb","avb","bmb","atb","ahb","alb","avb","bmb","atb","ahb","ulc","uvc","umc","utc","uhc","alb","avb","bmb","atb","ahb","yms","yms","yms","ulc","uvc","umc","utc","uhc","ulc","uvc","umc","utc","uhc","m10","zlb","zvb","zmb","ztb","zhb","zlb","zvb","zmb","ztb","zhb","5lb","5vb","5mb","5tb","5hb","zlb","zvb","zmb","ztb","zhb","xms","xms","xms","5lb","5vb","5mb","5tb","5hb","5lb","5vb","5mb","5tb","5hb","m10","3hb","lbl","vbl","mbl","tbl","hbl","msb","msb","msb","3lb","3vb","3mb","3tb","3hb","3lb","3vb","3mb","3tb","3hb","m10"},
        quality = "4-",
        sockets = "1",
        hide = true,
    },

    -- Hide non-superior white except leveling
    {
        codes = {"cap","skp","hlm","fhl","ghm","crn","msk","qui","lea","hla","stu","rng","scl","chn","brs","spl","plt","fld","gth","ful","aar","ltp","buc","sml","lrg","kit","tow","gts","lgl","vgl","mgl","tgl","hgl","lbt","vbt","mbt","tbt","hbt","bhm","bsh","spk","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr1","dr2","dr3","dr4","dr5","ba1","ba2","ba3","ba4","ba5","pa1","pa2","pa3","pa4","pa5","ne1","ne2","ne3","ne4","ne5","ci0","ci1","ci2","ci3","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","cix","eht","xht","yht","dwc","xdw","ydw","clk","xlk","ylk","rob","xrb","yrb","shl","xhh","yhh","elv","xlv","ylv","fts","xft","yft","irg","xig","yig","dbt","xbt","ybt","ci4","m06","m15","m20","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","ci1","ci4","4ap","4kp","4lm","4hl","4hm","4rn","4sk","4ui","4ea","4la","4tu","4ng","4cl","4hn","4rs","4pl","4lt","4ld","4th","4ul","4ar","4tp","4uc","4ml","4rg","4it","4ow","4ts","4lg","4vg","4mg","4tg","4hg","4lb","4vb","4mb","4tb","4hb","4h9","4sh","4pk","xht","xdw","xlk","xrb","xhh","xlv","xft","xig","xbt","qi2","ci2","qba","qda","qna","qp9","m06","m15","m20","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","ci3","ci2","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","yht","ydw","ylk","yrb","yhh","ylv","yft","yig","ybt","qi3","qdb","qnf","qbc","qbd","qbe","qdd","qde","qne","qpc","qpe","m06","m15","m20","hax","axe","2ax","mpi","wax","lax","bax","btx","gax","gix","wnd","ywn","bwn","gwn","clb","scp","gsc","wsp","spc","mac","mst","fla","whm","mau","gma","ssd","scm","sbr","flc","crs","bsd","lsd","wsd","2hs","clm","gis","bsw","flb","gsd","dgr","dir","kri","bld","tkf","tax","bkf","bal","jav","pil","ssp","glv","tsp","spr","tri","brn","spt","pik","bar","vou","scy","pax","hal","wsc","sst","lst","cst","bst","wst","sbw","hbw","lbw","cbw","sbb","lbb","swb","lwb","lxb","mxb","hxb","rxb","gps","ops","gpm","opm","gpl","opl","d33","g33","leg","hdm","hfh","hst","msf","ktr","wrb","axf","ces","clw","btl","skr","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","p11","p12","p13","p14","p15","p16","p17","p18","p19","p20","p21","p22","p23","p24","p25","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","p40","p41","p42","p43","p44","p45","p46","p47","p48","p49","p50","p51","p52","p53","p54","p55","p56","p57","p58","p59","p60","p61","p62","p63","p64","p65","p66","p67","p68","p69","p70","p71","ob1","ob2","ob3","ob4","ob5","am1","am2","am3","am4","am5","aq2","cq2","gsp","apb","nin","njt","bts","shc","nrd","nsy","syn","pbe","mnb","kkl","arm","q1a","q1b","q1c","q1d","q1e","q1f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","cr2","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","9ha","9ax","92a","9mp","9wa","9la","9ba","9bt","9ga","9gi","9wn","9yw","9bw","9gw","9cl","9sc","9qs","9ws","9sp","9ma","9mt","9fl","9wh","9m9","9gm","9ss","9sm","9sb","9fc","9cr","9bs","9ls","9wd","92h","9cm","9gs","9b9","9fb","9gd","9dg","9di","9kr","9bl","9tk","9ta","9bk","9b8","9ja","9pi","9s9","9gl","9ts","9sr","9tr","9br","9st","9p9","9b7","9vo","9s8","9pa","9h9","9wc","8ss","8ls","8cs","8bs","8ws","8sb","8hb","8lb","8cb","8s8","8l8","8sw","8lw","8lx","8mx","8hx","8rx","9ar","9wb","9xf","9cs","9lw","9tw","9qr","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","q10","q11","q12","q13","q14","q15","q16","q17","q18","q19","q20","q21","q22","q23","q24","q25","q26","q27","q28","q29","q30","q31","q32","q33","q34","q35","q36","q37","q38","q39","q40","q41","q42","q43","q44","q45","q46","q47","q48","q49","q50","q51","q52","q53","q54","q55","q56","q57","q58","q59","q60","q61","q62","q63","q64","q65","q66","q67","q68","q69","q70","q71","q72","q73","q77","q78","q79","q83","ob6","ob7","ob8","ob9","oba","am6","am7","am8","am9","ama","aq2","cq2","9gp","9pb","9nn","9nj","9xb","9sh","9rd","9ns","9sy","9be","9mn","9kl","9rm","q2a","q2b","q2c","q2d","q2e","q2f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","0ha","0ax","82a","0mp","0wa","0la","0ba","0bt","0ga","0gi","0wn","0yw","0bw","0gw","0cl","5sc","0qs","0ws","0sp","0ma","0mt","0fl","0wh","0m0","0gm","0ss","0sm","0sb","0fc","0cr","0bs","0ls","0wd","02h","0cm","0gs","0b0","0fb","0gd","0dg","0di","0kr","0bl","0tk","0ta","0bk","0b6","0ja","0pi","0s9","0gl","0ts","0sr","0tr","0br","0st","0p0","0b7","0vo","0s8","0pa","0h0","0wc","1ss","1ls","1cs","1bs","1ws","1sb","1hb","1lb","1cb","1s8","1l8","1sw","1lw","1lx","1mx","1hx","1rx","7ar","7wb","7xf","7cs","7lw","7tw","7qr","7ha","7ax","72a","7mp","7wa","7la","7ba","7bt","7ga","7gi","7wn","7yw","7bw","7gw","7cl","7sc","7qs","7ws","7sp","7ma","7mt","7fl","7wh","7m7","7gm","7ss","7sm","7sb","7fc","7cr","7bs","7ls","7wd","72h","7cm","7gs","7b7","7fb","7gd","7dg","7di","7kr","7bl","7tk","7ta","7bk","7b8","7ja","7pi","7s7","7gl","7ts","7sr","7tr","7br","7st","7p7","7o7","7vo","7s8","7pa","7h7","7wc","6ss","6ls","6cs","6bs","6ws","6sb","6hb","6lb","6cb","6s7","6l7","6sw","6lw","6lx","6mx","6hx","6rx","obb","obc","obd","obe","obf","amb","amc","amd","ame","amf","aq2","cq2","0gp","0pb","0nn","0xb","0sh","0rd","0ns","0sy","0be","0mn","7tw","q74","q75","q76","q80","q81","q82","q84","q85","0kl","0rm","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","lbl","vbl","mbl","tbl","hbl","lbl","vbl","mbl","tbl","hbl","3lb","3vb","3mb","3tb","alb","avb","bmb","atb","ahb","alb","avb","bmb","atb","ahb","ulc","uvc","umc","utc","uhc","alb","avb","bmb","atb","ahb","yms","yms","yms","ulc","uvc","umc","utc","uhc","ulc","uvc","umc","utc","uhc","m10","zlb","zvb","zmb","ztb","zhb","zlb","zvb","zmb","ztb","zhb","5lb","5vb","5mb","5tb","5hb","zlb","zvb","zmb","ztb","zhb","xms","xms","xms","5lb","5vb","5mb","5tb","5hb","5lb","5vb","5mb","5tb","5hb","m10","3hb","lbl","vbl","mbl","tbl","hbl","msb","msb","msb","3lb","3vb","3mb","3tb","3hb","3lb","3vb","3mb","3tb","3hb","m10"},
        quality = 2,
        hide = false,
        filter_levels = 1
    },
    {
        codes = {"cap","skp","hlm","fhl","ghm","crn","msk","qui","lea","hla","stu","rng","scl","chn","brs","spl","plt","fld","gth","ful","aar","ltp","buc","sml","lrg","kit","tow","gts","lgl","vgl","mgl","tgl","hgl","lbt","vbt","mbt","tbt","hbt","bhm","bsh","spk","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr1","dr2","dr3","dr4","dr5","ba1","ba2","ba3","ba4","ba5","pa1","pa2","pa3","pa4","pa5","ne1","ne2","ne3","ne4","ne5","ci0","ci1","ci2","ci3","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","cix","eht","xht","yht","dwc","xdw","ydw","clk","xlk","ylk","rob","xrb","yrb","shl","xhh","yhh","elv","xlv","ylv","fts","xft","yft","irg","xig","yig","dbt","xbt","ybt","ci4","m06","m15","m20","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","ci1","ci4","4ap","4kp","4lm","4hl","4hm","4rn","4sk","4ui","4ea","4la","4tu","4ng","4cl","4hn","4rs","4pl","4lt","4ld","4th","4ul","4ar","4tp","4uc","4ml","4rg","4it","4ow","4ts","4lg","4vg","4mg","4tg","4hg","4lb","4vb","4mb","4tb","4hb","4h9","4sh","4pk","xht","xdw","xlk","xrb","xhh","xlv","xft","xig","xbt","qi2","ci2","qba","qda","qna","qp9","m06","m15","m20","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","ci3","ci2","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","yht","ydw","ylk","yrb","yhh","ylv","yft","yig","ybt","qi3","qdb","qnf","qbc","qbd","qbe","qdd","qde","qne","qpc","qpe","m06","m15","m20","hax","axe","2ax","mpi","wax","lax","bax","btx","gax","gix","wnd","ywn","bwn","gwn","clb","scp","gsc","wsp","spc","mac","mst","fla","whm","mau","gma","ssd","scm","sbr","flc","crs","bsd","lsd","wsd","2hs","clm","gis","bsw","flb","gsd","dgr","dir","kri","bld","tkf","tax","bkf","bal","jav","pil","ssp","glv","tsp","spr","tri","brn","spt","pik","bar","vou","scy","pax","hal","wsc","sst","lst","cst","bst","wst","sbw","hbw","lbw","cbw","sbb","lbb","swb","lwb","lxb","mxb","hxb","rxb","gps","ops","gpm","opm","gpl","opl","d33","g33","leg","hdm","hfh","hst","msf","ktr","wrb","axf","ces","clw","btl","skr","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","p11","p12","p13","p14","p15","p16","p17","p18","p19","p20","p21","p22","p23","p24","p25","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","p40","p41","p42","p43","p44","p45","p46","p47","p48","p49","p50","p51","p52","p53","p54","p55","p56","p57","p58","p59","p60","p61","p62","p63","p64","p65","p66","p67","p68","p69","p70","p71","ob1","ob2","ob3","ob4","ob5","am1","am2","am3","am4","am5","aq2","cq2","gsp","apb","nin","njt","bts","shc","nrd","nsy","syn","pbe","mnb","kkl","arm","q1a","q1b","q1c","q1d","q1e","q1f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","cr2","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","9ha","9ax","92a","9mp","9wa","9la","9ba","9bt","9ga","9gi","9wn","9yw","9bw","9gw","9cl","9sc","9qs","9ws","9sp","9ma","9mt","9fl","9wh","9m9","9gm","9ss","9sm","9sb","9fc","9cr","9bs","9ls","9wd","92h","9cm","9gs","9b9","9fb","9gd","9dg","9di","9kr","9bl","9tk","9ta","9bk","9b8","9ja","9pi","9s9","9gl","9ts","9sr","9tr","9br","9st","9p9","9b7","9vo","9s8","9pa","9h9","9wc","8ss","8ls","8cs","8bs","8ws","8sb","8hb","8lb","8cb","8s8","8l8","8sw","8lw","8lx","8mx","8hx","8rx","9ar","9wb","9xf","9cs","9lw","9tw","9qr","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","q10","q11","q12","q13","q14","q15","q16","q17","q18","q19","q20","q21","q22","q23","q24","q25","q26","q27","q28","q29","q30","q31","q32","q33","q34","q35","q36","q37","q38","q39","q40","q41","q42","q43","q44","q45","q46","q47","q48","q49","q50","q51","q52","q53","q54","q55","q56","q57","q58","q59","q60","q61","q62","q63","q64","q65","q66","q67","q68","q69","q70","q71","q72","q73","q77","q78","q79","q83","ob6","ob7","ob8","ob9","oba","am6","am7","am8","am9","ama","aq2","cq2","9gp","9pb","9nn","9nj","9xb","9sh","9rd","9ns","9sy","9be","9mn","9kl","9rm","q2a","q2b","q2c","q2d","q2e","q2f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","0ha","0ax","82a","0mp","0wa","0la","0ba","0bt","0ga","0gi","0wn","0yw","0bw","0gw","0cl","5sc","0qs","0ws","0sp","0ma","0mt","0fl","0wh","0m0","0gm","0ss","0sm","0sb","0fc","0cr","0bs","0ls","0wd","02h","0cm","0gs","0b0","0fb","0gd","0dg","0di","0kr","0bl","0tk","0ta","0bk","0b6","0ja","0pi","0s9","0gl","0ts","0sr","0tr","0br","0st","0p0","0b7","0vo","0s8","0pa","0h0","0wc","1ss","1ls","1cs","1bs","1ws","1sb","1hb","1lb","1cb","1s8","1l8","1sw","1lw","1lx","1mx","1hx","1rx","7ar","7wb","7xf","7cs","7lw","7tw","7qr","7ha","7ax","72a","7mp","7wa","7la","7ba","7bt","7ga","7gi","7wn","7yw","7bw","7gw","7cl","7sc","7qs","7ws","7sp","7ma","7mt","7fl","7wh","7m7","7gm","7ss","7sm","7sb","7fc","7cr","7bs","7ls","7wd","72h","7cm","7gs","7b7","7fb","7gd","7dg","7di","7kr","7bl","7tk","7ta","7bk","7b8","7ja","7pi","7s7","7gl","7ts","7sr","7tr","7br","7st","7p7","7o7","7vo","7s8","7pa","7h7","7wc","6ss","6ls","6cs","6bs","6ws","6sb","6hb","6lb","6cb","6s7","6l7","6sw","6lw","6lx","6mx","6hx","6rx","obb","obc","obd","obe","obf","amb","amc","amd","ame","amf","aq2","cq2","0gp","0pb","0nn","0xb","0sh","0rd","0ns","0sy","0be","0mn","7tw","q74","q75","q76","q80","q81","q82","q84","q85","0kl","0rm","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","lbl","vbl","mbl","tbl","hbl","lbl","vbl","mbl","tbl","hbl","3lb","3vb","3mb","3tb","alb","avb","bmb","atb","ahb","alb","avb","bmb","atb","ahb","ulc","uvc","umc","utc","uhc","alb","avb","bmb","atb","ahb","yms","yms","yms","ulc","uvc","umc","utc","uhc","ulc","uvc","umc","utc","uhc","m10","zlb","zvb","zmb","ztb","zhb","zlb","zvb","zmb","ztb","zhb","5lb","5vb","5mb","5tb","5hb","zlb","zvb","zmb","ztb","zhb","xms","xms","xms","5lb","5vb","5mb","5tb","5hb","5lb","5vb","5mb","5tb","5hb","m10","3hb","lbl","vbl","mbl","tbl","hbl","msb","msb","msb","3lb","3vb","3mb","3tb","3hb","3lb","3vb","3mb","3tb","3hb","m10"},
        quality = 2,
        hide = true,
        filter_levels = 2
    },
    {
        codes = {"cap","skp","hlm","fhl","ghm","crn","msk","qui","lea","hla","stu","rng","scl","chn","brs","spl","plt","fld","gth","ful","aar","ltp","buc","sml","lrg","kit","tow","gts","lgl","vgl","mgl","tgl","hgl","lbt","vbt","mbt","tbt","hbt","bhm","bsh","spk","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr1","dr2","dr3","dr4","dr5","ba1","ba2","ba3","ba4","ba5","pa1","pa2","pa3","pa4","pa5","ne1","ne2","ne3","ne4","ne5","ci0","ci1","ci2","ci3","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","cix","eht","xht","yht","dwc","xdw","ydw","clk","xlk","ylk","rob","xrb","yrb","shl","xhh","yhh","elv","xlv","ylv","fts","xft","yft","irg","xig","yig","dbt","xbt","ybt","ci4","m06","m15","m20","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","ci1","ci4","4ap","4kp","4lm","4hl","4hm","4rn","4sk","4ui","4ea","4la","4tu","4ng","4cl","4hn","4rs","4pl","4lt","4ld","4th","4ul","4ar","4tp","4uc","4ml","4rg","4it","4ow","4ts","4lg","4vg","4mg","4tg","4hg","4lb","4vb","4mb","4tb","4hb","4h9","4sh","4pk","xht","xdw","xlk","xrb","xhh","xlv","xft","xig","xbt","qi2","ci2","qba","qda","qna","qp9","m06","m15","m20","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","ci3","ci2","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","yht","ydw","ylk","yrb","yhh","ylv","yft","yig","ybt","qi3","qdb","qnf","qbc","qbd","qbe","qdd","qde","qne","qpc","qpe","m06","m15","m20","hax","axe","2ax","mpi","wax","lax","bax","btx","gax","gix","wnd","ywn","bwn","gwn","clb","scp","gsc","wsp","spc","mac","mst","fla","whm","mau","gma","ssd","scm","sbr","flc","crs","bsd","lsd","wsd","2hs","clm","gis","bsw","flb","gsd","dgr","dir","kri","bld","tkf","tax","bkf","bal","jav","pil","ssp","glv","tsp","spr","tri","brn","spt","pik","bar","vou","scy","pax","hal","wsc","sst","lst","cst","bst","wst","sbw","hbw","lbw","cbw","sbb","lbb","swb","lwb","lxb","mxb","hxb","rxb","gps","ops","gpm","opm","gpl","opl","d33","g33","leg","hdm","hfh","hst","msf","ktr","wrb","axf","ces","clw","btl","skr","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","p11","p12","p13","p14","p15","p16","p17","p18","p19","p20","p21","p22","p23","p24","p25","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","p40","p41","p42","p43","p44","p45","p46","p47","p48","p49","p50","p51","p52","p53","p54","p55","p56","p57","p58","p59","p60","p61","p62","p63","p64","p65","p66","p67","p68","p69","p70","p71","ob1","ob2","ob3","ob4","ob5","am1","am2","am3","am4","am5","aq2","cq2","gsp","apb","nin","njt","bts","shc","nrd","nsy","syn","pbe","mnb","kkl","arm","q1a","q1b","q1c","q1d","q1e","q1f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","cr2","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","9ha","9ax","92a","9mp","9wa","9la","9ba","9bt","9ga","9gi","9wn","9yw","9bw","9gw","9cl","9sc","9qs","9ws","9sp","9ma","9mt","9fl","9wh","9m9","9gm","9ss","9sm","9sb","9fc","9cr","9bs","9ls","9wd","92h","9cm","9gs","9b9","9fb","9gd","9dg","9di","9kr","9bl","9tk","9ta","9bk","9b8","9ja","9pi","9s9","9gl","9ts","9sr","9tr","9br","9st","9p9","9b7","9vo","9s8","9pa","9h9","9wc","8ss","8ls","8cs","8bs","8ws","8sb","8hb","8lb","8cb","8s8","8l8","8sw","8lw","8lx","8mx","8hx","8rx","9ar","9wb","9xf","9cs","9lw","9tw","9qr","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","q10","q11","q12","q13","q14","q15","q16","q17","q18","q19","q20","q21","q22","q23","q24","q25","q26","q27","q28","q29","q30","q31","q32","q33","q34","q35","q36","q37","q38","q39","q40","q41","q42","q43","q44","q45","q46","q47","q48","q49","q50","q51","q52","q53","q54","q55","q56","q57","q58","q59","q60","q61","q62","q63","q64","q65","q66","q67","q68","q69","q70","q71","q72","q73","q77","q78","q79","q83","ob6","ob7","ob8","ob9","oba","am6","am7","am8","am9","ama","aq2","cq2","9gp","9pb","9nn","9nj","9xb","9sh","9rd","9ns","9sy","9be","9mn","9kl","9rm","q2a","q2b","q2c","q2d","q2e","q2f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","0ha","0ax","82a","0mp","0wa","0la","0ba","0bt","0ga","0gi","0wn","0yw","0bw","0gw","0cl","5sc","0qs","0ws","0sp","0ma","0mt","0fl","0wh","0m0","0gm","0ss","0sm","0sb","0fc","0cr","0bs","0ls","0wd","02h","0cm","0gs","0b0","0fb","0gd","0dg","0di","0kr","0bl","0tk","0ta","0bk","0b6","0ja","0pi","0s9","0gl","0ts","0sr","0tr","0br","0st","0p0","0b7","0vo","0s8","0pa","0h0","0wc","1ss","1ls","1cs","1bs","1ws","1sb","1hb","1lb","1cb","1s8","1l8","1sw","1lw","1lx","1mx","1hx","1rx","7ar","7wb","7xf","7cs","7lw","7tw","7qr","7ha","7ax","72a","7mp","7wa","7la","7ba","7bt","7ga","7gi","7wn","7yw","7bw","7gw","7cl","7sc","7qs","7ws","7sp","7ma","7mt","7fl","7wh","7m7","7gm","7ss","7sm","7sb","7fc","7cr","7bs","7ls","7wd","72h","7cm","7gs","7b7","7fb","7gd","7dg","7di","7kr","7bl","7tk","7ta","7bk","7b8","7ja","7pi","7s7","7gl","7ts","7sr","7tr","7br","7st","7p7","7o7","7vo","7s8","7pa","7h7","7wc","6ss","6ls","6cs","6bs","6ws","6sb","6hb","6lb","6cb","6s7","6l7","6sw","6lw","6lx","6mx","6hx","6rx","obb","obc","obd","obe","obf","amb","amc","amd","ame","amf","aq2","cq2","0gp","0pb","0nn","0xb","0sh","0rd","0ns","0sy","0be","0mn","7tw","q74","q75","q76","q80","q81","q82","q84","q85","0kl","0rm","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","lbl","vbl","mbl","tbl","hbl","lbl","vbl","mbl","tbl","hbl","3lb","3vb","3mb","3tb","alb","avb","bmb","atb","ahb","alb","avb","bmb","atb","ahb","ulc","uvc","umc","utc","uhc","alb","avb","bmb","atb","ahb","yms","yms","yms","ulc","uvc","umc","utc","uhc","ulc","uvc","umc","utc","uhc","m10","zlb","zvb","zmb","ztb","zhb","zlb","zvb","zmb","ztb","zhb","5lb","5vb","5mb","5tb","5hb","zlb","zvb","zmb","ztb","zhb","xms","xms","xms","5lb","5vb","5mb","5tb","5hb","5lb","5vb","5mb","5tb","5hb","m10","3hb","lbl","vbl","mbl","tbl","hbl","msb","msb","msb","3lb","3vb","3mb","3tb","3hb","3lb","3vb","3mb","3tb","3hb","m10"},
        quality = 2,
        hide = true,
        filter_levels = 3
    },

    -- Hide unwanted magic armor/weapons
    -- Highs all blue armor and weapons 
    {
        codes = {"cap","skp","hlm","fhl","ghm","crn","msk","qui","lea","hla","stu","rng","scl","chn","brs","spl","plt","fld","gth","ful","aar","ltp","buc","sml","lrg","kit","tow","gts","lgl","vgl","mgl","tgl","hgl","lbt","vbt","mbt","tbt","hbt","bhm","bsh","spk","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr1","dr2","dr3","dr4","dr5","ba1","ba2","ba3","ba4","ba5","pa1","pa2","pa3","pa4","pa5","ne1","ne2","ne3","ne4","ne5","ci0","ci1","ci2","ci3","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","cix","eht","xht","yht","dwc","xdw","ydw","clk","xlk","ylk","rob","xrb","yrb","shl","xhh","yhh","elv","xlv","ylv","fts","xft","yft","irg","xig","yig","dbt","xbt","ybt","ci4","m06","m15","m20","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","ci1","ci4","4ap","4kp","4lm","4hl","4hm","4rn","4sk","4ui","4ea","4la","4tu","4ng","4cl","4hn","4rs","4pl","4lt","4ld","4th","4ul","4ar","4tp","4uc","4ml","4rg","4it","4ow","4ts","4lg","4vg","4mg","4tg","4hg","4lb","4vb","4mb","4tb","4hb","4h9","4sh","4pk","xht","xdw","xlk","xrb","xhh","xlv","xft","xig","xbt","qi2","ci2","qba","qda","qna","qp9","m06","m15","m20","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","ci3","ci2","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","yht","ydw","ylk","yrb","yhh","ylv","yft","yig","ybt","qi3","qdb","qnf","qbc","qbd","qbe","qdd","qde","qne","qpc","qpe","m06","m15","m20","hax","axe","2ax","mpi","wax","lax","bax","btx","gax","gix","wnd","ywn","bwn","gwn","clb","scp","gsc","wsp","spc","mac","mst","fla","whm","mau","gma","ssd","scm","sbr","flc","crs","bsd","lsd","wsd","2hs","clm","gis","bsw","flb","gsd","dgr","dir","kri","bld","tkf","tax","bkf","bal","jav","pil","ssp","glv","tsp","spr","tri","brn","spt","pik","bar","vou","scy","pax","hal","wsc","sst","lst","cst","bst","wst","sbw","hbw","lbw","cbw","sbb","lbb","swb","lwb","lxb","mxb","hxb","rxb","gps","ops","gpm","opm","gpl","opl","d33","g33","leg","hdm","hfh","hst","msf","ktr","wrb","axf","ces","clw","btl","skr","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","p11","p12","p13","p14","p15","p16","p17","p18","p19","p20","p21","p22","p23","p24","p25","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","p40","p41","p42","p43","p44","p45","p46","p47","p48","p49","p50","p51","p52","p53","p54","p55","p56","p57","p58","p59","p60","p61","p62","p63","p64","p65","p66","p67","p68","p69","p70","p71","ob1","ob2","ob3","ob4","ob5","am1","am2","am3","am4","am5","aq2","cq2","gsp","apb","nin","njt","bts","shc","nrd","nsy","syn","pbe","mnb","kkl","arm","q1a","q1b","q1c","q1d","q1e","q1f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","cr2","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","9ha","9ax","92a","9mp","9wa","9la","9ba","9bt","9ga","9gi","9wn","9yw","9bw","9gw","9cl","9sc","9qs","9ws","9sp","9ma","9mt","9fl","9wh","9m9","9gm","9ss","9sm","9sb","9fc","9cr","9bs","9ls","9wd","92h","9cm","9gs","9b9","9fb","9gd","9dg","9di","9kr","9bl","9tk","9ta","9bk","9b8","9ja","9pi","9s9","9gl","9ts","9sr","9tr","9br","9st","9p9","9b7","9vo","9s8","9pa","9h9","9wc","8ss","8ls","8cs","8bs","8ws","8sb","8hb","8lb","8cb","8s8","8l8","8sw","8lw","8lx","8mx","8hx","8rx","9ar","9wb","9xf","9cs","9lw","9tw","9qr","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","q10","q11","q12","q13","q14","q15","q16","q17","q18","q19","q20","q21","q22","q23","q24","q25","q26","q27","q28","q29","q30","q31","q32","q33","q34","q35","q36","q37","q38","q39","q40","q41","q42","q43","q44","q45","q46","q47","q48","q49","q50","q51","q52","q53","q54","q55","q56","q57","q58","q59","q60","q61","q62","q63","q64","q65","q66","q67","q68","q69","q70","q71","q72","q73","q77","q78","q79","q83","ob6","ob7","ob8","ob9","oba","am6","am7","am8","am9","ama","aq2","cq2","9gp","9pb","9nn","9nj","9xb","9sh","9rd","9ns","9sy","9be","9mn","9kl","9rm","q2a","q2b","q2c","q2d","q2e","q2f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","0ha","0ax","82a","0mp","0wa","0la","0ba","0bt","0ga","0gi","0wn","0yw","0bw","0gw","0cl","5sc","0qs","0ws","0sp","0ma","0mt","0fl","0wh","0m0","0gm","0ss","0sm","0sb","0fc","0cr","0bs","0ls","0wd","02h","0cm","0gs","0b0","0fb","0gd","0dg","0di","0kr","0bl","0tk","0ta","0bk","0b6","0ja","0pi","0s9","0gl","0ts","0sr","0tr","0br","0st","0p0","0b7","0vo","0s8","0pa","0h0","0wc","1ss","1ls","1cs","1bs","1ws","1sb","1hb","1lb","1cb","1s8","1l8","1sw","1lw","1lx","1mx","1hx","1rx","7ar","7wb","7xf","7cs","7lw","7tw","7qr","7ha","7ax","72a","7mp","7wa","7la","7ba","7bt","7ga","7gi","7wn","7yw","7bw","7gw","7cl","7sc","7qs","7ws","7sp","7ma","7mt","7fl","7wh","7m7","7gm","7ss","7sm","7sb","7fc","7cr","7bs","7ls","7wd","72h","7cm","7gs","7b7","7fb","7gd","7dg","7di","7kr","7bl","7tk","7ta","7bk","7b8","7ja","7pi","7s7","7gl","7ts","7sr","7tr","7br","7st","7p7","7o7","7vo","7s8","7pa","7h7","7wc","6ss","6ls","6cs","6bs","6ws","6sb","6hb","6lb","6cb","6s7","6l7","6sw","6lw","6lx","6mx","6hx","6rx","obb","obc","obd","obe","obf","amb","amc","amd","ame","amf","aq2","cq2","0gp","0pb","0nn","0xb","0sh","0rd","0ns","0sy","0be","0mn","7tw","q74","q75","q76","q80","q81","q82","q84","q85","0kl","0rm","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","lbl","vbl","mbl","tbl","hbl","lbl","vbl","mbl","tbl","hbl","3lb","3vb","3mb","3tb","alb","avb","bmb","atb","ahb","alb","avb","bmb","atb","ahb","ulc","uvc","umc","utc","uhc","alb","avb","bmb","atb","ahb","yms","yms","yms","ulc","uvc","umc","utc","uhc","ulc","uvc","umc","utc","uhc","m10","zlb","zvb","zmb","ztb","zhb","zlb","zvb","zmb","ztb","zhb","5lb","5vb","5mb","5tb","5hb","zlb","zvb","zmb","ztb","zhb","xms","xms","xms","5lb","5vb","5mb","5tb","5hb","5lb","5vb","5mb","5tb","5hb","m10","3hb","lbl","vbl","mbl","tbl","hbl","msb","msb","msb","3lb","3vb","3mb","3tb","3hb","3lb","3vb","3mb","3tb","3hb","m10"},
        quality = 4,
        hide = false,
        filter_levels = 1
    },
    {
        codes = {"cap","skp","hlm","fhl","ghm","crn","msk","qui","lea","hla","stu","rng","scl","chn","brs","spl","plt","fld","gth","ful","aar","ltp","buc","sml","lrg","kit","tow","gts","lgl","vgl","mgl","tgl","hgl","lbt","vbt","mbt","tbt","hbt","bhm","bsh","spk","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr1","dr2","dr3","dr4","dr5","ba1","ba2","ba3","ba4","ba5","pa1","pa2","pa3","pa4","pa5","ne1","ne2","ne3","ne4","ne5","ci0","ci1","ci2","ci3","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","cix","eht","xht","yht","dwc","xdw","ydw","clk","xlk","ylk","rob","xrb","yrb","shl","xhh","yhh","elv","xlv","ylv","fts","xft","yft","irg","xig","yig","dbt","xbt","ybt","ci4","m06","m15","m20","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","ci1","ci4","4ap","4kp","4lm","4hl","4hm","4rn","4sk","4ui","4ea","4la","4tu","4ng","4cl","4hn","4rs","4pl","4lt","4ld","4th","4ul","4ar","4tp","4uc","4ml","4rg","4it","4ow","4ts","4lg","4vg","4mg","4tg","4hg","4lb","4vb","4mb","4tb","4hb","4h9","4sh","4pk","xht","xdw","xlk","xrb","xhh","xlv","xft","xig","xbt","qi2","ci2","qba","qda","qna","qp9","m06","m15","m20","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","ci3","ci2","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","yht","ydw","ylk","yrb","yhh","ylv","yft","yig","ybt","qi3","qdb","qnf","qbc","qbd","qbe","qdd","qde","qne","qpc","qpe","m06","m15","m20","hax","axe","2ax","mpi","wax","lax","bax","btx","gax","gix","wnd","ywn","bwn","gwn","clb","scp","gsc","wsp","spc","mac","mst","fla","whm","mau","gma","ssd","scm","sbr","flc","crs","bsd","lsd","wsd","2hs","clm","gis","bsw","flb","gsd","dgr","dir","kri","bld","tkf","tax","bkf","bal","jav","pil","ssp","glv","tsp","spr","tri","brn","spt","pik","bar","vou","scy","pax","hal","wsc","sst","lst","cst","bst","wst","sbw","hbw","lbw","cbw","sbb","lbb","swb","lwb","lxb","mxb","hxb","rxb","gps","ops","gpm","opm","gpl","opl","d33","g33","leg","hdm","hfh","hst","msf","ktr","wrb","axf","ces","clw","btl","skr","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","p11","p12","p13","p14","p15","p16","p17","p18","p19","p20","p21","p22","p23","p24","p25","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","p40","p41","p42","p43","p44","p45","p46","p47","p48","p49","p50","p51","p52","p53","p54","p55","p56","p57","p58","p59","p60","p61","p62","p63","p64","p65","p66","p67","p68","p69","p70","p71","ob1","ob2","ob3","ob4","ob5","am1","am2","am3","am4","am5","aq2","cq2","gsp","apb","nin","njt","bts","shc","nrd","nsy","syn","pbe","mnb","kkl","arm","q1a","q1b","q1c","q1d","q1e","q1f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","cr2","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","9ha","9ax","92a","9mp","9wa","9la","9ba","9bt","9ga","9gi","9wn","9yw","9bw","9gw","9cl","9sc","9qs","9ws","9sp","9ma","9mt","9fl","9wh","9m9","9gm","9ss","9sm","9sb","9fc","9cr","9bs","9ls","9wd","92h","9cm","9gs","9b9","9fb","9gd","9dg","9di","9kr","9bl","9tk","9ta","9bk","9b8","9ja","9pi","9s9","9gl","9ts","9sr","9tr","9br","9st","9p9","9b7","9vo","9s8","9pa","9h9","9wc","8ss","8ls","8cs","8bs","8ws","8sb","8hb","8lb","8cb","8s8","8l8","8sw","8lw","8lx","8mx","8hx","8rx","9ar","9wb","9xf","9cs","9lw","9tw","9qr","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","q10","q11","q12","q13","q14","q15","q16","q17","q18","q19","q20","q21","q22","q23","q24","q25","q26","q27","q28","q29","q30","q31","q32","q33","q34","q35","q36","q37","q38","q39","q40","q41","q42","q43","q44","q45","q46","q47","q48","q49","q50","q51","q52","q53","q54","q55","q56","q57","q58","q59","q60","q61","q62","q63","q64","q65","q66","q67","q68","q69","q70","q71","q72","q73","q77","q78","q79","q83","ob6","ob7","ob8","ob9","oba","am6","am7","am8","am9","ama","aq2","cq2","9gp","9pb","9nn","9nj","9xb","9sh","9rd","9ns","9sy","9be","9mn","9kl","9rm","q2a","q2b","q2c","q2d","q2e","q2f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","0ha","0ax","82a","0mp","0wa","0la","0ba","0bt","0ga","0gi","0wn","0yw","0bw","0gw","0cl","5sc","0qs","0ws","0sp","0ma","0mt","0fl","0wh","0m0","0gm","0ss","0sm","0sb","0fc","0cr","0bs","0ls","0wd","02h","0cm","0gs","0b0","0fb","0gd","0dg","0di","0kr","0bl","0tk","0ta","0bk","0b6","0ja","0pi","0s9","0gl","0ts","0sr","0tr","0br","0st","0p0","0b7","0vo","0s8","0pa","0h0","0wc","1ss","1ls","1cs","1bs","1ws","1sb","1hb","1lb","1cb","1s8","1l8","1sw","1lw","1lx","1mx","1hx","1rx","7ar","7wb","7xf","7cs","7lw","7tw","7qr","7ha","7ax","72a","7mp","7wa","7la","7ba","7bt","7ga","7gi","7wn","7yw","7bw","7gw","7cl","7sc","7qs","7ws","7sp","7ma","7mt","7fl","7wh","7m7","7gm","7ss","7sm","7sb","7fc","7cr","7bs","7ls","7wd","72h","7cm","7gs","7b7","7fb","7gd","7dg","7di","7kr","7bl","7tk","7ta","7bk","7b8","7ja","7pi","7s7","7gl","7ts","7sr","7tr","7br","7st","7p7","7o7","7vo","7s8","7pa","7h7","7wc","6ss","6ls","6cs","6bs","6ws","6sb","6hb","6lb","6cb","6s7","6l7","6sw","6lw","6lx","6mx","6hx","6rx","obb","obc","obd","obe","obf","amb","amc","amd","ame","amf","aq2","cq2","0gp","0pb","0nn","0xb","0sh","0rd","0ns","0sy","0be","0mn","7tw","q74","q75","q76","q80","q81","q82","q84","q85","0kl","0rm","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","lbl","vbl","mbl","tbl","hbl","lbl","vbl","mbl","tbl","hbl","3lb","3vb","3mb","3tb","alb","avb","bmb","atb","ahb","alb","avb","bmb","atb","ahb","ulc","uvc","umc","utc","uhc","alb","avb","bmb","atb","ahb","yms","yms","yms","ulc","uvc","umc","utc","uhc","ulc","uvc","umc","utc","uhc","m10","zlb","zvb","zmb","ztb","zhb","zlb","zvb","zmb","ztb","zhb","5lb","5vb","5mb","5tb","5hb","zlb","zvb","zmb","ztb","zhb","xms","xms","xms","5lb","5vb","5mb","5tb","5hb","5lb","5vb","5mb","5tb","5hb","m10","3hb","lbl","vbl","mbl","tbl","hbl","msb","msb","msb","3lb","3vb","3mb","3tb","3hb","3lb","3vb","3mb","3tb","3hb","m10"},
        quality = 4,
        hide = true,
        filter_levels = 2
    },
    {
        codes = {"cap","skp","hlm","fhl","ghm","crn","msk","qui","lea","hla","stu","rng","scl","chn","brs","spl","plt","fld","gth","ful","aar","ltp","buc","sml","lrg","kit","tow","gts","lgl","vgl","mgl","tgl","hgl","lbt","vbt","mbt","tbt","hbt","bhm","bsh","spk","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr1","dr2","dr3","dr4","dr5","ba1","ba2","ba3","ba4","ba5","pa1","pa2","pa3","pa4","pa5","ne1","ne2","ne3","ne4","ne5","ci0","ci1","ci2","ci3","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","cix","eht","xht","yht","dwc","xdw","ydw","clk","xlk","ylk","rob","xrb","yrb","shl","xhh","yhh","elv","xlv","ylv","fts","xft","yft","irg","xig","yig","dbt","xbt","ybt","ci4","m06","m15","m20","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","ci1","ci4","4ap","4kp","4lm","4hl","4hm","4rn","4sk","4ui","4ea","4la","4tu","4ng","4cl","4hn","4rs","4pl","4lt","4ld","4th","4ul","4ar","4tp","4uc","4ml","4rg","4it","4ow","4ts","4lg","4vg","4mg","4tg","4hg","4lb","4vb","4mb","4tb","4hb","4h9","4sh","4pk","xht","xdw","xlk","xrb","xhh","xlv","xft","xig","xbt","qi2","ci2","qba","qda","qna","qp9","m06","m15","m20","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","ci3","ci2","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","yht","ydw","ylk","yrb","yhh","ylv","yft","yig","ybt","qi3","qdb","qnf","qbc","qbd","qbe","qdd","qde","qne","qpc","qpe","m06","m15","m20","hax","axe","2ax","mpi","wax","lax","bax","btx","gax","gix","wnd","ywn","bwn","gwn","clb","scp","gsc","wsp","spc","mac","mst","fla","whm","mau","gma","ssd","scm","sbr","flc","crs","bsd","lsd","wsd","2hs","clm","gis","bsw","flb","gsd","dgr","dir","kri","bld","tkf","tax","bkf","bal","jav","pil","ssp","glv","tsp","spr","tri","brn","spt","pik","bar","vou","scy","pax","hal","wsc","sst","lst","cst","bst","wst","sbw","hbw","lbw","cbw","sbb","lbb","swb","lwb","lxb","mxb","hxb","rxb","gps","ops","gpm","opm","gpl","opl","d33","g33","leg","hdm","hfh","hst","msf","ktr","wrb","axf","ces","clw","btl","skr","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","p11","p12","p13","p14","p15","p16","p17","p18","p19","p20","p21","p22","p23","p24","p25","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","p40","p41","p42","p43","p44","p45","p46","p47","p48","p49","p50","p51","p52","p53","p54","p55","p56","p57","p58","p59","p60","p61","p62","p63","p64","p65","p66","p67","p68","p69","p70","p71","ob1","ob2","ob3","ob4","ob5","am1","am2","am3","am4","am5","aq2","cq2","gsp","apb","nin","njt","bts","shc","nrd","nsy","syn","pbe","mnb","kkl","arm","q1a","q1b","q1c","q1d","q1e","q1f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","cr2","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","9ha","9ax","92a","9mp","9wa","9la","9ba","9bt","9ga","9gi","9wn","9yw","9bw","9gw","9cl","9sc","9qs","9ws","9sp","9ma","9mt","9fl","9wh","9m9","9gm","9ss","9sm","9sb","9fc","9cr","9bs","9ls","9wd","92h","9cm","9gs","9b9","9fb","9gd","9dg","9di","9kr","9bl","9tk","9ta","9bk","9b8","9ja","9pi","9s9","9gl","9ts","9sr","9tr","9br","9st","9p9","9b7","9vo","9s8","9pa","9h9","9wc","8ss","8ls","8cs","8bs","8ws","8sb","8hb","8lb","8cb","8s8","8l8","8sw","8lw","8lx","8mx","8hx","8rx","9ar","9wb","9xf","9cs","9lw","9tw","9qr","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","q10","q11","q12","q13","q14","q15","q16","q17","q18","q19","q20","q21","q22","q23","q24","q25","q26","q27","q28","q29","q30","q31","q32","q33","q34","q35","q36","q37","q38","q39","q40","q41","q42","q43","q44","q45","q46","q47","q48","q49","q50","q51","q52","q53","q54","q55","q56","q57","q58","q59","q60","q61","q62","q63","q64","q65","q66","q67","q68","q69","q70","q71","q72","q73","q77","q78","q79","q83","ob6","ob7","ob8","ob9","oba","am6","am7","am8","am9","ama","aq2","cq2","9gp","9pb","9nn","9nj","9xb","9sh","9rd","9ns","9sy","9be","9mn","9kl","9rm","q2a","q2b","q2c","q2d","q2e","q2f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","0ha","0ax","82a","0mp","0wa","0la","0ba","0bt","0ga","0gi","0wn","0yw","0bw","0gw","0cl","5sc","0qs","0ws","0sp","0ma","0mt","0fl","0wh","0m0","0gm","0ss","0sm","0sb","0fc","0cr","0bs","0ls","0wd","02h","0cm","0gs","0b0","0fb","0gd","0dg","0di","0kr","0bl","0tk","0ta","0bk","0b6","0ja","0pi","0s9","0gl","0ts","0sr","0tr","0br","0st","0p0","0b7","0vo","0s8","0pa","0h0","0wc","1ss","1ls","1cs","1bs","1ws","1sb","1hb","1lb","1cb","1s8","1l8","1sw","1lw","1lx","1mx","1hx","1rx","7ar","7wb","7xf","7cs","7lw","7tw","7qr","7ha","7ax","72a","7mp","7wa","7la","7ba","7bt","7ga","7gi","7wn","7yw","7bw","7gw","7cl","7sc","7qs","7ws","7sp","7ma","7mt","7fl","7wh","7m7","7gm","7ss","7sm","7sb","7fc","7cr","7bs","7ls","7wd","72h","7cm","7gs","7b7","7fb","7gd","7dg","7di","7kr","7bl","7tk","7ta","7bk","7b8","7ja","7pi","7s7","7gl","7ts","7sr","7tr","7br","7st","7p7","7o7","7vo","7s8","7pa","7h7","7wc","6ss","6ls","6cs","6bs","6ws","6sb","6hb","6lb","6cb","6s7","6l7","6sw","6lw","6lx","6mx","6hx","6rx","obb","obc","obd","obe","obf","amb","amc","amd","ame","amf","aq2","cq2","0gp","0pb","0nn","0xb","0sh","0rd","0ns","0sy","0be","0mn","7tw","q74","q75","q76","q80","q81","q82","q84","q85","0kl","0rm","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","lbl","vbl","mbl","tbl","hbl","lbl","vbl","mbl","tbl","hbl","3lb","3vb","3mb","3tb","alb","avb","bmb","atb","ahb","alb","avb","bmb","atb","ahb","ulc","uvc","umc","utc","uhc","alb","avb","bmb","atb","ahb","yms","yms","yms","ulc","uvc","umc","utc","uhc","ulc","uvc","umc","utc","uhc","m10","zlb","zvb","zmb","ztb","zhb","zlb","zvb","zmb","ztb","zhb","5lb","5vb","5mb","5tb","5hb","zlb","zvb","zmb","ztb","zhb","xms","xms","xms","5lb","5vb","5mb","5tb","5hb","5lb","5vb","5mb","5tb","5hb","m10","3hb","lbl","vbl","mbl","tbl","hbl","msb","msb","msb","3lb","3vb","3mb","3tb","3hb","3lb","3vb","3mb","3tb","3hb","m10"},
        quality = 4,
        hide = true,
        filter_levels = 3
    },

    -- Hide jewels and charms based on strictness
            
    {
        codes = {"jew","cm1","cm2","cm3"},
        quality = 4,
        hide = false,
        filter_levels = 1
    },
    {
        codes = {"jew","cm1","cm2","cm3"},
        quality = 4,
        hide = false,
        filter_levels = 2
    },
    {
        codes = {"jew","cm1","cm2","cm3"},
        quality = 4,
        hide = true,
        filter_levels = 3
    },

    -- Hide rings and amulets based on strictness
            
    {
        codes = {"amu","rin"},
        quality = 4,
        hide = false,
        filter_levels = 1
    },
    {
        codes = {"amu","rin"},
        quality = 4,
        hide = false,
        filter_levels = 2
    },
    {
        codes = {"amu","rin"},
        quality = 4,
        hide = true,
        filter_levels = 3
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
        codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l","10l","11l"},
        hide = true,
        filter_levels = 2
    },
    {
        codes = {"12l","13l","14l","15l","16l","17l","18l","19l","20l","21l","22l"},
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
        codes = {"r01","r02","r03","r04","r05","r06","r07"},
        hide = true,
        filter_levels = 2
    },
    {
        codes = {"r08","r09","r10","r11","r12","r13","r14","r15","r16","r17","r18","r19","r20","r21","r22","r23","r24","r25","r26","r27","r28"},
        hide = false,
        filter_levels = 2
    },      
    {
        codes = {"r01","r02","r03","r04","r05","r06","r07","r08","r09","r10","r11","r12","r13","r14","r15","r16","r17","r18","r19","r20","r21","r22","r23","r24","r25","r26","r27","r28"},
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
        codes = {"cap","skp","hlm","fhl","ghm","crn","msk","qui","lea","hla","stu","rng","scl","chn","brs","spl","plt","fld","gth","ful","aar","ltp","buc","sml","lrg","kit","tow","gts","lgl","vgl","mgl","tgl","hgl","lbt","vbt","mbt","tbt","hbt","bhm","bsh","spk","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr1","dr2","dr3","dr4","dr5","ba1","ba2","ba3","ba4","ba5","pa1","pa2","pa3","pa4","pa5","ne1","ne2","ne3","ne4","ne5","ci0","ci1","ci2","ci3","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","cix","eht","xht","yht","dwc","xdw","ydw","clk","xlk","ylk","rob","xrb","yrb","shl","xhh","yhh","elv","xlv","ylv","fts","xft","yft","irg","xig","yig","dbt","xbt","ybt","ci4","m06","m15","m20","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","ci1","ci4","4ap","4kp","4lm","4hl","4hm","4rn","4sk","4ui","4ea","4la","4tu","4ng","4cl","4hn","4rs","4pl","4lt","4ld","4th","4ul","4ar","4tp","4uc","4ml","4rg","4it","4ow","4ts","4lg","4vg","4mg","4tg","4hg","4lb","4vb","4mb","4tb","4hb","4h9","4sh","4pk","xht","xdw","xlk","xrb","xhh","xlv","xft","xig","xbt","qi2","ci2","qba","qda","qna","qp9","m06","m15","m20","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","ci3","ci2","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","yht","ydw","ylk","yrb","yhh","ylv","yft","yig","ybt","qi3","qdb","qnf","qbc","qbd","qbe","qdd","qde","qne","qpc","qpe","m06","m15","m20","hax","axe","2ax","mpi","wax","lax","bax","btx","gax","gix","wnd","ywn","bwn","gwn","clb","scp","gsc","wsp","spc","mac","mst","fla","whm","mau","gma","ssd","scm","sbr","flc","crs","bsd","lsd","wsd","2hs","clm","gis","bsw","flb","gsd","dgr","dir","kri","bld","tkf","tax","bkf","bal","jav","pil","ssp","glv","tsp","spr","tri","brn","spt","pik","bar","vou","scy","pax","hal","wsc","sst","lst","cst","bst","wst","sbw","hbw","lbw","cbw","sbb","lbb","swb","lwb","lxb","mxb","hxb","rxb","gps","ops","gpm","opm","gpl","opl","d33","g33","leg","hdm","hfh","hst","msf","ktr","wrb","axf","ces","clw","btl","skr","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","p11","p12","p13","p14","p15","p16","p17","p18","p19","p20","p21","p22","p23","p24","p25","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","p40","p41","p42","p43","p44","p45","p46","p47","p48","p49","p50","p51","p52","p53","p54","p55","p56","p57","p58","p59","p60","p61","p62","p63","p64","p65","p66","p67","p68","p69","p70","p71","ob1","ob2","ob3","ob4","ob5","am1","am2","am3","am4","am5","aq2","cq2","gsp","apb","nin","njt","bts","shc","nrd","nsy","syn","pbe","mnb","kkl","arm","q1a","q1b","q1c","q1d","q1e","q1f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","cr2","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","9ha","9ax","92a","9mp","9wa","9la","9ba","9bt","9ga","9gi","9wn","9yw","9bw","9gw","9cl","9sc","9qs","9ws","9sp","9ma","9mt","9fl","9wh","9m9","9gm","9ss","9sm","9sb","9fc","9cr","9bs","9ls","9wd","92h","9cm","9gs","9b9","9fb","9gd","9dg","9di","9kr","9bl","9tk","9ta","9bk","9b8","9ja","9pi","9s9","9gl","9ts","9sr","9tr","9br","9st","9p9","9b7","9vo","9s8","9pa","9h9","9wc","8ss","8ls","8cs","8bs","8ws","8sb","8hb","8lb","8cb","8s8","8l8","8sw","8lw","8lx","8mx","8hx","8rx","9ar","9wb","9xf","9cs","9lw","9tw","9qr","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","q10","q11","q12","q13","q14","q15","q16","q17","q18","q19","q20","q21","q22","q23","q24","q25","q26","q27","q28","q29","q30","q31","q32","q33","q34","q35","q36","q37","q38","q39","q40","q41","q42","q43","q44","q45","q46","q47","q48","q49","q50","q51","q52","q53","q54","q55","q56","q57","q58","q59","q60","q61","q62","q63","q64","q65","q66","q67","q68","q69","q70","q71","q72","q73","q77","q78","q79","q83","ob6","ob7","ob8","ob9","oba","am6","am7","am8","am9","ama","aq2","cq2","9gp","9pb","9nn","9nj","9xb","9sh","9rd","9ns","9sy","9be","9mn","9kl","9rm","q2a","q2b","q2c","q2d","q2e","q2f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","0ha","0ax","82a","0mp","0wa","0la","0ba","0bt","0ga","0gi","0wn","0yw","0bw","0gw","0cl","5sc","0qs","0ws","0sp","0ma","0mt","0fl","0wh","0m0","0gm","0ss","0sm","0sb","0fc","0cr","0bs","0ls","0wd","02h","0cm","0gs","0b0","0fb","0gd","0dg","0di","0kr","0bl","0tk","0ta","0bk","0b6","0ja","0pi","0s9","0gl","0ts","0sr","0tr","0br","0st","0p0","0b7","0vo","0s8","0pa","0h0","0wc","1ss","1ls","1cs","1bs","1ws","1sb","1hb","1lb","1cb","1s8","1l8","1sw","1lw","1lx","1mx","1hx","1rx","7ar","7wb","7xf","7cs","7lw","7tw","7qr","7ha","7ax","72a","7mp","7wa","7la","7ba","7bt","7ga","7gi","7wn","7yw","7bw","7gw","7cl","7sc","7qs","7ws","7sp","7ma","7mt","7fl","7wh","7m7","7gm","7ss","7sm","7sb","7fc","7cr","7bs","7ls","7wd","72h","7cm","7gs","7b7","7fb","7gd","7dg","7di","7kr","7bl","7tk","7ta","7bk","7b8","7ja","7pi","7s7","7gl","7ts","7sr","7tr","7br","7st","7p7","7o7","7vo","7s8","7pa","7h7","7wc","6ss","6ls","6cs","6bs","6ws","6sb","6hb","6lb","6cb","6s7","6l7","6sw","6lw","6lx","6mx","6hx","6rx","obb","obc","obd","obe","obf","amb","amc","amd","ame","amf","aq2","cq2","0gp","0pb","0nn","0xb","0sh","0rd","0ns","0sy","0be","0mn","7tw","q74","q75","q76","q80","q81","q82","q84","q85","0kl","0rm","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","lbl","vbl","mbl","tbl","hbl","lbl","vbl","mbl","tbl","hbl","3lb","3vb","3mb","3tb","alb","avb","bmb","atb","ahb","alb","avb","bmb","atb","ahb","ulc","uvc","umc","utc","uhc","alb","avb","bmb","atb","ahb","yms","yms","yms","ulc","uvc","umc","utc","uhc","ulc","uvc","umc","utc","uhc","m10","zlb","zvb","zmb","ztb","zhb","zlb","zvb","zmb","ztb","zhb","5lb","5vb","5mb","5tb","5hb","zlb","zvb","zmb","ztb","zhb","xms","xms","xms","5lb","5vb","5mb","5tb","5hb","5lb","5vb","5mb","5tb","5hb","m10","3hb","lbl","vbl","mbl","tbl","hbl","msb","msb","msb","3lb","3vb","3mb","3tb","3hb","3lb","3vb","3mb","3tb","3hb","m10"},
        location = {"onground"},
        suffix = " {lilac}[{sockets}]"
    },


    --armor n codes {"cap","skp","hlm","fhl","ghm","crn","msk","qui","lea","hla","stu","rng","scl","chn","brs","spl","plt","fld","gth","ful","aar","ltp","buc","sml","lrg","kit","tow","gts","lgl","vgl","mgl","tgl","hgl","lbt","vbt","mbt","tbt","hbt","bhm","bsh","spk","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr1","dr2","dr3","dr4","dr5","ba1","ba2","ba3","ba4","ba5","pa1","pa2","pa3","pa4","pa5","ne1","ne2","ne3","ne4","ne5","ci0","ci1","ci2","ci3","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","cix","eht","xht","yht","dwc","xdw","ydw","clk","xlk","ylk","rob","xrb","yrb","shl","xhh","yhh","elv","xlv","ylv","fts","xft","yft","irg","xig","yig","dbt","xbt","ybt","ci4","m06","m15","m20"}
    --armor nm codes {"xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","ci1","ci4","4ap","4kp","4lm","4hl","4hm","4rn","4sk","4ui","4ea","4la","4tu","4ng","4cl","4hn","4rs","4pl","4lt","4ld","4th","4ul","4ar","4tp","4uc","4ml","4rg","4it","4ow","4ts","4lg","4vg","4mg","4tg","4hg","4lb","4vb","4mb","4tb","4hb","4h9","4sh","4pk","xht","xdw","xlk","xrb","xhh","xlv","xft","xig","xbt","qi2","ci2","qba","qda","qna","qp9","m06","m15","m20"}
    --armor h codes {"yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","ci3","ci2","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","yht","ydw","ylk","yrb","yhh","ylv","yft","yig","ybt","qi3","qdb","qnf","qbc","qbd","qbe","qdd","qde","qne","qpc","qpe","m06","m15","m20"}
    --weapon n codes {"hax","axe","2ax","mpi","wax","lax","bax","btx","gax","gix","wnd","ywn","bwn","gwn","clb","scp","gsc","wsp","spc","mac","mst","fla","whm","mau","gma","ssd","scm","sbr","flc","crs","bsd","lsd","wsd","2hs","clm","gis","bsw","flb","gsd","dgr","dir","kri","bld","tkf","tax","bkf","bal","jav","pil","ssp","glv","tsp","spr","tri","brn","spt","pik","bar","vou","scy","pax","hal","wsc","sst","lst","cst","bst","wst","sbw","hbw","lbw","cbw","sbb","lbb","swb","lwb","lxb","mxb","hxb","rxb","gps","ops","gpm","opm","gpl","opl","d33","g33","leg","hdm","hfh","hst","msf","ktr","wrb","axf","ces","clw","btl","skr","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","p11","p12","p13","p14","p15","p16","p17","p18","p19","p20","p21","p22","p23","p24","p25","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","p40","p41","p42","p43","p44","p45","p46","p47","p48","p49","p50","p51","p52","p53","p54","p55","p56","p57","p58","p59","p60","p61","p62","p63","p64","p65","p66","p67","p68","p69","p70","p71","ob1","ob2","ob3","ob4","ob5","am1","am2","am3","am4","am5","aq2","cq2","gsp","apb","nin","njt","bts","shc","nrd","nsy","syn","pbe","mnb","kkl","arm","q1a","q1b","q1c","q1d","q1e","q1f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","cr2","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38"}
    --weapon nm codes {"9ha","9ax","92a","9mp","9wa","9la","9ba","9bt","9ga","9gi","9wn","9yw","9bw","9gw","9cl","9sc","9qs","9ws","9sp","9ma","9mt","9fl","9wh","9m9","9gm","9ss","9sm","9sb","9fc","9cr","9bs","9ls","9wd","92h","9cm","9gs","9b9","9fb","9gd","9dg","9di","9kr","9bl","9tk","9ta","9bk","9b8","9ja","9pi","9s9","9gl","9ts","9sr","9tr","9br","9st","9p9","9b7","9vo","9s8","9pa","9h9","9wc","8ss","8ls","8cs","8bs","8ws","8sb","8hb","8lb","8cb","8s8","8l8","8sw","8lw","8lx","8mx","8hx","8rx","9ar","9wb","9xf","9cs","9lw","9tw","9qr","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","q10","q11","q12","q13","q14","q15","q16","q17","q18","q19","q20","q21","q22","q23","q24","q25","q26","q27","q28","q29","q30","q31","q32","q33","q34","q35","q36","q37","q38","q39","q40","q41","q42","q43","q44","q45","q46","q47","q48","q49","q50","q51","q52","q53","q54","q55","q56","q57","q58","q59","q60","q61","q62","q63","q64","q65","q66","q67","q68","q69","q70","q71","q72","q73","q77","q78","q79","q83","ob6","ob7","ob8","ob9","oba","am6","am7","am8","am9","ama","aq2","cq2","9gp","9pb","9nn","9nj","9xb","9sh","9rd","9ns","9sy","9be","9mn","9kl","9rm","q2a","q2b","q2c","q2d","q2e","q2f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38"}
    --weapon h codes {"0ha","0ax","82a","0mp","0wa","0la","0ba","0bt","0ga","0gi","0wn","0yw","0bw","0gw","0cl","5sc","0qs","0ws","0sp","0ma","0mt","0fl","0wh","0m0","0gm","0ss","0sm","0sb","0fc","0cr","0bs","0ls","0wd","02h","0cm","0gs","0b0","0fb","0gd","0dg","0di","0kr","0bl","0tk","0ta","0bk","0b6","0ja","0pi","0s9","0gl","0ts","0sr","0tr","0br","0st","0p0","0b7","0vo","0s8","0pa","0h0","0wc","1ss","1ls","1cs","1bs","1ws","1sb","1hb","1lb","1cb","1s8","1l8","1sw","1lw","1lx","1mx","1hx","1rx","7ar","7wb","7xf","7cs","7lw","7tw","7qr","7ha","7ax","72a","7mp","7wa","7la","7ba","7bt","7ga","7gi","7wn","7yw","7bw","7gw","7cl","7sc","7qs","7ws","7sp","7ma","7mt","7fl","7wh","7m7","7gm","7ss","7sm","7sb","7fc","7cr","7bs","7ls","7wd","72h","7cm","7gs","7b7","7fb","7gd","7dg","7di","7kr","7bl","7tk","7ta","7bk","7b8","7ja","7pi","7s7","7gl","7ts","7sr","7tr","7br","7st","7p7","7o7","7vo","7s8","7pa","7h7","7wc","6ss","6ls","6cs","6bs","6ws","6sb","6hb","6lb","6cb","6s7","6l7","6sw","6lw","6lx","6mx","6hx","6rx","obb","obc","obd","obe","obf","amb","amc","amd","ame","amf","aq2","cq2","0gp","0pb","0nn","0xb","0sh","0rd","0ns","0sy","0be","0mn","7tw","q74","q75","q76","q80","q81","q82","q84","q85","0kl","0rm","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38"}
    --all items (no belts) {"cap","skp","hlm","fhl","ghm","crn","msk","qui","lea","hla","stu","rng","scl","chn","brs","spl","plt","fld","gth","ful","aar","ltp","buc","sml","lrg","kit","tow","gts","lgl","vgl","mgl","tgl","hgl","lbt","vbt","mbt","tbt","hbt","bhm","bsh","spk","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr1","dr2","dr3","dr4","dr5","ba1","ba2","ba3","ba4","ba5","pa1","pa2","pa3","pa4","pa5","ne1","ne2","ne3","ne4","ne5","ci0","ci1","ci2","ci3","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","cix","eht","xht","yht","dwc","xdw","ydw","clk","xlk","ylk","rob","xrb","yrb","shl","xhh","yhh","elv","xlv","ylv","fts","xft","yft","irg","xig","yig","dbt","xbt","ybt","ci4","m06","m15","m20","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","ci1","ci4","4ap","4kp","4lm","4hl","4hm","4rn","4sk","4ui","4ea","4la","4tu","4ng","4cl","4hn","4rs","4pl","4lt","4ld","4th","4ul","4ar","4tp","4uc","4ml","4rg","4it","4ow","4ts","4lg","4vg","4mg","4tg","4hg","4lb","4vb","4mb","4tb","4hb","4h9","4sh","4pk","xht","xdw","xlk","xrb","xhh","xlv","xft","xig","xbt","qi2","ci2","qba","qda","qna","qp9","m06","m15","m20","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","ci3","ci2","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","yht","ydw","ylk","yrb","yhh","ylv","yft","yig","ybt","qi3","qdb","qnf","qbc","qbd","qbe","qdd","qde","qne","qpc","qpe","m06","m15","m20","hax","axe","2ax","mpi","wax","lax","bax","btx","gax","gix","wnd","ywn","bwn","gwn","clb","scp","gsc","wsp","spc","mac","mst","fla","whm","mau","gma","ssd","scm","sbr","flc","crs","bsd","lsd","wsd","2hs","clm","gis","bsw","flb","gsd","dgr","dir","kri","bld","tkf","tax","bkf","bal","jav","pil","ssp","glv","tsp","spr","tri","brn","spt","pik","bar","vou","scy","pax","hal","wsc","sst","lst","cst","bst","wst","sbw","hbw","lbw","cbw","sbb","lbb","swb","lwb","lxb","mxb","hxb","rxb","gps","ops","gpm","opm","gpl","opl","d33","g33","leg","hdm","hfh","hst","msf","ktr","wrb","axf","ces","clw","btl","skr","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","p11","p12","p13","p14","p15","p16","p17","p18","p19","p20","p21","p22","p23","p24","p25","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","p40","p41","p42","p43","p44","p45","p46","p47","p48","p49","p50","p51","p52","p53","p54","p55","p56","p57","p58","p59","p60","p61","p62","p63","p64","p65","p66","p67","p68","p69","p70","p71","ob1","ob2","ob3","ob4","ob5","am1","am2","am3","am4","am5","aq2","cq2","gsp","apb","nin","njt","bts","shc","nrd","nsy","syn","pbe","mnb","kkl","arm","q1a","q1b","q1c","q1d","q1e","q1f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","cr2","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","9ha","9ax","92a","9mp","9wa","9la","9ba","9bt","9ga","9gi","9wn","9yw","9bw","9gw","9cl","9sc","9qs","9ws","9sp","9ma","9mt","9fl","9wh","9m9","9gm","9ss","9sm","9sb","9fc","9cr","9bs","9ls","9wd","92h","9cm","9gs","9b9","9fb","9gd","9dg","9di","9kr","9bl","9tk","9ta","9bk","9b8","9ja","9pi","9s9","9gl","9ts","9sr","9tr","9br","9st","9p9","9b7","9vo","9s8","9pa","9h9","9wc","8ss","8ls","8cs","8bs","8ws","8sb","8hb","8lb","8cb","8s8","8l8","8sw","8lw","8lx","8mx","8hx","8rx","9ar","9wb","9xf","9cs","9lw","9tw","9qr","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","q10","q11","q12","q13","q14","q15","q16","q17","q18","q19","q20","q21","q22","q23","q24","q25","q26","q27","q28","q29","q30","q31","q32","q33","q34","q35","q36","q37","q38","q39","q40","q41","q42","q43","q44","q45","q46","q47","q48","q49","q50","q51","q52","q53","q54","q55","q56","q57","q58","q59","q60","q61","q62","q63","q64","q65","q66","q67","q68","q69","q70","q71","q72","q73","q77","q78","q79","q83","ob6","ob7","ob8","ob9","oba","am6","am7","am8","am9","ama","aq2","cq2","9gp","9pb","9nn","9nj","9xb","9sh","9rd","9ns","9sy","9be","9mn","9kl","9rm","q2a","q2b","q2c","q2d","q2e","q2f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","0ha","0ax","82a","0mp","0wa","0la","0ba","0bt","0ga","0gi","0wn","0yw","0bw","0gw","0cl","5sc","0qs","0ws","0sp","0ma","0mt","0fl","0wh","0m0","0gm","0ss","0sm","0sb","0fc","0cr","0bs","0ls","0wd","02h","0cm","0gs","0b0","0fb","0gd","0dg","0di","0kr","0bl","0tk","0ta","0bk","0b6","0ja","0pi","0s9","0gl","0ts","0sr","0tr","0br","0st","0p0","0b7","0vo","0s8","0pa","0h0","0wc","1ss","1ls","1cs","1bs","1ws","1sb","1hb","1lb","1cb","1s8","1l8","1sw","1lw","1lx","1mx","1hx","1rx","7ar","7wb","7xf","7cs","7lw","7tw","7qr","7ha","7ax","72a","7mp","7wa","7la","7ba","7bt","7ga","7gi","7wn","7yw","7bw","7gw","7cl","7sc","7qs","7ws","7sp","7ma","7mt","7fl","7wh","7m7","7gm","7ss","7sm","7sb","7fc","7cr","7bs","7ls","7wd","72h","7cm","7gs","7b7","7fb","7gd","7dg","7di","7kr","7bl","7tk","7ta","7bk","7b8","7ja","7pi","7s7","7gl","7ts","7sr","7tr","7br","7st","7p7","7o7","7vo","7s8","7pa","7h7","7wc","6ss","6ls","6cs","6bs","6ws","6sb","6hb","6lb","6cb","6s7","6l7","6sw","6lw","6lx","6mx","6hx","6rx","obb","obc","obd","obe","obf","amb","amc","amd","ame","amf","aq2","cq2","0gp","0pb","0nn","0xb","0sh","0rd","0ns","0sy","0be","0mn","7tw","q74","q75","q76","q80","q81","q82","q84","q85","0kl","0rm","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38"}
    --belts {"lbl","vbl","mbl","tbl","hbl","lbl","vbl","mbl","tbl","hbl","3lb","3vb","3mb","3tb","alb","avb","bmb","atb","ahb","alb","avb","bmb","atb","ahb","ulc","uvc","umc","utc","uhc","alb","avb","bmb","atb","ahb","yms","yms","yms","ulc","uvc","umc","utc","uhc","ulc","uvc","umc","utc","uhc","m10","zlb","zvb","zmb","ztb","zhb","zlb","zvb","zmb","ztb","zhb","5lb","5vb","5mb","5tb","5hb","zlb","zvb","zmb","ztb","zhb","xms","xms","xms","5lb","5vb","5mb","5tb","5hb","5lb","5vb","5mb","5tb","5hb","m10","3hb","lbl","vbl","mbl","tbl","hbl","msb","msb","msb","3lb","3vb","3mb","3tb","3hb","3lb","3vb","3mb","3tb","3hb","m10"}
    --all items (inc belts) {"cap","skp","hlm","fhl","ghm","crn","msk","qui","lea","hla","stu","rng","scl","chn","brs","spl","plt","fld","gth","ful","aar","ltp","buc","sml","lrg","kit","tow","gts","lgl","vgl","mgl","tgl","hgl","lbt","vbt","mbt","tbt","hbt","bhm","bsh","spk","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr1","dr2","dr3","dr4","dr5","ba1","ba2","ba3","ba4","ba5","pa1","pa2","pa3","pa4","pa5","ne1","ne2","ne3","ne4","ne5","ci0","ci1","ci2","ci3","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","cix","eht","xht","yht","dwc","xdw","ydw","clk","xlk","ylk","rob","xrb","yrb","shl","xhh","yhh","elv","xlv","ylv","fts","xft","yft","irg","xig","yig","dbt","xbt","ybt","ci4","m06","m15","m20","xap","xkp","xlm","xhl","xhm","xrn","xsk","xui","xea","xla","xtu","xng","xcl","xhn","xrs","xpl","xlt","xld","xth","xul","xar","xtp","xuc","xml","xrg","xit","xow","xts","xlg","xvg","xmg","xtg","xhg","xlb","xvb","xmb","xtb","xhb","xh9","xsh","xpk","dr6","dr7","dr8","dr9","dra","ba6","ba7","ba8","ba9","baa","pa6","pa7","pa8","pa9","paa","ne6","ne7","ne8","ne9","nea","ci1","ci4","4ap","4kp","4lm","4hl","4hm","4rn","4sk","4ui","4ea","4la","4tu","4ng","4cl","4hn","4rs","4pl","4lt","4ld","4th","4ul","4ar","4tp","4uc","4ml","4rg","4it","4ow","4ts","4lg","4vg","4mg","4tg","4hg","4lb","4vb","4mb","4tb","4hb","4h9","4sh","4pk","xht","xdw","xlk","xrb","xhh","xlv","xft","xig","xbt","qi2","ci2","qba","qda","qna","qp9","m06","m15","m20","yap","ykp","ylm","yhl","yhm","yrn","ysk","yui","yea","yla","ytu","yng","ycl","yhn","yrs","ypl","ylt","yld","yth","yul","yar","ytp","yuc","yml","yrg","yit","yow","yts","ylg","yvg","ymg","ytg","yhg","ylb","yvb","ymb","ytb","yhb","yh9","ysh","ypk","drb","drc","drd","dre","drf","bab","bac","bad","bae","baf","pab","pac","pad","pae","paf","neb","neg","ned","nee","nef","ci3","ci2","uap","ukp","ulm","uhl","uhm","urn","usk","uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp","uuc","uml","urg","uit","uow","uts","ulg","uvg","umg","utg","uhg","ulb","uvb","umb","utb","uhb","uh9","ush","upk","yht","ydw","ylk","yrb","yhh","ylv","yft","yig","ybt","qi3","qdb","qnf","qbc","qbd","qbe","qdd","qde","qne","qpc","qpe","m06","m15","m20","hax","axe","2ax","mpi","wax","lax","bax","btx","gax","gix","wnd","ywn","bwn","gwn","clb","scp","gsc","wsp","spc","mac","mst","fla","whm","mau","gma","ssd","scm","sbr","flc","crs","bsd","lsd","wsd","2hs","clm","gis","bsw","flb","gsd","dgr","dir","kri","bld","tkf","tax","bkf","bal","jav","pil","ssp","glv","tsp","spr","tri","brn","spt","pik","bar","vou","scy","pax","hal","wsc","sst","lst","cst","bst","wst","sbw","hbw","lbw","cbw","sbb","lbb","swb","lwb","lxb","mxb","hxb","rxb","gps","ops","gpm","opm","gpl","opl","d33","g33","leg","hdm","hfh","hst","msf","ktr","wrb","axf","ces","clw","btl","skr","p01","p02","p03","p04","p05","p06","p07","p08","p09","p10","p11","p12","p13","p14","p15","p16","p17","p18","p19","p20","p21","p22","p23","p24","p25","p26","p27","p28","p29","p30","p31","p32","p33","p34","p35","p36","p37","p38","p39","p40","p41","p42","p43","p44","p45","p46","p47","p48","p49","p50","p51","p52","p53","p54","p55","p56","p57","p58","p59","p60","p61","p62","p63","p64","p65","p66","p67","p68","p69","p70","p71","ob1","ob2","ob3","ob4","ob5","am1","am2","am3","am4","am5","aq2","cq2","gsp","apb","nin","njt","bts","shc","nrd","nsy","syn","pbe","mnb","kkl","arm","q1a","q1b","q1c","q1d","q1e","q1f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","cr2","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","9ha","9ax","92a","9mp","9wa","9la","9ba","9bt","9ga","9gi","9wn","9yw","9bw","9gw","9cl","9sc","9qs","9ws","9sp","9ma","9mt","9fl","9wh","9m9","9gm","9ss","9sm","9sb","9fc","9cr","9bs","9ls","9wd","92h","9cm","9gs","9b9","9fb","9gd","9dg","9di","9kr","9bl","9tk","9ta","9bk","9b8","9ja","9pi","9s9","9gl","9ts","9sr","9tr","9br","9st","9p9","9b7","9vo","9s8","9pa","9h9","9wc","8ss","8ls","8cs","8bs","8ws","8sb","8hb","8lb","8cb","8s8","8l8","8sw","8lw","8lx","8mx","8hx","8rx","9ar","9wb","9xf","9cs","9lw","9tw","9qr","q00","q01","q02","q03","q04","q05","q06","q07","q08","q09","q10","q11","q12","q13","q14","q15","q16","q17","q18","q19","q20","q21","q22","q23","q24","q25","q26","q27","q28","q29","q30","q31","q32","q33","q34","q35","q36","q37","q38","q39","q40","q41","q42","q43","q44","q45","q46","q47","q48","q49","q50","q51","q52","q53","q54","q55","q56","q57","q58","q59","q60","q61","q62","q63","q64","q65","q66","q67","q68","q69","q70","q71","q72","q73","q77","q78","q79","q83","ob6","ob7","ob8","ob9","oba","am6","am7","am8","am9","ama","aq2","cq2","9gp","9pb","9nn","9nj","9xb","9sh","9rd","9ns","9sy","9be","9mn","9kl","9rm","q2a","q2b","q2c","q2d","q2e","q2f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","0ha","0ax","82a","0mp","0wa","0la","0ba","0bt","0ga","0gi","0wn","0yw","0bw","0gw","0cl","5sc","0qs","0ws","0sp","0ma","0mt","0fl","0wh","0m0","0gm","0ss","0sm","0sb","0fc","0cr","0bs","0ls","0wd","02h","0cm","0gs","0b0","0fb","0gd","0dg","0di","0kr","0bl","0tk","0ta","0bk","0b6","0ja","0pi","0s9","0gl","0ts","0sr","0tr","0br","0st","0p0","0b7","0vo","0s8","0pa","0h0","0wc","1ss","1ls","1cs","1bs","1ws","1sb","1hb","1lb","1cb","1s8","1l8","1sw","1lw","1lx","1mx","1hx","1rx","7ar","7wb","7xf","7cs","7lw","7tw","7qr","7ha","7ax","72a","7mp","7wa","7la","7ba","7bt","7ga","7gi","7wn","7yw","7bw","7gw","7cl","7sc","7qs","7ws","7sp","7ma","7mt","7fl","7wh","7m7","7gm","7ss","7sm","7sb","7fc","7cr","7bs","7ls","7wd","72h","7cm","7gs","7b7","7fb","7gd","7dg","7di","7kr","7bl","7tk","7ta","7bk","7b8","7ja","7pi","7s7","7gl","7ts","7sr","7tr","7br","7st","7p7","7o7","7vo","7s8","7pa","7h7","7wc","6ss","6ls","6cs","6bs","6ws","6sb","6hb","6lb","6cb","6s7","6l7","6sw","6lw","6lx","6mx","6hx","6rx","obb","obc","obd","obe","obf","amb","amc","amd","ame","amf","aq2","cq2","0gp","0pb","0nn","0xb","0sh","0rd","0ns","0sy","0be","0mn","7tw","q74","q75","q76","q80","q81","q82","q84","q85","0kl","0rm","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","m01","m02","m03","m04","m05","m07","m08","m09","m11","m12","m13","m14","m16","m17","m18","dd1","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","lbl","vbl","mbl","tbl","hbl","lbl","vbl","mbl","tbl","hbl","3lb","3vb","3mb","3tb","alb","avb","bmb","atb","ahb","alb","avb","bmb","atb","ahb","ulc","uvc","umc","utc","uhc","alb","avb","bmb","atb","ahb","yms","yms","yms","ulc","uvc","umc","utc","uhc","ulc","uvc","umc","utc","uhc","m10","zlb","zvb","zmb","ztb","zhb","zlb","zvb","zmb","ztb","zhb","5lb","5vb","5mb","5tb","5hb","zlb","zvb","zmb","ztb","zhb","xms","xms","xms","5lb","5vb","5mb","5tb","5hb","5lb","5vb","5mb","5tb","5hb","m10","3hb","lbl","vbl","mbl","tbl","hbl","msb","msb","msb","3lb","3vb","3mb","3tb","3hb","3lb","3vb","3mb","3tb","3hb","m10"}
    
    }
}

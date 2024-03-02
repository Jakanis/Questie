---@class SeasonOfDiscovery
local SeasonOfDiscovery = QuestieLoader:CreateModule("SeasonOfDiscovery")
-------------------------
--Import modules.
-------------------------
---@type QuestieDB
local QuestieDB = QuestieLoader:ImportModule("QuestieDB")
---@type QuestieQuestBlacklist
local QuestieQuestBlacklist = QuestieLoader:ImportModule("QuestieQuestBlacklist")

SeasonOfDiscovery.currentPhase = 1 -- TODO: Use API function which hopefully will come in the future

local runeQuestsInSoD = {-- List quests here to have them flagged as Rune quests in Season of Discovery
    [1470]  = 1, -- Warlock Metamorphosis Part 1
    [4763]  = 1, -- Warlock Shadow Bolt Volley Darkshore
    [76156] = 1, -- Shaman Lava Lash Part 1
    [76160] = 1, -- Shaman Lava Lash Part 2
    [76240] = 1, -- Shaman Lava Lash Part 3
    [77568] = 1, -- Hunter Chimera Shot
    [77571] = 1, -- Druid Fury of Stormrage Alliance
    [77573] = 1, -- Rogue Shadowstrike Nightelf
    [77574] = 1, -- Priest Penance
    [77575] = 1, -- Warrior Victory Rush
    [77582] = 1, -- Warrior Victory Rush
    [77583] = 1, -- Rogue Shadowstrike Orc
    [77584] = 1, -- Hunter Chimera Shot
    [77585] = 1, -- Shaman Overload
    [77586] = 1, -- Warlock Haunt
    [77587] = 1, -- Shaman Overload
    [77588] = 1, -- Warrior Victory Rush
    [77590] = 1, -- Hunter Chimera Shot
    [77592] = 1, -- Rogue Shadowstrike Troll
    [77616] = 1, -- Warrior Victory Rush
    [77617] = 1, -- Paladin Crusader Strike Elwynn Forest
    [77618] = 1, -- Rogue Shadowstrike Human
    [77619] = 1, -- Priest Penance
    [77620] = 1, -- Mage Ice Lance Elwynn Forest
    [77621] = 1, -- Warlock Haunt
    [77642] = 1, -- Priest Penance
    [77643] = 1, -- Mage Ice Lance Durotar
    [77648] = 1, -- Druid Fury of Stormrage Horde
    [77649] = 1, -- Hunter Chimera Shot
    [77651] = 1, -- Warrior Victory Rush
    [77652] = 1, -- Shaman Overload
    [77655] = 1, -- Warrior Victory Rush
    [77656] = 1, -- Warrior Victory Rush
    [77657] = 1, -- Paladin Crusader Strike Dun Morogh
    [77658] = 1, -- Rogue Shadowstrike Dwarf
    [77659] = 1, -- Rogue Shadowstrike Gnome
    [77660] = 1, -- Hunter Chimera Shot
    [77661] = 1, -- Priest Penance
    [77666] = 1, -- Warlock Haunt
    [77668] = 1, -- Warrior Victory Rush
    [77667] = 1, -- Mage Ice Lance Dun Morogh
    [77669] = 1, -- Rogue Shadowstrike Undead
    [77670] = 1, -- Priest Penance
    [77671] = 1, -- Mage Ice Lance Tirisfal Glades
    [77672] = 1, -- Warlock Haunt
    [78088] = 1, -- Paladin Divine Storm
    [78089] = 1, -- Paladin Divine Storm
    [78090] = 1, -- Paladin Divine Storm
    [78091] = 1, -- Paladin Divine Storm
    [78092] = 1, -- Paladin Divine Storm
    [78093] = 1, -- Paladin Divine Storm
    [78114] = 1, -- Hunter Kill Command Part 1
    [78121] = 1, -- Hunter Kill Command Part 2
    [78124] = 1, -- Mage Icy Veins
    [78127] = 1, -- Mage Icy Veins
    [78132] = 1, -- Warrior Raging Blows Part 1
    [78133] = 1, -- Warrior Raging Blows Part 1
    [78134] = 1, -- Warrior Raging Blows Part 1
    [78142] = 1, -- Mage Icy Veins
    [78143] = 1, -- Mage Icy Veins
    [78144] = 1, -- Warrior Raging Blows Part 2
    [78145] = 1, -- Mage Icy Veins
    [78146] = 1, -- Mage Icy Veins
    [78147] = 1, -- Mage Icy Veins
    [78148] = 1, -- Mage Icy Veins
    [78149] = 1, -- Mage Icy Veins
    [78150] = 1, -- Mage Icy Veins
    [78229] = 1, -- Druid Wild Growth
    [78261] = 1, -- Rogue Deadly Brew Part 2
    [78265] = 1, -- Grizzby prequest for multiple runes
    [78266] = 1, -- Grizzby prequest for multiple runes
    [78267] = 1, -- Grizzby prequest for multiple runes
    [78270] = 1, -- Rogue Deadly Brew Part 3
    [78277] = 1, -- Mage Horde Living Bomb
    [78287] = 1, -- Let Me Make You An Offer Alliance
    [78288] = 1, -- Let Me Make You An Offer Horde
    [78297] = 1, -- You've Got Yourself A Deal Alliance
    [78304] = 1, -- You've Got Yourself A Deal Horde
    [78307] = 1, -- Rogue Deadly Brew Part 3
    [78506] = 1, -- Shaman Earth Shield Part 1
    [78537] = 1, -- Shaman Earth Shield Part 2
    [78561] = 1, -- Shaman Earth Shield Part 3
    [78575] = 1, -- Shaman Earth Shield Part 4
    [78680] = 1, -- Warlock Metamorphosis Part 2
    [78681] = 1, -- Warlock Metamorphosis Part 3
    [78684] = 1, -- Warlock Metamorphosis Part 4
    [78702] = 1, -- Warlock Metamorphosis Part 5
    [78823] = 2, -- Hunter Exposed Weakness Part 1
    [78830] = 2, -- Hunter Exposed Weakness Part 2
    [78914] = 2, -- Warlock Grimoire of Synergy Part 2
    [78994] = 2, -- Warlock Grimoire of Synergy Part 1
    [79091] = 1, -- Mage Icy Veins
    [79092] = 1, -- Mage Icy Veins
    [79093] = 1, -- Mage Icy Veins
    [79094] = 1, -- Mage Icy Veins
    [79095] = 1, -- Mage Icy Veins
    [79096] = 1, -- Mage Icy Veins
    [79097] = 1, -- Mage Icy Veins
    [79229] = 2, -- Highway Robbery
    [79235] = 2, -- On the Lam
    [79236] = 2, -- Cherry for Your Thoughts?
    [79242] = 2, -- No Honor Among Thieves
    [79358] = 2, -- Shaman MailStrom Weapon (Tattered Note)
    [79360] = 2, -- Shaman MailStrom Weapon (Elemental Aid)
    [79361] = 2, -- Shaman MailStrom Weapon (Power of da Wind)
    [79362] = 2, -- Shaman MailStrom Weapon (Power of da Earth)
    [79363] = 2, -- Shaman MailStrom Weapon (Power of da Water)
    [79364] = 2, -- Shaman MailStrom Weapon (A Simple Container)
    [79365] = 2, -- Shaman MailStrom Weapon (With Wind Beneath Your Wings)
    [79366] = 2, -- Shaman MailStrom Weapon (Calm Before the Storm)
    [79442] = 2, -- Shaman MailStrom Weapon (Catching Up)
    [79535] = 2, -- Mage Icy Veins/Spell Power
    [79536] = 2, -- Mage Icy Veins/Spell Power
    [79677] = 2, -- A Quick Grocery Run
    [79947] = 2, -- Mage Icy Veins/Spell Power
    [79948] = 2, -- Mage Icy Veins/Spell Power
    [79949] = 2, -- Mage Icy Veins/Spell Power
    [79950] = 2, -- Mage Icy Veins/Spell Power
    [79951] = 2, -- Mage Icy Veins/Spell Power
    [79952] = 2, -- Mage Icy Veins/Spell Power
    [79953] = 2, -- Mage Icy Veins/Spell Power
    [80098] = 2, -- Curious Dalaran Relic
    [80120] = 2, -- A Service to Dalaran
    [80147] = 2, -- Curious Dalaran Relic
    [80148] = 2, -- Curious Dalaran Relic
    [80149] = 2, -- Curious Dalaran Relic
    [80150] = 2, -- Curious Dalaran Relic
    [80151] = 2, -- Curious Dalaran Relic
    [80152] = 2, -- Curious Dalaran Relic

    -- fake IDs
    --- Mage runes
    [90000] = 1, -- Mage Arcane Blast
    [90001] = 1, -- Mage Alliance Burnout
    [90002] = 1, -- Mage Alliance Burnout
    [90003] = 1, -- Mage Burnout
    [90004] = 1, -- Mage Alliance Fingers of Frost
    [90005] = 1, -- Mage Horde Fingers of Frost
    [90006] = 1, -- Mage Alliance Regeneration
    [90007] = 1, -- Mage Horde Regeneration
    [90008] = 1, -- Mage Alliance Regeneration
    [90009] = 1, -- Mage Horde Regeneration
    [90010] = 1, -- Mage Alliance Enlightenment
    [90011] = 1, -- Mage Horde Enlightenment
    [90012] = 1, -- Mage Alliance Arcane Surge
    [90013] = 1, -- Mage Horde Arcane Surge
    [90014] = 1, -- Mage Mass Regeneration
    [90015] = 1, -- Mage Alliance Living Flame
    [90016] = 1, -- Mage Alliance Living Flame
    [90017] = 1, -- Mage Horde Living Flame
    [90018] = 1, -- Mage Horde Living Flame
    [90019] = 1, -- Mage Rewind Time
    [90020] = 1, -- Mage Alliance Living Bomb
    [90021] = 1, -- Mage Horde Living Bomb
    --- Mage runes end
 
    [90022] = 1, -- Paladin Divine Storm
    [90023] = 1, -- Druid Wild Strikes
    [90024] = 1, -- Druid Survival of the Fittest
    [90025] = 1, -- Priest Serendipity
    [90026] = 1, -- Paladin Divine Sacrifice
    [90027] = 1, -- Hunter Lone Wolf
    [90028] = 1, -- Warrior Warbringer
    [90029] = 1, -- Warlock Demonic Pact
    [90030] = 1, -- Rogue Main Gauche
    [90031] = 1, -- Shaman Dual Wield Specialization
    [90032] = 1, -- Warlock Lake of Fire Start
    [90033] = 1, -- Warlock Lake of Fire End
    [90034] = 1, -- Warlock Master Channeler Alliance
    [90035] = 1, -- Warlock Master Channeler Alliance
    [90036] = 1, -- Warlock Master Channeler Westfall
    [90037] = 1, -- Warlock Master Channeler Horde
    [90038] = 1, -- Warlock Master Channeler Horde
    [90039] = 1, -- Warlock Chaos Bolt Dun Morogh
    [90040] = 1, -- Paladin Beacon of Light Alliance
    [90041] = 1, -- Shaman Healing Rain Horde
    [90042] = 1, -- Warlock Everlasting Affliction Alliance
    [90043] = 1, -- Warlock Everlasting Affliction Horde
    [90044] = 1, -- Hunter Serpent Spread Alliance
    [90045] = 1, -- Hunter Serpent Spread Horde
    [90046] = 1, -- Warrior Single-Minded Fury Alliance
    [90047] = 1, -- Warrior Single-Minded Fury Horde
    [90048] = 1, -- Druid Skull Bash Alliance
    [90049] = 1, -- Druid Skull Bash Horde
    [90050] = 1, -- Rogue Just a Flesh Wound Alliance
    [90051] = 1, -- Rogue Just a Flesh Wound Horde
    [90052] = 1, -- Priest Mind Sear Alliance
    [90053] = 1, -- Priest Mind Sear Horde
    [90054] = 1, -- Druid Living Seed Alliance
    [90055] = 1, -- Druid Living Seed Horde
    [90056] = 1, -- Druid Starsurge
    [90057] = 1, -- Druid Sunfire Alliance
    [90058] = 1, -- Druid Lifebloom
    [90059] = 1, -- Priest Prayer of Mending
    [90060] = 1, -- Shaman Ancestral Guidance
    [90061] = 1, -- Warlock Chaos Bolt Elwynn Forest
    [90062] = 1, -- Warlock Chaos Bolt The Barrens
    [90063] = 1, -- Warlock Chaos Bolt Tirisfal Glades
    [90064] = 1, -- Warlock Shadow Bolt Volley Loch Modan
    [90065] = 1, -- Warlock Shadow Bolt Volley Westfall start
    [90066] = 1, -- Warlock Shadow Bolt Volley Westfall end
    [90067] = 1, -- Warlock Shadow Bolt Volley The Barrens start
    [90068] = 1, -- Warlock Shadow Bolt Volley The Barrens end
    [90069] = 1, -- Warlock Shadow Bolt Volley Silverpine Forest
    [90070] = 1, -- Warlock Incinerate
    [90071] = 1, -- Warlock Demonic Tactics Alliance
    [90072] = 1, -- Warlock Demonic Tactics Horde
    [90073] = 1, -- Warlock Soul Siphon Dun Morogh
    [90074] = 1, -- Warlock Soul Siphon Elwynn Forest
    [90075] = 1, -- Warlock Soul Siphon Durotar
    [90076] = 1, -- Warlock Soul Siphon Tirisfal Galdes
    [90077] = 1, -- Warlock Demonic Grace Dun Morogh
    [90078] = 1, -- Warlock Demonic Grace Elwynn Forest
    [90079] = 1, -- Warlock Demonic Grace Durotar
    [90080] = 1, -- Warlock Demonic Grace Tirisfal Galdes
    [90081] = 1, -- Hunter Heart of the Lion
    [90082] = 1, -- Hunter Master Marksman
    [90083] = 1, -- Hunter Cobra Strikes
    [90084] = 1, -- Rogue Blade Dance Darkshore
    [90085] = 1, -- Rogue Blade Dance Loch Modan
    [90086] = 1, -- Rogue Blade Dance Westfall
    [90087] = 1, -- Rogue Blade Dance The Barrens
    [90088] = 1, -- Druid Wild Growth Ashenvale
    [90089] = 1, -- Druid Wild Growth Duskwood
    [90090] = 1, -- Druid Wild Growth Hillsbrad Foothills
    [90091] = 1, -- Warrior Flagellation
    [90092] = 1, -- Warrior Blood Frenzy
    [90093] = 1, -- Warrior Furious Thunder
    [90094] = 1, -- Warrior Consumed By Rage
    [90095] = 1, -- Hunter Explosive Shot
    [90096] = 1, -- Warrior Raging Blows
    [90097] = 1, -- Warrior Raging Blows
    [90098] = 1, -- Warrior Raging Blows
    [90099] = 1, -- Warrior Raging Blows
    [90100] = 1, -- Warrior Devastate
    [90101] = 1, -- Warrior Devastate
    [90102] = 1, -- Warrior Devastate
    [90103] = 1, -- Warrior Devastate
    [90104] = 1, -- Warrior Devastate
    [90105] = 1, -- Warrior Devastate
    [90106] = 1, -- Warrior Frenzied Assault
    [90107] = 1, -- Warrior Frenzied Assault
    [90108] = 1, -- Warrior Frenzied Assault
    [90109] = 1, -- Warrior Frenzied Assault
    [90110] = 1, -- Warrior Frenzied Assault
    [90111] = 1, -- Warrior Frenzied Assault
    [90112] = 1, -- Warrior Endless Rage Westfall
    [90113] = 1, -- Warrior Endless Rage Darkshore
    [90114] = 1, -- Warrior Endless Rage Loch Modan
    [90115] = 1, -- Warrior Endless Rage The Barrens
    [90116] = 1, -- Warrior Endless Rage Silverpine Forest
    [90117] = 1, -- Paladin Seal of Martyrdom
    [90118] = 1, -- Paladin Horn of Lordaeron
    [90119] = 1, -- Paladin Horn of Lordaeron
    [90120] = 1, -- Paladin Aegis
    [90121] = 1, -- Paladin Inspiration Exemplar
    [90122] = 1, -- Paladin Avenger's Shield
    [90123] = 1, -- Paladin Rebuke
    [90124] = 1, -- Paladin Rebuke
    [90125] = 1, -- Paladin Rebuke
    [90126] = 1, -- Paladin Hand of Reckoning
    [90127] = 1, -- Druid Mangle Teldrassil
    [90128] = 1, -- Druid Lacerate Loch Modan
    [90129] = 1, -- Druid Lacerate The Barrens
    [90130] = 1, -- Druid Savage Roar Darkshore
    [90131] = 1, -- Druid Savage Roar The Barrens
    [90132] = 1, -- Druid Savage Roar Loch Modan
    [90133] = 1, -- Rogue Quick Draw Dun Morogh
    [90134] = 1, -- Rogue Quick Draw Elwynn Forest
    [90135] = 1, -- Rogue Quick Draw Teldrassil
    [90136] = 1, -- Rogue Quick Draw Durotar
    [90137] = 1, -- Rogue Quick Draw Tirisfal Glades
    [90138] = 1, -- Rogue Slaughter from the Shadows Elwynn Forest, Dun Morogh, Durotar
    [90139] = 1, -- Warrior Quick Strike Loch Modan
    [90140] = 1, -- Warrior Quick Strike Westfall
    [90141] = 1, -- Warrior Quick Strike Darkshore
    [90142] = 1, -- Warrior Quick Strike The Barrens
    [90143] = 1, -- Warrior Quick Strike Silverpine Forest
    [90144] = 1, -- Druid Savage Roar Westfall
    [90145] = 1, -- Druid Lacerate Darkshore
    [90146] = 1, -- Druid Mangle Mulgore
    [90147] = 1, -- Paladin Hand of Reckoning Westfall
    [90148] = 1, -- Paladin Exorcist Duskwood
    [90150] = 1, -- Hunter Sniper Training Darkshore
    [90151] = 1, -- Hunter Sniper Training Westfall
    [90152] = 1, -- Hunter Sniper Training Loch Modan
    [90153] = 1, -- Hunter Sniper Training The Barrens
    [90154] = 1, -- Druid Lacerate Westfall
    [90155] = 1, -- Priest Void Plague Dun Morogh
    [90156] = 1, -- Priest Void Plague Elwynn Forest
    [90157] = 1, -- Priest Void Plague Teldrassil
    [90158] = 1, -- Priest Void Plague Durotar
    [90159] = 1, -- Priest Void Plague Tirisfal Glades
    [90161] = 1, -- Priest Strength of Soul
    [90162] = 1, -- Priest Twisted Faith Loch Modan
    [90163] = 1, -- Priest Twisted Faith Westfall
    [90164] = 1, -- Priest Twisted Faith Darkshore
    [90165] = 1, -- Priest Twisted Faith The Barrens
    [90166] = 1, -- Priest Twisted Faith Silverpine Forest
    [90167] = 1, -- Hunter Flanking Strike Dun Morogh
    [90168] = 1, -- Hunter Flanking Strike Teldrassil
    [90169] = 1, -- Priest Power Word: Barrier Redridge Mountains
    [90170] = 1, -- Hunter Flanking Strike Durotar
    [90171] = 1, -- Hunter Flanking Strike Mulgore
    [90172] = 1, -- Hunter Beast Mastery Westfall
    [90173] = 1, -- Hunter Beast Mastery Darkshore
    [90174] = 1, -- Hunter Beast Mastery Loch Modan
    [90175] = 1, -- Hunter Beast Mastery Silverpine Forest
    [90176] = 1, -- Hunter Beast Mastery The Barrens
    [90177] = 1, -- Priest Shared Pain Dun Morogh
    [90178] = 1, -- Priest Shared Pain Elwynn Forest
    [90179] = 1, -- Priest Shared Pain Teldrassil
    [90180] = 1, -- Priest Shared Pain Durotar
    [90181] = 1, -- Priest Shared Pain Tirisfal Glades
    [90182] = 1, -- Priest Homunculi Dun Morogh
    [90183] = 1, -- Priest Homunculi Elwynn Forest
    [90184] = 1, -- Priest Homunculi Teldrassil
    [90185] = 1, -- Priest Homunculi Durotar
    [90186] = 1, -- Priest Homunculi Tirisfal Glades
    [90187] = 1, -- Priest Shadow Word: Death Westfall
    [90188] = 1, -- Priest Shadow Word: Death The Barrens
    [90189] = 1, -- Priest Shadow Word: Death Loch Modan
    [90190] = 1, -- Priest Shadow Word: Death Silverpine Forest
    [90191] = 1, -- Priest Shadow Word: Death Darkshore
    [90192] = 1, -- Priest Circle of Healing Duskwood
    [90193] = 1, -- Rogue Between the Eyes Ironforge
    [90194] = 1, -- Rogue Between the Eyes Stormwind
    [90195] = 1, -- Rogue Between the Eyes Orgrimmar
    [90196] = 1, -- Rogue Between the Eyes Tirisfal Glades
    [90197] = 1, -- Rogue Between the Eyes Teldrassil
    [90198] = 1, -- Rogue Envenom Hillsbrad Foothills
    [90199] = 1, -- Rogue Mutilate Teldrassil
    [90200] = 1, -- Rogue Mutilate Dun Morogh
    [90201] = 1, -- Rogue Shiv Duskwood
    [90202] = 1, -- Shaman Shamanistic Rage Stonetalon Mountains
    [90203] = 1, -- Shaman Way of Earth The Barrens
    [90204] = 1, -- Shaman Way of Earth Silverpine Forest
    [90205] = 1, -- Shaman Lava Burst Hillsbrad Foothills
    [90206] = 1, -- Hunter Carve Dun Morogh
    [90207] = 1, -- Hunter Carve Teldrassil
    [90208] = 1, -- Hunter Carve Durotar
    [90209] = 1, -- Hunter Carve Mulgore
    [90210] = 1, -- Rogue Saber Slash Loch Modan
    [90211] = 1, -- Rogue Saber Slash Westfall
    [90212] = 1, -- Rogue Saber Slash The Barrens
    [90213] = 1, -- Rogue Saber Slash Silverpine Forest
    [90214] = 1, -- Rogue Saber Slash Darkshore
    [90215] = 1, -- Shaman Water Shield Silverpine Forest
    [90216] = 1, -- Shaman Water Shield The Barrens
    [90217] = 1, -- Shaman Shield Mastery Durotar Orc & Troll
    [90218] = 1, -- Shaman Shield Mastery Mulgore Tauren
    [90219] = 1, -- Shaman Molten Blast Durotar
    [90220] = 1, -- Shaman Molten Blast Mulgore

    -- P2 SoD Runes
    [90221] = 2, -- Druid Berserk Thousand Needles
    [90222] = 2, -- Druid Dreamstate Desolace
    [90223] = 2, -- Hunter Dual Wield Specialization Stranglethorn Vale
    [90224] = 2, -- Warrior Intervene Thousand Needles
    [90225] = 2, -- Warrior Rallying Cry Badlands
    [90226] = 2, -- Mage Spellfrost Bolt Stranglethorn Vale
    [90227] = 2, -- Mage Frostfire Bolt Stranglethorn Vale
    [90228] = 2, -- Rogue Rolling with the Punches Thousand Needles
    [90229] = 2, -- Paladin Sacred Shield Desolace
    [90230] = 2, -- Warrior Focused Rage Arathi Highlands
    [90231] = 2, -- Shaman Spirit of the Alpha
    [90232] = 2, -- Priest Empowered Renew
    [90233] = 2, -- Hunter Steady Shot Arathi Highlands
    [90234] = 2, -- Mage Hot Streak Alterac Mountains
    [90235] = 2, -- Priest Renewed Hope Desolace
    [90236] = 2, -- Mage Chronostatic Preservation
    [90237] = 2, -- Mage Chronostatic Preservation
    [90238] = 2, -- Mage Chronostatic Preservation
    [90239] = 2, -- Shaman Fire Nova Step 1
    [90240] = 2, -- Shaman Fire Nova Step 2
    [90241] = 2, -- Shaman Fire Nova Step 3
    [90242] = 2, -- Shaman Fire Nova Step 4
    [90243] = 2, -- Shaman Fire Nova Step 5
    [90244] = 2, -- Shaman Fire Nova Step 6
    [90245] = 2, -- Shaman Fire Nova Final Step
}

--- "automatic" phase detection for the first few phases;
--- gets called slightly later into init because if GetMaxPlayerLevel() is called too
--- early after initial login (not reloads), the game returns 60 even in early phases
function SeasonOfDiscovery.Initialize()
    local maxLevel = GetMaxPlayerLevel()
    local phaseDetected = true
    if maxLevel == 25 then
        SeasonOfDiscovery.currentPhase = 1
    elseif maxLevel == 40 then
        SeasonOfDiscovery.currentPhase = 2
    elseif maxLevel == 50 then
        SeasonOfDiscovery.currentPhase = 3
    elseif maxLevel == 60 and SeasonOfDiscovery.currentPhase < 4 then
        SeasonOfDiscovery.currentPhase = 4
    else
        phaseDetected = false
        Questie:Debug(Questie.DEBUG_CRITICAL, "[SeasonOfDiscovery] Automatic phase detection failed, phase remains as " .. tostring(SeasonOfDiscovery.currentPhase))
    end
    if phaseDetected then
        Questie:Debug(Questie.DEBUG_INFO, "[SeasonOfDiscovery] Phase automatically detected as " .. tostring(SeasonOfDiscovery.currentPhase))
    end
end

---@param questId number
---@return boolean
function QuestieDB.IsSoDRuneQuest(questId)
    return runeQuestsInSoD[questId] ~= nil
end

---@param questId number
---@return boolean Returns true if the quest should be hidden, false otherwise
function QuestieDB.IsRuneAndShouldBeHidden(questId)
    if (not QuestieDB.IsSoDRuneQuest(questId)) then
        return false
    end

    return (not Questie.db.profile.showSoDRunes) or (runeQuestsInSoD[questId] >= SeasonOfDiscovery.currentPhase)
end

-- This function blacklists any quests in phases LATER than the currentPhase value
-- so in Phase 1, quests in phases 2+ are blacklisted, in phase 2, phases 3+ are blacklisted, etc
-- Phase 1 is omitted, because everything not in this list is supposed to be available in Phase 1
local questsToBlacklistBySoDPhase = {
    [1] = { -- SoD Phase 1 - level cap 25 (this is required for counting, but should stay empty)
    },
    [2] = { -- SoD Phase 2 - level cap 40
        [1152] = true, -- Test of Lore; minLevel raised to 26 in P1 for some reason, might be retooled as part of P2?
        [1488] = true, -- The Corruptor; minLevel raised to 26 in P1
        [8370] = true, -- Conquering Arathi Basin
        [8374] = true, -- Conquering Arathi Basin
        [8171] = true, -- The Battle for Arathi Basin!
        [8168] = true, -- The Battle for Arathi Basin!
    },
    [3] = { -- SoD Phase 3 - level cap 50
        [3526] = true, -- Goblin Engineering
        [3629] = true, -- Goblin Engineering
        [3630] = true, -- Gnome Engineering
        [3632] = true, -- Gnome Engineering
        [3633] = true, -- Goblin Engineering
        [3634] = true, -- Gnome Engineering
        [3635] = true, -- Gnome Engineering
        [3637] = true, -- Gnome Engineering
        [4181] = true, -- Goblin Engineering
        [5141] = true, -- Dragonscale Leatherworking
        [5143] = true, -- Tribal Leatherworking
        [5144] = true, -- Elemental Leatherworking
        [5145] = true, -- Dragonscale Leatherworking
        [5146] = true, -- Elemental Leatherworking
        [5148] = true, -- Tribal Leatherworking
        [6607] = true, -- Nat Pagle, Angler Extreme Fishing 225+ quest
        [6608] = true, -- You Too Good. Fishing 225+ quest
        [6609] = true, -- I Got Nothin' Left! Fishing 225+ pre quest
        [6610] = true, -- Clamlette Surprise Cooking 225+ quest
        [6611] = true, -- To Gadgetzan You Go! Cooking 225+ pre quest
        [6612] = true, -- I Know A Guy... Cooking 225+ pre quest
        [6623] = true, -- Horde Trauma
        [6625] = true, -- Alliance Trauma
    },
    [4] = { -- SoD Phase 4 - level cap 60
        -- These might not be re-added at level 60
        [6963] = true, -- Old "Stolen Winter Veil Treats" quest
        [6983] = true, -- Old "You're a Mean One..." quest
        [6984] = true, -- Old "A Smokywood Pastures Thank You!" quest
        [7042] = true, -- Old "Stolen Winter Veil Treats" quest
        [7043] = true, -- Old "You're a Mean One..." quest
        [7045] = true, -- Old "A Smokywood Pastures Thank You!" quest
        [7881] = true, -- Old "Carnival Boots"
        [7882] = true, -- Old "Carnival Jerkins"
        [7889] = true, -- Old "Coarse Weightstone"
        [7890] = true, -- Old "Heavy Grinding Stone"
        [7894] = true, -- Old "Copper Modulator"
        [7895] = true, -- Old "Whirring Bronze Gizmo"
        [7899] = true, -- Old "Small Furry Paws"
        [7900] = true, -- Old "Torn Bear Pelts"
        [8746] = true, -- Old "Metzen the Reindeer" quest
        [8762] = true, -- Old "Metzen the Reindeer" quest
    },
    [5] = { -- SoD Phase 5
    },
    [6] = { -- SoD Phase 6
    },
    [7] = { -- SoD Phase 7
    },
    [8] = { -- SoD Phase 8
    },
    [9] = { -- SoD Phase 9
    },
    [10] = { -- SoD Phase 10
    },
    [11] = { -- Era Phase 1 - MC, Ony
    },
    [12] = { -- Era Phase 2 - World Bosses
    },
    [13] = { -- Era Phase 3 - BWL + Darkmoon Faire
        [7761] = true, -- Blackhand's Command BWL pre quest
        [7787] = true,
        -- Darkmoon Faire quests
        [7902] = true,
        [7903] = true,
        [8222] = true,
        [7901] = true,
        [7899] = true,
        [7940] = true,
        [7900] = true,
        [7907] = true,
        [7927] = true,
        [7929] = true,
        [7928] = true,
        [7946] = true,
        [8223] = true,
        [7934] = true,
        [7981] = true,
        [7943] = true,
        [7894] = true,
        [7933] = true,
        [7898] = true,
        [7885] = true,
        [7942] = true,
        [7883] = true,
        [7892] = true,
        [7937] = true,
        [7939] = true,
        [7893] = true,
        [7891] = true,
        [7896] = true,
        [7884] = true,
        [7882] = true,
        [7897] = true,
        [7895] = true,
        [7941] = true,
        [7881] = true,
        [7890] = true,
        [7889] = true,
        [7945] = true,
        [7935] = true,
        [7938] = true,
        [7944] = true,
        [7932] = true,
        [7930] = true,
        [7931] = true,
        [7936] = true,
        [9249] = true,
        [10939] = true,
        [10940] = true,
        [10941] = true,
        -----------------
    },
    [14] = { -- Era Phase 4 - Zul'Gurub
        [8411] = true,
        [8056] = true,
        [8057] = true,
        [8064] = true,
        [8065] = true,
        [8074] = true,
        [8075] = true,
        [8110] = true,
        [8111] = true,
        [8112] = true,
        [8113] = true,
        [8116] = true,
        [8117] = true,
        [8118] = true,
        [8119] = true,
        [8041] = true,
        [8042] = true,
        [8043] = true,
        [8044] = true,
        [8045] = true,
        [8046] = true,
        [8047] = true,
        [8048] = true,
        [8049] = true,
        [8050] = true,
        [8051] = true,
        [8052] = true,
        [8053] = true,
        [8054] = true,
        [8055] = true,
        [8058] = true,
        [8059] = true,
        [8060] = true,
        [8061] = true,
        [8062] = true,
        [8063] = true,
        [8066] = true,
        [8067] = true,
        [8068] = true,
        [8069] = true,
        [8070] = true,
        [8071] = true,
        [8072] = true,
        [8073] = true,
        [8076] = true,
        [8077] = true,
        [8078] = true,
        [8079] = true,
        [8101] = true,
        [8102] = true,
        [8103] = true,
        [8104] = true,
        [8106] = true,
        [8107] = true,
        [8108] = true,
        [8109] = true,
        [8141] = true,
        [8142] = true,
        [8143] = true,
        [8144] = true,
        [8145] = true,
        [8146] = true,
        [8147] = true,
        [8148] = true,
        [8184] = true,
        [8185] = true,
        [8186] = true,
        [8187] = true,
        [8188] = true,
        [8189] = true,
        [8190] = true,
        [8191] = true,
        [8192] = true,
        [8195] = true,
        [8196] = true,
        [8201] = true,
        [8227] = true,
        [8238] = true,
        [8239] = true,
        [8240] = true,
        [8243] = true,
        [8246] = true,
        [8446] = true,
        [8447] = true,
        [9208] = true,
        [9209] = true,
        [9210] = true,
        [8307] = true,
        [8313] = true,
        [8317] = true,
        [8282] = true,
        [8278] = true,
        [8323] = true,
        [8324] = true,
        [8275] = true,
        [8309] = true,
        [8310] = true,
        [8315] = true,
        [8319] = true,
        [8341] = true,
        [8342] = true,
        [8343] = true,
        [8331] = true,
        [8332] = true,
        [8333] = true,
        [8306] = true,
        [8321] = true,
        [8362] = true,
        [8364] = true,
        [9248] = true,
        [8281] = true,
        [8285] = true,
        [8279] = true,
        [8287] = true,
        [8314] = true,
    },
    [15] = { -- Era Phase 5 - AQ
        [8277] = true,
        [8280] = true,
        [8283] = true,
        [8284] = true,
        [8304] = true,
        [8318] = true,
        [8320] = true,
        [8361] = true,
        [8276] = true,
        [8747] = true,
        [8748] = true,
        [8749] = true,
        [8750] = true,
        [8752] = true,
        [8753] = true,
        [8754] = true,
        [8755] = true,
        [8757] = true,
        [8758] = true,
        [8759] = true,
        [8760] = true,
        [8800] = true,
        [8751] = true,
        [8756] = true,
        [8761] = true,
        [8801] = true,
        [8802] = true,
        [8764] = true,
        [8765] = true,
        [8766] = true,
        [8620] = true,
        [8621] = true,
        [8622] = true,
        [8623] = true,
        [8624] = true,
        [8625] = true,
        [8626] = true,
        [8627] = true,
        [8628] = true,
        [8629] = true,
        [8630] = true,
        [8631] = true,
        [8632] = true,
        [8633] = true,
        [8634] = true,
        [8637] = true,
        [8638] = true,
        [8639] = true,
        [8640] = true,
        [8641] = true,
        [8655] = true,
        [8656] = true,
        [8657] = true,
        [8658] = true,
        [8659] = true,
        [8660] = true,
        [8661] = true,
        [8662] = true,
        [8663] = true,
        [8664] = true,
        [8665] = true,
        [8666] = true,
        [8667] = true,
        [8668] = true,
        [8669] = true,
        [8689] = true,
        [8690] = true,
        [8691] = true,
        [8692] = true,
        [8693] = true,
        [8694] = true,
        [8695] = true,
        [8696] = true,
        [8697] = true,
        [8698] = true,
        [8699] = true,
        [8700] = true,
        [8701] = true,
        [8702] = true,
        [8703] = true,
        [8704] = true,
        [8705] = true,
        [8706] = true,
        [8707] = true,
        [8708] = true,
        [8709] = true,
        [8710] = true,
        [8711] = true,
        [8712] = true,
        [8728] = true,
        [8729] = true,
        [8730] = true,
        [8733] = true,
        [8734] = true,
        [8735] = true,
        [8736] = true,
        [8741] = true,
        [8742] = true,
        [8743] = true,
        [8745] = true,
        [8783] = true,
        [8784] = true,
        [8789] = true,
        [8790] = true,
        [8791] = true,
        [8602] = true,
        [8603] = true,
        [8606] = true,
        [8592] = true,
        [8593] = true,
        [8594] = true,
        [8595] = true,
        [8596] = true,
        [8597] = true,
        [8598] = true,
        [8599] = true,
        [8584] = true,
        [8585] = true,
        [8586] = true,
        [8587] = true,
        [8555] = true,
        [8556] = true,
        [8557] = true,
        [8558] = true,
        [8559] = true,
        [8560] = true,
        [8561] = true,
        [8562] = true,
        [8572] = true,
        [8573] = true,
        [8574] = true,
        [8575] = true,
        [8576] = true,
        [8577] = true,
        [8578] = true,
        [8496] = true,
        [8579] = true,
        [8544] = true,
        [8519] = true,
        [8856] = true,
        [8829] = true,
        [8497] = true,
        [8804] = true,
        [8805] = true,
        [8536] = true,
        [8857] = true,
        [8498] = true,
        [8806] = true,
        [8308] = true,
        [8858] = true,
        [8859] = true,
        [8807] = true,
        [8771] = true,
        [8773] = true,
        [8775] = true,
        [8777] = true,
        [8809] = true,
        [8787] = true,
        [8785] = true,
        [8538] = true,
        [8534] = true,
        [8738] = true,
        [8502] = true,
        [8537] = true,
        [8539] = true,
        [8786] = true,
        [8737] = true,
        [8687] = true,
        [8739] = true,
        [8501] = true,
        [8535] = true,
        [8808] = true,
        [8810] = true,
        [8740] = true,
        [8381] = true,
        [8779] = true,
        [8540] = true,
        [8541] = true,
        [8778] = true,
        [8780] = true,
        [8781] = true,
        [8782] = true,
        [8770] = true,
        [8772] = true,
        [8774] = true,
        [8776] = true,
        [8316] = true,
        [9023] = true,
        [8382] = true,
        [8286] = true,
        [8288] = true,
        [8301] = true,
        [8302] = true,
        [8303] = true,
        [8305] = true,
        [8548] = true,
        [8818] = true,
        [8817] = true,
        [8816] = true,
        [8815] = true,
        [8814] = true,
        [8820] = true,
        [8826] = true,
        [8825] = true,
        [8824] = true,
        [8823] = true,
        [8822] = true,
        [8821] = true,
        [8819] = true,
    },
    [16] = { -- Era Phase 6 - Naxxramas
        [9085] = true,
        [9142] = true,
        [9165] = true,
        [9141] = true,
        [9033] = true,
        [9034] = true,
        [9036] = true,
        [9037] = true,
        [9038] = true,
        [9039] = true,
        [9040] = true,
        [9041] = true,
        [9042] = true,
        [9043] = true,
        [9044] = true,
        [9045] = true,
        [9046] = true,
        [9047] = true,
        [9048] = true,
        [9049] = true,
        [9050] = true,
        [9054] = true,
        [9055] = true,
        [9056] = true,
        [9057] = true,
        [9058] = true,
        [9059] = true,
        [9060] = true,
        [9061] = true,
        [9068] = true,
        [9069] = true,
        [9070] = true,
        [9071] = true,
        [9072] = true,
        [9073] = true,
        [9074] = true,
        [9075] = true,
        [9077] = true,
        [9078] = true,
        [9079] = true,
        [9080] = true,
        [9081] = true,
        [9082] = true,
        [9083] = true,
        [9084] = true,
        [9086] = true,
        [9087] = true,
        [9088] = true,
        [9089] = true,
        [9090] = true,
        [9091] = true,
        [9092] = true,
        [9093] = true,
        [9095] = true,
        [9096] = true,
        [9097] = true,
        [9098] = true,
        [9099] = true,
        [9100] = true,
        [9101] = true,
        [9102] = true,
        [9103] = true,
        [9104] = true,
        [9105] = true,
        [9106] = true,
        [9107] = true,
        [9108] = true,
        [9109] = true,
        [9110] = true,
        [9111] = true,
        [9112] = true,
        [9113] = true,
        [9114] = true,
        [9115] = true,
        [9116] = true,
        [9117] = true,
        [9118] = true,
        [9120] = true,
        [9121] = true,
        [9122] = true,
        [9123] = true,
        [9124] = true,
        [9125] = true,
        [9126] = true,
        [9127] = true,
        [9128] = true,
        [9129] = true,
        [9131] = true,
        [9132] = true,
        [9136] = true,
        [9137] = true,
        [9153] = true,
        [9211] = true,
        [9213] = true,
        [9221] = true,
        [9222] = true,
        [9223] = true,
        [9224] = true,
        [9225] = true,
        [9226] = true,
        [9227] = true,
        [9228] = true,
        [9229] = true,
        [9230] = true,
        [9232] = true,
        [9233] = true,
        [9234] = true,
        [9235] = true,
        [9236] = true,
        [9237] = true,
        [9238] = true,
        [9239] = true,
        [9240] = true,
        [9241] = true,
        [9242] = true,
        [9243] = true,
        [9244] = true,
        [9245] = true,
        [9246] = true,
        [9250] = true,
        [9251] = true,
        -- Silithus/EPL PvP
        [9248] = true,
        [9422] = true,
        [9415] = true,
        [9419] = true,
        [9416] = true,
    },
    [17] = { -- Never appearing in Season of Discovery
        -- Original Blackfathom Deeps quests (instance reworked to raid, new quest IDs)
        [909] = true,
        [971] = true,
        [1198] = true,
        [1199] = true,
        [1200] = true,
        [1275] = true,
        [6561] = true,
        [6565] = true,
        [6921] = true,
        [6922] = true,

        -- Original Gnomeregan quests (instance reworked to raid, new quest IDs)
        [2841] = true,
        [2842] = true,
        [2843] = true,
        [2904] = true,
        [2922] = true,
        [2923] = true,
        [2924] = true,
        [2925] = true,
        [2926] = true,
        [2927] = true,
        [2928] = true,
        [2929] = true,
        [2930] = true,
        [2931] = true,
        [2945] = true,
        [2947] = true,
        [2949] = true,
        [2951] = true,
        [2952] = true,
        [2953] = true,
        [2962] = true,
        [4601] = true,
        [4602] = true,
        [4603] = true,
        [4604] = true,
        [4605] = true,
        [4606] = true,
    },
}

---@return table<number, table<number, boolean>> @All quests that should be blacklisted separated by phase
function QuestieQuestBlacklist:GetSoDQuestsToBlacklist()
    -- Even if the first phase technically has no quests to blacklist, we use this be able to temporarily blacklist quests in P1
    if SeasonOfDiscovery.currentPhase > 1 then
        for phase = 1, SeasonOfDiscovery.currentPhase do
            questsToBlacklistBySoDPhase[phase] = {} -- empty table instead of nil to keep table size
        end
    end
    return questsToBlacklistBySoDPhase
end

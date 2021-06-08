---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

local townsfolkLocales = {
    ["Ammo"] = {
        ["ptBR"] = nil,
        ["ruRU"] = "Боеприпасы",
        ["deDE"] = "Munition",
        ["koKR"] = "무기상인",
        ["esMX"] = nil,
        ["enUS"] = true,
        ["zhCN"] = nil,
        ["zhTW"] = "武器商人",
        ["esES"] = nil,
        ["frFR"] = "Munitions",
    },
    ["Auctioneer"] = {
        ["ptBR"] = "Leiloeiro",
        ["ruRU"] = "Аукционер",
        ["deDE"] = "Auktionator",
        ["koKR"] = "경매인",
        ["esMX"] = "Subastador",
        ["enUS"] = true,
        ["zhCN"] = "拍卖师",
        ["zhTW"] = "拍賣師",
        ["esES"] = "Subastador",
        ["frFR"] = "Commissaire-priseur",
    },
    ["Bags"] = {
        ["ptBR"] = nil,
        ["ruRU"] = "Сумки",
        ["deDE"] = "Taschen",
        ["koKR"] = "가방 상인",
        ["esMX"] = nil,
        ["enUS"] = true,
        ["zhCN"] = nil,
        ["zhTW"] = "背包商人",
        ["esES"] = nil,
        ["frFR"] = "Sacs",
    },
    ["Banker"] = {
        ["ptBR"] = "Banqueiro",
        ["ruRU"] = "Банкир",
        ["deDE"] = "Bankier",
        ["koKR"] = "은행원",
        ["esMX"] = "Banquero",
        ["enUS"] = true,
        ["zhCN"] = "银行职员",
        ["zhTW"] = "銀行職員",
        ["esES"] = "Banquero",
        ["frFR"] = "Banquier",
    },
    ["Battlemaster"] = {
        ["ptBR"] = "Mestre de batalha",
        ["ruRU"] = "Военачальник",
        ["deDE"] = "Kampfmeister",
        ["koKR"] = "전투모병관",
        ["esMX"] = "Maestro de Batalla",
        ["enUS"] = true,
        ["zhCN"] = "战场军官",
        ["zhTW"] = "戰場軍官",
        ["esES"] = "Maestro de batalla",
        ["frFR"] = "Maître de guerre",
    },
    ["Class Trainer"] = {
        ["ptBR"] = "Instrutor de classe",
        ["ruRU"] = "Учитель классовых навыков",
        ["deDE"] = "Lehrer für eine Klasse",
        ["koKR"] = "직업 상급자",
        ["esMX"] = "Instructor de Clase",
        ["enUS"] = true,
        ["zhCN"] = "职业训练师",
        ["zhTW"] = "職業訓練師",
        ["esES"] = "Instructor de clase",
        ["frFR"] = "Maître de classe",
    },
    ["Drink"] = {
        ["ptBR"] = nil,
        ["ruRU"] = "Напитки",
        ["deDE"] = "Getränke",
        ["koKR"] = "음료 상인",
        ["esMX"] = nil,
        ["enUS"] = true,
        ["zhCN"] = nil,
        ["zhTW"] = "水商",
        ["esES"] = nil,
        ["frFR"] = "Boissons",
    },
    ["Flight Master"] = {
        ["ptBR"] = "Mestre de voo",
        ["ruRU"] = "Распорядитель полетов",
        ["deDE"] = "Flugmeister",
        ["koKR"] = "비행 조련사",
        ["esMX"] = "Maestro de Vuelo",
        ["enUS"] = true,
        ["zhCN"] = "飞行管理员",
        ["zhTW"] = "飛行管理員",
        ["esES"] = "Maestro de vuelo",
        ["frFR"] = "Maître de vol",
    },
    ["Food"] = {
        ["ptBR"] = nil,
        ["ruRU"] = "Еда",
        ["deDE"] = "Essen",
        ["koKR"] = "음식 상인",
        ["esMX"] = nil,
        ["enUS"] = true,
        ["zhCN"] = nil,
        ["zhTW"] = "麵包商人",
        ["esES"] = nil,
        ["frFR"] = "Nourriture",
    },
    ["Innkeeper"] = {
        ["ptBR"] = "Estalajadeiro",
        ["ruRU"] = "Хозяин таверны",
        ["deDE"] = "Gastwirt",
        ["koKR"] = "여관주인",
        ["esMX"] = "Tabernero",
        ["enUS"] = true,
        ["zhCN"] = "旅馆老板",
        ["zhTW"] = "旅店老闆",
        ["esES"] = "Tabernero",
        ["frFR"] = "Aubergiste",
    },
    ["Mailbox"] = {
        ["ptBR"] = "Caixa de correio",
        ["ruRU"] = "Почтовый ящик",
        ["deDE"] = "Briefkasten",
        ["koKR"] = "우체통",
        ["esMX"] = "Buzón",
        ["enUS"] = true,
        ["zhCN"] = "邮箱",
        ["zhTW"] = "郵箱",
        ["esES"] = "Buzón",
        ["frFR"] = "Boîte aux lettres",
    },
    ["Profession Trainer"] = {
        ["ptBR"] = "Instrutores de profissão",
        ["ruRU"] = "Учитель профессий",
        ["deDE"] = "Berufsausbilder",
        ["koKR"] = "기술 전문가",
        ["esMX"] = "Instructor de Profesión",
        ["enUS"] = true,
        ["zhCN"] = "专业训练师",
        ["zhTW"] = "專業技能訓練師",
        ["esES"] = "Instructores de profesiones",
        ["frFR"] = "Maîtres de métier",
    },
    ["Reagents"] = {
        ["ptBR"] = "Reagentes",
        ["ruRU"] = "Реагенты",
        ["deDE"] = "Reagenzien",
        ["koKR"] = "마법 재료 상인",
        ["esMX"] = "Componentes",
        ["enUS"] = true,
        ["zhCN"] = "施法材料",
        ["zhTW"] = "材料",
        ["esES"] = "Componentes",
        ["frFR"] = "Composants",
    },
    ["Repair"] = {
        ["ptBR"] = "Conserto",
        ["ruRU"] = "Ремонт",
        ["deDE"] = "Reparieren",
        ["koKR"] = "장비 수리",
        ["esMX"] = "Reparación",
        ["enUS"] = true,
        ["zhCN"] = "修理",
        ["zhTW"] = "修理",
        ["esES"] = "Reparación",
        ["frFR"] = "Réparations",
    },
    ["Spirit Healer"] = {
        ["ptBR"] = "Anjo da Cura",
        ["ruRU"] = "Целитель душ",
        ["deDE"] = "Geistheiler",
        ["koKR"] = "영혼의 치유사",
        ["esMX"] = "Ángel de la Resurrección",
        ["enUS"] = true,
        ["zhCN"] = "灵魂医者",
        ["zhTW"] = "靈魂醫者",
        ["esES"] = "Ángel de la Resurrección",
        ["frFR"] = "Gardien des âmes",
    },
    ["Stable Master"] = {
        ["ptBR"] = "Mestre de estábulo",
        ["ruRU"] = "Смотритель стойл",
        ["deDE"] = "Stallmeister",
        ["koKR"] = "야수 관리인",
        ["esMX"] = "Maestro de Establos",
        ["enUS"] = true,
        ["zhCN"] = "兽栏管理员",
        ["zhTW"] = "獸欄管理員",
        ["esES"] = "Maestro de establos",
        ["frFR"] = "Maître des écuries",
    },
    ["Portal Trainer"] = {
        ["ptBR"] = "Treinamento de Portais",
        ["ruRU"] = "Мастер порталов",
        ["deDE"] = "Portallehrer",
        ["koKR"] = "순간이동 전문 마법사",
        ["esMX"] = "Instructor de portal",
        ["enUS"] = true,
        ["zhCN"] = "传送门训练师",
        ["zhTW"] = "傳送門訓練師",
        ["esES"] = "Instructor de portal",
        ["frFR"] = "Maître des portails",
    },
    ["Trade Goods"] = {
        ["ptBR"] = nil,
        ["ruRU"] = "Хозяйственные товары",
        ["deDE"] = "Handwerkswaren",
        ["koKR"] = "상인",
        ["esMX"] = nil,
        ["enUS"] = true,
        ["zhCN"] = nil,
        ["zhTW"] = "交易員",
        ["esES"] = nil,
        ["frFR"] = "Fournitures",
    },
    ["Vendor"] = {
        ["ptBR"] = "Vendedor",
        ["ruRU"] = "Торговец",
        ["deDE"] = "Händler",
        ["koKR"] = "상인",
        ["esMX"] = "Vendedor",
        ["enUS"] = true,
        ["zhCN"] = "商人",
        ["zhTW"] = "正在購買物品",
        ["esES"] = "Vendedor",
        ["frFR"] = "Vendeur",
    },
    ["Weapon Master"] = {
        ["ptBR"] = "Mestre de Armas",
        ["ruRU"] = "Эксперт по оружию",
        ["deDE"] = "Waffenmeister",
        ["koKR"] = "무기 전문가",
        ["esMX"] = "Maestro Armero",
        ["enUS"] = true,
        ["zhCN"] = "武器大师",
        ["zhTW"] = "武器大師",
        ["esES"] = "Maestro armero",
        ["frFR"] = "Maître d'armes",
    }
}

for k, v in pairs(townsfolkLocales) do
    l10n.translations[k] = v
end

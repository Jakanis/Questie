---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

if GetLocale() == "deDE" then
    l10n.questLookup["deDE"] = loadstring([[return {
        [64997] = {"Einen Vorteil gewinnen",nil, {"Bringt dem Abgesandten Mordin in Shattrath 8 Netherrückstände."}},
        [64998] = {"Einen Vorteil gewinnen",nil, {"Bringt dem Abgesandten Mordin in Shattrath 8 Netherrückstände."}},
        [64999] = {"Einen Vorteil gewinnen",nil, {"Bringt dem Abgesandten Mordin in Shattrath 8 Netherrückstände."}},
    }]])
elseif GetLocale() == "esES" then
    l10n.questLookup["esES"] = loadstring([[return {
        [64997] = {"Lograr ventaja",nil, {"Llévale 8 residuos abisales al emisario Mordin en la Ciudad de Shattrath."}},
        [64998] = {"Lograr ventaja",nil, {"Llévale 8 residuos abisales al emisario Mordin en la Ciudad de Shattrath."}},
        [64999] = {"Lograr ventaja",nil, {"Llévale 8 residuos abisales al emisario Mordin en la Ciudad de Shattrath."}},
    }]])
elseif GetLocale() == "esMX" then
    l10n.questLookup["esMX"] = loadstring([[return {
        [64997] = {"Lograr ventaja",nil, {"Llévale 8 residuos abisales al emisario Mordin en la Ciudad de Shattrath."}},
        [64998] = {"Lograr ventaja",nil, {"Llévale 8 residuos abisales al emisario Mordin en la Ciudad de Shattrath."}},
        [64999] = {"Lograr ventaja",nil, {"Llévale 8 residuos abisales al emisario Mordin en la Ciudad de Shattrath."}},
    }]])
elseif GetLocale() == "frFR" then
    l10n.questLookup["frFR"] = loadstring([[return {
        [64997] = {"Prendre l'avantage",nil, {"Apportez 8 Résidus de Néant à l'Émissaire Mordin, à Shattrath."}},
        [64998] = {"Prendre l'avantage",nil, {"Apportez 8 Résidus de Néant à l'Émissaire Mordin, à Shattrath."}},
        [64999] = {"Prendre l'avantage",nil, {"Apportez 8 Résidus de Néant à l'Émissaire Mordin, à Shattrath."}},
    }]])
elseif GetLocale() == "koKR" then
    l10n.questLookup["koKR"] = loadstring([[return {
        [64997] = {"공격대 지원",nil, {"샤트라스에 있는 사절 모르딘에게 황천의 잔류물 8개를 가져가야 합니다."}},
        [64998] = {"공격대 지원",nil, {"샤트라스에 있는 사절 모르딘에게 황천의 잔류물 8개를 가져가야 합니다."}},
        [64999] = {"공격대 지원",nil, {"샤트라스에 있는 사절 모르딘에게 황천의 잔류물 8개를 가져가야 합니다."}},
    }]])
elseif GetLocale() == "ptBR" then
    l10n.questLookup["ptBR"] = loadstring([[return {
        [64997] = {"Tomando a dianteira",nil, {"Leve 8 Resíduos de Éter ao Emissário Mordin em Shattrath."}},
        [64998] = {"Tomando a dianteira",nil, {"Leve 8 Resíduos de Éter ao Emissário Mordin em Shattrath."}},
        [64999] = {"Tomando a dianteira",nil, {"Leve 8 Resíduos de Éter ao Emissário Mordin em Shattrath."}},
    }]])
elseif GetLocale() == "ruRU" then
    l10n.questLookup["ruRU"] = loadstring([[return {
        [64997] = {"Обретение преимущества",nil, {"Принесите 8 горстей пыли Пустоты эмиссару Мордину в Шаттрат."}},
        [64998] = {"Обретение преимущества",nil, {"Принесите 8 горстей пыли Пустоты эмиссару Мордину в Шаттрат."}},
        [64999] = {"Обретение преимущества",nil, {"Принесите 8 горстей пыли Пустоты эмиссару Мордину в Шаттрат."}},
    }]])
elseif GetLocale() == "zhCN" then
    l10n.questLookup["zhCN"] = loadstring([[return {
        [64997] = {"占据上风",nil, {"给沙塔斯城的摩尔丁特使带去8份虚空残渣。"}},
        [64998] = {"占据上风",nil, {"给沙塔斯城的摩尔丁特使带去8份虚空残渣。"}},
        [64999] = {"占据上风",nil, {"给沙塔斯城的摩尔丁特使带去8份虚空残渣。"}},
    }]])
elseif GetLocale() == "zhTW" then
    l10n.questLookup["zhTW"] = loadstring([[return {
        [64997] = {"占据上风",nil, {"给沙塔斯城的摩尔丁特使带去8份虚空残渣。"}},
        [64998] = {"占据上风",nil, {"给沙塔斯城的摩尔丁特使带去8份虚空残渣。"}},
        [64999] = {"占据上风",nil, {"给沙塔斯城的摩尔丁特使带去8份虚空残渣。"}},
    }]])
end

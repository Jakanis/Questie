local debugMessagesLocales = {
    ["Questie Commands"] = {
        ["ptBR"] = "Comandos da Questie",
        ["ruRU"] = "Команды Questie:",
        ["deDE"] = "Questie-Befehle",
        ["koKR"] = "Questie 명령어",
        ["esMX"] = "Comandos de Questie",
        ["enUS"] = true,
        ["zhCN"] = "Questie配置命令",
        ["zhTW"] = "Questie指令",
        ["esES"] = "Comandos de Questie",
        ["frFR"] = "Commandes de Questie",
    },
    ["Toggles the Config window"] = {
        ["ptBR"] = "Alternar a janela de configuração",
        ["ruRU"] = "показать/скрыть окно настроек.",
        ["deDE"] = "Zeigen/Verstecken des Einstellungsfensters",
        ["koKR"] = "설정 창을 엽니다",
        ["esMX"] = "Muestra la ventana de copnfiguración",
        ["enUS"] = true,
        ["zhCN"] = "打开设置窗口",
        ["zhTW"] = "打開設定視窗",
        ["esES"] = "Muestra la ventana de copnfiguración",
        ["frFR"] = "Ouvre le panneau de configuration.",
    },
    ["Toggles showing questie on the map and minimap"] = {
        ["ptBR"] = "Ativar / Desativar a exibição da Questie sobre o mapa e no mapa ",
        ["ruRU"] = "показать/скрыть значки Questie.",
        ["deDE"] = "Zeigen/Verstecken von Questie auf der Weltkarte und Minimap",
        ["koKR"] = "맵과 미니맵에 퀘스티 아이콘을 표시합니다",
        ["esMX"] = "Muestra Questie en el mapa y minimapa",
        ["enUS"] = true,
        ["zhCN"] = "在地图上显示Questie提示",
        ["zhTW"] = "在大地圖和小地圖上顯示Questie圖示",
        ["esES"] = "Muestra Questie en el mapa y minimapa",
        ["frFR"] = "Active ou désactive l'affichage de Questie sur la carte et la mini-carte",
    },
    ["Toggles the My Journey window"] = {
        ["ptBR"] = "Alterne a janela Minha viagem",
        ["ruRU"] = "открыть 'Мое путешествие'.",
        ["deDE"] = "Zeigen/Verstecken des 'Meine Reise'-Fensters",
        ["koKR"] = "나의 여정 창을 표시합니다",
        ["esMX"] = "muestra la ventana de mi viaje",
        ["enUS"] = true,
        ["zhCN"] = "打开日志窗口",
        ["zhTW"] = "打開日誌視窗",
        ["esES"] = "muestra la ventana de mi viaje",
        ["frFR"] = "Ouvre la fenêtre Mon voyage.",
    },
    ["Toggles the Tracker. Add 'show', 'hide', 'reset' to explicit show/hide or reset the Tracker"] = {
        ["ptBR"] = nil,
        ["ruRU"] = "состояние трекера Questie. Добавьте 'show', 'hide', 'reset', чтобы показать, скрыть или сбросить трекер.",
        ["deDE"] = "Zeigen/Verstecken des Questie Trackers. Bei 'show', 'hide' oder 'reset' wird der Tracker explizit gezeigt, versteckt oder zurückgesetzt",
        ["koKR"] = nil,
        ["esMX"] = nil,
        ["enUS"] = true,
        ["zhCN"] = "切换任务追踪窗口，输入  'show', 'hide', 'reset' 选项以显示、隐藏、重设追踪窗口",
        ["zhTW"] = "切換任務追蹤視窗。加上 'show', 'hide', 'reset' 選項以顯示、隱藏、重設追蹤視窗",
        ["esES"] = nil,
        ["frFR"] = nil,
    },
    ["Toggles the Minimap Button for Questie"] = {
        ["ptBR"] = "Alterne o botão na miniplaca para Questie",
        ["ruRU"] = "показать/скрыть кнопку у миникарты.",
        ["deDE"] = "Zeigen/Verstecken des Minimap-Buttons für Questie",
        ["koKR"] = "Questie 미니맵 아이콘을 표시합니다",
        ["esMX"] = "Muestra el botón del minimapa para Questie",
        ["enUS"] = true,
        ["zhCN"] = "切换显示或隐藏Questie小地图图标",
        ["zhTW"] = "切換顯示或隱藏Questie小地圖圖示",
        ["esES"] = "Muestra el botón del minimapa para Questie",
        ["frFR"] = "/Affiche ou désactive le bouton Questie autour de la mini-carte.",
    },
    ["Adds manual notes to the map for a given NPC ID or name. If the name is ambiguous multipe notes might be added. Without a second command the target will be added to the map. The 'reset' command removes all notes"] = {
        ["ptBR"] = nil,
        ["ruRU"] = "добавить ручные заметки на карту для введенного ID (или имени) NPC. Если имя неоднозначное, то могут добавиться несколько заметок. Без второй команды цель будет добавлена на карту. Команда 'reset' удаляет все заметки.",
        ["deDE"] = "Fügt manuelle Notizen für die NPC-ID oder den NPC-Namen zur Karte hinzu. Ist der Name nicht eindeutig, können mehrere Notizen hinzugefügt werden. Ohne einen zweiten Befehl wird das aktuelle Ziel zur Karte hinzugefügt. Mit dem 'reset' Befehl werden alle Notizen wieder entfernt",
        ["koKR"] = nil,
        ["esMX"] = nil,
        ["enUS"] = true,
        ["zhCN"] = "对特定NPC ID或名字于地图上加上自定义备注。若名字不精准，则备注可能会被加到多个目标上。 'reset'  指令可以移除所有的备注",
        ["zhTW"] = "對特定NPC ID或名稱於地圖上加上自訂註解。若名稱不精確，則註解可能會被加到多個目標上。'reset' 指令可以移除所有的註解",
        ["esES"] = nil,
        ["frFR"] = nil,
    },
    ["Invalid command. For a list of options please type: "] = {
        ["ptBR"] = "Comando inválido. Para uma lista de opções, digite:",
        ["ruRU"] = "Неверная команда. Для отображения списка команд наберите: ",
        ["deDE"] = "Ungültiger Befehl. Für eine Liste aller verfügbaren Befehle nutze: ",
        ["koKR"] = "존재하지 않는 명령어입니다. 전체 명령어를 확인하시려면 다음과 같이 입력해주세요: ",
        ["esMX"] = "Comando inválido. Para una lista de comandos escribe: ",
        ["enUS"] = true,
        ["zhCN"] = "无效命令，要查看指令列表请输入：",
        ["zhTW"] = "無效指令，要查看指令列表請輸入：",
        ["esES"] = "Comando inválido. Para una lista de comandos escribe: ",
        ["frFR"] = "Commande invalide. Pour obtenir une liste d'options, veuillez taper :",
    },
    ["There was a problem initializing Questie's database. This can usually be fixed by recompiling the database."] = {
        ["ptBR"] = nil,
        ["ruRU"] = "Выявлена проблема при инициализации базы данных Questie. Обычно это может быть исправлено путем рекомпиляции БД",
        ["deDE"] = "Es gab ein Problem beim Initialisieren der Questie-Datenbank. Ein Neukompilieren der Datenbank behebt das Problem in der Regel.",
        ["koKR"] = nil,
        ["zhCN"] = "初始化Questie的数据库时出现问题。 通常可以通过重新编辑数据库来解决此问题。",
        ["enUS"] = true,
        ["zhTW"] = nil,
        ["frFR"] = nil,
        ["esES"] = nil,
        ["esMX"] = nil,
    },
    ["There was an error populating objectives for %s %s %s %s"] = {
        ["ptBR"] = "Ocorreu um erro ao definir destinos para %s %s %s %s",
        ["ruRU"] = "Ошибка получения целей: %s %s %s %s",
        ["deDE"] = "Es gab einen Fehler beim Weitergeben der Ziele für %s %s %s %s",
        ["koKR"] = nil,
        ["esMX"] = "Se produjo un error al completar los objetivos para %s %s %s %s",
        ["enUS"] = true,
        ["zhCN"] = "填充 %s %s %s %s 的目标时出错",
        ["zhTW"] = nil,
        ["esES"] = "Se produjo un error al completar los objetivos para %s %s %s %s",
        ["frFR"] = "Une erreur s'est produite lors de la création des objectifs pour %s %s %s %s",
    },
    ["Error: Questie tracker in invalid location, resetting..."] = {
        ["ptBR"] = "Erro: Questie Rastreador em um local inválido, redefinir ...",
        ["ruRU"] = "Ошибка: трекер Questie в неправильном положении, сброс ...",
        ["deDE"] = "Fehler: Der Questie-Tracker ist in einer ungültigen Position und wird zurückgesetzt...",
        ["koKR"] = "에러: Questie 추적기가 허용되지 않은 위치에 있습니다, 재설정 중...",
        ["esMX"] = "Error: Rastreador en localización inválida, reiniciado...",
        ["enUS"] = true,
        ["zhCN"] = "错误：Questie任务追踪的框架跑到奇怪的地方去了，重置一下......",
        ["zhTW"] = "錯誤：Questie任務追蹤的框架跑到奇怪的地方去了，重置一下……",
        ["esES"] = "Error: Rastreador en localización inválida, reiniciado...",
        ["frFR"] = "Erreur : suivi des quêtes de Questie dans un endroit non valide, réinitialisation...",
    },
    ["Setting icon limit value to %s : Redrawing!"] = {
        ["ptBR"] = "Definir o valor limite do ícone como %s : Redesenhar!",
        ["ruRU"] = "Ограничение количества значков: %s. Перерисовка",
        ["deDE"] = "Icon Limit geändert auf %s : Zeichne neu!",
        ["koKR"] = nil,
        ["esMX"] = "Establaciendo límite de icono a %s : Redibujando!",
        ["enUS"] = true,
        ["zhCN"] = "图标限制值设置为 %s : Redrawing!",
        ["zhTW"] = nil,
        ["esES"] = "Establaciendo límite de icono a %s : Redibujando!",
        ["frFR"] = nil,
    },
    ["You have updated Questie without restarting the game, this will likely cause problems. Please restart the game before continuing"] = {
        ["ptBR"] = "Você atualizou o Questie sem reiniciar o jogo, isso pode representar um problema. Por favor, reinicie o jogo antes de continuar",
        ["ruRU"] = "Вы обновили Questie без перезапуска игры, это может вызвать проблемы. Пожалуйста, перезапустите игру, прежде чем продолжить",
        ["deDE"] = "Du hast Questie aktualisiert ohne WoW neuzustarten, was zu Problemen führen wird! Bitte starte den WoW Client neu, bevor du fortfährst.",
        ["koKR"] = "게임을 재실행하지 않고 Questie를 업데이트했습니다. 이로 인해 문제가 발생할 수 있습니다. 계속하시기 전에 게임을 재실행해주세요.",
        ["esMX"] = "Has actualizado Questie sin reiniciar el juego, esto probablemente causará problemas. Reinicia el juego antes de continuar.",
        ["enUS"] = true,
        ["zhCN"] = "你没有重开游戏就更新了Questie，这可能会使Questie出现某些错误。请完全关闭魔兽世界再重新启动游戏，确保Questie能正常运作。",
        ["zhTW"] = "你沒有重開遊戲就更新了Questie，這可能會使Questie出現某些錯誤。請完全關閉魔獸世界再重新啟動遊戲，確保Questie能正常運作",
        ["esES"] = "Has actualizado Questie sin reiniciar el juego, esto probablemente causará problemas. Reinicia el juego antes de continuar.",
        ["frFR"] = "Vous avez mis à jour Questie sans redémarrer le jeu, cela risque de poser problème. Veuillez redémarrer le jeu avant de continuer",
    },
    ["Questie DB has updated!"] = {
        ["ptBR"] = "O Questie DB foi atualizado!",
        ["ruRU"] = "База данных Questie обновляется!",
        ["deDE"] = "¡Questie DB se ha actualizado!",
        ["koKR"] = nil,
        ["esMX"] = nil,
        ["enUS"] = true,
        ["zhCN"] = "QuestieDB 读出数据!",
        ["zhTW"] = "false",
        ["esES"] = "¡Questie DB se ha actualizado!",
        ["frFR"] = "La base de données Questie a été mise à jour !",
    },
    ["Data is being processed, this may take a few moments and cause some lag..."] = {
        ["ptBR"] = "Os dados estão sendo processados, isso pode levar alguns instantes e causar alguma latência...",
        ["ruRU"] = "Данные обрабатываются, это может занять некоторое время и явиться причиной зависаний...",
        ["deDE"] = nil,
        ["koKR"] = nil,
        ["esMX"] = "Los datos se están procesando, esto puede demorar unos minutos y causar latencia...",
        ["enUS"] = true,
        ["zhCN"] = "数据正在处理中，这可能需要一些时间，并会导致一些延迟...",
        ["zhTW"] = nil,
        ["esES"] = "Los datos se están procesando, esto puede demorar unos minutos y causar latencia...",
        ["frFR"] = "Application de la mise à jour, cela peut prendre quelques instants et causer quelques lags...",
    },
    ["Updating NPCs"] = {
        ["ptBR"] = "Atualizando PNJs",
        ["ruRU"] = "Обновление NPC",
        ["deDE"] = "Aktualisiere NPCs",
        ["koKR"] = nil,
        ["esMX"] = "Actualizando PNJs",
        ["enUS"] = true,
        ["zhCN"] = "正在读出 NPC信息",
        ["zhTW"] = nil,
        ["esES"] = "Actualizando PNJs",
        ["frFR"] = "Mise à jour PNJs",
    },
    ["Updating objects"] = {
        ["ptBR"] = "Atualizando objetos",
        ["ruRU"] = "Обновление объектов",
        ["deDE"] = "Aktualisiere Objekte",
        ["koKR"] = nil,
        ["esMX"] = "Actualizando objetos",
        ["enUS"] = true,
        ["zhCN"] = "正在读出 目标信息",
        ["zhTW"] = nil,
        ["esES"] = "Actualizando objetos",
        ["frFR"] = "Mise à jour Objets",
    },
    ["Updating quests"] = {
        ["ptBR"] = "Atualizando missões",
        ["ruRU"] = "Обновление заданий",
        ["deDE"] = "Aktualisiere Quests",
        ["koKR"] = nil,
        ["esMX"] = "Actualizando misiones",
        ["enUS"] = true,
        ["zhCN"] = "正在读出 任务信息",
        ["zhTW"] = nil,
        ["esES"] = "Actualizando misiones",
        ["frFR"] = "Mise à jour Quêtes",
    },
    ["Updating items"] = {
        ["ptBR"] = "Atualizando itens",
        ["ruRU"] = "Обновление предметов",
        ["deDE"] = "Aktualisiere Gegenstände",
        ["koKR"] = nil,
        ["esMX"] = "Actualizando items",
        ["enUS"] = true,
        ["zhCN"] = "正在读出 物品信息",
        ["zhTW"] = nil,
        ["esES"] = "Actualizando items",
        ["frFR"] = "Mise à jour Objets",
    },
    ["Questie DB update complete!"] = {
        ["ptBR"] = "Atualização do Questie DB concluída!",
        ["ruRU"] = "Обновление базы данных Questie завершено!",
        ["deDE"] = "Questie Datenbank-Update abgeschlossen!",
        ["koKR"] = nil,
        ["esMX"] = "¡Actualización de Questie DB completada!",
        ["enUS"] = true,
        ["zhTW"] = nil,
        ["zhCN"] = "QuestieDB 读出完成!",
        ["esES"] = "¡Actualización de Questie DB completada!",
        ["frFR"] = "La base de données Questie a été mise à jour !",
    },
    ["%s for %s!"] = {
        ["ptBR"] = "%s para %s!",
        ["ruRU"] = "%s для %s!",
        ["frFR"] = "%s pour %s !",
        ["koKR"] = nil,
        ["zhCN"] = "%s 任务： %s!",
        ["enUS"] = true,
        ["zhTW"] = nil,
        ["deDE"] = "%s für %s!",
        ["esES"] = "%s para %s!",
        ["esMX"] = "%s para %s!",
    },
    ["Picked up %s which starts %s!"] = {
        ["ptBR"] = "Pegou %s que começa %s!",
        ["ruRU"] = "Данный предмет - %s - начинает %s!",
        ["frFR"] = "Ramassé %s qui démarre %s !",
        ["koKR"] = nil,
        ["zhCN"] = "拾取 %s 自动接受任务： %s!",
        ["enUS"] = true,
        ["zhTW"] = nil,
        ["deDE"] = "%s aufgehoben, das %s startet!",
        ["esES"] = "Despojó %s que empieza %s!",
        ["esMX"] = "Despojó %s que empieza %s!",
    },
}

for k, v in pairs(debugMessagesLocales) do
    l10n.translations[k] = v
end
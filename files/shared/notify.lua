
notify = function(player, message, type) -- Função exportada da sua Info
    exports['AwayNotify']:notify(player, message, type) -- Coloque aqui a sua info/infobox
end

getSystemLanguage = function(index) -- Não altere!
    return language[servidor.language][index];
end
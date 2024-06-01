
-- Instruções

--[[ 
Se você estiver enfrentando invasões em seu painel P, recomendo desabilitá-lo usando o comando "stop admin". 
Para melhorar o gerenciamento do seu servidor, você pode usar o Linkage, nosso sistema de gerenciamento para MTA e DISCORD. 
Se estiver interessado, abra um ticket e solicite-o.
--]]

-- Comandos do AC:
-- - aci
-- - acip
-- - verpath
-- - comandos
-- - unbanall
-- - screen + ID
-- - Configure infobox , linguagem na pasta shared

auth = {
	user = "GlgWtDz1", 
	key = "06tAeCcqLguCytxuFOT4rX28PXJU3LizU9xXOeWXR7l6igbp0Y6K4bfAzZ4QfouG"
}


servidor = {
	sigla = "AC", -- Sigla do servidor | Server initials
	cor = "#FF0000", -- Cor do servidor | Server color
	acl = "Staff", -- ACL de Staff | Staff ACL (Normal) lembresse recomendado TODOS STAFF TER ESSE CARGO ATE MSM DONOS
	staff = "onProt", -- Element Data para entrar no modo staff (/pro ou /staff) | Element Data to enter staff mode (/pro or /staff)
	admin = "Admin",  -- ACL de Staff superior | Staff ACL (Admin+)
	id = "ID", -- Element Data do ID | ID Element Data
	discord = "discord.gg/seuservidor", -- Discord do seu servidor | Ur official server discord
	language = "pt", -- Lingua do anticheat | Anticheat Language (pt,es, custom)
	minversion = "1.6.0-9.22268.0", -- https://nightly.multitheftauto.com/ver/
}

Imgur = {
    on = false, -- Aqui voce pode esta desativando/ativando a logica do Imgur configure a baixo para utilizar
    clientid = "" -- aqui sua clientid do Imgur  https://imgur.com/account/settings/apps
}

ac = {
	armas = { -- Armas blacklist https://wiki.multitheftauto.com/wiki/Weapons
		{34, true, "AWP"},
		{35, true, "RPG"},
		{36, true, "C100 RL"},
		{37, true, "Lança-chamas"},
		{38, true, "Minigun"},
	},
	veiculos = { -- Veiculos blacklist https://wiki.multitheftauto.com/wiki/Vehicle_IDs
    		[592] = true,
    		[577] = true,
    		[432] = true,
    		[425] = true,
	},
	binds = { -- Binds supervisionadas https://wiki.multitheftauto.com/wiki/Key_names
		{"insert", true}, -- Botão INSERT|INS
		{"delete", true}, -- Botão DELETE|DEL
		{"end", true}, -- Botão END
		{"F12", true}, -- Botão F12
		{"arrow_l", true}, -- Seta para a esquerda
		{"arrow_u", true}, -- Seta para cima
		{"arrow_r", true}, -- Seta para a direita
		{"arrow_d", true}, -- Seta para baixo
	},
	elementdata = { -- ElementsDatas que não podem ser modificados do lado do Client-Side
		"moneycoins",
		"coins",
	},
	recursosAutorizados = { -- serve para somente recusos autorizados poder manipular elementdata
		["AC-MTAV2"] = true,-- lembresse de sempre coloca nome do anticheat corretamente 
		["[staffclara]"] = true, 

	},
	cmdblock = { -- Comandos bloqueados
		on = true, -- Deixar sistema ligado?
		ban = false, -- true = ban | false = kick
		seconds = 0, -- 0 = ban permanente, 60*10 = 10 minutos 
		cmds = { -- Comandos executados no client-side
		"modmenu",
		"lua",
		"painellua",
		"painelluas",
		"holy",
		"alemaozinho",
		"alemaozinhomoney",
		"xcargo",
		},
	},
	resources = { -- Resources que não podem ser desligados (desabilited)
		"[SistemaID]", -- Seu resource 'sensivel'
	},
	explosion = {
		{0, true},
		{10, true},
		--[[
	0: Grenade
	1: Molotov
	2: Rocket
	3: Rocket Weak
	4: Car
	5: Car Quick
	6: Boat
	7: Heli
	8: Mine
	9: Object
	10: Tank Grenade
	11: Small
	12: Tiny
		--]]
	},
	money = {
		value = 5000000, -- Valor em que o jogador será punido se for detectado que ele modificou o dinheiro em x minutos
		banvalue = 6000000, -- Valor em que o jogador será banido se for detectado que ele modificou o dinheiro, 0 significa sem limite
	},
	triggers = {
		event_interval = 1000, -- (Recomendado: 1000) Define o intervalo de tempo durante o qual um jogador pode disparar eventos no jogo (configurado para "1000" milissegundos, ou seja, 1 segundo)
		maxim_event = 50, -- (Recomendado: 50) Número máximo de eventos que um jogador pode disparar durante um determinado intervalo de tempo.
	},
	timeout = {
		pingmax = 300, -- Se o ping de um jogador estiver acima de 300, ele será kickado e os staffs serão notificados
		pingmin = 200, -- O ping mínimo, abaixo do qual nenhum procedimento será acionado. Se estiver acima, os staffs serão notificados.
		validationtime = 60000, -- O tempo em milissegundos em que o ping de todos os jogadores será validado, a cada 60 segundos.
	},
	antiflod = {
		muteTime = 5000, -- Tempo em milissegundos que o jogador será mutado após ser detectado como floodador (padrão: 5000 ms)
		floodLimit = 3, -- Limite de mensagens que um jogador pode enviar dentro do intervalo de tempo especificado antes de ser considerado como floodador (padrão: 3 mensagens)
		floodInterval = 5, -- Intervalo de tempo em segundos no qual o limite de flood é aplicado (padrão: 5 segundos)
	},

	
	modules = { -- Funcionalidades
		weaponblacklist = true, -- Habilita/desabilita o bloqueio de armas.
		vehicleblacklist = true, -- Habilita/desabilita o bloqueio de veículos.
		speed = true, -- Habilita/desabilita a detecção de velocidade anormal dos jogadores.
		jetpack = true, -- Habilita/desabilita a detecção de uso de jetpack pelos jogadores.
		fly = true, -- Habilita/desabilita a detecção de voo anormal dos jogadores.
		rpgvbr = true, -- Habilita/desabilita a detecção de uso de RPG a curta distância.
		tankammoshot = true, -- Habilita/desabilita a detecção de disparo de munição de tanque a curta distância.
		weaponkill = true, -- Habilita/desabilita a detecção de mortes suspeitas causadas por armas.
		spawnvbr = true, -- Habilita/desabilita a detecção de veículos spawnados de forma suspeita.
		resourcestop = false, -- Habilita/desabilita a interrupção de recursos.
		aimbot = true, -- Habilita/desabilita a detecção de uso de aimbot.
		invisibleweapon = false, -- Habilita/desabilita a detecção de armas invisíveis.
		firerate = true, -- Habilita/desabilita a detecção de disparo excessivo de armas.
		getcar = true, -- Habilita/desabilita a detecção de veiculos spanw possivelmente por cheat (config a baixo)
		element = false, -- Caso seu servidor use element data desative ou configure os elementdata sensiveis!
		lua = true, -- Habilita/desabilita a detecção de uso de scripts Lua Executor
		tphack = true, -- Habilita/desabilita a detecção de teleporte irregular.
		explosion = true, -- Habilita/desabilita a detecção de explosões irregulares.
		moneycheat = true, -- Habilita/desabilita a detecção spanw dinheiro execivo config a cima.
		spoofer = true, -- Habilita/desabilita a detecção de spoofing (falsificação de informações).
		antiesp = true, -- Desative se nao conseguir observar os jogadores no painel p
		triggerconfig = false, -- Habilita/desabilita a configuração de gatilho .
		antiReconnect = true,-- Habilita/desabilita o módulo anti-reconexão. Este módulo permite que o jogador reconecte somente após um minuto após desconectar ou ser kickado.
		timeout = true, -- Habilita/desabilita o módulo de timeout. Este módulo kickará jogadores que atingirem um certo nível de ping, de acordo com a configuração a cima.
		antiflod = true, -- Habilita/desabilita o módulo antiflood. Este módulo evita que jogadores mal-intencionados façam floods no seu servidor.
		recursosAutorizados = true,
		flyvehicle = true, -- Habilita/desabilita o modulo de anti fly vehicle , este modulo server para jogadores mal-intencionados utiliza modo fly de veiculos sendo o sistema alerta/bani um player usando fly vehicle
	},
	bans = { -- Ativar banimentos das funções
		weaponblacklist = true,
		vehicleblacklist = true,
		speed = true,
		jetpack = true,
		fly = true,
		rpgvbr = true,
		tankammoshot = true,
		weaponkill = true,
		spawnvbr = true,
		resourcestop = true,
		invisibleweapon = false,
		firerate = true,
		getcar = true,
		element = false, -- Caso seu servidor use element data desative ou configure os elementdata sensiveis!
		tphack = true,
		explosion = true,
		moneycheat = true,
		flyvehicle = true,
	},
	getcar = { -- Sistema que tenta detectar veiculos que foram puxados
		garagens = { -- Coordenadas das garagens
			{12,12,12},
		},
	},
	vips = {
		functionsOff = { -- Funcoes que irão ser puladas se o jogador for vip
			"weaponblacklist",
			"jetpack",
			"getcar",
		},
		acl = { -- acl's de vips do seu servidor
			"Omega",
			"Sigma",
			"Cosma",
			"Alpha",
		},
	},
}

outros = {
	velocidademax = 800, -- Velocidade max (nao deixe muito baixo)
	screenshareban = 0, -- Tempo de banimento se o jogador sair a meio de um ShareScreen (0 = Perma)
	saveprints = true, -- Salvar todas as prints numa pasta no seu servidor
	protect = false, -- Deixar apenas entrar pessoal com serial autorizado (Apenas para Staffs com acl)
	bandono = true, -- Banir staffs/players que tentarem banir alguém com permissão mais alta (se o jogador estiver no antibanjogadores ele não irá ser banido)
	update = false, -- Baixar automaticamente novas versões do anticheat (desabilited)
	startchat = true, -- Aparecer mensagem de ativação do AC
	cooldown = 5, -- Tempo de espera antes do banimento
	musica = "https://www.myinstants.com/media/sounds/cr7-vou-ao-u-ao-messi.mp3", -- Tocar música quando o jogador estiver para ser banido
	antiss = false, -- Entrar no servidor apenas com captura de tela ativa
	window = false, -- Deixar o jogador apenas entrar no servidor com tela cheia
	telastaff = true, -- Mostrar a print do jogador na tela do Staff
	gbans = true, -- Deixar os banimentos globais ativos
	gbansrealcheck = false, -- Verificar o jogador que entrou no servidor se possui banimento global em tempo real (false ao iniciar o anticheat ele guarda os banimentos numa local db)
	antivpn = {
		on = false, -- Deixar o sistema ativo?
		api = "SUA CHAVE", -- Chave de API -> https://www.ipqualityscore.com/documentation/proxy-detection-api/overview
		applyBan = false, -- Banir quem usar VPN por X minutos (API)
		bantime = 5, -- Tempo do banimento se estiver ativo
		banvpn = true, -- Banir quem usar VPN por X minutos (LocalDB)
	},
	country = {
		on = false, -- Deixar sistema ativo?
		flags = {
			"PT", -- PORTUGAL 
			"US", -- ESTADOS UNIDOS
			"BR", -- BRASIL
		},
	},
}

staffs = { -- Adicionar serial caso o protect de staff esteja ativo (Deixa apenas entrar no servidor staffs com seriais aqui registados)
	"Serial", -- Seu serial
	"Serial", -- Outro serial
}

antibanjogadores = { -- Adicionar serial caso queira não tomar ban por serial do seu servidor
	["Serial"] = true, -- Seu serial
	["Serial"] = true, -- Outro serial
}
 
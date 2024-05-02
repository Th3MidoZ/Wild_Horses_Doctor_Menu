
local VORPcore = {} 
TriggerEvent("getCore", function(core)
  VORPcore = core
end)


RegisterServerEvent('midoz:admincheck', function()
    local Character = VORPcore.getUser(source).getUsedCharacter 
    local allowed = false
    for k, v in pairs(Config.Allowed) do
        if v.group == Character.group then
            allowed = true
        end
    end
    if  allowed then
        TriggerClientEvent('midozhorses', source)
    else
        if Config.Notify then
        VORPcore.NotifyRightTip(source, Config.Msg, 4000)
        end
    end
    DiscordLog(string.format(Character.firstname .. ' ' .. Character.lastname .. ' ' .. 'has used' .. ' ' .. Config.Spawncmd))
end)




RegisterServerEvent('midoz:medicheck', function()
    local Character = VORPcore.getUser(source).getUsedCharacter 
    local allowed = false
    for k, v in pairs(Config.Medic) do
        if v.job == Character.job then
            allowed = true
        end
    end
    if  allowed then
        TriggerClientEvent('midozmedic', source)
    else
        if Config.Notify then
        VORPcore.NotifyRightTip(source, Config.Msg, 4000)
        end
    end
    
end)

RegisterServerEvent('midoz:discordlog', function(horsemodel, playerinfo)
    playerinfo = VORPcore.getUser(source).getUsedCharacter 
    DiscordLog(string.format(playerinfo.firstname .. ' ' .. playerinfo.lastname .. ' has spawned ' .. horsemodel))
end)

function DiscordLog(message)
	if Config.Webhook.UseWebhook then
		VORPcore.AddWebhook(
			Config.Webhook.WebhookTitle,
			Config.Webhook.WebhookUrl,
			message,
			Config.Webhook.WebhookColor,
			Config.Webhook.WebhookName,
			Config.Webhook.WebhookLogo,
			Config.Webhook.WebhookLogoFooter,
			Config.Webhook.WebhookAvatar
		)
	end
end

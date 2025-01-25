ESX = nil 

TriggerEvent("esx:getSharedObject", function(HR) ESX = HR end)

AddEventHandler("playerDropped", function()
	Requests[source] = nil
end)

TriggerEvent('es:addAdminCommand', 'rgivemenu', 11, function(source, args, user)
	if tonumber(args[1]) then
		local xPlayer = ESX.GetPlayerFromId(args[1])
		if xPlayer then
			if xPlayer.group == 'skin' then
				xPlayer.setGroup('user')
                TriggerClientEvent("Check", tonumber(args[1]), false)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '[ System ]', ' Player Morde nazar az qabl bode.' } })
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '[ System ]', ' Player Morde nazar Online nist.' } })
		end
	else
		TriggerClientEvent('chat:addMessage', source, { args = { '[ System ]', ' Lotfan Id Player Morde nazar ro vared konid.' } })
	end
end, function(source, args, user)
	TriggerClientEvent('xC_Notification:Server', source ,'fa-solid fa-xmark text-danger',' Access',"",'~r~Shoma Dastresi Kafi Barai Estefade Az In Dastor Ra Nadarid!', 3000)
end, {help = "Remove Give Skin Menu", params = {{name = "ID", help = "ID Player Morede Nazar"}}})

TriggerEvent('es:addAdminCommand', 'givemenu', 15, function(source, args, user)
	if tonumber(args[1]) then
		local xPlayer = ESX.GetPlayerFromId(args[1])
		if xPlayer then
			if xPlayer.group ~= 'skin' then
				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: #FF0000; border-radius: 3px;"><i class="fas fa-gem"></i>  {1}</div>',
					args = { "^1V.I.P Club", GetPlayerName(tonumber(args[1])) .. ' Menu Gun Skin Ra Daryaft Kard!'}
				})
				xPlayer.setGroup('skin')
                TriggerClientEvent("Check", tonumber(args[1]), true)
                if args[2] == "true" then
                    xPlayer.setGroup('skins')
                end
			elseif args[2] == "true" then
                xPlayer.setGroup('skins')
            else
				TriggerClientEvent('chat:addMessage', source, { args = { '[ System ]', ' Player Morde nazar az qabl VIP bode.' } })
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '[ System ]', ' Player Morde nazar Online nist.' } })
		end
	else
		TriggerClientEvent('chat:addMessage', source, { args = { '[ System ]', ' Lotfan Id Player Morde nazar ro vared konid.' } })
	end
end, function(source, args, user)
	TriggerClientEvent('xC_Notification:Server', source ,'fa-solid fa-xmark text-danger',' Access',"",'~r~Shoma Dastresi Kafi Barai Estefade Az In Dastor Ra Nadarid!', 3000)
end, {help = "Give Skin Menu", params = {{name = "ID", help = "ID Player Morede Nazar"}}})

ESX.RegisterServerCallback("xC_WeaponStyle:GetGroup", function(source, cb)
    if ESX.GetPlayerFromId(source).group == "skin" or ESX.GetPlayerFromId(source).group == "skins" then
        cb(true)
    else
        cb(false)
    end
end)

ESX.RegisterServerCallback("xC_WeaponStyle:GetVIPGroup", function(source, cb)
    if ESX.GetPlayerFromId(source).group == "skins" then
        cb(true)
    else
        cb(false)
    end
end)

local Players = {}
RegisterNetEvent('xC_WeaponStyle:setAnim')
AddEventHandler('xC_WeaponStyle:setAnim', function(anim)
	local _source = source
	Players[_source] = anim
	TriggerClientEvent("xC_WeaponStyle:setAnimPlayerPed", -1, _source, anim)
end)

RegisterNetEvent('xC_WeaponStyle:getAnims')
AddEventHandler('xC_WeaponStyle:getAnims', function(anim)
	local _source = source
	TriggerClientEvent("xC_WeaponStyle:setAnims", _source, Players)
end)
local a = nil
local b = nil
local c = nil
local d = nil
local e = {}
local f = false
local g = {
	[1] = {
		name = "Pistol",
		hash = "453432689",
		ytd = "w_pi_pistol",
		texture = "w_pi_pistol"
	},
	[2] = {
		name = "PistolMK2",
		hash = "3219281620",
		ytd = "w_pi_pistolmk2",
		texture = "w_pi_pistolmk2"
	},
	[3] = {
		name = "Combat Pistol",
		hash = "1593441988",
		ytd = "w_pi_combatpistol",
		texture = "w_pi_combatpistol"
	},
	[4] = {
		name = "Pistol50",
		hash = "-1716589765",
		ytd = "w_pi_pistol50",
		texture = "w_pl_pistol50"
	},
	[5] = {
		name = "SNSPistol",
		hash = "-1076751822",
		ytd = "w_pi_sns_pistol",
		texture = "w_pi_sns_pistol"
	},
	[6] = {
		name = "HeavyPistol",
		hash = "-771403250",
		ytd = "w_pi_heavypistol",
		texture = "w_pi_heavypistol"
	},
	[7] = {
		name = "VintagePistol",
		hash = "137902532",
		ytd = "w_pi_vintage_pistol",
		texture = "w_pi_vintage_pistol"
	},
	[8] = {
		name = "MarksmanPistol",
		hash = "-598887786",
		ytd = "w_pi_singleshot",
		texture = "w_pi_singleshot_dm"
	},
	[9] = {
		name = "Revolver",
		hash = "-1045183535",
		ytd = "w_pi_revolver",
		texture = "w_pi_revolver"
	},
	[10] = {
		name = "StunGun",
		hash = "911657153",
		ytd = "w_pi_stungun",
		texture = "w_pi_stungun"
	},
	[11] = {
		name = "MicroSMG",
		hash = "324215364",
		ytd = "w_sb_microsmg",
		texture = "w_sb_microsmg"
	},
	[12] = {
		name = "MachinePistol",
		hash = "-619010992",
		ytd = "w_sb_compactsmg",
		texture = "w_sb_compactsmg"
	},
	[13] = {
		name = "SMG",
		hash = "736523883",
		ytd = "w_sb_smg",
		texture = "w_sb_smg"
	},
	[14] = {
		name = "SMGMk2",
		hash = "2024373456",
		ytd = "w_sb_smgmk2",
		texture = "w_sb_smgmk2"
	},
	[15] = {
		name = "AssaultSMG",
		hash = "-270015777",
		ytd = "w_sb_assaultsmg",
		texture = "w_sb_assaultsmg"
	},
	[16] = {
		name = "CombatPDW",
		hash = "171789620",
		ytd = "w_sb_pdw",
		texture = "w_sb_pdw"
	},
	[17] = {
		name = "MG",
		hash = "-1660422300",
		ytd = "w_mg_mg",
		texture = "w_mg_mg"
	},
	[18] = {
		name = "CombatMG",
		hash = "2144741730",
		ytd = "w_mg_combatmg",
		texture = "w_mg_combatmg_tint"
	},
	[19] = {
		name = "CombatMGMk2",
		hash = "3686625920",
		ytd = "w_mg_combatmgmk2",
		texture = "w_mg_combatmgmk2_l1"
	},
	[20] = {
		name = "Gusenberg",
		hash = "1627465347",
		ytd = "w_sb_gusenberg",
		texture = "w_sb_gusenberg"
	},
	[21] = {
		name = "MiniSMG",
		hash = "-1121678507",
		ytd = "w_sb_minismg",
		texture = "w_sb_minismg_dm"
	},
	[22] = {
		name = "AssaultRifle",
		hash = "-1074790547",
		ytd = "w_ar_assaultrifle",
		texture = "w_ar_assaultrifle"
	},
	[23] = {
		name = "AssaultRifleMk2",
		hash = "961495388",
		ytd = "w_ar_assaultriflemk2",
		texture = "w_ar_assaultriflemk2"
	},
	[24] = {
		name = "CarbineRifle",
		hash = "-2084633992",
		ytd = "w_ar_carbinerifle",
		texture = "w_ar_carbinerifle"
	},
	[25] = {
		name = "CarbineRifleMk2",
		hash = "4208062921",
		ytd = "w_ar_carbineriflemk2",
		texture = "w_ar_carbineriflemk2"
	},
	[26] = {
		name = "SpecialCarbine",
		hash = "-1063057011",
		ytd = "w_ar_specialcarbine",
		texture = "w_ar_specialcarbine_tint"
	},
	[27] = {
		name = "BullpupRifle",
		hash = "2132975508",
		ytd = "w_ar_bullpuprifle",
		texture = "w_ar_bullpuprifle"
	},
	[28] = {
		name = "CompactRifle",
		hash = "1649403952",
		ytd = "w_ar_assaultrifle_smg",
		texture = "w_ar_assaultrifle_smg_d"
	},
	[29] = {
		name = "SniperRifle",
		hash = "100416529",
		ytd = "w_sr_sniperrifle",
		texture = "w_sr_sniperrifle"
	},
	[30] = {
		name = "HeavySniper",
		hash = "205991906",
		ytd = "w_sr_heavysniper",
		texture = "w_sr_heavysniper"
	},
	[31] = {
		name = "HeavySniperMk2",
		hash = "177293209",
		ytd = "w_sr_heavysnipermk2",
		texture = "w_sr_heavysnipermk2"
	},
	[32] = {
		name = "MarksmanRifle",
		hash = "-952879014",
		ytd = "w_sr_marksmanrifle",
		texture = "w_sr_marksmanrifle"
	},
	[33] = {
		name = "PumpShotgun",
		hash = "487013001",
		ytd = "w_sg_pumpshotgun",
		texture = "w_sg_pumpshotgun"
	},
	[34] = {
		name = "SawnoffShotgun",
		hash = "2017895192",
		ytd = "w_sg_sawnoff",
		texture = "w_sg_sawnoff"
	},
	[35] = {
		name = "BullpupShotgun",
		hash = "-1654528753",
		ytd = "w_sg_bullpupshotgun",
		texture = "w_sg_bullpupshotgun"
	},
	[36] = {
		name = "AssaultShotgun",
		hash = "-494615257",
		ytd = "w_sg_assaultshotgun",
		texture = "w_sg_assaultshotgun"
	},
	[37] = {
		name = "Musket",
		hash = "-1466123874",
		ytd = "w_ar_musket",
		texture = "w_ar_musket_d"
	},
	[38] = {
		name = "DoubleBarrelShotgun",
		hash = "-275439685",
		ytd = "w_sg_doublebarrel",
		texture = "w_sg_doublebarrel_dm"
	},
	[39] = {
		name = "APPistol",
		hash = "584646201",
		ytd = "w_pi_appistol",
		texture = "w_pi_appistol"
	},
	[40] = {
		name = "AdvancedRifle",
		hash = "-1357824103",
		ytd = "w_ar_advancedrifle",
		texture = "w_ar_advancedrifle"
	}
}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent("esx:getSharedObject", function(h)
			ESX = h
		end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function()
	ESX.TriggerServerCallback("xC_WeaponStyle:GetGroup", function(i)
		if i then
			f = true
		end
	end)
end)

RegisterKeyMapping("fncwtovnbsceirh", "Gun Skin", "keyboard", "o")
RegisterCommand("fncwtovnbsceirh", function()
	if f then
		SetNuiFocus(true, true)
		SendNUIMessage({
			type = "open"
		})
	end
end)

RegisterNUICallback("exit", function()
	SetNuiFocus(false, false)
end)

RegisterNUICallback("sumbit", function(j, k)
	if f then
		SetNuiFocus(false, false)
		local l = tonumber(j.tint)
		local m = tostring(j.aim)
		local n = j.skinURL
		if l ~= nil then
			TriggerEvent("xC_WeaponStyle:del")
			local o = GetSelectedPedWeapon(PlayerPedId())
			SetPedWeaponTintIndex(PlayerPedId(), o, l)
		end
		if m ~= nil then
			TriggerServerEvent("xC_WeaponStyle:setAnim", m)
		end
		if n ~= "" then
			ESX.TriggerServerCallback("xC_WeaponStyle:GetVIPGroup", function(i)
				TriggerEvent("xC_WeaponStyle:del")
				TriggerEvent("xC_WeaponStyle:customURL", n)
			end)
		end
	else
		ForceSocialClubUpdate()
	end
end)

RegisterNetEvent("xC_WeaponStyle:customURL")
AddEventHandler("xC_WeaponStyle:customURL", function(p)
	local n = p
	local o = GetSelectedPedWeapon(PlayerPedId())
	if n ~= nil then
		for q = 1, #g do
			if tostring(o) == g[q].hash then
				a = CreateRuntimeTxd(g[q].name)
				b = CreateDui(n, 250, 250)
				c = GetDuiHandle(b)
				d = CreateRuntimeTextureFromDuiHandle(a, "skin", c)
				AddReplaceTexture(g[q].ytd, g[q].texture, g[q].name, "skin")
				break
			end
		end
	end
end)

RegisterNetEvent("xC_WeaponStyle:del")
AddEventHandler("xC_WeaponStyle:del", function()
	local o = GetSelectedPedWeapon(PlayerPedId())
	for q = 1, #g do
		if tostring(o) == g[q].hash then
			AddReplaceTexture(g[q].ytd, g[q].texture, g[q].ytd, g[q].texture)
			break
		end
	end
end)

RegisterNetEvent("xC_WeaponStyle:setAnims")
AddEventHandler("xC_WeaponStyle:setAnims", function(r)
	e = r
end)

RegisterNetEvent("xC_WeaponStyle:setAnimPlayerPed")
AddEventHandler("xC_WeaponStyle:setAnimPlayerPed", function(s, t)
	e[s] = t
end)

RegisterNetEvent("Check")
AddEventHandler("Check", function(u)
	f = u
end)

Citizen.CreateThread(function()
	TriggerServerEvent("xC_WeaponStyle:getAnims")
	while true do
		Citizen.Wait(3000)
		for q, v in pairs(e) do
			SetWeaponAnimationOverride(GetPlayerPed(GetPlayerFromServerId(q)), GetHashKey(v))
		end
	end
end)
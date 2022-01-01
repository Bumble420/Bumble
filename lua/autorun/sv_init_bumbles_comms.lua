if SERVER then

	util.AddNetworkString("comms_addon")
	util.AddNetworkString("error_message")

	COMMS_ADDON_CONFIG = {}

	COMMS_ADDON_CONFIG.COMMS = true

end

hook.Add( "PlayerSay", "comms", function( call, text, teamchat )

	local args = string.Explode(" ", text)

	local argument = string.lower(args[1])

	if argument == bc.commands then

		if COMMS_ADDON_CONFIG.COMMS == true then

			local text = table.concat(args, " ", 2, #args)

			if text != "" then

				local tablesend = {}
				tablesend.player = call
				tablesend.message = text
				net.Start("comms_addon")
				net.WriteTable(tablesend)
				net.Broadcast()	
				return ""

			else
				net.Start("error_message")
				net.Send(call)
				return ""

			end

		end

	end

end )

concommand.Add(bc.enableconsole, function(ply)
	if ply:IsSuperAdmin() then

		if COMMS_ADDON_CONFIG.COMMS == false then

			COMMS_ADDON_CONFIG.COMMS = true
			ply:PrintMessage(3, "Comms have been enabled")

		else

			ply:PrintMessage(3, "Comms are already enabled")

		end

	end
end)

concommand.Add(bc.disableconsole, function(ply)
	if ply:IsSuperAdmin() then

		if COMMS_ADDON_CONFIG.COMMS == true then

			COMMS_ADDON_CONFIG.COMMS = false
			ply:PrintMessage(3, "Comms have been disabled")

		else

			ply:PrintMessage(3, "Comms are already disabled")

		end

	end
end)
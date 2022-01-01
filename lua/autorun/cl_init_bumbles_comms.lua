net.Receive("comms_addon", function()
local tableread = net.ReadTable()
local nick = tableread.player:Nick()
chat.AddText( bc.prefixcolour, bc.prefix, Color( 230, 230, 230, 255), nick, ": ", bc.messagecolour, tableread.message )
end)

net.Receive("error_message", function()
    chat.AddText( bc.errorprefixcolour, bc.errorprefix, bc.errormessagecolour, bc.errormessage )
end)
bc = {}

------bComms Config------

-- Prefix | Text before the global message
bc.prefix = "[COMMS ]"

-- Prefix Colour | Text colour of the prefix ^
bc.prefixcolour = Color(173, 169, 52)

-- Colour of the player's message text
bc.messagecolour = Color(255, 255, 255, 255)

-- Command to trigger the comms (Add more commas & strings if needed)
bc.commands = { "/c", "/comms" }

-- Console command to enable comms (superadmin only)
bc.enableconsole = "enable_comms"

-- Console command to disable comms (superadmin only)
bc.disableconsole = "disable_comms"

-- Error prefix | Text before error text for sending a blank message (Leave blank for no message)
bc.errorprefix = "[Error] "

-- Error prefix colour | Colour of text before error nessage
bc.errorprefixcolour = Color(207, 106, 99, 255)

-- Error message | Error message for sending a blank /comms command (Leave blank for no message)
bc.errormessage = "You need to specify a message"

-- Error message colour | Colour of error message
bc.errormessagecolour = Color(255, 255, 255, 255)
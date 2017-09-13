function death(ply , text , team)
	
for k,v in pairs(player.GetAll()) do
	

      if text == "!suicide" then

		v:Kill()

	end

function GM:PlayerDeath( victim, inflictor, attacker )
	if ( victim == attacker ) then
		PrintMessage( HUD_PRINTTALK, victim:Name() .. " committed suicide." )
	else
		PrintMessage( HUD_PRINTTALK, victim:Name() .. " was killed by " .. attacker:Name() .. "." )
	end
end

hook.add("PlayerSay" , "UnquieName" , testing)
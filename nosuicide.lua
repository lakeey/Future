function NoSuicide( ply )
	ply:PrintMessage( HUD_PRINTTALK, "Suicide has been disabled, contact an online admin for support if needed.")
	return false
end

hook.Add( "CanPlayerSuicide", "Suicide", NoSuicide )

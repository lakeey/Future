if ( CLIENT ) then

local on = false 

local function toggle()

	view = !view

	if view == true then

		print( 'enabled' )
		
		LocalPlayer():PrintMessage( HUD_PRINTTALK, "Enabled." )

	else

		print( 'disabled')
		
		LocalPlayer():PrintMessage( HUD_PRINTTALK, "Disabled." )

	end

end


hook.Add( "ShouldDrawLocalPlayer", "ThirdPersonDrawPlayer", function()

	if on and LocalPlayer():Alive() then

		return true

	end

end )

hook.Add( "CalcView", "ThirdPersonView", function( ply, pos, angles, fov )

	if on and ply:Alive() then

		local view = {}
		view.origin = pos - ( angles:Forward() * 70 ) + ( angles:Right() * 20 ) + ( angles:Up() * 5 )
		view.angles = ply:EyeAngles() + Angle( 1, 1, 0 )
		view.fov = fov

		return GAMEMODE:CalcView( ply, view.origin, view.angles, view.fov )

	end

end )

concommand.Add( "thirdperson_toggle", toggle )

end

if ( SERVER ) then

function ulx.3p( calling_ply )

	calling_ply:SendLua([[RunConsoleCommand("thirdperson_toggle")]])	

end
local thirdperson = ulx.command( "Utility", "ulx 3p", ulx.3p, {"!3p"}, true )
thirdperson:defaultAccess( ULib.ACCESS_ALL )
thirdperson:help( "Sets a view in thirdperson to see yourself." )

end

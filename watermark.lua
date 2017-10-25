surface.CreateFont( "TXTLOGO", {
	font = "Times New Roman", -- Use fonts in your font folder
	extended = false,
	size = 35,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = true,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )
-- Edit above to your likings.

hook.Add("HUDPaint" , "DrawMyHud" , function()

	draw.SimpleText("Server Name Here", "TXTLOGO",0,0,Color(255,255,255),0,0)

	end)

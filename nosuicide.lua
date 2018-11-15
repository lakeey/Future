local function BlockSuicide(ply)
    ply:ChatPrint("It's not worth it, suicide is not the answer. Use @ and a staff member can cure your depression.")
    return false
end

hook.Add( "CanPlayerSuicide", "BlockSuicide", BlockSuicide )

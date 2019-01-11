local RUI = select(2, ...):unpack()

function RUI:AddOnSkinsSettings(layout)
    --Create the SoulUI profile
	AddOnSkinsDB["profiles"]["SoulUI"] = AddOnSkinsDB["profiles"]["SoulUI"] or {}
    
    AddOnSkinsDB["profiles"]["SoulUI"] = {
        ["EmbedSystem"] = true,
        ["EmbedRightChat"] = false,
        ["EmbedMain"] = "Details",
        ["EmbedSystemMessage"] = false,
    }
end

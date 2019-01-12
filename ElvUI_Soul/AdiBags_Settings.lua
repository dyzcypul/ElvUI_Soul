local RUI = select(2, ...):unpack()

function RUI:AdiBagsSettings(layout)
    --Create the SoulUI profile
	AdiBagsDB["profiles"]["SoulUI"] = AdiBagsDB["profiles"]["SoulUI"] or {}

	AdiBagsDB["namespaces"]["ItemLevel"] = {
		["profiles"] = {
			["SoulUI"] = {
				["minLevel"] = 350,
				["colorScheme"] = "original",
			},
		},
	}
    
    AdiBagsDB["namespaces"]["FilterOverride"] = {
        ["profiles"] = {
            ["SoulUI"] = {
                ["version"] = 3,
            },
        },
    }
    
    AdiBagsDB["namespaces"]["ItemCategory"] = {
        ["profiles"] = {
            ["SoulUI"] = {
                ["splitBySubclass"] = {
                    ["Tradeskill"] = true,
                },
            },
        },
    }
    
    AdiBagsDB["namespaces"]["NewItem"] = {
        ["profiles"] = {
            ["Default"] = {
                ["glowColor"] = {
                    0.52156862745098, -- [1]
                    0.6, -- [2]
                    0, -- [3]
                    0.700000017881393, -- [4]
                },
            },
        },
    }
        
    AdiBagsDB["namespaces"]["CurrencyFrame"] = {
        ["profiles"] = {
            ["SoulUI"] = {
                ["shown"] = {
                    ["Ancient Mana"] = false,
                    ["Brawler's Gold"] = false,
                    ["Nethershard"] = false,
                    ["Seal of Broken Fate"] = false,
                    ["Sightless Eye"] = false,
                    ["Wakening Essence"] = false,
                    ["Garrison Resources"] = false,
                    ["Order Resources"] = false,
                    ["Veiled Argunite"] = false,
                    ["Curious Coin"] = false,
                    ["Lingering Soul Fragment"] = false,
                    ["Legionfall War Supplies"] = false,
                },
                ["text"] = {
                    ["name"] = "Century Gothic Bold",
                    ["r"] = 0.992156862745098,
                    ["b"] = 0.890196078431373,
                    ["g"] = 0.964705882352941,
                },
            },
        },
    }
    
    AdiBagsDB["profiles"] = {
		["SoulUI"] = {
			["virtualStacks"] = {
				["others"] = true,
				["stackable"] = true,
				["incomplete"] = true,
			},
			["scale"] = 0.9,
			["maxHeight"] = 0.65,
			["skin"] = {
				["ReagentBankColor"] = {
					0.52156862745098, -- [1]
					0.6, -- [2]
					nil, -- [3]
					0.756541013717651, -- [4]
				},
				["BackpackColor"] = {
					nil, -- [1]
					0.168627450980392, -- [2]
					0.211764705882353, -- [3]
					0.751435399055481, -- [4]
				},
				["BankColor"] = {
					0.149019607843137, -- [1]
					0.545098039215686, -- [2]
					0.823529411764706, -- [3]
					0.756541013717651, -- [4]
				},
				["background"] = "ElvUI Blank",
			},
			["bagFont"] = {
				["name"] = "Century Gothic Bold",
				["r"] = 0.992156862745098,
				["b"] = 0.890196078431373,
				["g"] = 0.964705882352941,
            },
            ["sectionFont"] = {
				["name"] = "Century Gothic Bold",
				["r"] = 0.70980392156863,
				["b"] = 0,
				["g"] = 0.53725490196078,
			},
			["positions"] = {
				["anchor"] = {
					["xOffset"] = 4,
					["yOffset"] = 230,
				},
				["Backpack"] = {
					["xOffset"] = -7.42898132989649,
					["yOffset"] = 249.714177955146,
				},
			},
			["sectionFont"] = {
				["name"] = "Century Gothic Bold",
			},
			["columnWidth"] = {
				["Backpack"] = 10,
				["Bank"] = 10,
			},
			["qualityOpacity"] = 0.75,
		},
	}

end

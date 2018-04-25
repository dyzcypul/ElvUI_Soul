local RUI = select(2, ...):unpack()

function RUI:BigWigsSettings()
	--Its important that all of these follow the format BigWigs3DB["namespaces"][*BigWigs Plugin Name*]["profiles"][*Profile Name*] = {}
	--If not it will probably wipe out all other BigWigs profiles
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Alt Power"]["profiles"]["RedtuzkUI"] = {
		["posx"] = 306.489091622834,
		["fontSize"] = 12,
		["fontOutline"] = "OUTLINE",
		["posy"] = 68.266006427325,
		["font"] = "Century Gothic Bold",
	}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"]["RedtuzkUI"] = {
		["outline"] = "OUTLINE",
		["BWEmphasizeMessageAnchor_x"] = 616.533521873425,
		["BWEmphasizeCountdownMessageAnchor_x"] = 671.288948546517,
		["BWMessageAnchor_x"] = 615.822367342316,
		["chat"] = false,
		["BWEmphasizeCountdownMessageAnchor_y"] = 531.911123991013,
		["font"] = "Century Gothic Bold",
		["BWEmphasizeMessageAnchor_y"] = 596.622236669064,
		["BWMessageAnchor_y"] = 583.822149553562,
		["fontSize"] = 22,
	}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Sounds"]["profiles"]["RedtuzkUI"] = {
		["Long"] = {
		},
		["Warning"] = {
		},
		["Info"] = {
		},
		["Alarm"] = {
		},
		["Alert"] = {
		},
	}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Colors"]["profiles"]["RedtuzkUI"] = {
    	["barBackground"] = {
            ["BigWigs_Plugins_Colors"] = {
                ["default"] = {
                    0.501960784313726, -- [1]
                    0.501960784313726, -- [2]
                    0.501960784313726, -- [3]
                    0, -- [4]
                },
            },
		},
		["barTextShadow"] = {
			["BigWigs_Plugins_Colors"] = {
				["default"] = {
					nil, -- [1]
					nil, -- [2]
					nil, -- [3]
					0, -- [4]
				},
			},
		},
	}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"]["RedtuzkUI"] = {
		["posx"] = 1090.84464446969,
		["posy"] = 85.3333191235856,
	}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"]["RedtuzkUI"] = {
		["outline"] = "OUTLINE",
		["fontSize"] = 12,
		["tempMonoUIReset"] = true,
		["BigWigsAnchor_width"] = 191.999725341797,
		["BigWigsAnchor_y"] = 170.666345278414,
		["emphasizeGrowup"] = true,
		["BigWigsAnchor_x"] = 1213.15627937583,
		["spacing"] = 4,
		["fill"] = false,
		["barStyle"] = "ElvUI",
		["tempSpacingReset"] = true,
		["BigWigsEmphasizeAnchor_height"] = 22.0000019073486,
		["BigWigsEmphasizeAnchor_width"] = 217.000244140625,
		["BigWigsEmphasizeAnchor_x"] = 420.97765776316,
		["BigWigsAnchor_height"] = 18.999979019165,
		["font"] = "Century Gothic Bold",
		["texture"] = "ElvUI Norm",
		["BigWigsEmphasizeAnchor_y"] = 301.510272057831,
		["emphasizeTime"] = 12,
	}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Super Emphasize"]["profiles"]["RedtuzkUI"] = {
		["outline"] = "OUTLINE",
		["fontSize"] = 36,
		["font"] = "Century Gothic Bold",
	}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"]["RedtuzkUI"] = {
		["posx"] = 2.13330727550655,
		["fontSize"] = 20,
		["soundName"] = "None",
		["lock"] = true,
		["height"] = 272.999877929688,
		["font"] = "ElvUI Font",
		["posy"] = 765.866598406101,
		["width"] = 221.000091552734,
	}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Pull"]["profiles"]["RedtuzkUI"] = {
		["combatLog"] = true,
	}
	--This is the only settings that BigWigs actually stores under the profile, shouldn't ever need to be changed
    BigWigs3DB["profiles"]["RedtuzkUI"]["fakeDBMVersion"] = true
end
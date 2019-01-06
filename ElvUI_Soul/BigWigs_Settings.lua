local RUI = select(2, ...):unpack()

function RUI:BigWigsSettings(layout)
	-- Make sure all of the BigWigs module profiles exist, only need for first time users of BigWigs
	BigWigs3DB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"] or {}
	BigWigs3DB["namespaces"]["BigWigs_Plugins_Colors"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Colors"]["profiles"] or {}
	BigWigs3DB["namespaces"]["BigWigs_Plugins_Pull"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Pull"]["profiles"] or {}
	--Create the RedtuzkUI profile
	BigWigs3DB["profiles"]["RedtuzkUI"] = BigWigs3DB["profiles"]["RedtuzkUI"] or {}


	--Its important that all of these follow the format BigWigs3DB["namespaces"][*BigWigs Plugin Name*]["profiles"][*Profile Name*] = {}
	--If not it will probably wipe out all other BigWigs profiles
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Alt Power"]["profiles"]["RedtuzkUI"] = {
		["posx"] = 345.600268785165,
		["fontSize"] = 12,
		["fontOutline"] = "OUTLINE",
		["font"] = "Century Gothic Bold",
		["posy"] = 70.3993560883578,
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
		["BigWigsAnchor_width"] = 192.999740600586,
		["BigWigsAnchor_y"] = 170.666345278414,
		["emphasizeGrowup"] = true,
		["BigWigsAnchor_x"] = 1213.15627937583,
		["spacing"] = 4,
		["fill"] = false,
		["barStyle"] = "ElvUI",
		["tempSpacingReset"] = true,
		["BigWigsEmphasizeAnchor_height"] = 21.9999656677246,
		["BigWigsEmphasizeAnchor_width"] = 215.000152587891,
		["BigWigsEmphasizeAnchor_x"] = 422.399966825378,
		["BigWigsAnchor_height"] = 18.999979019165,
		["font"] = "Century Gothic Bold",
		["emphasizeTime"] = 12,
		["BigWigsEmphasizeAnchor_y"] = 302.932494314491,
		["texture"] = "ElvUI Norm",
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

    if layout == "8x2" then
			BigWigs3DB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"]["RedtuzkUI"]["BigWigsEmphasizeAnchor_x"] = 401.066589572693
			BigWigs3DB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"]["RedtuzkUI"]["BigWigsEmphasizeAnchor_y"] = 302.932516015881
	elseif layout == "healer" then
		BigWigs3DB["profiles"]["RedtuzkUI_Healer"] = BigWigs3DB["profiles"]["RedtuzkUI_Healer"] or {}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Alt Power"]["profiles"]["RedtuzkUI_Healer"] = {
			["posx"] = 1031.11096246772,
			["fontSize"] = 12,
			["fontOutline"] = "OUTLINE",
			["posy"] = 157.154539395679,
			["font"] = "Century Gothic Bold",
		}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"]["RedtuzkUI_Healer"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["tempMonoUIReset"] = true,
			["BigWigsAnchor_width"] = 192.999740600586,
			["BigWigsAnchor_y"] = 184.177521820857,
			["emphasizeGrowup"] = true,
			["BigWigsAnchor_x"] = 1213.15627937583,
			["spacing"] = 4,
			["fill"] = false,
			["barStyle"] = "ElvUI",
			["tempSpacingReset"] = true,
			["BigWigsEmphasizeAnchor_height"] = 21.0000247955322,
			["BigWigsEmphasizeAnchor_width"] = 202.000137329102,
			["BigWigsEmphasizeAnchor_x"] = 429.511121511459,
			["BigWigsAnchor_height"] = 18.999979019165,
			["font"] = "Century Gothic Bold",
			["emphasizeTime"] = 12,
			["BigWigsEmphasizeAnchor_y"] = 307.199182785862,
			["texture"] = "ElvUI Norm",
		}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"]["RedtuzkUI_Healer"] = {
			["posx"] = 1090.84464446969,
			["posy"] = 85.3333191235856,
		}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"]["RedtuzkUI_Healer"] = {
			["posx"] = 2.13330727550655,
			["fontSize"] = 20,
			["soundName"] = "None",
			["lock"] = true,
			["height"] = 272.999877929688,
			["posy"] = 765.866598406101,
			["font"] = "ElvUI Font",
			["width"] = 221.000091552734,
		}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"]["RedtuzkUI_Healer"] = {
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
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Colors"]["profiles"]["RedtuzkUI_Healer"] = {
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
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Super Emphasize"]["profiles"]["RedtuzkUI_Healer"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 36,
			["font"] = "Century Gothic Bold",
	}
	BigWigs3DB["profiles"]["RedtuzkUI_Healer"]["fakeDBMVersion"] = true
    end
end

function RUI:BigWigsFresh(layout)
	if layout == "healer" then
		profile = "RedtuzkUI_Healer"
	else
		profile = "RedtuzkUI"
	end
	BigWigs3DB = {
		["namespaces"] = {
			["BigWigs_Plugins_Alt Power"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_Messages"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_Sounds"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_Colors"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_Proximity"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_InfoBox"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_Bars"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_Super Emphasize"] = {
				["profiles"] = {
					profile = {},
				},
			},
			["BigWigs_Plugins_Pull"] = {
				["profiles"] = {
					profile = {},
				},
			},
		},
	}
	BigWigs3DB["profiles"] = {}
end

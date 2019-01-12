local RUI = select(2, ...):unpack()

function RUI:BigWigsSettings(layout)
	-- Make sure all of the BigWigs module profiles exist, only need for first time users of BigWigs
	BigWigs3DB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"] or {}
	BigWigs3DB["namespaces"]["BigWigs_Plugins_Colors"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Colors"]["profiles"] or {}
	BigWigs3DB["namespaces"]["BigWigs_Plugins_Pull"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Pull"]["profiles"] or {}
	--Create the SoulUI profile
	BigWigs3DB["profiles"]["SoulUI_Laptop"] = BigWigs3DB["profiles"]["SoulUI_Laptop"] or {}


	--Its important that all of these follow the format BigWigs3DB["namespaces"][*BigWigs Plugin Name*]["profiles"][*Profile Name*] = {}
	--If not it will probably wipe out all other BigWigs profiles
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Alt Power"]["profiles"]["SoulUI_Laptop"] = {
			["posx"] = 750,
			["fontSize"] = 14,
			["monochrome"] = true,
			["fontName"] = "Century Gothic Bold",
			["posy"] = 137,
			["fontOutline"] = "OUTLINE",
			["font"] = "Century Gothic Bold",
			["expanded"] = true,
	}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"]["SoulUI_Laptop"] = {
			["outline"] = "OUTLINE",
			["BWEmphasizeMessageAnchor_x"] = 550,
			["BWEmphasizeCountdownMessageAnchor_x"] = 600,
			["chat"] = false,
			["BWEmphasizeMessageAnchor_y"] = 500,
			["BWMessageAnchor_y"] = 600,
			["monochrome"] = true,
			["fontName"] = "Century Gothic Bold",
			["BWEmphasizeCountdownMessageAnchor_y"] = 550,
			["font"] = "Century Gothic Bold",
			["fontSize"] = 22,
			["BWMessageAnchor_x"] = 550,
	}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Colors"]["profiles"]["SoulUI_Laptop"] = {
			["barBackground"] = {
				["BigWigs_Plugins_Colors"] = {
					["default"] = {
						0, -- [1]
						0.168627450980392, -- [2]
						0.211764705882353, -- [3]
						0, -- [4]
					},
				},
			},
			["cyan"] = {
				["BigWigs_Plugins_Colors"] = {
					["default"] = {
						0.164705882352941, -- [1]
						0.631372549019608, -- [2]
						0.596078431372549, -- [3]
						1, -- [4]
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
			["barColor"] = {
				["BigWigs_Plugins_Colors"] = {
					["default"] = {
						0.149019607843137, -- [1]
						0.545098039215686, -- [2]
						0.823529411764706, -- [3]
					},
				},
			},
			["flash"] = {
				["BigWigs_Plugins_Colors"] = {
					["default"] = {
						0.149019607843137, -- [1]
						0.545098039215686, -- [2]
						0.823529411764706, -- [3]
						1, -- [4]
					},
				},
			},
			["purple"] = {
				["BigWigs_Plugins_Colors"] = {
					["default"] = {
						0.423529411764706, -- [1]
						0.443137254901961, -- [2]
						0.764705882352941, -- [3]
						1, -- [4]
					},
				},
			},
			["yellow"] = {
				["BigWigs_Plugins_Colors"] = {
					["default"] = {
						0.709803921568628, -- [1]
						0.537254901960784, -- [2]
						0, -- [3]
						1, -- [4]
					},
				},
			},
			["barEmphasized"] = {
				["BigWigs_Plugins_Colors"] = {
					["default"] = {
						0.862745098039216, -- [1]
						0.196078431372549, -- [2]
						0.184313725490196, -- [3]
					},
				},
			},
			["green"] = {
				["BigWigs_Plugins_Colors"] = {
					["default"] = {
						0.52156862745098, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
				},
			},
			["blue"] = {
				["BigWigs_Plugins_Colors"] = {
					["default"] = {
						0.149019607843137, -- [1]
						0.545098039215686, -- [2]
						0.823529411764706, -- [3]
						1, -- [4]
					},
				},
			},
			["barText"] = {
				["BigWigs_Plugins_Colors"] = {
					["default"] = {
						0.992156862745098, -- [1]
						0.964705882352941, -- [2]
						0.890196078431373, -- [3]
					},
				},
			},
			["orange"] = {
				["BigWigs_Plugins_Colors"] = {
					["default"] = {
						0.796078431372549, -- [1]
						0.294117647058824, -- [2]
						0.0862745098039216, -- [3]
						1, -- [4]
					},
				},
			},
			["red"] = {
				["BigWigs_Plugins_Colors"] = {
					["default"] = {
						0.862745098039216, -- [1]
						0.196078431372549, -- [2]
						0.184313725490196, -- [3]
						1, -- [4]
					},
				},
			},
		}

    BigWigs3DB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"]["SoulUI_Laptop"] = {
			["posx"] = 300,
			["posy"] = 500,
	}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"]["SoulUI_Laptop"] = {
			["BigWigsEmphasizeAnchor_y"] = 300,
			["BigWigsAnchor_width"] = 200,
			["BigWigsAnchor_x"] = 950,
			["fill"] = false,
			["BigWigsEmphasizeAnchor_height"] = 20,
			["growup"] = false,
			["monochrome"] = true,
			["fontName"] = "Century Gothic Bold",
			["BigWigsAnchor_height"] = 18,
			["fontSize"] = 14,
			["BigWigsAnchor_y"] = 600,
			["emphasizeGrowup"] = true,
			["spacing"] = 4,
			["emphasizeTime"] = 12,
			["barStyle"] = "ElvUI",
			["BigWigsEmphasizeAnchor_width"] = 225,
			["BigWigsEmphasizeAnchor_x"] = 345,
			["fontSizeEmph"] = 14,
			["outline"] = "OUTLINE",
			["texture"] = "ElvUI Norm",
	}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Super Emphasize"]["profiles"]["SoulUI_Laptop"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 36,
			["fontColor"] = {
				["r"] = 0.862745098039216,
				["g"] = 0.196078431372549,
				["b"] = 0.184313725490196,
			},
			["monochrome"] = true,
			["fontName"] = "Century Gothic Bold",
			["font"] = "Century Gothic Bold",
			["voice"] = "English: Overwatch: Tracer",
	}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"]["SoulUI_Laptop"] = {
			["posx"] = 300,
			["soundName"] = "None",
			["fontName"] = "Century Gothic Bold",
			["width"] = 225,
			["posy"] = 675,
			["lock"] = true,
			["height"] = 275,
			["font"] = "ElvUI Font",
	}
    BigWigs3DB["namespaces"]["BigWigs_Plugins_Pull"]["profiles"]["SoulUI_Laptop"] = {
			["combatLog"] = true,
			["voice"] = "English: Overwatch: Tracer",
	}
	--This is the only settings that BigWigs actually stores under the profile, shouldn't ever need to be changed
    BigWigs3DB["profiles"]["SoulUI_Laptop"]["fakeDBMVersion"] = true

	if layout == "desktop" then
		BigWigs3DB["profiles"]["SoulUI_Desktop"] = BigWigs3DB["profiles"]["SoulUI_Desktop"] or {}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Alt Power"]["profiles"]["SoulUI_Desktop"] = {
			["posx"] = 1031.11096246772,
			["fontSize"] = 12,
			["fontOutline"] = "OUTLINE",
			["posy"] = 157.154539395679,
			["font"] = "Century Gothic Bold",
		}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"]["SoulUI_Desktop"] = {
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
		BigWigs3DB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"]["SoulUI_Desktop"] = {
			["posx"] = 1090.84464446969,
			["posy"] = 85.3333191235856,
		}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"]["SoulUI_Desktop"] = {
			["posx"] = 2.13330727550655,
			["fontSize"] = 20,
			["soundName"] = "None",
			["lock"] = true,
			["height"] = 272.999877929688,
			["posy"] = 765.866598406101,
			["font"] = "ElvUI Font",
			["width"] = 221.000091552734,
		}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"]["SoulUI_Desktop"] = {
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
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Colors"]["profiles"]["SoulUI_Desktop"] = {
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
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Super Emphasize"]["profiles"]["SoulUI_Desktop"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 36,
			["font"] = "Century Gothic Bold",
	}
	BigWigs3DB["profiles"]["SoulUI_Desktop"]["fakeDBMVersion"] = true
    end
end

function RUI:BigWigsFresh(layout)
	if layout == "desktop" then
		profile = "SoulUI_Desktop"
	else
		profile = "SoulUI_Laptop"
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

local RUI = select(2, ...):unpack()
local E, L, V, P, G = unpack(ElvUI)

function RUI:ImportPowerBar()
	--To add a new aura crate a new line with "WeakAurasSaved["displays"]["Aura Name here"] = {contents of the Lua table export}
	--The name you give the aura *must* match the aura it has in game, change the next before exporting!
	--If you're exporting a group you have to export each aura into a table individually as the group for the auras
	WeakAurasSaved["displays"]["RedtuzkUI Power Bar"] = {
        ["sparkWidth"] = 10,
        ["stacksSize"] = 12,
        ["xOffset"] = 0.0003662109375,
        ["stacksFlags"] = "None",
        ["yOffset"] = -200.888671875,
        ["anchorPoint"] = "CENTER",
        ["borderColor"] = {
            [1] = 0,
            [2] = 0,
            [3] = 0,
            [4] = 1,
        },
        ["rotateText"] = "NONE",
        ["icon"] = false,
        ["fontFlags"] = "OUTLINE",
        ["icon_color"] = {
            [1] = 1,
            [2] = 1,
            [3] = 1,
            [4] = 1,
        },
        ["selfPoint"] = "CENTER",
        ["barColor"] = {
            [1] = 1,
            [2] = 0.44313725490196,
            [3] = 0.14901960784314,
            [4] = 1,
        },
        ["desaturate"] = false,
        ["sparkOffsetY"] = 0,
        ["load"] = {
            ["ingroup"] = {
                ["multi"] = {
                },
            },
            ["use_never"] = false,
            ["talent"] = {
                ["multi"] = {
                },
            },
            ["class"] = {
                ["single"] = "DRUID",
                ["multi"] = {
                    ["DEATHKNIGHT"] = true,
                    ["WARRIOR"] = true,
                    ["ROGUE"] = true,
                    ["MAGE"] = true,
                    ["PRIEST"] = true,
                    ["SHAMAN"] = true,
                    ["WARLOCK"] = true,
                    ["DEMONHUNTER"] = true,
                    ["HUNTER"] = true,
                    ["DRUID"] = true,
                    ["MONK"] = true,
                    ["PALADIN"] = true,
                },
            },
            ["talent2"] = {
                ["multi"] = {
                },
            },
            ["difficulty"] = {
                ["multi"] = {
                },
            },
            ["use_class"] = false,
            ["role"] = {
                ["multi"] = {
                    ["DAMAGER"] = true,
                    ["TANK"] = true,
                },
            },
            ["spec"] = {
                ["multi"] = {
                    [3] = true,
                    [4] = true,
                },
            },
            ["faction"] = {
                ["multi"] = {
                },
            },
            ["pvptalent"] = {
                ["multi"] = {
                },
            },
            ["race"] = {
                ["multi"] = {
                },
            },
            ["use_spellknown"] = false,
            ["size"] = {
                ["multi"] = {
                },
            },
        },
        ["timerColor"] = {
            [1] = 1,
            [2] = 1,
            [3] = 1,
            [4] = 1,
        },
        ["useAdjustededMin"] = false,
        ["regionType"] = "aurabar",
        ["stacks"] = false,
        ["init_completed"] = 1,
        ["texture"] = "ElvUI Norm",
        ["textFont"] = "Century Gothic Bold",
        ["borderOffset"] = 0,
        ["spark"] = false,
        ["timerFont"] = "Century Gothic Bold",
        ["alpha"] = 1,
        ["borderInset"] = 1,
        ["textColor"] = {
            [1] = 1,
            [2] = 1,
            [3] = 1,
            [4] = 1,
        },
        ["sparkOffsetX"] = 0,
        ["disjunctive"] = "all",
        ["customText"] = "function()\n    local region = aura_env.region\n    local power = UnitPower(\"player\")\n    local vehiclePower = UnitPower(\"vehicle\")\n    local max = UnitPowerMax(\"player\")\n    local vehicle = select(2, UnitPowerType(\"vehicle\"))\n    local powerType, powerToken, altR, altG, altB = UnitPowerType(\"player\");\n    \n    if not region.text3 then\n        local text3 = region.border:CreateFontString(nil, \"TOOLTIP\")\n        region.text3 = text3\n        region.text3:SetFont(region.text:GetFont())\n        \n        region.text3:SetPoint(\"CENTER\", 0, 8)\n        region.text3:SetShadowColor(0,0,0,0)\n        region.text3:SetTextColor(1,1,1,1)\n        region.text3:Show()\n    end\n    \n    if (vehicle) then\n        power = vehiclePower\n    end\n    if powerToken ~= \"MANA\" then\n        region.text3:SetText(power)\n    else\n        power = power/max*100\n        local ending = \"%\"\n        --set number of decimal places to show\n        local decimal = 1\n        if power == 100 then\n            --don't show deciamls if at max power\n        else\n            power = math.floor( (power * 10^decimal) + 0.5) / (10^decimal)\n        end\n        --region.powerText:SetText(power..ending)\n        region.text3:SetText(power..ending)\n    end\nend\n\n\n-- Made by Aldarana-Kazzak EU\n-- RedtuzkUI Discord: http://www.redtuzk.com",
        ["untrigger"] = {
            ["custom"] = "function()\n    if(\"HEALER\"==select(5,GetSpecializationInfo(GetSpecialization()))) then\n        return true\n    end\n    return false\nend\n\n\n\n",
        },
        ["activeTriggerMode"] = -10,
        ["customTextUpdate"] = "update",
        ["displayTextLeft"] = "%c",
        ["internalVersion"] = 3,
        ["animation"] = {
            ["start"] = {
                ["type"] = "none",
                ["duration_type"] = "seconds",
            },
            ["main"] = {
                ["type"] = "custom",
                ["colorA"] = 1,
                ["duration_type"] = "seconds",
                ["colorB"] = 1,
                ["scaley"] = 1,
                ["alpha"] = 0,
                ["x"] = 0,
                ["y"] = 0,
                ["colorType"] = "custom",
                ["colorG"] = 1,
                ["colorR"] = 1,
                ["colorFunc"] = "function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    local powerType, powerToken, altR, altG, altB = UnitPowerType(\"player\");\n    --The line below sets the color set to use for the power bar included presets are:\n    --Blizz_Colors\n    --ElvUI_Colors\n    --RedtuzkUI_Colors\n    --Custom_Colors by default the custom colors are the same as the Redtuzk ones\n    local Color_Set = RedtuzkUI_Colors;\n    local vehicle = select(2, UnitPowerType(\"vehicle\"))\n    --check if you're in a vehicle\n    if (vehicle) then \n        --use the \"UNKNOWN\"/vehicle color if you're in a vehicle\n        powerToken = \"UNKNOWN\"\n    else\n        --if not make sure we've set a color for your power type\n        if (Color_Set[powerToken]) then  \n            --do nothing this power has a set color\n        else\n            --use the \"UNKNOWN\" color\n            powerToken = \"UNKNOWN\"\n        end\n    end\n    r,g,b = unpack(Color_Set[powerToken])\n    return r,g,b, 1\nend\n\n-- Made by Aldarana and Redtuzk, Kazzak EU\n-- RedtuzkUI Discord: http://www.redtuzk.com",
                ["rotate"] = 0,
                ["use_color"] = true,
                ["scalex"] = 1,
            },
            ["finish"] = {
                ["type"] = "none",
                ["duration_type"] = "seconds",
            },
        },
        ["backdropInFront"] = false,
        ["text"] = true,
        ["stickyDuration"] = true,
        ["stacksFont"] = "Atarian System",
        ["zoom"] = 0,
        ["auto"] = true,
        ["init_started"] = 1,
        ["height"] = 17.999937057495,
        ["timerFlags"] = "OUTLINE",
        ["actions"] = {
            ["start"] = {
            },
            ["init"] = {
                ["do_custom"] = true,
                ["custom"] = "\n\n--Link for the color conversion site http://www.corecoding.com/utilities/rgb-or-hex-to-float.php\n\nCustom_Colors =\n{\n    [\"MANA\"] = {0.1, 0.5, 1},\n    [\"RAGE\"] = {1, 0.102, 0.141},\n    [\"FOCUS\"] = {1, 0.5, 0.25},\n    [\"ENERGY\"] = {0.949, 1, 0.235},\n    [\"RUNIC_POWER\"] = {0, 0.82, 1},\n    [\"LUNAR_POWER\"] = {0.3, 0.52, 0.90}, --this is Astral Power, Blizz hasn't updated their files yet\n    [\"MAELSTROM\"] = {0, 0.502, 1},\n    [\"INSANITY\"] = {0.549, 0.141, 0.69},\n    [\"FURY\"] = {0, 1, 0.61},\n    [\"PAIN\"] = {0, 1, 0.61},\n    [\"UNKNOWN\"] = {0.929, 0.929, 0.929}\n}\n\nElvUI_Colors =\n{\n    [\"MANA\"] = {0.31, 0.451, 0.631},\n    [\"RAGE\"] = {0.78, 0.251, 0.251},\n    [\"FOCUS\"] = {0.71, 0.431, 0.271},\n    [\"ENERGY\"] = {0.651, 0.631, 0.349},\n    [\"RUNIC_POWER\"] = {0, 0.82, 1},\n    [\"LUNAR_POWER\"] = {0.902, 0.859, 0.122}, --this is Astral Power, Blizz hasn't updated their files yet\n    [\"MAELSTROM\"] = {0, 0.502, 1},\n    [\"INSANITY\"] = {0.549, 0.141, 0.69},\n    [\"FURY\"] = {0.314, 0.329, 0.306},\n    [\"PAIN\"] = {0.314, 0.329, 0.306},\n    [\"UNKNOWN\"] = {0.929, 0.929, 0.929}\n}\n\nBlizz_Colors =\n{\n    [\"MANA\"] = {0, 0, 1},\n    [\"RAGE\"] = {1, 0, 0},\n    [\"FOCUS\"] = {1, 0.5, 0.25},\n    [\"ENERGY\"] = {1, 1, 0},\n    [\"RUNIC_POWER\"] = {0, 0.82, 1},\n    [\"LUNAR_POWER\"] = {0.3, 0.52, 0.90}, --this is Astral Power, Blizz hasn't updated their files yet\n    [\"MAELSTROM\"] = {0, 0.50, 1},\n    [\"INSANITY\"] = {0.40, 0, 0.80},\n    [\"FURY\"] = {0.788, 0.259, 0.992},\n    [\"PAIN\"] = {1, 0.61, 0},\n    [\"UNKNOWN\"] = {0.929, 0.929, 0.929}\n}\n\nRedtuzkUI_Colors =\n{\n    [\"MANA\"] = {0.1, 0.5, 1},\n    [\"RAGE\"] = {1, 0.102, 0.141},\n    [\"FOCUS\"] = {1, 0.5, 0.25},\n    [\"ENERGY\"] = {0.949, 1, 0.235},\n    [\"RUNIC_POWER\"] = {0, 0.82, 1},\n    [\"LUNAR_POWER\"] = {0.3, 0.52, 0.90}, --this is Astral Power, Blizz hasn't updated their files yet\n    [\"MAELSTROM\"] = {0, 0.502, 1},\n    [\"INSANITY\"] = {0.549, 0.141, 0.69},\n    [\"FURY\"] = {1, 0.61, 0},\n    [\"PAIN\"] = {1, 0.61, 0},\n    [\"UNKNOWN\"] = {0.929, 0.929, 0.929}\n}",
            },
            ["finish"] = {
            },
        },
        ["sparkBlendMode"] = "ADD",
        ["backdropColor"] = {
            [1] = 0,
            [2] = 0,
            [3] = 0,
            [4] = 0,
        },
        ["numTriggers"] = 1,
        ["trigger"] = {
            ["type"] = "custom",
            ["custom_type"] = "status",
            ["unit"] = "player",
            ["event"] = "Health",
            ["subeventPrefix"] = "SPELL",
            ["customDuration"] = "function()\n    local vehicle = select(2, UnitPowerType(\"vehicle\"))\n    local unit = \"player\"\n    if (vehicle) then\n        unit = \"vehicle\"\n    end\n    local power = UnitPower(unit)\n    local powerMax = UnitPowerMax(unit)\n    local static = 100\n    return power, powerMax, static\nend\n\n-- Made by Aldarana and Redtuzk, Kazzak EU\n-- RedtuzkUI Discord: http://www.redtuzk.com\n\n\n\n",
            ["spellIds"] = {
            },
            ["custom"] = "function()\n    if(\"HEALER\"==select(5,GetSpecializationInfo(GetSpecialization()))) then\n        return false\n    end\n    return true\nend\n\n\n\n",
            ["subeventSuffix"] = "_CAST_START",
            ["check"] = "update",
            ["showOn"] = "showOnActive",
            ["names"] = {
            },
            ["debuffType"] = "HELPFUL",
        },
        ["sparkRotationMode"] = "AUTO",
        ["width"] = 204.00022888184,
        ["timer"] = true,
        ["border"] = true,
        ["borderEdge"] = "1 Pixel",
        ["id"] = "RedtuzkUI Power Bar",
        ["borderSize"] = 1,
        ["additional_triggers"] = {
        },
        ["icon_side"] = "RIGHT",
        ["borderInFront"] = true,
        ["displayTextRight"] = " ",
        ["sparkHeight"] = 30,
        ["borderBackdrop"] = "Blizzard Tooltip",
        ["textFlags"] = "OUTLINE",
        ["stacksColor"] = {
            [1] = 1,
            [2] = 1,
            [3] = 1,
            [4] = 1,
        },
        ["timerSize"] = 15,
        ["sparkRotation"] = 0,
        ["sparkHidden"] = "NEVER",
        ["sparkColor"] = {
            [1] = 1,
            [2] = 1,
            [3] = 1,
            [4] = 1,
        },
        ["frameStrata"] = 4,
        ["anchorFrameType"] = "SCREEN",
        ["useAdjustededMax"] = false,
        ["textSize"] = 18,
        ["inverse"] = false,
        ["sparkDesature"] = false,
        ["orientation"] = "HORIZONTAL",
        ["conditions"] = {
        },
        ["backgroundColor"] = {
            [1] = 0,
            [2] = 0,
            [3] = 0,
            [4] = 0.49000000953674,
        },
        ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
    }
end

function RUI:ImportTemplates()
    WeakAurasSaved["displays"]["RUI Icon Templates"] = {
		["grow"] = "HORIZONTAL",
		["controlledChildren"] = {
			[1] = "Duration + Stacks",
			[2] = "Duration + Text",
			[3] = "Duration Only",
		},
		["xOffset"] = 0,
		["yOffset"] = -130,
		["anchorPoint"] = "CENTER",
		["activeTriggerMode"] = -10,
		["space"] = 4,
		["background"] = "None",
		["actions"] = {
			["start"] = {
			},
			["finish"] = {
			},
			["init"] = {
			},
		},
		["internalVersion"] = 3,
		["animation"] = {
			["start"] = {
				["type"] = "none",
				["duration_type"] = "seconds",
			},
			["main"] = {
				["type"] = "none",
				["duration_type"] = "seconds",
			},
			["finish"] = {
				["type"] = "none",
				["duration_type"] = "seconds",
			},
		},
		["trigger"] = {
			["type"] = "aura",
			["subeventSuffix"] = "_CAST_START",
			["event"] = "Health",
			["unit"] = "player",
			["spellIds"] = {
			},
			["showOn"] = "showOnActive",
			["subeventPrefix"] = "SPELL",
			["names"] = {
			},
			["debuffType"] = "HELPFUL",
		},
		["stagger"] = 0,
		["height"] = 35,
		["load"] = {
			["talent2"] = {
				["multi"] = {
				},
			},
			["talent"] = {
				["multi"] = {
				},
			},
			["class"] = {
			},
			["ingroup"] = {
				["multi"] = {
				},
			},
			["use_class"] = false,
			["race"] = {
				["multi"] = {
				},
			},
			["pvptalent"] = {
				["multi"] = {
				},
			},
			["faction"] = {
				["multi"] = {
				},
			},
			["role"] = {
				["multi"] = {
				},
			},
			["spec"] = {
				["multi"] = {
				},
			},
			["difficulty"] = {
				["multi"] = {
				},
			},
			["size"] = {
				["multi"] = {
				},
			},
		},
		["animate"] = false,
		["border"] = "None",
		["regionType"] = "dynamicgroup",
		["sort"] = "none",
		["expanded"] = true,
		["constantFactor"] = "RADIUS",
		["borderOffset"] = 16,
		["selfPoint"] = "LEFT",
		["id"] = "RUI Icon Templates",
		["width"] = 464,
		["frameStrata"] = 1,
		["anchorFrameType"] = "SCREEN",
		["backgroundInset"] = 0,
		["disjunctive"] = "all",
		["numTriggers"] = 1,
		["rotation"] = 0,
		["align"] = "CENTER",
		["conditions"] = {
		},
		["untrigger"] = {
		},
		["radius"] = 200,
	}
	WeakAurasSaved["displays"]["Duration + Stacks"] = {
		["glow"] = false,
		["text1FontSize"] = 18,
		["disjunctive"] = "any",
		["customText"] = "function()\n    ---------DO NOT EDIT!-------\n    ----------------------------\n    ----------------------------\n    local region = aura_env.region\n    if not region.text3 then\n        local text3 = region:CreateFontString(nil, \"TOOLTIP\")\n        region.text3 = text3\n        region.text3:SetFont(region.text2:GetFont())\n        \n        region.text3:SetPoint(\"TOP\", 0, 10)\n        region.text3:SetShadowColor(0,0,0,0)\n        region.text3:SetTextColor(1,1,1,1)\n        region.text3:Show()\n    end\n    region.text3:SetText(WeakAuras.ReplacePlaceHolders(\"%p\", region))\n    return \nend\n\n\n\n\n\n",
		["untrigger"] = {
		},
		["anchorPoint"] = "CENTER",
		["activeTriggerMode"] = 0,
		["customTextUpdate"] = "update",
		["actions"] = {
			["start"] = {
				["message"] = "++ Darkness used - 8 sec ++",
				["glow_frame"] = "WeakAuras:Serenity",
				["glow_action"] = "show",
				["message_type"] = "SAY",
				["do_custom"] = false,
				["do_message"] = false,
				["do_glow"] = false,
			},
			["finish"] = {
			},
			["init"] = {
			},
		},
		["text2Font"] = "Century Gothic Bold",
		["keepAspectRatio"] = false,
		["animation"] = {
			["start"] = {
				["type"] = "none",
				["duration_type"] = "seconds",
			},
			["main"] = {
				["use_color"] = true,
				["duration_type"] = "seconds",
				["type"] = "none",
				["colorType"] = "custom",
			},
			["finish"] = {
				["type"] = "none",
				["duration_type"] = "seconds",
			},
		},
		["trigger"] = {
			["ownOnly"] = true,
			["use_unit"] = true,
			["custom_hide"] = "timed",
			["use_specific_unit"] = false,
			["type"] = "aura",
			["names"] = {
			},
			["unevent"] = "timed",
			["duration"] = "8",
			["spellName"] = "Darkness",
			["event"] = "Combat Log",
			["unit"] = "player",
			["subeventSuffix"] = "_CAST_SUCCESS",
			["use_spellName"] = true,
			["spellIds"] = {
			},
			["use_sourceUnit"] = false,
			["showOn"] = "showOnActive",
			["debuffType"] = "HELPFUL",
			["sourceUnit"] = "player",
			["subeventPrefix"] = "SPELL",
		},
		["stickyDuration"] = true,
		["progressPrecision"] = 0,
		["text1Point"] = "BOTTOM",
		["yOffset"] = 0,
		["text2FontFlags"] = "OUTLINE",
		["height"] = 35,
		["text2Point"] = "CENTER",
		["load"] = {
			["ingroup"] = {
				["multi"] = {
				},
			},
			["use_never"] = false,
			["talent"] = {
				["multi"] = {
				},
			},
			["class"] = {
				["single"] = "ROGUE",
				["multi"] = {
					["ROGUE"] = true,
				},
			},
			["role"] = {
				["multi"] = {
				},
			},
			["difficulty"] = {
				["multi"] = {
				},
			},
			["race"] = {
				["multi"] = {
				},
			},
			["use_spec"] = true,
			["pvptalent"] = {
				["multi"] = {
				},
			},
			["talent2"] = {
				["multi"] = {
				},
			},
			["faction"] = {
				["multi"] = {
				},
			},
			["spec"] = {
				["single"] = 1,
				["multi"] = {
				},
			},
			["size"] = {
				["multi"] = {
				},
			},
		},
		["displayIcon"] = "",
		["internalVersion"] = 3,
		["cooldownTextEnabled"] = false,
		["text2Containment"] = "INSIDE",
		["numTriggers"] = 1,
		["text1Font"] = "Century Gothic Bold",
		["icon"] = true,
		["text1Enabled"] = true,
		["text1FontFlags"] = "OUTLINE",
		["regionType"] = "icon",
		["width"] = 35,
		["text2Enabled"] = true,
		["text2FontSize"] = 24,
		["text1Containment"] = "INSIDE",
		["id"] = "Duration + Stacks",
		["text1"] = "%s",
		["selfPoint"] = "CENTER",
		["text2"] = "%c",
		["zoom"] = 0,
		["auto"] = true,
		["text1Color"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
		},
		["additional_triggers"] = {
		},
		["xOffset"] = 0,
		["frameStrata"] = 1,
		["anchorFrameType"] = "SCREEN",
		["text2Color"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
		},
		["desaturate"] = false,
		["inverse"] = false,
		["color"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
		},
		["init_started"] = 1,
		["conditions"] = {
		},
		["cooldown"] = false,
		["parent"] = "RUI Icon Templates",
	}
	WeakAurasSaved["displays"]["Duration Only"] = {
		["glow"] = false,
		["text1FontSize"] = 18,
		["cooldownTextEnabled"] = false,
		["customText"] = "function()\n    ---------DO NOT EDIT!-------\n    ----------------------------\n    ----------------------------\n    local region = aura_env.region\n    if not region.text3 then\n        local text3 = region:CreateFontString(nil, \"TOOLTIP\")\n        region.text3 = text3\n        region.text3:SetFont(region.text2:GetFont())\n        \n        region.text3:SetPoint(\"TOP\", 0, 10)\n        region.text3:SetShadowColor(0,0,0,0)\n        region.text3:SetTextColor(1,1,1,1)\n        region.text3:Show()\n    end\n    region.text3:SetText(WeakAuras.ReplacePlaceHolders(\"%p\", region))\n    return \nend\n\n\n\n\n\n",
		["untrigger"] = {
		},
		["anchorPoint"] = "CENTER",
		["activeTriggerMode"] = 0,
		["customTextUpdate"] = "update",
		["actions"] = {
			["start"] = {
				["message"] = "++ Darkness used - 8 sec ++",
				["do_glow"] = false,
				["glow_action"] = "show",
				["message_type"] = "SAY",
				["do_message"] = false,
				["do_custom"] = false,
				["glow_frame"] = "WeakAuras:Serenity",
			},
			["finish"] = {
			},
			["init"] = {
			},
		},
		["internalVersion"] = 3,
		["keepAspectRatio"] = false,
		["animation"] = {
			["start"] = {
				["type"] = "none",
				["duration_type"] = "seconds",
			},
			["main"] = {
				["use_color"] = true,
				["duration_type"] = "seconds",
				["type"] = "none",
				["colorType"] = "custom",
			},
			["finish"] = {
				["type"] = "none",
				["duration_type"] = "seconds",
			},
		},
		["trigger"] = {
			["duration"] = "8",
			["use_unit"] = true,
			["custom_hide"] = "timed",
			["use_specific_unit"] = false,
			["type"] = "aura",
			["names"] = {
			},
			["subeventSuffix"] = "_CAST_SUCCESS",
			["ownOnly"] = true,
			["spellName"] = "Darkness",
			["event"] = "Combat Log",
			["unit"] = "player",
			["unevent"] = "timed",
			["use_spellName"] = true,
			["spellIds"] = {
			},
			["use_sourceUnit"] = false,
			["showOn"] = "showOnActive",
			["debuffType"] = "HELPFUL",
			["sourceUnit"] = "player",
			["subeventPrefix"] = "SPELL",
		},
		["stickyDuration"] = true,
		["progressPrecision"] = 0,
		["text1Point"] = "TOP",
		["yOffset"] = 0,
		["text2FontFlags"] = "OUTLINE",
		["height"] = 35,
		["text2Point"] = "CENTER",
		["load"] = {
			["ingroup"] = {
				["multi"] = {
				},
			},
			["use_never"] = false,
			["talent"] = {
				["multi"] = {
				},
			},
			["class"] = {
				["single"] = "ROGUE",
				["multi"] = {
					["ROGUE"] = true,
				},
			},
			["role"] = {
				["multi"] = {
				},
			},
			["difficulty"] = {
				["multi"] = {
				},
			},
			["race"] = {
				["multi"] = {
				},
			},
			["use_spec"] = true,
			["pvptalent"] = {
				["multi"] = {
				},
			},
			["faction"] = {
				["multi"] = {
				},
			},
			["talent2"] = {
				["multi"] = {
				},
			},
			["spec"] = {
				["single"] = 1,
				["multi"] = {
				},
			},
			["size"] = {
				["multi"] = {
				},
			},
		},
		["displayIcon"] = "",
		["text2Font"] = "Century Gothic Bold",
		["text1Containment"] = "OUTSIDE",
		["text2Containment"] = "INSIDE",
		["numTriggers"] = 1,
		["text1Font"] = "Century Gothic Bold",
		["disjunctive"] = "any",
		["icon"] = true,
		["text1FontFlags"] = "OUTLINE",
		["regionType"] = "icon",
		["width"] = 35,
		["text2Enabled"] = true,
		["text2FontSize"] = 24,
		["text1Color"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
		},
		["id"] = "Duration Only",
		["text1"] = " ",
		["text1Enabled"] = true,
		["text2"] = "%c",
		["zoom"] = 0,
		["auto"] = true,
		["desaturate"] = false,
		["additional_triggers"] = {
		},
		["xOffset"] = 0,
		["frameStrata"] = 1,
		["anchorFrameType"] = "SCREEN",
		["text2Color"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
		},
		["selfPoint"] = "CENTER",
		["inverse"] = false,
		["color"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
		},
		["init_started"] = 1,
		["conditions"] = {
		},
		["cooldown"] = false,
		["parent"] = "RUI Icon Templates",
	}
	WeakAurasSaved["displays"]["Duration + Text"] = {
		["glow"] = false,
		["text1FontSize"] = 18,
		["disjunctive"] = "any",
		["customText"] = "function()\n    -----------------------------\n    local text = \"YOUR TEXT HERE\"\n    -----------------------------\n    \n    local region = aura_env.region\n    if not region.text3 then\n        local text3 = region:CreateFontString(nil, \"TOOLTIP\")\n        region.text3 = text3\n        region.text3:SetFont(region.text2:GetFont())\n        \n        region.text3:SetPoint(\"TOP\", 0, 10)\n        region.text3:SetShadowColor(0,0,0,0)\n        region.text3:SetTextColor(1,1,1,1)\n        region.text3:Show()\n    end\n    region.text3:SetText(text)\n    return \nend\n\n\n\n\n\n",
		["untrigger"] = {
		},
		["anchorPoint"] = "CENTER",
		["activeTriggerMode"] = 0,
		["customTextUpdate"] = "update",
		["actions"] = {
			["start"] = {
				["message"] = "++ Darkness used - 8 sec ++",
				["glow_action"] = "show",
				["glow_frame"] = "WeakAuras:Serenity",
				["message_type"] = "SAY",
				["do_custom"] = false,
				["do_message"] = false,
				["do_glow"] = false,
			},
			["finish"] = {
			},
			["init"] = {
			},
		},
		["text2Font"] = "Century Gothic Bold",
		["keepAspectRatio"] = false,
		["animation"] = {
			["start"] = {
				["type"] = "none",
				["duration_type"] = "seconds",
			},
			["main"] = {
				["use_color"] = true,
				["duration_type"] = "seconds",
				["type"] = "none",
				["colorType"] = "custom",
			},
			["finish"] = {
				["type"] = "none",
				["duration_type"] = "seconds",
			},
		},
		["trigger"] = {
			["duration"] = "8",
			["use_unit"] = true,
			["custom_hide"] = "timed",
			["use_specific_unit"] = false,
			["type"] = "aura",
			["names"] = {
			},
			["subeventSuffix"] = "_CAST_SUCCESS",
			["ownOnly"] = true,
			["spellName"] = "Darkness",
			["event"] = "Combat Log",
			["unit"] = "player",
			["unevent"] = "timed",
			["use_spellName"] = true,
			["spellIds"] = {
			},
			["use_sourceUnit"] = false,
			["showOn"] = "showOnActive",
			["debuffType"] = "HELPFUL",
			["sourceUnit"] = "player",
			["subeventPrefix"] = "SPELL",
		},
		["stickyDuration"] = true,
		["progressPrecision"] = 0,
		["text1Point"] = "CENTER",
		["internalVersion"] = 3,
		["text2FontFlags"] = "OUTLINE",
		["height"] = 35,
		["yOffset"] = 0,
		["load"] = {
			["talent2"] = {
				["multi"] = {
				},
			},
			["use_never"] = false,
			["talent"] = {
				["multi"] = {
				},
			},
			["class"] = {
				["single"] = "ROGUE",
				["multi"] = {
					["ROGUE"] = true,
				},
			},
			["race"] = {
				["multi"] = {
				},
			},
			["difficulty"] = {
				["multi"] = {
				},
			},
			["role"] = {
				["multi"] = {
				},
			},
			["use_spec"] = true,
			["pvptalent"] = {
				["multi"] = {
				},
			},
			["ingroup"] = {
				["multi"] = {
				},
			},
			["faction"] = {
				["multi"] = {
				},
			},
			["spec"] = {
				["single"] = 1,
				["multi"] = {
				},
			},
			["size"] = {
				["multi"] = {
				},
			},
		},
		["displayIcon"] = "",
		["text2Point"] = "CENTER",
		["text1Containment"] = "OUTSIDE",
		["text2Containment"] = "INSIDE",
		["numTriggers"] = 1,
		["text1Font"] = "Century Gothic Bold",
		["cooldownTextEnabled"] = false,
		["icon"] = true,
		["text1FontFlags"] = "OUTLINE",
		["regionType"] = "icon",
		["width"] = 35,
		["text2Enabled"] = true,
		["text2FontSize"] = 14,
		["text1Color"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
		},
		["additional_triggers"] = {
		},
		["text1"] = "%p",
		["text1Enabled"] = true,
		["text2"] = "%c",
		["zoom"] = 0,
		["auto"] = true,
		["desaturate"] = false,
		["id"] = "Duration + Text",
		["xOffset"] = 0,
		["frameStrata"] = 1,
		["anchorFrameType"] = "SCREEN",
		["text2Color"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
		},
		["selfPoint"] = "CENTER",
		["inverse"] = false,
		["color"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
		},
		["init_started"] = 1,
		["conditions"] = {
		},
		["cooldown"] = false,
		["parent"] = "RUI Icon Templates",
	}
end
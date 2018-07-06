local RUI = select(2, ...):unpack()
local E, L, V, P, G = unpack(ElvUI)

function RUI:ImportAuras()
	--To add a new aura crate a new line with "WeakAurasSaved["displays"]["Aura Name here"] = {contents of the Lua table export}
	--The name you give the aura *must* match the aura it has in game, change the next before exporting!
	--If you're exporting a group you have to export each aura into a table individually as the group for the auras
	WeakAurasSaved["displays"]["RedtuzkUI Power Bar"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = 72.9996337890625,
			["stacksFlags"] = "None",
			["yOffset"] = -95.0005187988281,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
					["single"] = "MONK",
					["multi"] = {
						["DEATHKNIGHT"] = true,
						["WARRIOR"] = true,
						["SHAMAN"] = true,
						["MAGE"] = true,
						["PRIEST"] = true,
						["ROGUE"] = true,
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
				["role"] = {
					["multi"] = {
						["DAMAGER"] = true,
						["TANK"] = true,
					},
				},
				["use_spellknown"] = false,
				["pvptalent"] = {
					["multi"] = {
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
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = true,
			["init_completed"] = 1,
			["texture"] = "ElvUI Norm",
			["textFont"] = "Remissis",
			["stacksFont"] = "Atarian System",
			["spark"] = false,
			["timerFont"] = "Remissis",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["disjunctive"] = "all",
			["customText"] = "function()\n    local power = UnitPower(\"player\")\n    local max = UnitPowerMax(\"player\")\n    local space_1digit = \"                                     \"\n    local space_2digit = \"                                    \"\n    local space_3digit = \"                                   \"\n    local space_4digit = \"                                  \"\n    local space_5digit = \"                               \"\n    local space_6digit = \"                              \"\n    local space = \" \"\n    local ending = \" \"\n    if max < 1000 then\n        if power <= 9 then \n            space = space_1digit\n        elseif power <= 99 then\n            space = space_2digit\n        elseif power <= 999 then\n            space = space_3digit\n        end\n    else\n        power = power/max*100\n        ending = \"%%\"\n        local decimal = 1\n        if power == 100 then\n            space = space_4digit\n        else\n            power = math.floor( (power * 10^decimal) + 0.5) / (10^decimal)\n            space = space_3digit\n        end\n    end\n    return space..power..ending\nend\n\n\n-- Made by Aldarana and Redtuzk, Kazzak EU\n-- Redtuzk: http://www.youtube.com/c/emilblem\n-- Aldarana: http://www.youtube.com/c/UCSBCI2CVjKkmj_yMA8Qy5pQ\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["untrigger"] = {
				["powertype"] = 0,
				["custom"] = "function()\nend\n\n\n\n",
				["unit"] = "player",
				["use_powertype"] = true,
				["use_unit"] = true,
			},
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "event",
			["displayTextLeft"] = " ",
			["internalVersion"] = 3,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = " ",
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_alpha"] = false,
					["type"] = "custom",
					["colorB"] = 1,
					["use_color"] = true,
					["alpha"] = 0,
					["duration_type"] = "relative",
					["y"] = 0,
					["x"] = 0,
					["colorType"] = "custom",
					["preset"] = "alphaPulse",
					["colorFunc"] = "function(progress)\n    local powerType, powerToken, altR, altG, altB = UnitPowerType(\"player\");\n    --The line below sets the color set to use for the power bar included presets are:\n    --Blizz_Colors\n    --ElvUI_Colors\n    --RedtuzkUI_Colors\n    --Custom_Colors by default the custom colors are the same as the Redtuzk ones\n    local Color_Set = RedtuzkUI_Colors;\n    local vehicle = select(2, UnitPowerType(\"vehicle\"))\n    --check if you're in a vehicle\n    if (vehicle) then \n        --use the \"UNKNOWN\"/vehicle color if you're in a vehicle\n        powerToken = \"UNKNOWN\"\n    else\n        --if not make sure we've set a color for your power type\n        if (Color_Set[powerToken]) then  \n            --do nothing this power has a set color\n        else\n            --use the \"UNKNOWN\" color\n            powerToken = \"UNKNOWN\"\n        end\n    end\n    r,g,b = unpack(Color_Set[powerToken])\n    return r, g, b, 1\nend\n\n-- Made by Aldarana and Redtuzk, Kazzak EU\n-- RedtuzkUI Discord: http://www.redtuzk.com",
					["rotate"] = 0,
					["scalex"] = 1,
					["scaley"] = 1,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["use_unit"] = true,
				["powertype"] = 3,
				["subeventPrefix"] = "SPELL",
				["use_powertype"] = false,
				["custom_hide"] = "timed",
				["names"] = {
				},
				["type"] = "custom",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["event"] = "Power",
				["use_percentpower"] = true,
				["customDuration"] = "function()\n    local vehicle = select(2, UnitPowerType(\"vehicle\"))\n    local unit = \"player\"\n    if (vehicle) then\n        unit = \"vehicle\"\n    end\n    local power = UnitPower(unit)\n    local powerMax = UnitPowerMax(unit)\n    local static = 100\n    return power, powerMax, static\nend\n\n-- Made by Aldarana and Redtuzk, Kazzak EU\n-- RedtuzkUI Discord: http://www.redtuzk.com",
				["spellIds"] = {
				},
				["custom"] = "function()\n    return true\nend\n\n\n\n\n\n\n\n",
				["events"] = "UNIT_POWER_FREQUENT, PLAYER",
				["check"] = "update",
				["custom_type"] = "status",
				["percentpower"] = "0",
				["percentpower_operator"] = ">=",
			},
			["text"] = true,
			["parent"] = "RedtuzkUI Power Bar Group",
			["stickyDuration"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.491222381591797, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["timer"] = true,
			["height"] = 17.9998054504395,
			["timerFlags"] = "None",
			["inverse"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["auto"] = true,
			["textSize"] = 12,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["sparkRotationMode"] = "AUTO",
			["border"] = true,
			["borderEdge"] = "1 Pixel",
			["sparkHidden"] = "NEVER",
			["borderSize"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "RIGHT",
			["timerSize"] = 12,
			["sparkRotation"] = 0,
			["sparkHeight"] = 30,
			["borderBackdrop"] = "Blizzard Tooltip",
			["textFlags"] = "OUTLINE",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["borderInFront"] = true,
			["additional_triggers"] = {
			},
			["id"] = "RedtuzkUI Power Bar",
			["frameStrata"] = 3,
			["width"] = 204.000091552734,
			["useAdjustededMax"] = false,
			["backdropInFront"] = true,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["init_started"] = 1,
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "--Link for the color conversion site http://www.corecoding.com/utilities/rgb-or-hex-to-float.php\n\nElvUI_Colors =\n{\n    [\"MANA\"] = {0.31, 0.451, 0.631},\n    [\"RAGE\"] = {0.78, 0.251, 0.251},\n    [\"FOCUS\"] = {0.71, 0.431, 0.271},\n    [\"ENERGY\"] = {0.651, 0.631, 0.349},\n    [\"RUNIC_POWER\"] = {0, 0.82, 1},\n    [\"LUNAR_POWER\"] = {0.902, 0.859, 0.122}, --this is Astral Power, Blizz hasn't updated their files yet\n    [\"MAELSTROM\"] = {0, 0.502, 1},\n    [\"INSANITY\"] = {0.549, 0.141, 0.69},\n    [\"FURY\"] = {0.314, 0.329, 0.306},\n    [\"PAIN\"] = {0.314, 0.329, 0.306},\n    [\"UNKNOWN\"] = {0.929, 0.929, 0.929}\n}\n\nBlizz_Colors =\n{\n    [\"MANA\"] = {0, 0, 1},\n    [\"RAGE\"] = {1, 0, 0},\n    [\"FOCUS\"] = {1, 0.5, 0.25},\n    [\"ENERGY\"] = {1, 1, 0},\n    [\"RUNIC_POWER\"] = {0, 0.82, 1},\n    [\"LUNAR_POWER\"] = {0.3, 0.52, 0.90}, --this is Astral Power, Blizz hasn't updated their files yet\n    [\"MAELSTROM\"] = {0, 0.50, 1},\n    [\"INSANITY\"] = {0.40, 0, 0.80},\n    [\"FURY\"] = {0.788, 0.259, 0.992},\n    [\"PAIN\"] = {1, 0.61, 0},\n    [\"UNKNOWN\"] = {0.929, 0.929, 0.929}\n}\n\nRedtuzkUI_Colors =\n{\n    [\"MANA\"] = {0.1, 0.5, 1},\n    [\"RAGE\"] = {1, 0.102, 0.141},\n    [\"FOCUS\"] = {1, 0.5, 0.25},\n    [\"ENERGY\"] = {0.949, 1, 0.235},\n    [\"RUNIC_POWER\"] = {0, 0.82, 1},\n    [\"LUNAR_POWER\"] = {0.3, 0.52, 0.90}, --this is Astral Power, Blizz hasn't updated their files yet\n    [\"MAELSTROM\"] = {0, 0.502, 1},\n    [\"INSANITY\"] = {0.549, 0.141, 0.69},\n    [\"FURY\"] = {1, 0.61, 0},\n    [\"PAIN\"] = {1, 0.61, 0},\n    [\"UNKNOWN\"] = {0.929, 0.929, 0.929}\n}\n\nCustom_Colors =\n{\n    [\"MANA\"] = {0.1, 0.5, 1},\n    [\"RAGE\"] = {1, 0.102, 0.141},\n    [\"FOCUS\"] = {1, 0.5, 0.25},\n    [\"ENERGY\"] = {0.973, 1, 0},\n    [\"RUNIC_POWER\"] = {0, 0.82, 1},\n    [\"LUNAR_POWER\"] = {0.3, 0.52, 0.90}, --this is Astral Power, Blizz hasn't updated their files yet\n    [\"MAELSTROM\"] = {0, 0.502, 1},\n    [\"INSANITY\"] = {0.549, 0.141, 0.69},\n    [\"FURY\"] = {0, 1, 0.61},\n    [\"PAIN\"] = {0, 1, 0.61},\n    [\"UNKNOWN\"] = {0.929, 0.929, 0.929}\n}",
				},
			},
			["borderOffset"] = 0,
		}
		WeakAurasSaved["displays"]["RedtuzkUI Power Bar Group"] = {
				["backdropColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0.5, -- [4]
				},
				["controlledChildren"] = {
					"Power Bar Text", -- [1]
					"RedtuzkUI Power Bar", -- [2]
				},
				["borderBackdrop"] = "Blizzard Tooltip",
				["xOffset"] = -73,
				["border"] = false,
				["yOffset"] = -107.000366210937,
				["regionType"] = "group",
				["borderSize"] = 16,
				["activeTriggerMode"] = -10,
				["borderEdge"] = "None",
				["anchorPoint"] = "CENTER",
				["expanded"] = true,
				["untrigger"] = {
				},
				["id"] = "RedtuzkUI Power Bar Group",
				["internalVersion"] = 3,
				["additional_triggers"] = {
				},
				["selfPoint"] = "BOTTOMLEFT",
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
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["borderColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0.5, -- [4]
				},
				["borderInset"] = 11,
				["numTriggers"] = 1,
				["borderOffset"] = 5,
				["actions"] = {
					["start"] = {
					},
					["finish"] = {
					},
					["init"] = {
					},
				},
				["conditions"] = {
				},
				["load"] = {
					["ingroup"] = {
						["multi"] = {
						},
					},
					["talent"] = {
						["multi"] = {
						},
					},
					["class"] = {
						["single"] = "MONK",
					},
					["spec"] = {
						["multi"] = {
						},
					},
					["use_class"] = "true",
					["role"] = {
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
					["race"] = {
						["multi"] = {
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["disjunctive"] = "all",
			}
		WeakAurasSaved["displays"]["Power Bar Text"] = {
			["outline"] = "OUTLINE",
			["disjunctive"] = "all",
			["displayText"] = "%c",
			["customText"] = "function()\n    local power = UnitPower(\"player\")\n    local vehiclePower = UnitPower(\"vehicle\")\n    local max = UnitPowerMax(\"player\")\n    local vehicle = select(2, UnitPowerType(\"vehicle\"))\n    local powerType, powerToken, altR, altG, altB = UnitPowerType(\"player\");\n    if (vehicle) then\n        power = vehiclePower\n    end\n    if powerToken ~= \"MANA\" then\n        return power\n    else\n        power = power/max*100\n        local ending = \"%%\"\n        --set number of decimal places to show\n        local decimal = 1\n        if power == 100 then\n            --don't show deciamls if at max power\n        else\n            power = math.floor( (power * 10^decimal) + 0.5) / (10^decimal)\n        end\n        return power..ending\n    end\nend\n\n\n-- Made by Aldarana and Redtuzk, Kazzak EU\n-- RedtuzkUI Discord: http://www.redtuzk.com",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["internalVersion"] = 3,
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Power",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["spellIds"] = {
				},
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["custom_hide"] = "timed",
			},
			["font"] = "Century Gothic Bold",
			["height"] = 18.0000038146973,
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
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
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
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["regionType"] = "text",
			["init_completed"] = 1,
			["parent"] = "RedtuzkUI Power Bar Group",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["justify"] = "CENTER",
			["conditions"] = {
			},
			["additional_triggers"] = {
			},
			["wordWrap"] = "WordWrap",
			["frameStrata"] = 9,
			["width"] = 41.0000419616699,
			["xOffset"] = 73.9996948242188,
			["yOffset"] = -94.0000610351563,
			["numTriggers"] = 1,
			["anchorFrameType"] = "SCREEN",
			["init_started"] = 1,
			["fixedWidth"] = 200,
			["id"] = "Power Bar Text",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		}
end
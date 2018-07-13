local RUI = select(2, ...):unpack()
local E, L, V, P, G = unpack(ElvUI)

function RUI:ImportAuras()
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
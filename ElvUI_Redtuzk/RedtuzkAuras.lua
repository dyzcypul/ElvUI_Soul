local RUI = select(2, ...):unpack()
local E, L, V, P, G = unpack(ElvUI)

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
            ["faction"] = {
                ["multi"] = {
                },
            },
            ["pvptalent"] = {
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
        ["scale"] = 1,
        ["border"] = "None",
        ["regionType"] = "dynamicgroup",
        ["sort"] = "none",
        ["expanded"] = true,
        ["constantFactor"] = "RADIUS",
        ["borderOffset"] = 16,
        ["selfPoint"] = "LEFT",
        ["id"] = "RUI Icon Templates",
        ["anchorFrameType"] = "SCREEN",
        ["frameStrata"] = 1,
        ["width"] = 113.00006103516,
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
                ["duration_type"] = "seconds",
                ["colorType"] = "custom",
                ["type"] = "none",
                ["use_color"] = true,
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
                    [1] = true,
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
        ["text2Color"] = {
            [1] = 1,
            [2] = 1,
            [3] = 1,
            [4] = 1,
        },
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
        ["text1FontFlags"] = "OUTLINE",
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
                ["glow_frame"] = "WeakAuras:Serenity",
                ["message_type"] = "SAY",
                ["do_message"] = false,
                ["do_custom"] = false,
                ["glow_action"] = "show",
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
                ["duration_type"] = "seconds",
                ["colorType"] = "custom",
                ["type"] = "none",
                ["use_color"] = true,
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
                    [1] = true,
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
        ["text2Color"] = {
            [1] = 1,
            [2] = 1,
            [3] = 1,
            [4] = 1,
        },
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
        ["text1FontFlags"] = "OUTLINE",
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
                ["duration_type"] = "seconds",
                ["colorType"] = "custom",
                ["type"] = "none",
                ["use_color"] = true,
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
                    [1] = true,
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
        ["text2Color"] = {
            [1] = 1,
            [2] = 1,
            [3] = 1,
            [4] = 1,
        },
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
        ["text1FontFlags"] = "OUTLINE",
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
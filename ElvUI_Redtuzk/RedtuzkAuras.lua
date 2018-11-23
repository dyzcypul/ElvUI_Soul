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
    ["cooldownTextEnabled"] = false,
    ["customText"] = "function()\\n    ---------DO NOT EDIT!-------\\n    ----------------------------\\n    ----------------------------\\n    local region = aura_env.region\\n    if not region.text3 then\\n        local text3 = region:CreateFontString(nil, \\\"TOOLTIP\\\")\\n        region.text3 = text3\\n        region.text3:SetFont(region.text2:GetFont())\\n        \\n        region.text3:SetPoint(\\\"TOP\\\", 0, 10)\\n        region.text3:SetShadowColor(0,0,0,0)\\n        region.text3:SetTextColor(1,1,1,1)\\n        region.text3:Show()\\n    end\\n    region.text3:SetTextColor(region.text2:GetTextColor())\\n    region.text3:SetText(WeakAuras.ReplacePlaceHolders(\\\"%p\\\", region))\\n    return \\nend\\n\\n\\n\\n\\n\\n",
    ["yOffset"] = 0,
    ["anchorPoint"] = "CENTER",
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
        ["init"] = {
        },
        ["finish"] = {
        },
    },
    ["triggers"] = {
        [1] = {
            ["trigger"] = {
                ["ownOnly"] = true,
                ["use_unit"] = true,
                ["buffShowOn"] = "showOnActive",
                ["subeventPrefix"] = "SPELL",
                ["type"] = "aura",
                ["use_specific_unit"] = false,
                ["unevent"] = "timed",
                ["debuffType"] = "HELPFUL",
                ["spellName"] = "Darkness",
                ["event"] = "Combat Log",
                ["unit"] = "player",
                ["subeventSuffix"] = "_CAST_SUCCESS",
                ["use_spellName"] = true,
                ["spellIds"] = {
                },
                ["use_sourceUnit"] = false,
                ["duration"] = "8",
                ["names"] = {
                },
                ["sourceUnit"] = "player",
                ["custom_hide"] = "timed",
            },
            ["untrigger"] = {
            },
        },
        ["disjunctive"] = "any",
        ["activeTriggerMode"] = 1,
    },
    ["text1Enabled"] = true,
    ["keepAspectRatio"] = false,
    ["animation"] = {
        ["start"] = {
            ["duration_type"] = "seconds",
            ["type"] = "none",
        },
        ["main"] = {
            ["duration_type"] = "seconds",
            ["colorType"] = "custom",
            ["type"] = "none",
            ["use_color"] = true,
        },
        ["finish"] = {
            ["duration_type"] = "seconds",
            ["type"] = "none",
        },
    },
    ["xOffset"] = 0,
    ["stickyDuration"] = true,
    ["glowColor"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["text1Point"] = "BOTTOM",
    ["text2Point"] = "CENTER",
    ["text2FontFlags"] = "OUTLINE",
    ["height"] = 35,
    ["parent"] = "RUI Icon Templates",
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
            ["single"] = 1,
            ["multi"] = {
                [1] = true,
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
    ["text2Font"] = "Century Gothic Bold",
    ["conditions"] = {
    },
    ["color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["text2Containment"] = "INSIDE",
    ["glowType"] = "buttonOverlay",
    ["text1Font"] = "Century Gothic Bold",
    ["internalVersion"] = 9,
    ["desaturate"] = false,
    ["text1FontFlags"] = "OUTLINE",
    ["regionType"] = "icon",
    ["text2Color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["anchorFrameType"] = "SCREEN",
    ["text2FontSize"] = 24,
    ["frameStrata"] = 1,
    ["text1"] = "%s",
    ["text1Color"] = {
        [1] = 0.1843137254902,
        [2] = 1,
        [3] = 0,
        [4] = 1,
    },
    ["zoom"] = 0,
    ["text2"] = "%c",
    ["auto"] = true,
    ["selfPoint"] = "CENTER",
    ["id"] = "Duration + Stacks",
    ["text1Containment"] = "INSIDE",
    ["alpha"] = 1,
    ["width"] = 35,
    ["text2Enabled"] = true,
    ["icon"] = true,
    ["inverse"] = false,
    ["progressPrecision"] = 0,
    ["displayIcon"] = "",
    ["cooldown"] = false,
    ["useglowColor"] = false,
}
	WeakAurasSaved["displays"]["Duration Only"] = {
    ["glow"] = false,
    ["text1FontSize"] = 18,
    ["cooldownTextEnabled"] = false,
    ["customText"] = "function()\\n    ---------DO NOT EDIT!-------\\n    ----------------------------\\n    ----------------------------\\n    local region = aura_env.region\\n    if not region.text3 then\\n        local text3 = region:CreateFontString(nil, \\\"TOOLTIP\\\")\\n        region.text3 = text3\\n        region.text3:SetFont(region.text2:GetFont())\\n        \\n        region.text3:SetPoint(\\\"TOP\\\", 0, 10)\\n        region.text3:SetShadowColor(0,0,0,0)\\n        region.text3:SetTextColor(1,1,1,1)\\n        region.text3:Show()\\n    end\\n    region.text3:SetTextColor(region.text2:GetTextColor())\\n    region.text3:SetText(WeakAuras.ReplacePlaceHolders(\\\"%p\\\", region))\\n    return \\nend\\n\\n\\n\\n\\n\\n",
    ["yOffset"] = 0,
    ["anchorPoint"] = "CENTER",
    ["customTextUpdate"] = "update",
    ["icon"] = true,
    ["triggers"] = {
        [1] = {
            ["trigger"] = {
                ["duration"] = "8",
                ["use_unit"] = true,
                ["buffShowOn"] = "showOnActive",
                ["subeventPrefix"] = "SPELL",
                ["type"] = "aura",
                ["use_specific_unit"] = false,
                ["subeventSuffix"] = "_CAST_SUCCESS",
                ["debuffType"] = "HELPFUL",
                ["spellName"] = "Darkness",
                ["event"] = "Combat Log",
                ["unit"] = "player",
                ["unevent"] = "timed",
                ["use_spellName"] = true,
                ["spellIds"] = {
                },
                ["use_sourceUnit"] = false,
                ["ownOnly"] = true,
                ["names"] = {
                },
                ["sourceUnit"] = "player",
                ["custom_hide"] = "timed",
            },
            ["untrigger"] = {
            },
        },
        ["disjunctive"] = "any",
        ["activeTriggerMode"] = 1,
    },
    ["internalVersion"] = 9,
    ["keepAspectRatio"] = false,
    ["animation"] = {
        ["start"] = {
            ["duration_type"] = "seconds",
            ["type"] = "none",
        },
        ["main"] = {
            ["duration_type"] = "seconds",
            ["colorType"] = "custom",
            ["type"] = "none",
            ["use_color"] = true,
        },
        ["finish"] = {
            ["duration_type"] = "seconds",
            ["type"] = "none",
        },
    },
    ["xOffset"] = 0,
    ["stickyDuration"] = true,
    ["glowColor"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["text1Point"] = "TOP",
    ["text2Point"] = "CENTER",
    ["text2FontFlags"] = "OUTLINE",
    ["height"] = 35,
    ["parent"] = "RUI Icon Templates",
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
            ["single"] = 1,
            ["multi"] = {
                [1] = true,
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
        ["size"] = {
            ["multi"] = {
            },
        },
    },
    ["useglowColor"] = false,
    ["conditions"] = {
    },
    ["color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["text2Containment"] = "INSIDE",
    ["glowType"] = "buttonOverlay",
    ["text1Font"] = "Century Gothic Bold",
    ["text2Font"] = "Century Gothic Bold",
    ["selfPoint"] = "CENTER",
    ["text1FontFlags"] = "OUTLINE",
    ["regionType"] = "icon",
    ["text2Color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["anchorFrameType"] = "SCREEN",
    ["text2FontSize"] = 24,
    ["frameStrata"] = 1,
    ["text1"] = " ",
    ["desaturate"] = false,
    ["zoom"] = 0,
    ["text2"] = "%c",
    ["auto"] = true,
    ["text1Enabled"] = true,
    ["id"] = "Duration Only",
    ["text1Color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["alpha"] = 1,
    ["width"] = 35,
    ["text2Enabled"] = true,
    ["text1Containment"] = "OUTSIDE",
    ["inverse"] = false,
    ["progressPrecision"] = 0,
    ["displayIcon"] = "",
    ["cooldown"] = false,
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
        ["init"] = {
        },
        ["finish"] = {
        },
    },
}
	WeakAurasSaved["displays"]["Duration + Text"] = {
    ["glow"] = false,
    ["text1FontSize"] = 18,
    ["cooldownTextEnabled"] = false,
    ["customText"] = "function()\\n    -----------------------------\\n    local text = \\\"YOUR TEXT HERE\\\"\\n    -----------------------------\\n    \\n    local region = aura_env.region\\n    if not region.text3 then\\n        local text3 = region:CreateFontString(nil, \\\"TOOLTIP\\\")\\n        region.text3 = text3\\n        region.text3:SetFont(region.text2:GetFont())\\n        \\n        region.text3:SetPoint(\\\"TOP\\\", 0, 10)\\n        region.text3:SetShadowColor(0,0,0,0)\\n        region.text3:SetTextColor(1,1,1,1)\\n        region.text3:Show()\\n    end\\n    region.text3:SetTextColor(region.text2:GetTextColor())\\n    region.text3:SetText(text)\\n    return \\nend\\n\\n\\n\\n\\n\\n",
    ["yOffset"] = 0,
    ["anchorPoint"] = "CENTER",
    ["customTextUpdate"] = "update",
    ["icon"] = true,
    ["triggers"] = {
        [1] = {
            ["trigger"] = {
                ["duration"] = "8",
                ["use_unit"] = true,
                ["buffShowOn"] = "showOnActive",
                ["subeventPrefix"] = "SPELL",
                ["type"] = "aura",
                ["use_specific_unit"] = false,
                ["subeventSuffix"] = "_CAST_SUCCESS",
                ["debuffType"] = "HELPFUL",
                ["spellName"] = "Darkness",
                ["event"] = "Combat Log",
                ["unit"] = "player",
                ["unevent"] = "timed",
                ["use_spellName"] = true,
                ["spellIds"] = {
                },
                ["use_sourceUnit"] = false,
                ["ownOnly"] = true,
                ["names"] = {
                },
                ["sourceUnit"] = "player",
                ["custom_hide"] = "timed",
            },
            ["untrigger"] = {
            },
        },
        ["disjunctive"] = "any",
        ["activeTriggerMode"] = 1,
    },
    ["text2Font"] = "Century Gothic Bold",
    ["keepAspectRatio"] = false,
    ["animation"] = {
        ["start"] = {
            ["duration_type"] = "seconds",
            ["type"] = "none",
        },
        ["main"] = {
            ["duration_type"] = "seconds",
            ["colorType"] = "custom",
            ["type"] = "none",
            ["use_color"] = true,
        },
        ["finish"] = {
            ["duration_type"] = "seconds",
            ["type"] = "none",
        },
    },
    ["xOffset"] = 0,
    ["stickyDuration"] = true,
    ["glowColor"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["text1Point"] = "CENTER",
    ["internalVersion"] = 9,
    ["text2FontFlags"] = "OUTLINE",
    ["height"] = 35,
    ["parent"] = "RUI Icon Templates",
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
        ["difficulty"] = {
            ["multi"] = {
            },
        },
        ["race"] = {
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
        ["spec"] = {
            ["single"] = 1,
            ["multi"] = {
                [1] = true,
            },
        },
        ["faction"] = {
            ["multi"] = {
            },
        },
        ["ingroup"] = {
            ["multi"] = {
            },
        },
        ["size"] = {
            ["multi"] = {
            },
        },
    },
    ["useglowColor"] = false,
    ["conditions"] = {
    },
    ["color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["text2Containment"] = "INSIDE",
    ["glowType"] = "buttonOverlay",
    ["text1Font"] = "Century Gothic Bold",
    ["text2Point"] = "CENTER",
    ["selfPoint"] = "CENTER",
    ["text1FontFlags"] = "OUTLINE",
    ["regionType"] = "icon",
    ["text2Color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["anchorFrameType"] = "SCREEN",
    ["text2FontSize"] = 14,
    ["frameStrata"] = 1,
    ["text1"] = "%p",
    ["text1Enabled"] = true,
    ["desaturate"] = false,
    ["text2"] = "%c",
    ["auto"] = true,
    ["zoom"] = 0,
    ["id"] = "Duration + Text",
    ["text1Color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["alpha"] = 1,
    ["width"] = 35,
    ["text2Enabled"] = true,
    ["text1Containment"] = "OUTSIDE",
    ["inverse"] = false,
    ["progressPrecision"] = 0,
    ["displayIcon"] = "",
    ["cooldown"] = false,
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
        ["init"] = {
        },
        ["finish"] = {
        },
    },
}
end
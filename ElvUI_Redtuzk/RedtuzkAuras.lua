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
    ["customText"] = "function()\n    ---------DO NOT EDIT!-------\n    ----------------------------\n    ----------------------------\n    local region = aura_env.region\n    if not region.text3 then\n        local text3 = region:CreateFontString(nil, \"TOOLTIP\")\n        region.text3 = text3\n        region.text3:SetFont(region.text2:GetFont())\n        \n        region.text3:SetPoint(\"TOP\", 0, 10)\n        region.text3:SetShadowColor(0,0,0,0)\n        region.text3:SetTextColor(1,1,1,1)\n        region.text3:Show()\n    end\n    region.text3:SetTextColor(region.text2:GetTextColor())\n    region.text3:SetText(WeakAuras.ReplacePlaceHolders(\"%p\", region))\n    return \nend",
    ["yOffset"] = 0,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
    ["customTextUpdate"] = "update",
    ["cooldownEdge"] = false,
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
            ["colorType"] = "custom",
            ["use_color"] = true,
            ["type"] = "none",
            ["duration_type"] = "seconds",
        },
        ["finish"] = {
            ["duration_type"] = "seconds",
            ["type"] = "none",
        },
    },
    ["frameStrata"] = 1,
    ["progressPrecision"] = 0,
    ["authorOptions"] = {
    },
    ["stickyDuration"] = true,
    ["glowColor"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["text1Point"] = "BOTTOM",
    ["alpha"] = 1,
    ["text2FontFlags"] = "OUTLINE",
    ["height"] = 35,
    ["xOffset"] = 0,
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
    ["text2Point"] = "CENTER",
    ["conditions"] = {
    },
    ["text2Font"] = "Century Gothic Bold",
    ["text2Containment"] = "INSIDE",
    ["glowType"] = "buttonOverlay",
    ["text1Font"] = "Century Gothic Bold",
    ["parent"] = "RUI Icon Templates",
    ["icon"] = true,
    ["text1FontFlags"] = "OUTLINE",
    ["regionType"] = "icon",
    ["internalVersion"] = 9,
    ["desaturate"] = false,
    ["text2FontSize"] = 24,
    ["anchorFrameType"] = "SCREEN",
    ["text1"] = "%s",
    ["text2Color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["selfPoint"] = "CENTER",
    ["zoom"] = 0,
    ["auto"] = true,
    ["text2"] = "%c",
    ["id"] = "Duration + Stacks",
    ["text1Color"] = {
        [1] = 0.1843137254902,
        [2] = 1,
        [3] = 0,
        [4] = 1,
    },
    ["text2Enabled"] = true,
    ["width"] = 35,
    ["text1Containment"] = "INSIDE",
    ["config"] = {
    },
    ["inverse"] = false,
    ["color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["displayIcon"] = "",
    ["cooldown"] = false,
    ["useglowColor"] = false,
}
	WeakAurasSaved["displays"]["Duration Only"] = {
    ["glow"] = false,
    ["text1FontSize"] = 18,
    ["cooldownTextEnabled"] = false,
    ["customText"] = "function()    \n    ---------DO NOT EDIT!-------\n    ---------------------------- \n    ----------------------------\n    local region = aura_env.region\n    if not region.text3 then\n        local text3 = region:CreateFontString(nil, \"TOOLTIP\")\n        region.text3 = text3\n        region.text3:SetFont(region.text2:GetFont())\n        \n        region.text3:SetPoint(\"TOP\", 0, 10)\n        region.text3:SetShadowColor(0,0,0,0)\n        region.text3:SetTextColor(1,1,1,1)\n        region.text3:Show()\n    end\n    region.text3:SetTextColor(region.text2:GetTextColor())\n    region.text3:SetText(WeakAuras.ReplacePlaceHolders(\"%p\", region))\n    return \nend",
    ["yOffset"] = 0,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
    ["customTextUpdate"] = "update",
    ["cooldownEdge"] = false,
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
    ["text1Enabled"] = false,
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
    ["selfPoint"] = "CENTER",
    ["text2Font"] = "Century Gothic Bold",
    ["color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["stickyDuration"] = true,
    ["progressPrecision"] = 0,
    ["text1Point"] = "BOTTOM",
    ["authorOptions"] = {
    },
    ["text2FontFlags"] = "OUTLINE",
    ["height"] = 35,
    ["conditions"] = {
    },
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
    ["glowColor"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["xOffset"] = 0,
    ["text1Containment"] = "INSIDE",
    ["text2Containment"] = "INSIDE",
    ["glowType"] = "buttonOverlay",
    ["text1Font"] = "Century Gothic Bold",
    ["text1Color"] = {
        [1] = 0.1843137254902,
        [2] = 1,
        [3] = 0,
        [4] = 1,
    },
    ["parent"] = "RUI Icon Templates",
    ["text2Color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["regionType"] = "icon",
    ["anchorFrameType"] = "SCREEN",
    ["text2Enabled"] = true,
    ["text2FontSize"] = 24,
    ["text1FontFlags"] = "OUTLINE",
    ["text1"] = "%s",
    ["internalVersion"] = 9,
    ["zoom"] = 0,
    ["text2"] = "%c",
    ["auto"] = true,
    ["icon"] = true,
    ["id"] = "Duration Only",
    ["frameStrata"] = 1,
    ["alpha"] = 1,
    ["width"] = 35,
    ["desaturate"] = false,
    ["config"] = {
    },
    ["inverse"] = false,
    ["text2Point"] = "CENTER",
    ["displayIcon"] = "",
    ["cooldown"] = false,
    ["useglowColor"] = false,
}
	WeakAurasSaved["displays"]["Duration + Text"] = {
    ["glow"] = false,
    ["text1FontSize"] = 18,
    ["cooldownTextEnabled"] = false,
    ["customText"] = "function()\n    -----------------------------\n    local text = \"YOUR TEXT HERE\"\n    -----------------------------\n    \n    local region = aura_env.region\n    if not region.text3 then\n        local text3 = region:CreateFontString(nil, \"TOOLTIP\")\n        region.text3 = text3\n        region.text3:SetFont(region.text2:GetFont())\n        \n        region.text3:SetPoint(\"TOP\", 0, 10)\n        region.text3:SetShadowColor(0,0,0,0)\n        region.text3:SetTextColor(1,1,1,1)\n        region.text3:Show()\n    end\n    region.text3:SetTextColor(region.text2:GetTextColor())\n    region.text3:SetText(text)\n    return \nend",
    ["yOffset"] = 0,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
    ["customTextUpdate"] = "update",
    ["cooldownEdge"] = false,
    ["icon"] = true,
    ["triggers"] = {
        [1] = {
            ["trigger"] = {
                ["duration"] = "8",
                ["use_unit"] = true,
                ["buffShowOn"] = "showOnActive",
                ["custom_hide"] = "timed",
                ["type"] = "aura",
                ["use_specific_unit"] = false,
                ["subeventSuffix"] = "_CAST_SUCCESS",
                ["names"] = {
                },
                ["ownOnly"] = true,
                ["event"] = "Combat Log",
                ["unit"] = "player",
                ["unevent"] = "timed",
                ["use_spellName"] = true,
                ["spellIds"] = {
                },
                ["use_sourceUnit"] = false,
                ["spellName"] = "Darkness",
                ["debuffType"] = "HELPFUL",
                ["sourceUnit"] = "player",
                ["subeventPrefix"] = "SPELL",
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
    ["desaturate"] = false,
    ["xOffset"] = 0,
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
    ["stickyDuration"] = true,
    ["progressPrecision"] = 0,
    ["text1Point"] = "CENTER",
    ["glowColor"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["text2FontFlags"] = "OUTLINE",
    ["height"] = 35,
    ["displayIcon"] = "",
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
    ["color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["alpha"] = 1,
    ["useglowColor"] = false,
    ["text2Containment"] = "INSIDE",
    ["glowType"] = "buttonOverlay",
    ["text1Font"] = "Century Gothic Bold",
    ["text1Color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["width"] = 35,
    ["text1FontFlags"] = "OUTLINE",
    ["regionType"] = "icon",
    ["text2Enabled"] = true,
    ["text1Enabled"] = true,
    ["text2FontSize"] = 14,
    ["selfPoint"] = "CENTER",
    ["text1"] = "%p",
    ["text2Color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["zoom"] = 0,
    ["text2"] = "%c",
    ["auto"] = true,
    ["text1Containment"] = "OUTSIDE",
    ["id"] = "Duration + Text",
    ["text2Point"] = "CENTER",
    ["frameStrata"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["parent"] = "RUI Icon Templates",
    ["config"] = {
    },
    ["inverse"] = false,
    ["internalVersion"] = 9,
    ["conditions"] = {
    },
    ["cooldown"] = false,
    ["authorOptions"] = {
    },
}
end

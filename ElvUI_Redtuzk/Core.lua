local addon, ns = ...
local Version = GetAddOnMetadata(addon, "Version")
local addon, engine = ...
engine[1] = {}

function engine:unpack()
	return self[1]
end

RUI = engine [1]

--Cache Lua / WoW API
local format = string.format
local GetCVarBool = GetCVarBool
local ReloadUI = ReloadUI
local StopMusic = StopMusic

-- These are things we do not cache
-- GLOBALS: PluginInstallStepComplete, PluginInstallFrame

--Change this line and use a unique name for your plugin.
local MyPluginName = "RedtuzkUI"
local RUIlayout = "5x2"

--Create references to ElvUI internals
local E, L, V, P, G = unpack(ElvUI)
local UF = E:GetModule("UnitFrames")

--Create reference to LibElvUIPlugin
local EP = LibStub("LibElvUIPlugin-1.0")

--Create a new ElvUI module so ElvUI can handle initialization when ready
local mod = E:NewModule(MyPluginName, "AceHook-3.0", "AceEvent-3.0", "AceTimer-3.0");

--Store the Discord link
discordLink = "http://discord.gg/Jje2he7"

--Runs for the step questioning the user if they want a new ElvUI profile
local function NewProfile(new)
	if (new) then -- the user clicked "Create New" create a dialog pop up
		StaticPopupDialogs["CreateProfileNameNew"] = {
		text = L["Name for the new profile"],
		button1 = L["Accept"],
		button2 = L["Cancel"],
		hasEditBox = 1,
		whileDead = 1,
		hideOnEscape = 1,
		timeout = 0,
		OnShow = function(self, data)
		  self.editBox:SetText("RedtuzkUI"); --default text in the editbox
		end,
		OnAccept = function(self, data, data2)
		  local text = self.editBox:GetText()
		  ElvUI[1].data:SetProfile(text) --ElvUI function for changing profiles, creates a new profile if name doesn't exist
		  PluginInstallStepComplete.message = "Profile Created"
		  PluginInstallStepComplete:Show()
		end
	  };
	  StaticPopup_Show("CreateProfileNameNew", "test"); --tell our dialog box to show
	elseif(new == false) then -- the user clicked "Use Current" create a dialog pop up
		StaticPopupDialogs["ProfileOverrideConfirm"] = {
			text = "Are you sure you want to override the current profile?",
			button1 = "Yes",
			button2 = "No",
			OnAccept = function()
			    PluginInstallStepComplete.message = "Profile Selected"
		        PluginInstallStepComplete:Show()
			end,
			timeout = 0,
			whileDead = true,
			hideOnEscape = true,
		}
		StaticPopup_Show("ProfileOverrideConfirm", "test")--tell our dialog box to show
	end
end

local function CreateCustomTexts()
	E.db["unitframe"]["units"]["player"]["customTexts"] = E.db["unitframe"]["units"]["player"]["customTexts"] or {}
	E.db["unitframe"]["units"]["player"]["customTexts"]["Health2"] = {}
	E.db["unitframe"]["units"]["player"]["customTexts"]["!Percent"] = {}
	E.db["unitframe"]["units"]["player"]["customTexts"]["!Name"] = {}
	E.db["unitframe"]["units"]["player"]["customTexts"]["PowerText"] = {}

	E.db["unitframe"]["units"]["party"]["customTexts"] = E.db["unitframe"]["units"]["party"]["customTexts"] or {}
	E.db["unitframe"]["units"]["party"]["customTexts"]["Health Text"] = {}

	E.db["unitframe"]["units"]["raid40"]["customTexts"] = E.db["unitframe"]["units"]["raid40"]["customTexts"] or {}
	E.db["unitframe"]["units"]["raid40"]["customTexts"]["Health Text"] = {}

	E.db["unitframe"]["units"]["boss"]["customTexts"] = E.db["unitframe"]["units"]["boss"]["customTexts"] or {}
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Health2"] = {}
	E.db["unitframe"]["units"]["boss"]["customTexts"]["AltPowerText"] = {}
	E.db["unitframe"]["units"]["boss"]["customTexts"]["!Health"] = {}
	E.db["unitframe"]["units"]["boss"]["customTexts"]["BossPower"] = {}
	E.db["unitframe"]["units"]["boss"]["customTexts"]["!Name"] = {}

	E.db["unitframe"]["units"]["target"]["customTexts"] = E.db["unitframe"]["units"]["target"]["customTexts"] or {}
	E.db["unitframe"]["units"]["target"]["customTexts"]["Health2"] = {}
	E.db["unitframe"]["units"]["target"]["customTexts"]["!Name"] = {}
	E.db["unitframe"]["units"]["target"]["customTexts"]["PowerText"] = {}
	E.db["unitframe"]["units"]["target"]["customTexts"]["!Percent"] = {}

	E.db["unitframe"]["units"]["targettarget"]["customTexts"] = E.db["unitframe"]["units"]["targettarget"]["customTexts"] or {}
	E.db["unitframe"]["units"]["targettarget"]["customTexts"]["!Name"] = {}

	E.db["unitframe"]["units"]["focus"]["customTexts"] = E.db["unitframe"]["units"]["focus"]["customTexts"] or {}
	E.db["unitframe"]["units"]["focus"]["customTexts"]["!Amount"] = {}
	E.db["unitframe"]["units"]["focus"]["customTexts"]["!Percent"] = {}
	E.db["unitframe"]["units"]["focus"]["customTexts"]["!Name"] = {}

	E.db["unitframe"]["units"]["pet"]["customTexts"] = E.db["unitframe"]["units"]["pet"]["customTexts"] or {}
	E.db["unitframe"]["units"]["pet"]["customTexts"]["!Name"] = {}

	E.db["unitframe"]["units"]["arena"]["customTexts"] = E.db["unitframe"]["units"]["arena"]["customTexts"] or {}
	E.db["unitframe"]["units"]["arena"]["customTexts"]["!Name"] = {}
	E.db["unitframe"]["units"]["arena"]["customTexts"]["!Health"] = {}

end

local function CreatingMissingSettings()
	E.db["general"]["minimap"]["icons"]["garrison"] = E.db["general"]["minimap"]["icons"]["garrison"] or {}
	E.db["general"]["reputation"] = E.db["general"]["reputation"] or {}
	E.db["general"]["experience"] = E.db["general"]["experience"] or {}
	E.db["sle"]["datatext"] = E.db["sle"]["datatext"] or {
			["dp3"] = {},
			["chatright"]= {},
			["bottom"] = {},
			["dp2"] = {},
			["chatleft"] = {},
			["dp6"] = {},
			["dp1"] = {},
			["top"] = {},
			["dashboard"] = {},
		}
	E.db["sle"]["characterframeoptions"] = E.db["sle"]["characterframeoptions"] or {
		["itemgem"] = {},
		["itemenchant"] = {},
		["showimage"] = {},
	}
	E.db["sle"]["combatico"] = E.db["sle"]["combatico"] or {}
	E.db["sle"]["threat"] = E.db["sle"]["threat"] or {}
	E.db["sle"]["backgrounds"]["bottom"] = E.db["sle"]["backgrounds"]["bottom"] or {}
	E.db["sle"]["backgrounds"]["action"] = E.db["sle"]["backgrounds"]["action"] or {}
	E.db["sle"]["backgrounds"]["right"] = E.db["sle"]["backgrounds"]["right"] or {}
	E.db["sle"]["backgrounds"]["left"] = E.db["sle"]["backgrounds"]["left"] or {}
	E.db["sle"]["unitframes"]["unit"]["player"] = E.db["sle"]["unitframes"]["unit"]["player"] or {}
	E.db["sle"]["unitframes"]["unit"]["player"]["rested"] = E.db["sle"]["unitframes"]["unit"]["player"]["rested"] or {}
	E.db["sle"]["unitframes"]["unit"]["player"]["combatico"] = E.db["sle"]["unitframes"]["unit"]["player"]["combatico"] or {}
	E.db["raidcooldown"] = E.db["raidcooldown"] or {}
	E.db["raidcooldown"]["cooldown"] = E.db["raidcooldown"]["cooldown"] or {}
	E.db["unitframe"]["units"]["targettarget"]["buffs"]["useWhitelist"] = E.db["unitframe"]["units"]["targettarget"]["buffs"]["useWhitelist"] or {}
	E.db["unitframe"]["units"]["party"]["GPSArrow"] = E.db["unitframe"]["units"]["party"]["GPSArrow"] or {}
	E.db["unitframe"]["units"]["raid40"]["GPSArrow"] = E.db["unitframe"]["units"]["raid40"]["GPSArrow"] or {}
	E.db["unitframe"]["units"]["target"]["combobar"] = E.db["unitframe"]["units"]["target"]["combobar"] or {}
		E.db["CustomTweaks"] = E.db["CustomTweaks"] or {}
	E.db["CustomTweaks"]["PowerBarTexture"] = E.db["CustomTweaks"]["PowerBarTexture"] or {}
	E.db["CustomTweaks"]["AuraIconSpacing"] = E.db["CustomTweaks"]["AuraIconSpacing"] or {}
	E.db["CustomTweaks"]["CastbarText"] = E.db["CustomTweaks"]["CastbarText"] or {
		["Boss"] = {
			["text"] = {
				["color"] = {}
			},
			["duration"] = {
				["color"] = {}
			},
		},
		["Focus"] = {
			["text"] = {
				["color"] = {}
			},
			["duration"] = {
				["color"] = {}
			},
		},
		["Target"] = {
			["text"] = {
				["color"] = {}
			},
			["duration"] = {
				["color"] = {}
			},
		},
		["Player"] = {
			["text"] = {
				["color"] = {}
			},
			["duration"] = {
				["color"] = {}
			},
		},
	}
	E.db["CustomTweaks"]["CastbarTextAndBackdrop"] = E.db["CustomTweaks"]["CastbarTextAndBackdrop"] or {}
	E.db["CustomTweaks"]["CastbarTextAndBackdrop"]["backdropColor"] = E.db["CustomTweaks"]["CastbarTextAndBackdrop"]["backdropColor"] or {}
	E.db["CustomTweaks"]["CastbarTextAndBackdrop"]["hideText"] = E.db["CustomTweaks"]["CastbarTextAndBackdrop"]["hideText"] or {}
	E.db["datatexts"]["panels"]["DP_1"] = E.db["datatexts"]["panels"]["DP_1"] or {}
	E.db["datatexts"]["panels"]["DP_6"] = E.db["datatexts"]["panels"]["DP_6"] or {}
	E.db["datatexts"]["panels"]["DP_2"] = E.db["datatexts"]["panels"]["DP_2"] or {}
	E.db["nameplates"]["filters"]["SCK"] = E.db["nameplates"]["filters"]["SCK"]or {
		["triggers"] = {},
	}
	E.db["ESC"] = E.db["ESC"] or {}
	E.db["ESC"]["mmSScolor"] = E.db["ESC"]["mmSScolor"] or {}
	E.db["auras"]["consolidatedBuffs"] = E.db["auras"]["consolidatedBuffs"] or {}
	E.db["nameplates"]["cooldown"]["fonts"] = E.db["nameplates"]["cooldown"]["fonts"]or {}
		E.db["nameplates"]["filters"]["MotC"] = E.db["nameplates"]["filters"]["MotC"] or {
		["triggers"] = {
			["enabled"] = {}
		}
	}
	E.db["nameplates"]["filters"]["SCK"] = E.db["nameplates"]["filters"]["SCK"] or {
		["triggers"] = {
			["enabled"] = {}
		}
	}
end

local function EnableCustomTweaks()
	E.private["CustomTweaks"] = {
		["AuraIconSpacing"] = true,
		["CastbarText"] = true,
	}
end

local function DummySLE()
	E.db["sle"] = E.db["sle"] or {}
	E.db["sle"]["backgrounds"] = E.db["sle"]["backgrounds"] or {}
	E.db["sle"]["raidmarkers"] = E.db["sle"]["raidmarkers"] or {}
	E.db["sle"]["media"] = E.db["sle"]["media"] or {}
	E.db["sle"]["media"]["fonts"] = E.db["sle"]["media"]["fonts"] or {}
	E.db["sle"]["media"]["fonts"]["gossip"] = E.db["sle"]["media"]["fonts"]["gossip"] or {}
	E.db["sle"]["media"]["fonts"]["zone"] = E.db["sle"]["media"]["fonts"]["zone"] or {}
	E.db["sle"]["media"]["fonts"]["subzone"] = E.db["sle"]["media"]["fonts"]["subzone"] or {}
	E.db["sle"]["media"]["fonts"]["questFontSuperHuge"] = E.db["sle"]["media"]["fonts"]["questFontSuperHuge"] or {}
	E.db["sle"]["media"]["fonts"]["questFontSuperHuge"] = E.db["sle"]["media"]["fonts"]["questFontSuperHuge"] or {}
	E.db["sle"]["media"]["fonts"]["objectiveHeader"] = E.db["sle"]["media"]["fonts"]["objectiveHeader"] or {}
	E.db["sle"]["media"]["fonts"]["mail"] = E.db["sle"]["media"]["fonts"]["mail"] or {}
	E.db["sle"]["media"]["fonts"]["objective"] = E.db["sle"]["media"]["fonts"]["objective"] or {}
	E.db["sle"]["media"]["fonts"]["editbox"] = E.db["sle"]["media"]["fonts"]["editbox"] or {}
	E.db["sle"]["media"]["fonts"]["pvp"] = E.db["sle"]["media"]["fonts"]["pvp"] or {}
	E.db["sle"]["Armory"] = E.db["sle"]["Armory"] or {}
	E.db["sle"]["Armory"]["Character"] = E.db["sle"]["Armory"]["Character"] or {}
	E.db["sle"]["Armory"]["Character"]["Artifact"] = E.db["sle"]["Armory"]["Character"]["Artifact"] or {}
	E.db["sle"]["Armory"]["Character"]["Stats"] = E.db["sle"]["Armory"]["Character"]["Stats"] or {}
	E.db["sle"]["Armory"]["Character"]["Stats"]["ItemLevel"] = E.db["sle"]["Armory"]["Character"]["Stats"]["ItemLevel"] or {}
	E.db["sle"]["Armory"]["Character"]["Stats"]["List"] =  E.db["sle"]["Armory"]["Character"]["Stats"]["List"] or {}
	E.db["sle"]["Armory"]["Character"]["Stats"]["AverageColor"] = E.db["sle"]["Armory"]["Character"]["Stats"]["AverageColor"] or {}
	E.db["sle"]["Armory"]["Character"]["Backdrop"] = E.db["sle"]["Armory"]["Character"]["Backdrop"] or {}
	E.db["sle"]["Armory"]["Character"]["Gem"] = E.db["sle"]["Armory"]["Character"]["Gem"] or {}
	E.db["sle"]["Armory"]["Character"]["Durability"] = E.db["sle"]["Armory"]["Character"]["Durability"] or {}
	E.db["sle"]["Armory"]["Character"]["Level"] = E.db["sle"]["Armory"]["Character"]["Level"] or {}
	E.db["sle"]["Armory"]["Character"]["Gradation"] =  E.db["sle"]["Armory"]["Character"]["Gradation"] or {}
	E.db["sle"]["Armory"]["Character"]["Gradation"]["Color"] = E.db["sle"]["Armory"]["Character"]["Gradation"]["Color"] or {}
	E.db["sle"]["Armory"]["Character"]["Enchant"] = E.db["sle"]["Armory"]["Character"]["Enchant"] or {}
	E.db["sle"]["Armory"]["Inspect"] = E.db["sle"]["Armory"]["Inspect"] or {}
	E.db["sle"]["minimap"] = E.db["sle"]["minimap"] or {}
	E.db["sle"]["minimap"]["instance"] = E.db["sle"]["minimap"]["instance"] or {}
	E.db["sle"]["loot"] =  E.db["sle"]["loot"] or {}
	E.db["sle"]["loot"]["autoroll"] = E.db["sle"]["loot"]["autoroll"] or {}
	E.db["sle"]["loot"]["looticons"] = E.db["sle"]["loot"]["looticons"] or {}
	E.db["sle"]["loot"]["looticons"]["channels"] = E.db["sle"]["loot"]["looticons"]["channels"] or {}
	E.db["sle"]["skins"] = E.db["sle"]["skins"] or {}
	E.db["sle"]["skins"]["objectiveTracker"] = E.db["sle"]["skins"]["objectiveTracker"] or {}
	E.db["sle"]["skins"]["objectiveTracker"]["underlineColor"] = E.db["sle"]["skins"]["objectiveTracker"]["underlineColor"] or {}
	E.db["sle"]["skins"]["objectiveTracker"]["colorHeader"] = E.db["sle"]["skins"]["objectiveTracker"]["colorHeader"] or {}
	E.db["sle"]["skins"]["merchant"] = E.db["sle"]["skins"]["merchant"] or {}
	E.db["sle"]["skins"]["merchant"]["list"] = E.db["sle"]["skins"]["merchant"]["list"] or {}
	E.db["sle"]["bags"] = E.db["sle"]["bags"] or {}
	E.db["sle"]["bags"]["artifactPower"] = E.db["sle"]["bags"]["artifactPower"] or {}
	E.db["sle"]["bags"]["artifactPower"]["fonts"] = E.db["sle"]["bags"]["artifactPower"]["fonts"] or {}
	E.db["sle"]["shadows"] = E.db["sle"]["shadows"] or {}
	E.db["sle"]["tooltip"] = E.db["sle"]["tooltip"] or {}
	E.db["sle"]["tooltip"]["RaidProg"] = E.db["sle"]["tooltip"]["RaidProg"] or {}
	E.db["sle"]["tooltip"]["RaidProg"]["raids"] = E.db["sle"]["tooltip"]["RaidProg"]["raids"] or {}
	E.db["sle"]["chat"] = E.db["sle"]["chat"] or {}
	E.db["sle"]["chat"]["tab"] = E.db["sle"]["chat"]["tab"] or {}
	E.db["sle"]["chat"]["tab"]["color"] = 	E.db["sle"]["chat"]["tab"]["color"] or {}
	E.db["sle"]["backgrounds"]["bg1"] = E.db["sle"]["backgrounds"]["bg1"] or {}
	E.db["sle"]["backgrounds"]["bg2"] = E.db["sle"]["backgrounds"]["bg2"] or {}
	E.db["sle"]["datatexts"] = E.db["sle"]["datatexts"] or {}
	E.db["sle"]["datatexts"]["panel2"] = E.db["sle"]["datatexts"]["panel2"] or {}
	E.db["sle"]["datatexts"]["panel1"] = E.db["sle"]["datatexts"]["panel1"] or {}
	E.db["sle"]["unitframes"] = E.db["sle"]["unitframes"] or {}
	E.db["sle"]["unitframes"]["unit"] =  E.db["sle"]["unitframes"]["unit"] or {}
	E.db["sle"]["dt"] = E.db["sle"]["dt"] or {}
	E.db["sle"]["dt"]["friends"] = E.db["sle"]["dt"]["friends"] or {}
	E.db["sle"]["raidmanager"] = E.db["sle"]["raidmanager"] or {}
	E.db["sle"]["uibuttons"] = E.db["sle"]["uibuttons"] or {}
	E.db["datatexts"]["panels"]["SLE_DataPanel_1"] = E.db["datatexts"]["panels"]["SLE_DataPanel_1"] or {}
	E.db["datatexts"]["panels"]["SLE_DataPanel_2"] = E.db["datatexts"]["panels"]["SLE_DataPanel_2"] or {}
end

local function AddCustomTags()
	--The following is borrowed from the CustomTags addon credit: Blazeflack-------------------
	local textFormatStyles = {
	["CURRENT"] = "%s",
	["PERCENT"] = "%.1f%%",
	}
	local textFormatStylesNoDecimal = {
	["CURRENT"] = "%s",
	["PERCENT"] = "%.0f%%",
	}
	local function ShortValue(number, noDecimal)
		shortValueFormat = (noDecimal and "%.0f%s" or "%.1f%s")
		if E.db.general.numberPrefixStyle == "METRIC" then
			if abs(number) >= 1e9 then
				return format("%.1f%s", number / 1e9, "G")
			elseif abs(number) >= 1e6 then
				return format("%.1f%s", number / 1e6, "M")
			elseif abs(number) >= 1e3 then
				return format(shortValueFormat, number / 1e3, "k")
			else
				return format("%d", number)
			end
		elseif E.db.general.numberPrefixStyle == "CHINESE" then
			if abs(number) >= 1e8 then
				return format("%.1f%s", number / 1e8, "Y")
			elseif abs(number) >= 1e4 then
				return format("%.1f%s", number / 1e4, "W")
			else
				return format("%d", number)
			end
		else
			if abs(number) >= 1e9 then
				return format("%.1f%s", number / 1e9, "B")
			elseif abs(number) >= 1e6 then
				return format("%.1f%s", number / 1e6, "M")
			elseif abs(number) >= 1e3 then
				return format(shortValueFormat, number / 1e3, "K")
			else
				return format("%d", number)
			end
		end
	end
	local function GetFormattedText(min, max, style, noDecimal)
		assert(textFormatStyles[style] or textFormatStylesNoDecimal[style], "CustomTags Invalid format style: "..style)
		assert(min, "CustomTags - You need to provide a current value. Usage: GetFormattedText(min, max, style, noDecimal)")
		assert(max, "CustomTags - You need to provide a maximum value. Usage: GetFormattedText(min, max, style, noDecimal)")

		if max == 0 then max = 1 end

		local chosenFormat
		if noDecimal then
			chosenFormat = textFormatStylesNoDecimal[style]
		else
			chosenFormat = textFormatStyles[style]
		end

		if style == "PERCENT" then
			return format(chosenFormat, min / max * 100)
		elseif style == "CURRENT" or ((style == "CURRENT_MAX" or style == "CURRENT_MAX_PERCENT" or style == "CURRENT_PERCENT") and min == max) then
			if noDecimal then
				return format(textFormatStylesNoDecimal["CURRENT"], ShortValue(min, noDecimal))
			else
				return format(textFormatStyles["CURRENT"], ShortValue(min, noDecimal))
			end
		end
	end
	-------------------------------------CustomTags----------------------------------------------------
	---------------------------------------------------------------------------------------------------
	ElvUF.Tags.Events["power:percentreal"] = "UNIT_DISPLAYPOWER UNIT_POWER_FREQUENT UNIT_MAXPOWER"
	ElvUF.Tags.Methods["power:percentreal"] = function(unit)
		local pType = UnitPowerType(unit)
		local min, max = UnitPower(unit, pType), UnitPowerMax(unit, pType)
		local deficit = max - min
		local String

		if (max >= 0) then
			String = GetFormattedText(min, max, "PERCENT", true)
		end

		return String
	end
	ElvUF.Tags.Events["power:currentreal"] = "UNIT_DISPLAYPOWER UNIT_POWER_FREQUENT UNIT_MAXPOWER"
	ElvUF.Tags.Methods["power:currentreal"] = function(unit)
		local pType = UnitPowerType(unit)
		local min, max = UnitPower(unit, pType), UnitPowerMax(unit, pType)
		local deficit = max - min
		local String

		if (max >= 0) then
			String = GetFormattedText(min, max, "CURRENT", false)
		end

		return String
	end
	ElvUF.Tags.Events["power:RUIPower"] = "UNIT_DISPLAYPOWER UNIT_POWER_FREQUENT UNIT_MAXPOWER"
	ElvUF.Tags.Methods["power:RUIPower"] = function(unit)
		local pType = UnitPowerType(unit)
		local min, max = UnitPower(unit, pType), UnitPowerMax(unit, pType)
		local deficit = max - min
		local String

		if (max >= 100) and (max <= 200) then
			String = GetFormattedText(min, max, "CURRENT", true)
		else
			String = GetFormattedText(min, max, "PERCENT", true)
		end

		return String
	end
end

local function UpdateAuraIconSettings(self, auras, noCycle)
	local index = 1
		if ElvUIPlayerBuffs then
		local child = select(index, ElvUIPlayerBuffs:GetChildren())
		local db = self.db.buffs
		while child do
			if child.time then
				child.count:ClearAllPoints()
				child.count:Point("CENTER", 1, 0)
			end
			index = index + 1
			child = select(index, ElvUIPlayerBuffs:GetChildren())
		end
	end
end
hooksecurefunc(UF, "UpdateAuraIconSettings", UpdateAuraIconSettings)

local function WASetup(aura)
	if aura == "templates" then
		RUI:ImportTemplates()
		PluginInstallStepComplete.message = "RUI Icon Templates Imported"
		PluginInstallStepComplete:Show()
	end
end

--This function will hold your layout settings
local function SetupLayoutBar(layout)
	CreateCustomTexts()
	CreatingMissingSettings()
	EnableCustomTweaks()
	local RUIver = E.db[MyPluginName].install_version
	RUI:ElvUISettings()
	E.db[MyPluginName].install_version = RUIver
	E.db[MyPluginName].layout = layout

	if layout == "5x2" then
	elseif layout == "6x2" then
		E.db["actionbar"]["bar2"]["buttons"] = 6
		E.db["actionbar"]["bar2"]["buttonsize"] = 36
		E.db["actionbar"]["bar1"]["buttons"] = 6
		E.db["actionbar"]["bar1"]["buttonsize"] = 36
		E.db["movers"]["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,293"
		E.db["movers"]["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,256"
		E.db["unitframe"]["units"]["player"]["castbar"]["width"] = 222
		E.db["movers"]["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,235"
		E.db["unitframe"]["units"]["player"]["power"]["detachedWidth"] = 222
		E.db["unitframe"]["units"]["player"]["classbar"]["detachedWidth"] = 222
	elseif layout == "8x2" then
		E.db["actionbar"]["bar2"]["buttons"] = 8
		E.db["actionbar"]["bar2"]["buttonsize"] = 36
		E.db["actionbar"]["bar1"]["buttons"] = 8
		E.db["actionbar"]["bar1"]["buttonsize"] = 36
		E.db["movers"]["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,293"
		E.db["movers"]["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,256"
		E.db["unitframe"]["units"]["player"]["castbar"]["width"] = 295
		E.db["movers"]["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,235"
		E.db["unitframe"]["units"]["player"]["power"]["detachedWidth"] = 295
		E.db["unitframe"]["units"]["player"]["classbar"]["detachedWidth"] = 295
		E.db["movers"]["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-300,330"
		E.db["movers"]["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-300,193"
		E.db["movers"]["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-300,193"
		E.db["movers"]["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,474,330"
		E.db["movers"]["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-300,306"
		E.db["movers"]["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,300,330"
		E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-474,330"
		E.db["movers"]["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-300,141"
	end

    E.db["unitframe"]["units"]["player"]["customTexts"]["PowerText"]["enable"] = true
	E.db["unitframe"]["units"]["player"]["power"]["enable"] = true

	E.db["chat"]["keywords"] = "ElvUI"
	--Update ElvUI
	E:UpdateAll(true)
	--Show message about layout being set
	PluginInstallStepComplete.message = "Layout Set"
	PluginInstallStepComplete:Show()
end

local function TargetFrameSetup(auras)
	E.db[MyPluginName].TargetAuras = auras
	if auras == "Debuffs" then
		E.db["unitframe"]["units"]["target"]["debuffs"]["anchorPoint"] = "TOPLEFT"
		E.db["unitframe"]["units"]["target"]["debuffs"]["sizeOverride"] = 33
		E.db["unitframe"]["units"]["target"]["debuffs"]["attachTo"] = "FRAME"
		E.db["unitframe"]["units"]["target"]["debuffs"]["sortDirection"] = "ASCENDING"
		E.db["unitframe"]["units"]["target"]["debuffs"]["yOffset"] = 13
		E.db["unitframe"]["units"]["target"]["debuffs"]["fontSize"] = 16
		E.db["unitframe"]["units"]["target"]["debuffs"]["perrow"] = 7
		E.db["unitframe"]["units"]["target"]["debuffs"]["enable"] = true
		E.db["unitframe"]["units"]["target"]["buffs"]["enable"] = false
	elseif auras == "Buffs" then
		E.db["unitframe"]["units"]["target"]["buffs"]["anchorPoint"] = "TOPLEFT"
		E.db["unitframe"]["units"]["target"]["buffs"]["sizeOverride"] = 33
		E.db["unitframe"]["units"]["target"]["buffs"]["attachTo"] = "FRAME"
		E.db["unitframe"]["units"]["target"]["buffs"]["sortDirection"] = "ASCENDING"
		E.db["unitframe"]["units"]["target"]["buffs"]["yOffset"] = 13
		E.db["unitframe"]["units"]["target"]["buffs"]["xOffset"] = 0
		E.db["unitframe"]["units"]["target"]["buffs"]["fontSize"] = 16
		E.db["unitframe"]["units"]["target"]["buffs"]["perrow"] = 7
		E.db["unitframe"]["units"]["target"]["buffs"]["enable"] = true
		E.db["unitframe"]["units"]["target"]["debuffs"]["enable"] = false
	elseif auras == "Both" then
		E.db["unitframe"]["units"]["target"]["debuffs"]["anchorPoint"] = "TOPLEFT"
		E.db["unitframe"]["units"]["target"]["debuffs"]["fontSize"] = 16
		E.db["unitframe"]["units"]["target"]["debuffs"]["attachTo"] = "FRAME"
		E.db["unitframe"]["units"]["target"]["debuffs"]["sortDirection"] = "ASCENDING"
		E.db["unitframe"]["units"]["target"]["debuffs"]["yOffset"] = 13
		E.db["unitframe"]["units"]["target"]["debuffs"]["sizeOverride"] = 33
		E.db["unitframe"]["units"]["target"]["debuffs"]["perrow"] = 7
		E.db["unitframe"]["units"]["target"]["buffs"]["anchorPoint"] = "RIGHT"
		E.db["unitframe"]["units"]["target"]["buffs"]["fontSize"] = 16
		E.db["unitframe"]["units"]["target"]["buffs"]["xOffset"] = -240
		E.db["unitframe"]["units"]["target"]["buffs"]["sizeOverride"] = 33
		E.db["unitframe"]["units"]["target"]["buffs"]["yOffset"] = -34
		E.db["unitframe"]["units"]["target"]["buffs"]["perrow"] = 7
		E.db["unitframe"]["units"]["target"]["debuffs"]["enable"] = true
		E.db["unitframe"]["units"]["target"]["buffs"]["enable"] = true
	end
	E:UpdateAll(true)
	--Show message about layout being set
	PluginInstallStepComplete.message = "Target Frame Options Set"
	PluginInstallStepComplete:Show()
end

local function SetupDetails()
	RUI:DetailsSettings()
	_detalhes:ApplyProfile("RedtuzkUI", false, false)
	PluginInstallStepComplete.message = "Details Profile Applied"
	PluginInstallStepComplete:Show()
end

local function SetupBigWigs()
	--Check see if the BigWigs database exists
	if(BigWigs3DB) then
		--If it does add RedtuzkUI to the profiles
        RUI:BigWigsSettings(E.db[MyPluginName].layout)
	else
		--If it doesn't create the BigWigs database then add RedtuzkUI to the profiles
		RUI:BigWigsFresh()
		RUI:BigWigsSettings(E.db[MyPluginName].layout)
	end
	--Apply the RedtuzkUI profile
	local BigWigs = LibStub("AceDB-3.0"):New(BigWigs3DB)
	BigWigs:SetProfile("RedtuzkUI")
	PluginInstallStepComplete.message = "BigWigs Profile Applied"
	PluginInstallStepComplete:Show()
end

local function SetupDBM()
	RUI:DBMSettings(E.db[MyPluginName].layout)
	PluginInstallStepComplete.message = "DBM Profile Applied"
	PluginInstallStepComplete:Show()
end

local function createLink()
	StaticPopupDialogs["DiscordLinkDisplay"] = {
	text = L["Use the following link to join us on Discord"],
	button1 = L["Close"],
	hasEditBox = 1,
	whileDead = 1,
	hideOnEscape = 1,
	timeout = 0,
	OnShow = function(self, data)
		self.editBox:SetAutoFocus(false)
		self.editBox:SetWidth(150)
		self.editBox:SetText(discordLink); --default text in the editbox
		self.editBox:HighlightText()
	end,
	};
	StaticPopup_Show("DiscordLinkDisplay", "test"); --tell our dialog box to show
end

local function LoadRUIProfile()
	local SLEv = GetAddOnMetadata("ElvUI_SLE", "Version")
	E.private.sle.install_complete = SLEv
	ElvUI[1].data:SetProfile(E["global"][MyPluginName].profile_name)
	E.private["general"]["chatBubbleFontSize"] = 12
    E.private["general"]["chatBubbleFont"] = "Century Gothic Bold"
    E.private["general"]["chatBubbleFontOutline"] = "OUTLINE"
    E.private["general"]["namefont"] = "Century Gothic Bold"
    E.private["general"]["dmgfont"] = "Century Gothic Bold"
    E.private["skins"]["blizzard"]["alertframes"] = true
    E.private["skins"]["blizzard"]["UIWidgets"] = true
	if IsAddOnLoaded("ElvUI_SLE") then
	    E.private["sle"]["pvpreadydialogreset"] = true
        E.private["sle"]["install_complete"] = "3.421"
	end
	if IsAddOnLoaded("ElvUI_CustomTweaks") then
	    E.private["CustomTweaks"]["CastbarText"] = true
        E.private["CustomTweaks"]["AuraIconSpacing"] = true
	end
	if IsAddOnLoaded("BigWigs") then
		SetupBigWigs()
	elseif IsAddOnLoaded("DBM-Core") then
		SetupDBM()
	end
	if IsAddOnLoaded("Details") then
		SetupDetails()
	end
	ReloadUI()
end
--This function is executed when you press "Skip Process" or "Finished" in the installer.
local function InstallComplete()
	if GetCVarBool("Sound_EnableMusic") then
		StopMusic()
	end

    local SLEv = GetAddOnMetadata("ElvUI_SLE", "Version")
    E.private.sle.install_complete = SLEv
	--Set a variable tracking the version of the addon when layout was installed
	E["global"][MyPluginName].profile_name = ElvUI[1].data:GetCurrentProfile()
	E.db[MyPluginName].install_version = Version

	ReloadUI()
end

--This is the data we pass on to the ElvUI Plugin Installer.
--The Plugin Installer is responsible for displaying the install guide for this layout.
local InstallerData = {
	Title = format("|cffc41f3b%s %s|r", MyPluginName, "Installation"),
	Name = MyPluginName,
	tutorialImage = "Interface\\AddOns\\ElvUI_Redtuzk\\Media\\logo.tga", --If you have a logo you want to use, otherwise it uses the one from ElvUI
	Pages = {
		[1] = function()
			if E.db[MyPluginName].install_version == nil and E["global"][MyPluginName].profile_name then
				PluginInstallFrame.SubTitle:SetFormattedText("Welcome to the installation for %s.", MyPluginName)
				PluginInstallFrame.Desc1:SetText("It looks like you already have a RedtuzkUI profile installed called |cffc41f3b"..E["global"][MyPluginName].profile_name.."|r. Click \"Use Original\" to use the same profile on this character")
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript("OnClick", LoadRUIProfile)
				PluginInstallFrame.Option1:SetText("Use Original")
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript("OnClick", InstallComplete)
				PluginInstallFrame.Option2:SetText("Skip Process")
				if  not IsAddOnLoaded("ElvUI_SLE") then
					PluginInstallFrame.Desc2:SetText("|cffff0000Caution! Some features won't work until you install/load|r |cff9482c9Shadow and Light|r")
				end
				if not IsAddOnLoaded("AddonSkins") then
					PluginInstallFrame.Desc2:SetText(PluginInstallFrame.Desc2:GetText().." |cffff0000and|r |cff1784d1AddonSkins|r")
				end
			elseif E.db[MyPluginName].install_version == Version or E.db[MyPluginName].install_version == nil then
				PluginInstallFrame.Desc1:SetText("This installation process will guide you through a few steps and apply settings to your current ElvUI profile. If you want to be able to go back to your original settings then create a new profile before going through this installation process.")
				PluginInstallFrame.Desc2:SetText("Please press the continue button if you wish to go through the installation process, otherwise click the 'Skip Process' button.")
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript("OnClick", InstallComplete)
				PluginInstallFrame.Option1:SetText("Skip Process")
				if  not IsAddOnLoaded("ElvUI_SLE") then
					PluginInstallFrame.Desc3:SetText("|cffff0000Caution! Some features won't work until you install/load|r |cff9482c9Shadow and Light|r")
				end
				if not IsAddOnLoaded("AddonSkins") then
					PluginInstallFrame.Desc3:SetText(PluginInstallFrame.Desc2:GetText().." |cffff0000and|r |cff1784d1AddonSkins|r")
				end
			else
				PluginInstallFrame.SubTitle:SetFormattedText("|cff00ff00Looks like you've downloaded and update for|r |cffc41f3b%s|r!", MyPluginName)
				PluginInstallFrame.Desc1:SetText("Please go through the installer again to update parts of the UI you'd like updated.\n\n\nAny changes that you've made from the default RedtuzkUI profile will be removed.")
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript("OnClick", InstallComplete)
				PluginInstallFrame.Option1:SetText("Skip Process")
				if  not IsAddOnLoaded("ElvUI_SLE") then
					PluginInstallFrame.Desc2:SetText("|cffff0000Caution! Some features won't work until you install/load|r |cff9482c9Shadow & Light|r")
				end
				if not IsAddOnLoaded("AddonSkins") then
					PluginInstallFrame.Desc2:SetText(PluginInstallFrame.Desc2:GetText().." |cffff0000and|r |cff1784d1AddonSkins|r")
				end
			end
		end,
		[2] = function()
			if E.db[MyPluginName].install_version == nil or E.db[MyPluginName].install_version == Version then
				PluginInstallFrame.SubTitle:SetText("Profiles")
				PluginInstallFrame.Desc1:SetText("You can either create a new profile to install RedtuzkUI onto or you can apply RedtuzkUI settings to your current profile")
				PluginInstallFrame.Desc3:SetText("You're currently active ElvUI profile is: |cffc41f3b"..ElvUI[1].data:GetCurrentProfile().."|r")
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript("OnClick", function() NewProfile(false) end)
				PluginInstallFrame.Option1:SetText("Use Current")
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript("OnClick", function() NewProfile(true, "RedtuzkUI") end)
				PluginInstallFrame.Option2:SetText("Create New")
			else
				PluginInstallFrame.SubTitle:SetText("Profiles")
				PluginInstallFrame.Desc1:SetText("Press \"Update Current\" to update your current profile with the new RedtuzkUI changes.")
				PluginInstallFrame.Desc2:SetText("If you'd like to check out what the changes are, without overwriting your current settings, you can press \"Create New\"")
				PluginInstallFrame.Desc3:SetText("You're currently active ElvUI profile is: |cffc41f3b"..ElvUI[1].data:GetCurrentProfile().."|r")
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript("OnClick", function() NewProfile(false) end)
				PluginInstallFrame.Option1:SetText("Update Current")
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript("OnClick", function() NewProfile(true, "RedtuzkUI-Update") end)
				PluginInstallFrame.Option2:SetText("Create New")
			end
		end,
		[3] = function()
		    if  not IsAddOnLoaded("ElvUI_SLE") then
				DummySLE()
			end
			if E.db[MyPluginName].install_version == nil or E.db[MyPluginName].install_version == Version or not E.db[MyPluginName].layout then
				PluginInstallFrame.SubTitle:SetText("Action Bar Layouts")
				PluginInstallFrame.Desc1:SetText("These are the layouts that are available. Please click a button below to apply the layout of your choosing.")
				PluginInstallFrame.Desc2:SetText("Importance: |cff07D400High|r")
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript("OnClick", function() SetupLayoutBar("5x2") end)
				PluginInstallFrame.Option1:SetText("5x2 (Default)")
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript("OnClick", function() SetupLayoutBar("6x2") end)
				PluginInstallFrame.Option2:SetText("6x2")
				PluginInstallFrame.Option3:Show()
				PluginInstallFrame.Option3:SetScript("OnClick", function() SetupLayoutBar("8x2") end)
				PluginInstallFrame.Option3:SetText("8x2")
			else
				PluginInstallFrame.SubTitle:SetText("Action Bar Layout")
				PluginInstallFrame.Desc1:SetText("Press \"Update Layout\" to update your ElvUI profile.")
				PluginInstallFrame.Desc2:SetText("Importance: |cff07D400High|r")
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript("OnClick", function() SetupLayoutBar(E.db[MyPluginName].layout) end)
				PluginInstallFrame.Option1:SetText("Update Layout")
			end
		end,
		[4] = function()
			if E.db[MyPluginName].install_version == nil or E.db[MyPluginName].install_version == Version or not E.db[MyPluginName].TargetAuras then
				PluginInstallFrame.SubTitle:SetText("Target Frame Options")
				PluginInstallFrame.Desc1:SetText("Here you can select some options for how buffs and debuffs will be displayed on your target frame. \n\nIf you select \"Only Buffs\" or \"Only Debuffs\" then the auras will be displayed above the frame, similar to how player debuffs are displayed.\n\nIf you selece \"Show Both\" then debuffs will be displayed above the frame and buffs below.")
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript("OnClick", function() TargetFrameSetup("Debuffs") end)
				PluginInstallFrame.Option1:SetText("Only Debuffs")
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript("OnClick", function() TargetFrameSetup("Buffs") end)
				PluginInstallFrame.Option2:SetText("Only Buffs")
				PluginInstallFrame.Option3:Show()
				PluginInstallFrame.Option3:SetScript("OnClick", function() TargetFrameSetup("Both") end)
				PluginInstallFrame.Option3:SetText("Show Both")
			else
				PluginInstallFrame.SubTitle:SetText("Target Frame Options")
				PluginInstallFrame.Desc1:SetText("Press \"Update Buffs/Debuffs\" to update your target frame settings.")
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript("OnClick", function() TargetFrameSetup(E.db[MyPluginName].TargetAuras) end)
				PluginInstallFrame.Option1:SetText("Update Buffs/Debuffs")
			end
		end,
		[5] = function()
			PluginInstallFrame.SubTitle:SetText("Weak Auras")
			if IsAddOnLoaded("WeakAuras") then --Make sure the User has Weak Auras installed.
				if E.db[MyPluginName].install_version == nil or E.db[MyPluginName].install_version == Version then
					PluginInstallFrame.Desc1:SetText("Import some of Redtuzk's Weak Auras.\nThe \"Template\" option will add in a set of WeakAuras templates for you to use for buff tracking \n\n You can find aura groups for some classes/specs on the RedtuzkUI discord. Not all specs are supported yet but we're adding more!")
					PluginInstallFrame.Desc2:SetText("Requires a UI reload for Aura imports to take effect")
					PluginInstallFrame.Option1:Show()
					PluginInstallFrame.Option1:SetScript("OnClick", function() WASetup("templates") end)
					PluginInstallFrame.Option1:SetText("Templates")
				else
					PluginInstallFrame.Desc1:SetText("You can update WeakAuras by reimporting them from the Discord links.")
					PluginInstallFrame.Desc2:SetText("You can find a link to join our Discord server on the last page of the installer")
				end
			else
				PluginInstallFrame.Desc1:SetText("|cffB33A3AOops, it looks like you don't have Weak Auras installed!|r")
				PluginInstallFrame.Desc2:SetText("Weak Auras is recommended for use with RedtuzkUI")
			end
		end,
		[6] = function()
			if IsAddOnLoaded("BigWigs") then --Make sure the User has BigWigs installed.
				PluginInstallFrame.SubTitle:SetText("BigWigs")
				if E.db[MyPluginName].install_version == nil or E.db[MyPluginName].install_version == Version then
					PluginInstallFrame.Desc1:SetText("Import Redtuzk's BigWigs profile. A new profile called RedtuzkUI will be created. If you already have the Redtuzk profile it will be updated.")
					PluginInstallFrame.Desc2:SetText("Requires a UI reload for profile switch to take effect")
					PluginInstallFrame.Option1:Show()
					PluginInstallFrame.Option1:SetScript("OnClick", function() SetupBigWigs() end)
					PluginInstallFrame.Option1:SetText("Setup BigWigs")
				else
					PluginInstallFrame.Desc1:SetText("Click \"Update BigWigs\" to update the RedtuzkUI BigWigs profile.\n\nCustom Settings for bosses will |cff07D400NOT|r be altered.")
					PluginInstallFrame.Desc2:SetText("Requires a UI reload for profile changes to take effect")
					PluginInstallFrame.Option1:Show()
					PluginInstallFrame.Option1:SetScript("OnClick", function() SetupBigWigs() end)
					PluginInstallFrame.Option1:SetText("Update BigWigs")
				end
			elseif IsAddOnLoaded("DBM-Core") then
				PluginInstallFrame.SubTitle:SetText("Deadly Boss Mods")
				if E.db[MyPluginName].install_version == nil or E.db[MyPluginName].install_version == Version then
					PluginInstallFrame.Desc1:SetText("Import Redtuzk's DBM profile. A new profile called RedtuzkUI will be created. If you already have the Redtuzk profile it will be updated.")
					PluginInstallFrame.Option1:Show()
					PluginInstallFrame.Option1:SetScript("OnClick", function() SetupDBM() end)
					PluginInstallFrame.Option1:SetText("Setup DBM")
				else
					PluginInstallFrame.Desc1:SetText("Click \"Update DBM\" to update the RedtuzkUI BigWigs profile.\n\nCustom Settings for bosses will |cff07D400NOT|r be altered.")
					PluginInstallFrame.Option1:Show()
					PluginInstallFrame.Option1:SetScript("OnClick", function() SetupDBM() end)
					PluginInstallFrame.Option1:SetText("Update DBM")
				end
			else
				PluginInstallFrame.SubTitle:SetText("Boss Mod")
				PluginInstallFrame.Desc1:SetText("|cffB33A3AOops, it looks like you don't have BigWigs installed!|r")
				PluginInstallFrame.Desc2:SetText("BigWigs is recommended for use with RedtuzkUI")
			end
		end,
		[7] = function()
			PluginInstallFrame.SubTitle:SetText("Details")
			if IsAddOnLoaded("Details") then --Make sure the User has Details installed.
				if E.db[MyPluginName].install_version == nil or E.db[MyPluginName].install_version == Version then
					PluginInstallFrame.Desc1:SetText("Import Redtuzk's Details profile. A new profile called RedtuzkUI will be created. If you already have the Redtuzk profile it will be updated.")
					PluginInstallFrame.Option1:Show()
					PluginInstallFrame.Option1:SetScript("OnClick", function() SetupDetails() end)
					PluginInstallFrame.Option1:SetText("Setup Details")
				else
					PluginInstallFrame.Desc1:SetText("Click \"Update Details\" to update the RedtuzkUI Details profile.")
					PluginInstallFrame.Option1:Show()
					PluginInstallFrame.Option1:SetScript("OnClick", function() SetupDetails() end)
					PluginInstallFrame.Option1:SetText("Update Details")
				end
			else
				PluginInstallFrame.Desc1:SetText("|cffB33A3AOops, it looks like you don't have Details installed!|r")
				PluginInstallFrame.Desc2:SetText("Details is recommended for use with RedtuzkUI")
			end
		end,
		[8] = function()
			if E.db[MyPluginName].install_version == nil or E.db[MyPluginName].install_version == Version then
				PluginInstallFrame.SubTitle:SetText("Installation Complete")
				PluginInstallFrame.Desc1:SetText("You have completed the installation process.")
				PluginInstallFrame.Desc2:SetText("Please click the button below in order to finalize the process and automatically reload your UI.")
			else
				PluginInstallFrame.SubTitle:SetText("Update Complete")
				PluginInstallFrame.Desc1:SetText("You have completed the update process.")
				PluginInstallFrame.Desc2:SetText("Please click the button below in order to finalize the process and automatically reload your UI.")
			end
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", InstallComplete)
			PluginInstallFrame.Option1:SetText("Finished")
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", createLink)
			PluginInstallFrame.Option2:SetText("Join Discord")
		end,
	},
	StepTitles = {
		[1] = "Welcome",
		[2] = "Profile Setup",
		[3] = "Action Bar Layouts",
		[4] = "Target Frame Options",
		[5] = "Weak Auras",
		[6] = "Boss Mod Setup",
		[7] = "Details Setup",
		[8] = "Installation Complete",
	},
	StepTitlesColor = {1, 1, 1},
	StepTitlesColorSelected = {0.769, 0.122, 0.231},
	StepTitleWidth = 200,
	StepTitleButtonWidth = 180,
	StepTitleTextJustification = "RIGHT",
}

--This function holds the options table which will be inserted into the ElvUI config
local function InsertOptions()
	E.Options.args.MyPluginName = {
		order = 100,
		type = "group",
		name = format("|cffc41f3b%s|r", MyPluginName),
		args = {
			header1 = {
				order = 1,
				type = "header",
				name = MyPluginName,
			},
			description1 = {
				order = 2,
				type = "description",
				name = format("%s is a layout for ElvUI.", MyPluginName),
			},
			discordlink = {
				order = 3, type = 'input', width = 'full', name = L["Join us on Discord!"],
				get = function(info) return discordLink end,
			},
			discordicon = {
				order = 4,
				type = "description",
				name = "",
				image = "Interface\\AddOns\\ElvUI_Redtuzk\\Media\\discord.tga",
				imageWidth = 256,
				imageHeight = 128,
				imageCoords = {0,1,0,1},
			},
			spacer1 = {
				order = 5,
				type = "description",
				name = "\n\n\n",
			},
			header2 = {
				order = 6,
				type = "header",
				name = "Installation",
			},
			description2 = {
				order = 7,
				type = "description",
				name = "The installation guide should pop up automatically after you have completed the ElvUI installation. If you wish to re-run the installation process for this layout then please click the button below.",
			},
			spacer2 = {
				order = 8,
				type = "description",
				name = "",
			},
			install = {
				order = 9,
				type = "execute",
				name = "Install/Update",
				desc = "Run the installation process.",
				func = function() E:GetModule("PluginInstaller"):Queue(InstallerData); E:ToggleConfig(); end,
			},
		},
	}
end
--Create a unique table for our plugin
P[MyPluginName] = {}

--This function will handle initialization of the addon
function mod:Initialize()
	--Initiate installation process if ElvUI install is complete and our plugin install has not yet been run or its a newer version
	E["global"][MyPluginName] = E["global"][MyPluginName] or {}
	E.private.install_complete = E.version
	if E.private.install_complete and (E.db[MyPluginName].install_version == nil or E.db[MyPluginName].install_version ~= Version) then
		E:GetModule("PluginInstaller"):Queue(InstallerData)
	end
	AddCustomTags()
	--Insert our options table when ElvUI config is loaded
	RUI:FPS()
	RUI:Ping()
	EP:RegisterPlugin(addon, InsertOptions)
end

--This function will get called by ElvUI automatically when it is ready to initialize modules
local function CallbackInitialize()
	mod:Initialize()
end

--Register module with callback so it gets initialized when ready
E:RegisterModule(MyPluginName, CallbackInitialize)

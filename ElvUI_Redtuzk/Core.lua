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

--Create references to ElvUI internals
local E, L, V, P, G = unpack(ElvUI)

--Create reference to LibElvUIPlugin
local EP = LibStub("LibElvUIPlugin-1.0")

--Create a new ElvUI module so ElvUI can handle initialization when ready
local mod = E:NewModule(MyPluginName, "AceHook-3.0", "AceEvent-3.0", "AceTimer-3.0");

--Function that allows sending slash commands to other addons format *slashCommand("/Details config")*
local function slashCommand(command,args)
    for key,func in pairs(SlashCmdList) do
        local i = 1
        local c = _G[("SLASH_%s1"):format(key)]
        while c do
            if c == command then
                func(args)
                return
            end
            i=i+1
            c = _G[("SLASH_%s%d"):format(key,i)]
        end
    end
end

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
	E.db["raidcooldown"] = E.db["raidcooldown"] or {}
	E.db["raidcooldown"]["cooldown"] = E.db["raidcooldown"]["cooldown"] or {}
	E.db["unitframe"]["units"]["targettarget"]["buffs"]["useWhitelist"] = E.db["unitframe"]["units"]["targettarget"]["buffs"]["useWhitelist"] or {}
	E.db["unitframe"]["units"]["party"]["GPSArrow"] = E.db["unitframe"]["units"]["party"]["GPSArrow"] or {}
	E.db["unitframe"]["units"]["raid40"]["GPSArrow"] = E.db["unitframe"]["units"]["raid40"]["GPSArrow"] or {}
	E.db["unitframe"]["units"]["target"]["combobar"] = E.db["unitframe"]["units"]["target"]["combobar"] or {}
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
end

local function EnableCustomTweaks()
	E.private["CustomTweaks"] = {
		["AuraIconSpacing"] = true,
		["CastbarText"] = true,
	}
end

--This function will hold your layout settings
local function SetupLayout(layout)
	--[[
	--	PUT YOUR EXPORTED PROFILE/SETTINGS BELOW HERE
	--]]
	CreateCustomTexts()
	CreatingMissingSettings()
	EnableCustomTweaks()

	--LAYOUT GOES HERE
	RUI:ElvUISettings()



	--[[
		--If you want to modify the base layout according to
		-- certain conditions then this is how you could do it
		if layout == "tank" then
			--Make some changes to the layout posted above
		elseif layout == "dps" then
			--Make some other changes
		elseif layout == "healer" then
			--Make some different changes
		end
	--]]


	--[[
	--	This section at the bottom is just to update ElvUI and display a message
	--]]
	--Update ElvUI
	E:UpdateAll(true)
	--Show message about layout being set
	PluginInstallStepComplete.message = "Layout Set"
	PluginInstallStepComplete:Show()
end

local function SetupFont(style)
	local font
	if (style == "default") then
		font = "Century Gothic Bold"
	elseif (style == "cyrillics") then
		font = "Big Noodle"
	end
	
	--Font settings
	E.db["sle"]["Armory"]["Character"]["Stats"]["ItemLevel"]["font"] = font
	E.db["sle"]["Armory"]["Character"]["Enchant"]["Font"] = font
	E.db["sle"]["Armory"]["Character"]["Durability"]["Font"] = font
	E.db["sle"]["Armory"]["Character"]["Level"]["Font"] = font
	E.db["sle"]["Armory"]["Character"]["Artifact"]["Font"] = font
	E.db["sle"]["minimap"]["instance"]["font"] = font
	E.db["sle"]["bags"]["artifactPower"]["fonts"]["font"] = font
	E.db["auras"]["font"] = font
	E.db["auras"]["consolidatedBuffs"]["font"] = font
	E.db["unitframe"]["units"]["player"]["customTexts"]["Health2"]["font"] = font
	E.db["unitframe"]["units"]["player"]["customTexts"]["!Percent"]["font"] = font
	E.db["unitframe"]["units"]["player"]["customTexts"]["!Name"]["font"] = font
	E.db["unitframe"]["units"]["party"]["rdebuffs"]["font"] = font
	E.db["unitframe"]["units"]["party"]["customTexts"]["Health Text"]["font"] = font
	E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["font"] = font
	E.db["unitframe"]["units"]["raid40"]["customTexts"]["Health Text"]["font"] = font
	E.db["unitframe"]["units"]["raid"]["rdebuffs"]["font"] = font
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Health2"]["font"] = font
	E.db["unitframe"]["units"]["boss"]["customTexts"]["AltPowerText"]["font"] = font
	E.db["unitframe"]["units"]["boss"]["customTexts"]["!Health"]["font"] = font
	E.db["unitframe"]["units"]["boss"]["customTexts"]["BossPower"]["font"] = font
	E.db["unitframe"]["units"]["boss"]["customTexts"]["!Name"]["font"] = font
	E.db["unitframe"]["units"]["target"]["customTexts"]["Health2"]["font"] = font
	E.db["unitframe"]["units"]["target"]["customTexts"]["!Name"]["font"] = font
	E.db["unitframe"]["units"]["target"]["customTexts"]["PowerText"]["font"] = font
	E.db["unitframe"]["units"]["target"]["customTexts"]["!Percent"]["font"] = font
	E.db["unitframe"]["units"]["targettarget"]["customTexts"]["!Name"]["font"] = font
	E.db["unitframe"]["units"]["focus"]["customTexts"]["!Amount"]["font"] = font
	E.db["unitframe"]["units"]["focus"]["customTexts"]["!Percent"]["font"] = font
	E.db["unitframe"]["font"] = font
	E.db["tooltip"]["font"] = font
	E.db["tooltip"]["healthBar"]["font"] = font
	E.db["general"]["font"] = font
	E.db["datatexts"]["font"] = font
	E.db["actionbar"]["font"] = font
	E.db["nameplates"]["font"] = font
	E.db["chat"]["font"] = font
	
	PluginInstallStepComplete.message = "Font Set"
	PluginInstallStepComplete:Show()
end

local function SetupDetails()
	RUI:DetailsSettings()
	_detalhes:ApplyProfile ("RedtuzkUI", false, false)
	PluginInstallStepComplete.message = "Details Profile Applied"
	PluginInstallStepComplete:Show()
end

local function SetupBigWigs()
	--Force BigWigs to build its database so we can write to it
	slashCommand("/bigwigs")
	slashCommand("/bigwigs")
	--Create reference to BigWigs3BD
	local BigWigs = LibStub("AceDB-3.0"):New(BigWigs3DB)
	RUI:BigWigsSettings()
	BigWigs:SetProfile("RedtuzkUI")
	PluginInstallStepComplete.message = "BigWigs Profile Applied"
	PluginInstallStepComplete:Show()
end

--This function is executed when you press "Skip Process" or "Finished" in the installer.
local function InstallComplete()
	if GetCVarBool("Sound_EnableMusic") then
		StopMusic()
	end

	--Set a variable tracking the version of the addon when layout was installed
	E.db[MyPluginName].install_version = Version

	ReloadUI()
end

--This is the data we pass on to the ElvUI Plugin Installer.
--The Plugin Installer is reponsible for displaying the install guide for this layout.
local InstallerData = {
	Title = format("|cffc41f3b%s %s|r", MyPluginName, "Installation"),
	Name = MyPluginName,
	tutorialImage = "Interface\\AddOns\\ElvUI_Redtuzk\\logo.tga", --If you have a logo you want to use, otherwise it uses the one from ElvUI
	Pages = {
		[1] = function()
			PluginInstallFrame.SubTitle:SetFormattedText("Welcome to the installation for %s.", MyPluginName)
			PluginInstallFrame.Desc1:SetText("This installation process will guide you through a few steps and apply settings to your current ElvUI profile. If you want to be able to go back to your original settings then create a new profile before going through this installation process.")
			PluginInstallFrame.Desc2:SetText("Please press the continue button if you wish to go through the installation process, otherwise click the 'Skip Process' button.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", InstallComplete)
			PluginInstallFrame.Option1:SetText("Skip Process")
		end,
		[2] = function()
			PluginInstallFrame.SubTitle:SetText("Profiles")
			PluginInstallFrame.Desc1:SetText("You can either create a new profile to install RedtuzkUI onto or you can apply RedtuzkUI settings to your current profile")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() NewProfile(false) end)
			PluginInstallFrame.Option1:SetText("Use Current")
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() NewProfile(true) end)
			PluginInstallFrame.Option2:SetText("Create New")
		end,
		[3] = function()
			PluginInstallFrame.SubTitle:SetText("Layouts")
			PluginInstallFrame.Desc1:SetText("These are the layouts that are available. Please click a button below to apply the layout of your choosing.")
			PluginInstallFrame.Desc2:SetText("Importance: |cff07D400High|r")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() SetupLayout("tank") end)
			PluginInstallFrame.Option1:SetText("Tank")
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() SetupLayout("healer") end)
			PluginInstallFrame.Option2:SetText("Healer")
			PluginInstallFrame.Option3:Show()
			PluginInstallFrame.Option3:SetScript("OnClick", function() SetupLayout("dps") end)
			PluginInstallFrame.Option3:SetText("DPS")
		end,
		[4] = function()
			PluginInstallFrame.SubTitle:SetText("Font")
			PluginInstallFrame.Desc1:SetText("Select one of two fonts.")
			PluginInstallFrame.Desc2:SetText("The default font is the one choosen by Redtuzk but does not support cyrillics, the other does.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() SetupFont("default") end)
			PluginInstallFrame.Option1:SetText("Default")
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() SetupFont("cyrillics") end)
			PluginInstallFrame.Option2:SetText("Cyrillics")
		end,
		[5] = function()
			PluginInstallFrame.SubTitle:SetText("BigWigs")
			if IsAddOnLoaded("BigWigs") then --Make sure the User has BigWigs installed.
				PluginInstallFrame.Desc1:SetText("Import Redtuzk's BigWigs profile. A new profile called RedtuzkUI will be crated. If you already have the Redtuzk profile it will be updated.")
				PluginInstallFrame.Desc2:SetText("Requires a UI reload for profile switch to take affect")
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript("OnClick", function() SetupBigWigs() end)
				PluginInstallFrame.Option1:SetText("Setup BigWigs")
			else
				PluginInstallFrame.Desc1:SetText("|cffB33A3AOops, it looks like you don't have BigWigs installed!|r")
				PluginInstallFrame.Desc2:SetText("BigWigs is recomended for use with RedtuzkUI")
			end
		end,
		[6] = function()
			PluginInstallFrame.SubTitle:SetText("Details")
			if IsAddOnLoaded("Details") then --Make sure the User has Details installed.
				PluginInstallFrame.Desc1:SetText("Import Redtuzk's Details profile. A new profile called RedtuzkUI will be crated. If you already have the Redtuzk profile it will be updated.")
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript("OnClick", function() SetupDetails() end)
				PluginInstallFrame.Option1:SetText("Setup Details")
			else
				PluginInstallFrame.Desc1:SetText("|cffB33A3AOops, it looks like you don't have Detials installed!|r")
				PluginInstallFrame.Desc2:SetText("Details is recomended for use with RedtuzkUI")
			end
		end,
		[7] = function()
			PluginInstallFrame.SubTitle:SetText("Installation Complete")
			PluginInstallFrame.Desc1:SetText("You have completed the installation process.")
			PluginInstallFrame.Desc2:SetText("Please click the button below in order to finalize the process and automatically reload your UI.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", InstallComplete)
			PluginInstallFrame.Option1:SetText("Finished")
		end,
	},
	StepTitles = {
		[1] = "Welcome",
		[2] = "Profile Setup",
		[3] = "Layouts",
		[4] = "Font",
		[5] = "BigWigs Setup",
		[6] = "Details Setup",
		[7] = "Installation Complete",
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
			spacer1 = {
				order = 3,
				type = "description",
				name = "\n\n\n",
			},
			header2 = {
				order = 4,
				type = "header",
				name = "Installation",
			},
			description2 = {
				order = 5,
				type = "description",
				name = "The installation guide should pop up automatically after you have completed the ElvUI installation. If you wish to re-run the installation process for this layout then please click the button below.",
			},
			spacer2 = {
				order = 6,
				type = "description",
				name = "",
			},
			install = {
				order = 7,
				type = "execute",
				name = "Install",
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
	--Initiate installation process if ElvUI install is complete and our plugin install has not yet been run
	if E.private.install_complete and E.db[MyPluginName].install_version == nil then
		E:GetModule("PluginInstaller"):Queue(InstallerData)
	end
	RUI:RegisterMedia()
	--Insert our options table when ElvUI config is loaded
	EP:RegisterPlugin(addon, InsertOptions)
end

--This function will get called by ElvUI automatically when it is ready to initialize modules
local function CallbackInitialize()
	mod:Initialize()
end

--Register module with callback so it gets initialized when ready
E:RegisterModule(MyPluginName, CallbackInitialize)
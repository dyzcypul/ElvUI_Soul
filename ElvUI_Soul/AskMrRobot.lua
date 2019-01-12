local AS = unpack(AddOnSkins)

if not AS:CheckAddOn('AskMrRobot') then return end

function AS:AskMrRobot(event, addon)
	hooksecurefunc(AskMrRobot, "Show", function()
		AS:SkinFrame(AmrUiFrame1)
    end)
end

AS:RegisterSkin('AskMrRobot', AS.AskMrRobot)

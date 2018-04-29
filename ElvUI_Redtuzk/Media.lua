local RUI = select(2, ...):unpack()

local LSM = LibStub("LibSharedMedia-3.0")

function RUI:RegisterMedia()
	if LSM == nil then return end
	LSM:Register("font", "Century Gothic Bold", [[Interface\Addons\ElvUI_Redtuzk\Media\GOTHICB.TTF]])
end
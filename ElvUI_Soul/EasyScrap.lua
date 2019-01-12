local AS = unpack(AddOnSkins)

if not AS:CheckAddOn('EasyScrap') then return end

function AS:EasyScrap()
    local Frames = {
        EasyScrapParentFrame,
        EasyScrapMainFrame,
        EasyScrapItemFrame,
        EasyScrapFilterListFrame,
        EasyScrapEditFilterFrame
    }

    for _, object in pairs(Frames) do
		AS:SkinFrame(object)
    end
    
    local EasyScrapScrollBars = {
        EasyScrapItemFrameScrollBar,
        EasyScrapFilterListFrameScrollBar,
        EasyScrapEditFilterFrameScrollBar
    }

    for _, object in pairs(EasyScrapScrollBars) do
		AS:SkinScrollBar(object)
    end

    local EasyScrapTabs = {
        EasyScrapItemFrameTabButton1,
        EasyScrapItemFrameTabButton2,
        EasyScrapItemFrameTabButton3
    }

    for _, object in pairs(EasyScrapTabs) do
		AS:SkinTab(object)
    end

    AS:SkinEditBox(EasyScrapMainFrame.searchBox)
    AS:SkinButton(EasyScrapMainFrame.queueAllButton)
    AS:SkinDropDownBox(EasyScrapFilterSelectionMenu, 145)

    for _, icon in pairs(EasyScrapItemFrame.contentFrame.itemButtons) do
        AS:SkinIconButton(icon)
    end

    for _, child in pairs({EasyScrapMainFrame:GetChildren()}) do
        if child:IsObjectType('Button') then
            AS:SkinButton(child)
        end
    end

    for _, child in pairs({EasyScrapEditFilterFrame:GetChildren()}) do
        if child:IsObjectType('Frame') then
            AS:SkinFrame(child)
        end
    end

    for _, child in pairs({EasyScrapEditFilterContentFrame:GetChildren()}) do
        if child:IsObjectType('Button') then
            AS:SkinEditBox(child.customData)
        end
        if child:IsObjectType('Frame') then
            if child.deleteButton then
                AS:SkinCloseButton(child.deleteButton)
            end
        end
    end

    for _, child in pairs({EasyScrapFilterListFrame:GetChildren()}) do
        for _, nextChild in pairs({child.contentFrame:GetChildren()}) do
            if nextChild.deleteButton then
                AS:SkinButton(nextChild.deleteButton)
                AS:SkinButton(nextChild.editButton)
            end
        end
    end

    for _, child in pairs({EasyScrapParentFrame:GetChildren()}) do
        if child.dismissButton then
            AS:SkinButton(child.dismissButton)
        end
        if child.createNewButton then
            AS:SkinButton(child.createNewButton)
        end
        if child.addRule then
            AS:SkinButton(child.addRule)  
        end
    end
end

AS:RegisterSkin('EasyScrap', AS.EasyScrap)

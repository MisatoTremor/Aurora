local _, private = ...

--[[ Lua Globals ]]
-- luacheck: globals

--[[ Core ]]
local Aurora = private.Aurora
local Base = Aurora.Base
local Skin = Aurora.Skin
local Color, Util = Aurora.Color, Aurora.Util

--do --[[ FrameXML\InterfaceOptionsFrame.lua ]]
--end

--do --[[ FrameXML\InterfaceOptionsFrame.xml ]]
--end

function private.FrameXML.InterfaceOptionsFrame()
    _G.InterfaceOptionsFrameHeader:SetTexture("")
    _G.InterfaceOptionsFrameHeaderText:SetPoint("TOP", 0, -10)

    Skin.DialogBorderTemplate(_G.InterfaceOptionsFrame.Border)
    Skin.UIPanelButtonTemplate(_G.InterfaceOptionsFrameCancel)
    Skin.UIPanelButtonTemplate(_G.InterfaceOptionsFrameOkay)
    Util.PositionRelative("BOTTOMRIGHT", _G.InterfaceOptionsFrame, "BOTTOMRIGHT", -15, 15, 5, "Left", {
        _G.InterfaceOptionsFrameCancel,
        _G.InterfaceOptionsFrameOkay,
    })
    Skin.UIPanelButtonTemplate(_G.InterfaceOptionsFrameDefaults)
    _G.InterfaceOptionsFrameDefaults:SetPoint("BOTTOMLEFT", 15, 15)

    Skin.OptionsFrameListTemplate(_G.InterfaceOptionsFrameCategories)
    Skin.OptionsFrameListTemplate(_G.InterfaceOptionsFrameAddOns)
    Base.SetBackdrop(_G.InterfaceOptionsFramePanelContainer, Color.frame)

    Skin.OptionsFrameTabButtonTemplate(_G.InterfaceOptionsFrameTab1)
    Skin.OptionsFrameTabButtonTemplate(_G.InterfaceOptionsFrameTab2)
end

-- Displays detailed information about unit caps when the user
--  mouses over the units menu
dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")

--UnitCapInfoPopupWidth = 225
UnitCapInfoPopupWidth = 200
MAXHEIGHT = 325

UnitCapInfoPopup= {

	maxColor = {255,0,0,255}, -- color for max pop reached
	availColor = {0,255,0,255},	-- color for pop available
	
	size = {32, 71, 100, 200},
	
	RootElementSettings = {
		--backgroundColor = {200,0,0,200},
		autosize = 1,
		--backgroundColor = COLOR_PURPLE_SOLID,
	},
	
	soundOnShow = "SFX_RecallMenuONOFF",
	soundOnHide = "SFX_RecallMenuONOFF",	
	
	onShow = "UI_SetButtonPressed('NewTaskbar', 'btnFleet', 1); UI_HideScreen('BuildQueueMenu'); UI_HideScreen('EventsScreen')",
	onHide = "UI_SetButtonPressed('NewTaskbar', 'btnFleet', 0)", 
	
	stylesheet = "HW2StyleSheet",
	
	-- Flags
	pixelUVCoords = 1, -- Enter pixel coords for texture coords	
	arrangetype = "vert",
	clickThrough = 1,	
	;	
	
	-- Tab spacer frame to clone
	{
		type = "Frame",
		name = "frmTabSpacer",
		size = {10, 15},
		--size = {1, 1},
		giveParentMouseInput = 1,
	},

	-- Title to clone
	{
		type = "TextLabel",
		name = "lblNameToClone",
		position = {4,0},
		size = {UnitCapInfoPopupWidth-16, 15},
		Text = {
			textStyle = "IGHeading2",
		},
		giveParentMouseInput = 1,
		dropShadow = 1,
		visible = 0,
	},
	
	-- Unit cap item to clone
	{
		type = "Frame",
		name = "frmItemToClone",
		autosize = 1,		
		giveParentMouseInput = 1,
		visible = 0,
		;
		
		{
			type = "Frame",
			name = "frmName",
			position = {4,0},
			size = {UnitCapInfoPopupWidth - 50, 15},
			autoarrange = 1,
			autoarrangeWidth = 300, -- this is needed b/c of spacers
			;
		},
		
		
		{	
			type = "TextLabel",
			name = "lblUnitCap",
			position = {UnitCapInfoPopupWidth-46, 0},
			size = {45, 15},
			Text = {
				font = "ChatFont",
				color = {255,255,255,255},
				hAlign = "Right",
				vAlign = "Middle",
				text = "<c %06x>%d</c> \/ %d",
				offset = {-6,0},
			},
			giveParentMouseInput = 1,
			dropShadow = 1,
		},		
	},
		
	{
		type = "Frame",
		--position = {2,17},
		autosize = 1,
		--backgroundColor = "IGColorBackground1",
		giveParentMouseInput = 1,
		autoarrange = 1,
		autoarrangeWidth = UnitCapInfoPopupWidth,
		maxSize = {UnitCapInfoPopupWidth, MAXHEIGHT},
		arrangetype = "vert",
		;
		
		-- Frame to hold all unit caps
		{
			type = "Frame",
			name = "frmItems",
			autosize = 1,
			autoarrange = 1,
			autoarrangeWidth = UnitCapInfoPopupWidth,
			giveParentMouseInput = 1,
			arrangetype = "vert",
		},
		
		-- Title frame
		--{
		--	type = "Frame",
		--	size = {UnitCapInfoPopupWidth, 18},
		--	giveParentMouseInput = 1,
		--	;
		--	{
		--		type = "TextLabel",
		--		giveParentMouseInput = 1,
		--		position = {-2, 0},
		--		size = {UnitCapInfoPopupWidth + 4, 18},
		--		borderColor = { 170, 227, 255, 255},
		--		borderWidth = 2,
		--		Text = {
		--			textStyle = "IGHeading2",
		--			hAlign = "Left",
		--			offset = { 8, 0},
		--			color = { 255, 255, 255, 255},
		--			text = "$5163",
		--		},
		--	},
		--},
	},
}
	
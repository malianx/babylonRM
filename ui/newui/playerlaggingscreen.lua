dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")
dofilepath("data:ui/newui/Styles/HWRM_Style/ControlConstructors.lua")

PlayerLaggingScreen = {

	stylesheet = "HW2StyleSheet",

	Layout = {						
		pos_XY = {	x=0.0, y=0.0, xr="px", yr="px",},					
		size_WH = {w = 1, h = 1, wr = "scr", hr = "scr",},
	},

	RootElementSettings = {
		--backgroundColor = "IGColorBackground1",
		--backgroundColor = {0,128,0,200},	
	},
	eventOpaque = 0,
	-- Flags
	pixelUVCoords = 1, -- Enter pixel coords for texture coords
	--backgroundColor = {0,128,0,200},	
	-- custom
	fstringMessage = "$2840",
	;

	{
		type = "Frame",
		Layout = {			
			pivot_XY = { .5, 0 },
			size_WH = { w = .45, h = 1, wr = "par", hr = "px" },				
		},	
		
		Anchor_Binds = {
			pivotY = "Taskbar_ResourceBottomCenter3",
			pivotX = "Taskbar_ResourceBottomCenter3",
		},			
		autosize = 1,
		borderColor = "IGColorOutline",
		--arrangeSep = {	x=PANEL_PAD_HORIZ, y=0, xr="scr", yr="scr",},
				arrangetype = "vert",
		--outerBorderWidth = 1,
		;
		{
			type = "RmWindow",
			WindowTemplate = PANEL_WINDOWSTYLE,
			TitleText = "$5598",

			Layout = {			
					--pivot_XY = { .5, 0 },
					size_WH = { w = 1, h = 1, wr = "par", hr = "px" },				
			},	
		
			autosize=1,

			;	
			-- message
			{
				type = "TextLabel",
				Layout = {								
					size_WH = { w = 1, h = 50/600, wr = "scr", hr = "scr" },	
					pivot_XY = { .5, .5 },		
					pos_XY = {	x=0.5, y=0.5, xr="par", yr="par",},			
				},	
		
				--borderWidth = 1,
				--borderColor = "IGColorOutline",
				name = "message",
				wrapping = 1,
				marginWidth = 8,
				marginHeight = 8,
				Text = {
					text="YAKKITY",
					font = "ButtonFont",
					color = { 255, 255, 0, 255},
					hAlign = "Center",
					vAlign = "Top",
				},
			},
			{
				type = "Frame",
				autosize=1,
				Layout = {								
					--size_WH = { w = 1, h = 50/600, wr = "scr", hr = "scr" },	
					pivot_XY = { .5, 1 },		
					pos_XY = {	x=0.5, y=1, xr="par", yr="par",},			
				},	
				;
				{
					type = "TextLabel",
					--size = {206,15},
					autosize=1,
					position = {20,0},
					Text = {
						textStyle = "FEHeading4",
						text = "$2842",
					},
				},
				{
					type = "Button",
					name = "btnNoMore",
					buttonStyle = "FECheckBoxButtonStyle",
	
					Text = {
						textStyle = "IGRadioButtonTextStyle",
						text = "$2842", -- STOP BUGGING ME
					},

				},
			},
		},
		{
			type = "RmWindow",
			name = "frmRootbottombigfrm",			
		
			WindowTemplate = PANEL_NAVIGATIONFRAME,

			Layout = {
				margin_LT = { l = 0, t = PANEL_SPACING_VERT/2, lr = "scr", tr = "scr" },
			},

			;
			NewMenuButton("btnKick",		"$2841",	"",	0,	BTN_FOOTER_SMALL_LAYOUT,	"FEButtonStyle1",					"UI_ToggleScreen( 'PlayerLaggingScreen', 0)"),	
			NewMenuButton("btnClose",		"$2843",	"",	0,	BTN_FOOTER_SMALL_YES_LAYOUT,	"FEButtonStyle1_Alert_Chipped",	"UI_ToggleScreen( 'PlayerLaggingScreen', 0)"),
					

		},
	},


}

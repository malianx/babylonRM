dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")

DiplomacyScreen = {
	--size = { 225, 149, 351, 207},
	stylesheet = "HW2StyleSheet",

	RootElementSettings = {
		--backgroundColor = "IGColorBackground1",
		autosize=1,
		arrangetype = "vert",
		arrangeSep = {	x=0, y=PANEL_SPACING_VERT, xr="scr", yr="scr",},	
	},
	
	Layout = {						
		pivot_XY = { 0.5, 0.5 },					
		pos_XY = {	x=0.5, y=0.5, xr="par", yr="par",},		
	},

	-- Flags
	pixelUVCoords = 1, -- Enter pixel coords for texture coords

	;
	
	{
		type = "RmWindow",
		WindowTemplate = PANEL_WINDOWSTYLE,
		TitleText =	"$2900", -- DIPLOMACY
		-- SubtitleText = "$2899", -- PLAYERS//
		autosize=1,
		arrangetype = "vert",
		;
		{
			type = "Frame",
			autosize  = 1,
			arrangetype = "horiz",
			arrangedir = 1,				
			;
			-- player buttons
			{
				type = "Frame",
				--position = { 3, 31},
				autosize = 1,
				--borderColor = "IGColorOutline",
				arrangetype = "vert",


				--outerBorderWidth = 1,
				;	
		
				{
					type = "Button",
					name = "player1",
					buttonStyle = "DiplomacyScreen_PlayerButtonStyle",
				},
				{
					type = "Button",
					name = "player2",
					buttonStyle = "DiplomacyScreen_PlayerButtonStyle",
				},
				{
					type = "Button",
					name = "player3",
					buttonStyle = "DiplomacyScreen_PlayerButtonStyle",
				},
				{
					type = "Button",
					name = "player4",
					buttonStyle = "DiplomacyScreen_PlayerButtonStyle",
				},
				{
					type = "Button",
					name = "player5",
					buttonStyle = "DiplomacyScreen_PlayerButtonStyle",
				},
				{
					type = "Button",
					name = "player6",
					buttonStyle = "DiplomacyScreen_PlayerButtonStyle",
				},
				{
					type = "Button",
					name = "player7",
					buttonStyle = "DiplomacyScreen_PlayerButtonStyle",
				},
				{
					type = "Button",
					name = "player8",
					buttonStyle = "DiplomacyScreen_PlayerButtonStyle",
				},
			},
		

			-- action buttons
			{
				type = "Frame",
				--position = { 3, 31},
				autosize = 1,
				--borderColor = "IGColorOutline",
				arrangetype = "vert",
				--outerBorderWidth = 1,
				BackgroundGraphic = BORDER_GRAPHIC_FRAME,
				backgroundColor = COLOR_BACKGROUND_PANEL,
				
				Layout = {
					margin_LT = { l = PANEL_PAD_HORIZ, t = 0, lr = "scr", tr = "scr" },
				},

				;	

		
				{
					type = "TextButton",
					name = "requestAlliance",
					buttonStyle = "FEButtonStyle1_Chipped",

					Layout = {
						size_WH = {	w = NAVIGATION_SMALL_BUTTON_WIDTH, h = STD_BUTTON_HEIGHT, wr = "scr", hr = "scr" },						
					},	


					text = "$2901", -- Request Alliance
					helpTipTextLabel = "helpTip",
					helpTip = "$2914",
				},
				{
					type = "TextButton",
					name = "breakAlliance",
					buttonStyle = "FEButtonStyle1_Chipped",

					Layout = {
						size_WH = {	w = NAVIGATION_SMALL_BUTTON_WIDTH, h = STD_BUTTON_HEIGHT, wr = "scr", hr = "scr" },						
					},	


					text = "$2902", -- Break Alliance
					helpTipTextLabel = "helpTip",
					helpTip = "$2915",
				},
				{
					type = "TextButton",
					name = "ignoreAlliance",
					buttonStyle = "FEButtonStyle1_Chipped",

					Layout = {
						size_WH = {	w = NAVIGATION_SMALL_BUTTON_WIDTH, h = STD_BUTTON_HEIGHT, wr = "scr", hr = "scr" },						
					},	
					text = "$2903", -- Ignore Alliance
					helpTipTextLabel = "helpTip",
					helpTip = "$2916",
				},

				{
					type = "TextButton",
					name = "transferShips",
					buttonStyle = "FEButtonStyle1_Chipped",

					Layout = {
						size_WH = {	w = NAVIGATION_SMALL_BUTTON_WIDTH, h = STD_BUTTON_HEIGHT, wr = "scr", hr = "scr" },						
					},	


					text = "$2908", -- Transfer Selected Ships
					helpTipTextLabel = "helpTip",
					helpTip = "$2917",
				},
				--{
				--	type = "TextButton",
				--	name = "surrenderButton",

				--	Layout = {
				--		size_WH = {	w = NAVIGATION_SMALL_BUTTON_WIDTH, h = STD_BUTTON_HEIGHT, wr = "scr", hr = "scr" },						
				--	},	
					
				--	buttonStyle = "FEButtonStyle1_Alert_Chipped",
				--	text = "$2913",  -- SURRENDER
				--	onMouseClicked = "FE_Retire(\"UI_HideScreen('DiplomacyScreen')\")", -- Diplomacy screen will be hidden on confirmation accept
				--	helpTipTextLabel = "helpTip",
				--	helpTip = "$2918",
				--},

				---------------------------------------------------------------
				-- donate RU buttons and label
				{
					type = "TextLabel",
					--position = { 225, 105+20},
					autosize = 1,

					Layout = {
						margin_LT = { l = PANEL_PAD_HORIZ, t = PANEL_PAD_VERT, lr = "scr", tr = "scr" },
						--pad_RB = { r = PANEL_PAD_HORIZ, b = PANEL_PAD_VERT, rr = "scr", br = "scr" },				
						--size_WH = {	w = 1.0, h = 1.0, wr = "par", hr = "px" },							
					},	

					Text = {
						UseTemplate = T_Text_TitleBar,
						text = "$2909", -- Donate RUs
						hAlign = "Left",
					},
				},

				{
					type = "Frame",
						
					Layout = {
						pad_LT = { l = PANEL_PAD_HORIZ/2, t = PANEL_PAD_VERT, lr = "scr", tr = "scr" },
						pad_RB = { r =0, b = PANEL_PAD_VERT, rr = "scr", br = "scr" },			
						--size_WH = {	w = 1.0, h = 1.0, wr = "par", hr = "px" },							
					},		

					autosize = 1,
			
					BackgroundGraphic = BORDER_GRAPHIC_FRAME,
					backgroundColor = COLOR_BACKGROUND_PANEL,
					
					arrangetype = "horiz",
					arrangearray = 2,
					--arrangeSep = {	x=PANEL_SPACING_HORIZ/4, y=PANEL_SPACING_VERT/4, xr="scr", yr="scr",},	
					;

					{
						type = "TextButton",
						name = "donate500",
						buttonStyle = "FEButtonStyle1_Chipped",

						Layout = {	
							size_WH = {	w = NAVIGATION_SMALL_BUTTON_WIDTH/2, h = STD_BUTTON_HEIGHT, wr = "scr", hr = "scr" },						
						},	

						text = "500",
						helpTipTextLabel = "helpTip",
						helpTip = "$2919",
					},
					{
						type = "TextButton",
						name = "donate1000",
						buttonStyle = "FEButtonStyle1_Chipped",

						Layout = {	
							size_WH = {	w = NAVIGATION_SMALL_BUTTON_WIDTH/2, h = STD_BUTTON_HEIGHT, wr = "scr", hr = "scr" },						
						},	
						text = "1000",
						helpTipTextLabel = "helpTip",
						helpTip = "$2920",
					},
					{
						type = "TextButton",
						name = "donate5000",
						buttonStyle = "FEButtonStyle1_Chipped",

						Layout = {	
							size_WH = {	w = NAVIGATION_SMALL_BUTTON_WIDTH/2, h = STD_BUTTON_HEIGHT, wr = "scr", hr = "scr" },						
						},	

						text = "5000",
						helpTipTextLabel = "helpTip",
						helpTip = "$2921",
					},
					{
						type = "TextButton",
						name = "donateAll",
						buttonStyle = "FEButtonStyle1_Chipped",

						Layout = {	
							size_WH = {	w = NAVIGATION_SMALL_BUTTON_WIDTH/2, h = STD_BUTTON_HEIGHT, wr = "scr", hr = "scr" },						
						},	

						text = "$2910", -- ALL
						helpTipTextLabel = "helpTip",
						helpTip = "$2922",
					},
				},
			},

		},

	},

		--- Close button
	{
		type = "Frame",
		--position = { 0, 154},
		--size = { 345, 19},
		autosize=1,
			
		Layout = {
			pad_LT = { l = PANEL_PAD_HORIZ, t = PANEL_PAD_VERT, lr = "scr", tr = "scr" },
			pad_RB = { r = PANEL_PAD_HORIZ, b = PANEL_PAD_VERT, rr = "scr", br = "scr" },				
			size_WH = {	w = 1.0, h = 1.0, wr = "par", hr = "px" },							
		},		
		--borderWidth = 1,
		--borderColor = "IGColorOutline",

		BackgroundGraphic = BORDER_GRAPHIC_FRAME,
		backgroundColor = COLOR_BACKGROUND_PANEL,
		;
			
		{
			type = "TextButton",
			Layout = {
				pivot_XY = { 1.0, 0.5 },					
				pos_XY = {	x=1.0, y=0.5, xr="par", yr="par",},								
				size_WH = {	w = 1, h = STD_BUTTON_HEIGHT, wr = "par", hr = "scr" },					
			},	
			buttonStyle = "FEButtonStyle1_Outlined_Chipped",
			text = "$2642",  -- CLOSE
			onMousePressed = "UI_ToggleScreen( 'DiplomacyScreen', 0)",
			helpTipTextLabel = "helpTip",
			helpTip = "$2923",
		},
	},

}


dofilepath("data:ui/newui/controlstab.lua")
dofilepath("data:ui/newui/OptionsTabs/OT_Audio.lua")
dofilepath("data:ui/newui/OptionsTabs/OT_Gameplay.lua")
dofilepath("data:ui/newui/OptionsTabs/OT_Video.lua")
dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")
dofilepath("data:ui/newui/Styles/HWRM_Style/ControlConstructors.lua")



FEGameOptions = {

	Layout = {						
		pos_XY = {	x=0.0, y=0.0, xr="px", yr="px",},					
		size_WH = {w = 1, h = 1, wr = "scr", hr = "scr",},
	},

	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1, 
	
	RootElementSettings = {
		--backgroundColor = {255,0,0,0}, --"FEColorBackground1",
	},
	
	previousScreen = "NewMainMenu",
	
	CustomFX = {
		OPTION_VSYNC,		
		OPTION_ANTIALIAS,
		OPTION_TEXTURE_QUALITY,		
		OPTION_TEXTURE_SIZE,		
		OPTION_LIGHTING_QUALITY,		
		OPTION_SHADOW_QUALITY,		
		OPTION_SCAR_QUALITY,
		OPTION_SCAR_COVERAGE,
		OPTION_DEPTHBIAS,
		OPTION_MOTIONBLUR,		
		OPTION_BLOOM,
		OPTION_GODRAYS,		
		OPTION_DOF,
		OPTION_UIFX,
	},
	
	;	
	------------------------------------------------------------------------------------
	-- SCREEN HEADER
	------------------------------------------------------------------------------------
	{
		type = "RmWindow",
		WindowTemplate = SCREENHEADER_WINDOWSTYLE,
		TitleText = "$5106", -- GAME OPTIONS
		SubTitleText = "$5107", -- MANAGE PLAYER PROFILES
		Layout = {	
			size_WH = {	w = 1.0, h = 180.0/540, wr = "par", hr = "scr" },							
		},				
		--autosize=1,
		;
	},
	------------------------------------------------------------------------------------
	-- MAIN WINDOW FRAME (Window and Navigation Panel)
	------------------------------------------------------------------------------------
	{
		type = "Frame",
		name = "frmRootbottombigfrm",
		
		Layout = {
			pivot_XY = { 0.5, 0.5 },					
			pos_XY = {	x=0.5, y=0.5, xr="par", yr="par",},		
		},

		autosize=1,
		arrangetype = "vert",
		arrangeSep = {	x=0, y=PANEL_SPACING_VERT, xr="scr", yr="scr",},	
		;
		
		------------------------------------------------------------------------------------
		-- WINDOW FRAME
		------------------------------------------------------------------------------------
		{
			type = "RmWindow",
			WindowTemplate = PANEL_WINDOWSTYLE,
			TitleText = "$5106", -- GAME OPTIONS
			--SubtitleText = "$5107"
			--PanelTitle = "$5108",
			--PanelSubtitle = "$5173"
			--size = {700, 300},
			--position = {90, 150},
			--backgroundColor = "FEColorBackground1",		

			autosize=1,
			arrangetype = "vert",
			;	
		
			-- Panel Subtitle
			{
				type = "TextLabel",
				name = "m_lblSubTitle",
				--position = {10,17},
				--size = {220, 10},
				Text = {
					textStyle = "FEHeading4",
					text = "$5173",
				},
				--backgroundColor = COLOR_RED_SOLID,
				autosize=1,
			},

			-- Tab buttons
			{
				type = "Frame",
				--position = {242,15},
				--autoarrange = 1,
				--autoarrangeWidth = 470,
				--autoarrangeSpace = 2,
				--size = {460, 17},
				arrangetype = "horiz",
				autosize=1,
				--backgroundColor = COLOR_BLUE_SOLID,
				;
			
				{
					type = "RadioButton",
					name = "m_btnControls",
					buttonStyle = "OptionTabButtonStyle",
					Text = {
						text = "$5109",
						textStyle = "FEButtonTextStyle",
					},
				
					helpTipTextLabel = "m_lblHelpText", 
					helpTip = "$5239", -- "CHANGE KEYBOARD AND CONTROL SETTINGS",
				},

				{
					type = "RadioButton",
					name = "m_btnGameplay",
					buttonStyle = "OptionTabButtonStyle",
					Text = {
						text = "$5113",
						textStyle = "FEButtonTextStyle",
					},
				
					helpTipTextLabel = "m_lblHelpText", 
					helpTip = "$5240", -- "CHANGE GAMEPLAY AND CAMERA SETTINGS",
				
					enabled = 1,
				},

				{
					type = "RadioButton",
					name = "m_btnVideo",
					buttonStyle = "OptionTabButtonStyle",
					Text = {
						text = "$5111",
						textStyle = "FEButtonTextStyle",
					},
				
					helpTipTextLabel = "m_lblHelpText", 
					helpTip = "$5241", -- "CHANGE VIDEO SETTINGS",
				
					enabled = 1,
				},

				{
					type = "RadioButton",
					name = "m_btnAudio",
					buttonStyle = "OptionTabButtonStyle",
					Text = {
						text = "$5110",
						textStyle = "FEButtonTextStyle",
					},
				
					helpTipTextLabel = "m_lblHelpText", 
					helpTip = "$5242", -- "CHANGE AUDIO SETTINGS",
				
					enabled = 1,
				},
					
			},
		
			-- Contents frame
			{
				type = "Frame",
				outerBorderWidth = 2,
				position = {4, 32},
				size = {612, 264},
				borderColor = "FEColorOutline",
				--backgroundColor = COLOR_GREEN_SOLID,
				;
		
			
				-- TAB FRAMES
				{
					type = "Frame",
					position = {0,0},
					backgroundColor = {0,0,0,0},

					size = {612, 264},
					;
			
					-- GAMEPLAY TAB FRAME
					{
						type = "Frame",
						name = "m_tabGameplay",
						size = {612, 264},
						visible = 0,
						;
					
						{
							type = "Frame",
							position = {4,17},
							size = {608, 244},
							autoarrange = 1,
							autoarrangeSpace = 2,
							autoarrangeWidth = 612,
							;
						
							-- OPTION FRAMES
						
							OPTION_GAMEPLAY_ORDERFEEDBACK,
						
							OPTION_GAMEPLAY_UISPACER,
						
							OPTION_GAMEPLAY_MOUSESENSITIVITY,
						
							OPTION_GAMEPLAY_UISPACER,
						
							OPTION_GAMEPLAY_MOUSEPAN,
							OPTION_GAMEPLAY_NLIPS,
							OPTION_GAMEPLAY_SELECTIONPRIORITY,
							OPTION_GAMEPLAY_RIGHTCLICKMENU,
							OPTION_GAMEPLAY_SUBTITLES,

						},
					},
				
					-- AUDIO TAB FRAME
					{
						type = "Frame",
						name = "m_tabAudio",
						Layout = {
							pos_XY = { x = 0.0, y = 0.0, xr = "par", yr = "par" },
							size_WH = { w = 1.0, h = 1.0, wr = "par", hr = "par" },
							pad_LT = { l = 16, t = 16, lr = "px", tr = "px" },
							pad_RB = { r = 16, b = 16, rr = "px", br = "px" },
						},

						visible = 0,
						;
					
						{
							type = "Frame",
							--position = {4,17},
							--size = {608, 200},
							Layout = {
								pos_XY = { x = 0.0, y = 0.0, xr = "par", yr = "par" },
								size_WH = { w = 1.0, h = 1.0, wr = "par", hr = "par" },
								
							},

							arrangeSep = {	x=0, y=4/600, xr="px", yr="scr",},	
							autoarrange = 1,
							--autoarrangeSpace = 2,
							--autoarrangeWidth = 490,
							;
						
							-- OPTION FRAMES
							FE_AUDIO_SFXVOLUME,
							FE_AUDIO_SPEECHVOLUME,
							FE_AUDIO_MUSICVOLUME,
							FE_AUDIO_UIVOLUME,
							FE_AUDIO_UISPACER,
							FE_AUDIO_NUMSFXCHANNELS,
							FE_AUDIO_BATTLECHATTERFREQUENCY,
							FE_AUDIO_FLEETSPEECHPITCH,
							FE_AUDIO_ENABLEBATTHECHATTER,
							FE_AUDIO_ENABLESELECTIONSPEECH,						
						},
					},

					-- Items to clone
					OPTION_FX_CLONE,		

					{
						type = "TextListBoxItem",
						visible = 0,
						name = "m_itemToClone",
						buttonStyle = "FEListBoxItemButtonStyle",
						Text = {
							textStyle = "FEListBoxItemTextStyle",
						},
					},
				
					{
						type = "TextListBoxItem",
						visible = 0,
						name = "m_itemToClone_MAX",
						buttonStyle = "FEListBoxItemButtonStyle_MAX",
						Text = {
							textStyle = "FEListBoxItemTextStyle_MAX",
						},
					},
				
					{
						type = "TextListBoxItem",
						visible = 0,
						name = "m_itemToClone_DEF",
						buttonStyle = "FEListBoxItemButtonStyle_DEF",
						Text = {
							textStyle = "FEListBoxItemTextStyle",
						},
					},
					--------------------------------------------------------
					-- VIDEO TAB FRAME
					{
						type = "Frame",
						name = "m_tabVideo",		
						visible = 1,
						Layout = {
							pos_XY = { x = 0.0, y = 0.0, xr = "par", yr = "par" },
							size_WH = { w = 1.0, h = 1.0, wr = "par", hr = "par" },
							pad_LT = { l = 16, t = 16, lr = "px", tr = "px" },
							pad_RB = { r = 16, b = 16, rr = "px", br = "px" },
						},
						--backgroundColor = COLOR_RED_SOLID,
						;
						{
							type = "ListBox",
							listBoxStyle = "FEListBoxStyle_Bordered",
							name = "m_frameFXOptionContainer",
							Layout = {
								pos_XY = { x = 0.0, y = 0.0, xr = "par", yr = "par" },
								size_WH = { w = 1.0, h = 1.0, wr = "par", hr = "par" },
							},

							scrollBarPageSize = 200,

							;
							
							OPTION_VIDEO_RESOLUTION,
							OPTION_VIDEO_WINDOWED,

							-- OPTION FRAMES

							-- FILLED BY CODE...
						},
					},
				
					-- CONTROLS TAB FRAME
					{
						type = "Frame",
						name = "m_tabControls",
						size = {612, 266},
						;
					
						{
							type = "Frame",
							position = {0,0},
							size = {612, 266},
							;
						
							-- load the controls tab from data:ui/newui/controlstab.lua
							GetControlsTab(612, 264, "FEColorOutline"),
						}
					},
				},
			},
		},
	
	
	
	
		------------------------------------------------------------------------------------
		-- BOTTOM NAVIGATION FRAME
		------------------------------------------------------------------------------------
		{
			type = "RmWindow",
			name = "frmRootbottombigfrm",			
		
			WindowTemplate = PANEL_NAVIGATIONFRAME,

			;
			
			-- BUTTONS			
			NewMenuButton("m_btnBack",					"$2613",	"$5274",	0,	BTN_FOOTER_STD_LAYOUT,	"FEButtonStyle1_Outlined",	"UI_PreviousScreen(eTransition)"),
			NewMenuButton("m_btnRestoreDefaultOptions",	"$5142",	"$5275",	0,	BTN_FOOTER_STD_LAYOUT,	"FEButtonStyle1_Outlined",	nil),
			NewMenuButton("m_btnAccept",				"$5143",	"$5276",	0,	BTN_FOOTER_YES_LAYOUT,	"FEButtonStyle1_Alert_Outlined_Chipped",	nil),
			
		},		
	},
}

	

dofilepath("data:ui/newui/controlstab.lua")
dofilepath("data:ui/newui/OptionsTabs/OT_Audio.lua")
dofilepath("data:ui/newui/OptionsTabs/OT_Gameplay.lua")
dofilepath("data:ui/newui/OptionsTabs/OT_Video.lua")
dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")
dofilepath("data:ui/newui/Styles/HWRM_Style/ControlConstructors.lua")

InGameOptions = {

	Layout = {						
		pos_XY = {	x=0.0, y=0.0, xr="px", yr="px",},					
		size_WH = {w = 1, h = 1, wr = "scr", hr = "scr",},
	},

	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1, 
	
	RootElementSettings = {
		--backgroundColor = {0,0,0,255},
	},
	
CustomFX = {
	OPTION_VSYNC,		
	OPTION_ANTIALIAS,		
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

	onShow = "MainUI_PushEnabledCommandState(); MainUI_DisableAllCommands(1); MainUI_DisableCommand(eExit, 0);",
	onHide = "MainUI_DisableCommand(eExit, 1); MainUI_PopEnabledCommandState()",
	
	;
	
	{
		type = "Frame",
		name = "frmRootbottombigfrm",
		
		Layout = {
			pivot_XY = { 0.5, 0.5 },					
			pos_XY = {	x=0.5, y=0.5, xr="par", yr="par",},		
		},		
		backgroundColor = {0,0,0,255},
		autosize=1,
		arrangetype = "vert",
		arrangeSep = {	x=0, y=PANEL_SPACING_VERT, xr="scr", yr="scr",},	
		;

		-- MAIN FRAME
		{
			type = "RmWindow",
			WindowTemplate = PANEL_WINDOWSTYLE,
			TitleText = "$5108", -- IN-GAME OPTIONS
			--SubtitleText = "$5173"
			--PanelTitle = "$5108",
			--PanelSubtitle = "$5173"
			--size = {700, 300},
			--position = {90, 150},
			--backgroundColor = "FEColorBackground1",		

			autosize=1,
			arrangetype = "vert",
			;	
		
			-- Subtitle
			{
				type = "TextLabel",
				--position = {10,17},
				--size = {220, 10},
				name = "m_lblSubTitle",
				Text = {
					textStyle = "FEHeading4",
					text = "$5173",
				},
			
				autosize=1,
			},

			-- Tab buttons
			{
				type = "Frame",
				--position = {118,17},
				--autoarrange = 1,
				--autoarrangeWidth = 380,
				--autoarrangeSpace = 2,
				--size = {370, 17},
				arrangetype = "horiz",
				autosize=1,
				
				;
			
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
				
					enabled = 1, -- HOOKUP AFTER E3
					visible = 1, -- TODO
				},

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
						text = "$5144",
						textStyle = "FEButtonTextStyle",
					},
				
					helpTipTextLabel = "m_lblHelpText", 
					helpTip = "$5240", --"CHANGE GAMEPLAY AND CAMERA SETTINGS",
				
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
					visible = 1, -- TODO
				},
			},

			-- Contents frame
			{
				type = "Frame",
				outerBorderWidth = 2,
				--position = {4, 34},
				--size = {612, 264},
				autosize=1,
				borderColor = "FEColorOutline",
				
				;
		
			
				-- TAB FRAMES
				{
					type = "Frame",
					position = {0,0},
					backgroundColor = {0,0,0,0},
					size = {490,250},
					;
			
					-- GAMEPLAY TAB FRAME
					{
						type = "Frame",
						name = "m_tabGameplay",
						size = {490, 250},
						;
					
						{
							type = "Frame",
							position = {4,17},
							size = {484, 134},
							autoarrange = 1,
							autoarrangeSpace = 2,
							autoarrangeWidth = 490,
							;
						
							-- OPTION FRAMES
						
							-- ORDER FEEDBACK SLIDER
							OPTION_GAMEPLAY_ORDERFEEDBACK,
							
							-- SPACER
							{
								type = "Frame",
								size = {482, 13},
							},
								NewCheckBoxButton("m_chkScreenPan",		"$5116", "$5247", nil,  nil, 1 ),
								NewCheckBoxButton("m_chkNLIPS",			"$5146", "$5248", nil,  nil, 1 ),
								NewCheckBoxButton("m_chkMilitarySelection",		"$5148", "$5093", nil,  nil, 1 ),
								NewCheckBoxButton("m_chkRightClickMenu",	"$5092", "$5091", nil,  nil, 1 ),
								NewCheckBoxButton("m_chkSubtitles",		"$5087", "$5088", nil,  nil, 1 ),

						},
					},
				
					-- AUDIO TAB FRAME
					{
						type = "Frame",
						name = "m_tabAudio",
						size = {490, 250},
						;
					
						{
							type = "Frame",
							--position = {4,17},
							size = {484, 134},
							autoarrange = 1,
							autoarrangeSpace = 2,
							autoarrangeWidth = 490,
							;
						
							-- OPTION FRAMES
						
							-- SFX VOLUME SLIDER
							FE_AUDIO_SFXVOLUME,
							FE_AUDIO_SPEECHVOLUME,
							FE_AUDIO_MUSICVOLUME,
							FE_AUDIO_UIVOLUME,

							FE_AUDIO_UISPACER,

							FE_AUDIO_NUMSFXCHANNELS,
							FE_AUDIO_BATTLECHATTERFREQUENCY,

							-- SPACER
							{
								type = "Frame",
								size = {482, 13},
							},
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
						;
					
						{
							type = "ListBox",
							listBoxStyle = "FEListBoxStyle_Bordered",
							name = "m_frameFXOptionContainer",
							Layout = {
								pos_XY = { x = 0.0, y = 0.0, xr = "par", yr = "par" },
								size_WH = { w = 1.0, h = 1.0, wr = "par", hr = "par" },
							},

							scrollBarPageSize = 75,
							;

							-- OPTION FRAMES

							-- FILLED BY CODE...
						},
					},
				
					-- CONTROLS TAB FRAME
					{
						type = "Frame",
						name = "m_tabControls",
						size = {490, 250},
						;
					
						{
							type = "Frame",
							position = {0,0},
							size = {490, 250},
							;
						
							-- load the controls tab from data:ui/newui/controlstab.lua
							GetControlsTab(490, 250, "FEColorPopupOutline"),
						}
					},
				},	
			},
		},
		
		------------------------------------------------------------------------------------
		-- BOTTOM NAVIGATION FRAME
		------------------------------------------------------------------------------------
		{
			type = "Frame",
			name = "frmRootbottombigfrm",			

			Layout = {
				--margin_LT = { l = 0, t = PANEL_SPACING_VERT, lr = "scr", tr = "scr" },
				pad_LT = { l = PANEL_PAD_HORIZ, t = PANEL_PAD_VERT, lr = "scr", tr = "scr" },
				pad_RB = { r = PANEL_PAD_HORIZ, b = PANEL_PAD_VERT, rr = "scr", br = "scr" },				
				size_WH = {	w = 1.0, h = 1.0, wr = "par", hr = "px" },							
			},		

			autosize=1,
			
			BackgroundGraphic = BORDER_GRAPHIC_FRAME,
			backgroundColor = COLOR_BACKGROUND_PANEL,

			arrangetype = "horiz",

			;
			
			-- BUTTONS			
			NewMenuButton("m_btnCancel",				"$5156",	"$5277",	0,	BTN_FOOTER_STD_LAYOUT,	"FEButtonStyle1_Outlined",	nil),
			--NewMenuButton("m_btnRestoreDefaultOptions",	"$5142",	"$5275",	0,	BTN_FOOTER_STD_LAYOUT,	"FEButtonStyle1_Outlined",	nil),
			NewMenuButton("m_btnAccept",				"$5157",	"$5278",	0,	BTN_FOOTER_YES_LAYOUT,	"FEButtonStyle1_Alert_Outlined_Chipped",	nil),
			
		},	
			
	},
}

	
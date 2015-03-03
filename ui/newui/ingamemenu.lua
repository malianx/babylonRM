dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")
dofilepath("data:ui/newui/Styles/HWRM_Style/ControlConstructors.lua")

-- TODO: Localize me

-- UI Layout for the F10 menu
--
-- If you need to add or remove buttons from the F10 menu, do so at the bottom of this file by adding
--  button definitions to the specific game type frames.

FRM_SPACER = {
	type = "Frame",
	size = {240,13},
}

LAYOUT_BUTTONS = 
{
	min_WH = {	w = 1, wr = "par"},	
	pad_LT  = { l = BUTTON_TEXT_PAD_HORIZ, t = BUTTON_TEXT_PAD_VERT, lr = "scr", tr = "scr" },
	pad_RB  = { r = BUTTON_TEXT_PAD_HORIZ, b = BUTTON_TEXT_PAD_VERT, rr = "scr", br = "scr" },	
}


BTN_SAVEGAME			= NewMenuButton("m_btnSave",			"$5564",	"$5550",	0,	LAYOUT_BUTTONS,	nil,	"FE_SaveGameScreen()")
BTN_LOADGAME			= NewMenuButton("m_btnLoad",			"$5565",	"$5551",	0,	LAYOUT_BUTTONS,	nil,	"FE_LoadGameScreen()")
BTN_SAVEGAME_CAMPAIGN	= NewMenuButton("m_btnSaveCampaign",	"$5566",	"$5552",	0,	LAYOUT_BUTTONS,	nil,	"FE_SaveGameScreen_Campaign()")
BTN_LOADGAME_CAMPAIGN	= NewMenuButton("m_btnLoadCampaign",	"$5567",	"$5553",	0,	LAYOUT_BUTTONS,	nil,	"FE_LoadGameScreen_Campaign()")
BTN_LOADGAME_RECORDED	= NewMenuButton("m_btnLoadRecorded",	"$5568",	"$5554",	0,	LAYOUT_BUTTONS,	nil,	"FE_LoadGameScreen_Recorded()")
BTN_OPTIONS				= NewMenuButton("OptionsButton",		"$5569",	"$5555",	0,	LAYOUT_BUTTONS,	nil,	"UI_SetScreenEnabled(\"InGameOptions\", 1); UI_ShowScreen(\"InGameOptions\", ePopup);")
BTN_EXITTOWINDOWS		= NewMenuButton("ExitToWindowsButton",	"$5570",	"$5556",	0,	LAYOUT_BUTTONS,	nil,	"MainUI_UserEvent( eExit )")
BTN_EXITTOMAINMENU		= NewMenuButton("ExitToMainMenuButton",	"$5571",	"$5557",	0,	LAYOUT_BUTTONS,	nil,	"FE_ExitToMainMenu();")
BTN_ENDCURRENTGAME		= NewMenuButton("EndGameButton",		"$5579",	"$5558",	0,	LAYOUT_BUTTONS,	nil,	"FE_ExitToMainMenu();")
BTN_SKIRMISH_STATS		= NewMenuButton("SkirmishButton",		"$5579",	"$5559",	0,	LAYOUT_BUTTONS,	nil,	"FE_Retire(\"MainUI_UserEvent(eMenu)\")")
BTN_RETIRE				= NewMenuButton("RetireButton",			"$2913",	"$2918",	0,	LAYOUT_BUTTONS,	nil,	"FE_Retire(\"UI_HideScreen(eMenu)\")")
BTN_RETURNTOGAME		= NewMenuButton("ReturnButton",			"$5573",	"$5559",	0,	LAYOUT_BUTTONS,	"FEButtonStyle1_Alert_Chipped",	"MainUI_UserEvent(eMenu);")
BTN_NEXTTUTORIAL		= NewMenuButton("m_btnNextTutorial",	"$5574",	"$5560",	0,	LAYOUT_BUTTONS,	nil,	"FE_NextTutorial()")
BTN_RESTARTTUTORIAL		= NewMenuButton("m_btnRestartTutorial",	"$5575",	"$5561",	0,	LAYOUT_BUTTONS,	nil,	"FE_RestartGame(1)")
BTN_RESTARTMISSION		= NewMenuButton("m_btnRestartMission",	"$5576",	"$5562",	0,	LAYOUT_BUTTONS,	nil,	"FE_RestartGame(1)")
BTN_RESTARTMISSION2		= NewMenuButton("m_btnRestartMission2",	"$5576",	"$5562",	0,	LAYOUT_BUTTONS,	nil,	"FE_RestartGame(0)")
BTN_RESTART				= NewMenuButton("m_btnRestart",			"$5576",	"$5576",	0,	LAYOUT_BUTTONS,	nil,	"FE_RestartGame(1)")



	----------------------------------- INGAME MENU  -----------------------------------


InGameMenu = {
	stylesheet = "HW2StyleSheet",
	
	Layout = {
		pos_XY = {	x = 0, y = 0, xr = "scr",	yr = "scr"	},	
		size_WH = {	w = 1.0, h = 1.0, wr = "scr", hr = "scr" },							
	},			

	RootElementSettings = {
		backgroundColor = "FEColorBackground2",
		blockMouseWheel = 1,
	},
	
	-- Flags
	pixelUVCoords = 1, -- Enter pixel coords for texture coords	
	
	--
	soundOnShow = "SFX_GameMenuONOFF",
	soundOnHide = "SFX_GameMenuONOFF",
	
	;
	

	--------------------------- Main Frame  ---------------------------

	{
		type = "RmWindow",
		WindowTemplate = PANEL_WINDOWSTYLE,
		TitleText = "$5577", -- "GAME MENU",
		--type = "Frame",
		--position = { 274, 179},
		
		Layout = {
			pos_XY = { x=.5, y = .5,  xr="par", yr = "par" },	
			pivot_XY = { .5,  .5 },		

		},
		
		autosize  = 1,
		autoarrange = 1,
		arrangetype = "vert",

		;

		----------------------- Main Parent Frame w/background -----------------------

		{
			type = "Frame",

			autosize  = 1,
			autoarrange = 1,

			arrangedir = 1,	
			arrangetype = "horiz",
			;

			------------------------------- Content Row - Button List -------------------------------
			{
				type = "Frame",
				name = "frmButtonGroup",

				autosize = 1,
				visible = 1,

				Layout = {	
					pos_XY = { x = 5, y = 5, xr = "px", yr = "px" },			
					pad_RB  = { r = 8/800, b = 0, rr = "scr_min", br = "px" },	
					max_WH  = {	w = DIALOGBOX_WIDTH, wr = "scr"},
				},	
				;
			
			},

	------------------------------- Scale example -------------------------------
			{
				type = "Frame",
				name = "MasterFrame",
				autosize = 1,
				--autoarrange = 1,
				arrangetype = "contain",
				--arrangedir = -1,
				visible = 1,
				
				BackgroundGraphic = BORDER_GRAPHIC_FRAME_THICKSIDELINES,
				Anchor_Spawns = {
					anchorName = "Taskbar_RB_Scale",
					relativePos = { 0.0, 0.0 },
				},

				Layout = {	
					size_WH = { w = 1, h = 1, wr = "px", hr = "par" },
					pad_LT  = { l = 8/800, t = 0, lr = "scr", tr = "px" },
					pad_RB  = { r = 8/800, b = 0, rr = "scr", br = "px" },
				},	


				;
				{
					type = "Frame",
					name = "SubFrame",
					autosize = 1,

					arrangetype = "vert",
					visible = 1,

					Layout = {	
						pos_XY = { x = 0.0, y = 1.0, xr = "px", yr = "par" },
						pivot_XY = { 0.0, 1.0 },
					},	
					;
					--arrangeweight=1,
					{
						type = "TextLabel",
						name = "unitrole",

						autosize=1,		
												
						Text = {
							textStyle = "RM_IGShipDescriptionLabel_TextStyle",
							color = COLOR_BUTTON_TEXT_DEFAULT,		
							hAlign = "Center",
							vAlign = "Center",
							wrapping = 1,					--textStyle = "RM_TaskbarHD_ButtonTextStyle",
							font = "ButtonFont",
							color = "RM_FETextBlueBright",
							--dropShadow = 1,
							pixels  = 14,
							rel=960,
							text = "HUD Scale",
							--color = { 0, 128, 255, 255},

							},						
					},
{
						type = "Frame",
						name = "gogoScalebot",
						autosize = 1,
						autoarrange = 1,
						arrangetype = "vert",

						visible = 1,
				
						BackgroundGraphic = BORDER_GRAPHIC_BUILDFRAME_HORIZ,


						Layout = {	
							--pos_XY = { x = 0.0, y = 1.0, xr = "par", yr = "par" },
							--size_WH = { w = 50, h = 1, wr = "px", hr = "par" },
							pad_LT  = { l = 0, t = 4/600, lr = "px", tr = "scr" },
							pad_RB  = { r = 0, b = 4/600, rr = "px", br = "scr" },
							--pivot_XY = { 0.0, 1.0 },
						},	

						arrangeSep = {	x=0, y= 2/600, xr="px", yr="scr"},

						;
						{
							type = "TextButton",
							buttonStyle = "FEButtonStyle1",
				
							Layout = {
								pos_XY = { x = 0, y = 0, xr = "px", yr = "px" },
								--size_WH = { w = 50, h = 50, wr = "px", hr = "px" },
								pivot_XY = {0, 0},
								pad_LT  = { l = 16/800, t = 2/600, lr = "scr", tr = "scr" },
								pad_RB  = { r = 16/800, b = 2/600, rr = "scr", br = "scr" },
							},
				
							visible = 1,
							autosize = 1,
							Text = {					
								text = "1",
							},
	
							onMouseClicked = [[
								UI_AnchorSetScale('Taskbar_RB_Scale', 1, 1);
							]],
						},
						{
							type = "TextButton",
							buttonStyle = "FEButtonStyle1",
				
							Layout = {
								pos_XY = { x = 0, y = 0, xr = "px", yr = "px" },
								--size_WH = { w = 50, h = 50, wr = "px", hr = "px" },
								pivot_XY = {0, 0},
								pad_LT  = { l = 16/800, t = 2/600, lr = "scr", tr = "scr" },
								pad_RB  = { r = 16/800, b = 2/600, rr = "scr", br = "scr" },
							},
				
							visible = 1,
							autosize = 1,
							Text = {					
								text = "2",
							},
	
							onMouseClicked = [[
								UI_AnchorSetScale('Taskbar_RB_Scale', 2, 1);
							]],
						},
						{
							type = "TextButton",
							buttonStyle = "FEButtonStyle1",
				
							Layout = {
								pos_XY = { x = 0, y = 0, xr = "px", yr = "px" },
								--size_WH = { w = 50, h = 50, wr = "px", hr = "px" },
								pivot_XY = {0, 0},
								pad_LT  = { l = 16/800, t = 2/600, lr = "scr", tr = "scr" },
								pad_RB  = { r = 16/800, b = 2/600, rr = "scr", br = "scr" },
							},
				
							visible = 1,
							autosize = 1,
							Text = {					
								text = "3",
							},
	
							onMouseClicked = [[
								UI_AnchorSetScale('Taskbar_RB_Scale', 3, 1);
							]],
						},
						{
							type = "TextButton",
							buttonStyle = "FEButtonStyle1",
				
							Layout = {
								pos_XY = { x = 0, y = 0, xr = "px", yr = "px" },
								--size_WH = { w = 50, h = 50, wr = "px", hr = "px" },
								pivot_XY = {0, 0},
								pad_LT  = { l = 16/800, t = 2/600, lr = "scr", tr = "scr" },
								pad_RB  = { r = 16/800, b = 1/600, rr = "scr", br = "scr" },
							},
				
							visible = 1,
							autosize = 1,
							Text = {					
								text = "4",
							},
	
							onMouseClicked = [[
								UI_AnchorSetScale('Taskbar_RB_Scale', 4, 1);
							]],
						},
					},
				},
			},
				
			------------------------------- Drag Handle -------------------------------
			--PREFAB_DRAGICON,
		},

	},
	
	
---------------------------------------------------------------------------------------------
-- PLAYER VS CPU MENU BUTTONS
---------------------------------------------------------------------------------------------
	{
		type = "Frame",
		outerBorderWidth = DEBUG_DRAWBORDER,
		--borderColor = {255,0,255,255},
		name = "frmButtons_PlayerVsCpu",

		autosize  = 1,
		autoarrange = 1,
		--autoarrangeSpace = 2,
		arrangetype = "vert",
		arrangeSep = {	x=0, y= 4/540, xr="scr", yr="scr"},
		visible = 1,
		
		;
		
		BTN_SAVEGAME ,
		BTN_LOADGAME,
		BTN_OPTIONS,
		BTN_EXITTOWINDOWS,
		BTN_EXITTOMAINMENU,
		BTN_SKIRMISH_STATS,
		BTN_RESTART,
		FRM_SPACER,
		BTN_RETURNTOGAME,

		

	},
	
---------------------------------------------------------------------------------------------
-- PLAYER VS CPU MENU BUTTONS (FAILED)
---------------------------------------------------------------------------------------------
	{
		type = "Frame",
		outerBorderWidth = DEBUG_DRAWBORDER,
		name = "frmButtons_PlayerVsCpuFailed",
		borderColor = "FEColorPopupOutline",
		autosize  = 1,
		autoarrange = 1,
		autoarrangeSpace = 2,
		visible = 0,
		;
		
		
		BTN_LOADGAME,
		BTN_OPTIONS,
		BTN_SKIRMISH_STATS,
		BTN_EXITTOWINDOWS,
		BTN_RESTART,
		FRM_SPACER,
		BTN_RETURNTOGAME,
	},
	
---------------------------------------------------------------------------------------------
-- CAMPAIGN MENU BUTTONS
---------------------------------------------------------------------------------------------
	{
		type = "Frame",
		outerBorderWidth = DEBUG_DRAWBORDER,
		name = "frmButtons_Campaign",
		borderColor = "FEColorPopupOutline",
		autosize  = 1,
		autoarrange = 1,
		autoarrangeSpace = 2,
		visible = 0,
		;
		
		BTN_RESTARTMISSION,
		BTN_SAVEGAME_CAMPAIGN ,
		BTN_LOADGAME_CAMPAIGN,
		BTN_OPTIONS,
		BTN_EXITTOMAINMENU,
		BTN_EXITTOWINDOWS,
		--BTN_RETIRE, -- retire button is pointless for campaign game, you can just use exit
		
		FRM_SPACER,
		
		BTN_RETURNTOGAME,
	},
	
---------------------------------------------------------------------------------------------
-- CAMPAIGN MISSION FAILED BUTTONS (SHOWN AT END OF CAMPAIGN MISSION IF THE MISSION IS LOST)
---------------------------------------------------------------------------------------------
	{
		type = "Frame",
		outerBorderWidth = DEBUG_DRAWBORDER,
		name = "frmButtons_CampaignFailed",
		borderColor = "FEColorPopupOutline",
		autosize  = 1,
		autoarrange = 1,
		autoarrangeSpace = 2,
		visible = 0,
		;
				
		--BTN_SAVEGAME_CAMPAIGN ,
		BTN_LOADGAME_CAMPAIGN,
		--BTN_OPTIONS,
		BTN_EXITTOMAINMENU,
		BTN_EXITTOWINDOWS,
		
		FRM_SPACER,
		
		BTN_RESTARTMISSION2,
	},
	
---------------------------------------------------------------------------------------------
-- MULTIPLAYER MENU BUTTONS
---------------------------------------------------------------------------------------------
	{
		type = "Frame",
		outerBorderWidth = DEBUG_DRAWBORDER,
		name = "frmButtons_Multiplayer",
		borderColor = "FEColorPopupOutline",
		autosize  = 1,
		autoarrange = 1,
		autoarrangeSpace = 2,
		visible = 0,
		;
		
		BTN_OPTIONS,
		--BTN_EXITTOMAINMENU,
		BTN_RETIRE,
		BTN_EXITTOWINDOWS,
		
		FRM_SPACER,
		
		BTN_RETURNTOGAME,
	},
	
---------------------------------------------------------------------------------------------
-- MULTIPLAYER MENU BUTTONS (FAILED) used when a player dies and chooses to keep watching
---------------------------------------------------------------------------------------------
	{
		type = "Frame",
		outerBorderWidth = DEBUG_DRAWBORDER,
		name = "frmButtons_MultiplayerFailed",
		borderColor = "FEColorPopupOutline",
		autosize  = 1,
		autoarrange = 1,
		autoarrangeSpace = 2,
		visible = 0,
		;
		
		BTN_OPTIONS,
		BTN_ENDCURRENTGAME,
		BTN_EXITTOWINDOWS,
		
		FRM_SPACER,
		
		BTN_RETURNTOGAME,
	},
	
---------------------------------------------------------------------------------------------
-- TUTORIAL MENU BUTTONS
---------------------------------------------------------------------------------------------
	{
		type = "Frame",
		outerBorderWidth = DEBUG_DRAWBORDER,
		name = "frmButtons_Tutorial",
		borderColor = "FEColorPopupOutline",
		autosize  = 1,
		autoarrange = 1,
		autoarrangeSpace = 2,
		visible = 0,
		;
		
		BTN_NEXTTUTORIAL,
		BTN_RESTARTTUTORIAL,
		BTN_OPTIONS,
		BTN_EXITTOMAINMENU,
		BTN_EXITTOWINDOWS,
		
		FRM_SPACER,
		
		BTN_RETURNTOGAME,
	},
	
---------------------------------------------------------------------------------------------
-- RECORDED GAME MENU BUTTONS
---------------------------------------------------------------------------------------------
	{
		type = "Frame",
		outerBorderWidth = DEBUG_DRAWBORDER,
		name = "frmButtons_RecordedGame",
		borderColor = "FEColorPopupOutline",
		autosize  = 1,
		autoarrange = 1,
		autoarrangeSpace = 2,
		visible = 0,
		;
		
		--BTN_LOADGAME_RECORDED,
		BTN_OPTIONS,

		BTN_EXITTOMAINMENU,
		BTN_EXITTOWINDOWS,
		FRM_SPACER,
		
		BTN_RETURNTOGAME,
	},
	
	
}

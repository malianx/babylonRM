dofilepath("data:ui/newui/multiplayer/chatui.lua")
dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")
dofilepath("data:ui/newui/Styles/HWRM_Style/ControlConstructors.lua")
GAMELIST_W = 776
GAMELIST_H = 177
GAMELIST_X = 12
GAMELIST_Y = 68

LANGAMELIST_W = 776
LANGAMELIST_H = 391
LANGAMELIST_X = 12
LANGAMELIST_Y = 97

LobbyScreen = {
	stylesheet = "HW2StyleSheet",

	Layout = {						
		pos_XY = {	x=0.0, y=0.0, xr="px", yr="px",},					
		size_WH = {w = 1, h = 1, wr = "scr", hr = "scr",},
	},


	RootElementSettings = {
		--backgroundColor = "FEColorBackground1",
	},

	-- custom
	enabledGameColor = {1,1,1,1},
	disabledGameColor = {0.3,0.3,0.3,1},

	-- Localizer format IDs for broadcast and whisper chat messages.  These should be the same in all screens ChatUI is used.
	sayFormatID = 3364,
	whisperFormatID = 3365,	
	whisperEchoFormatID = 3369,
	playerJoinedFormatID = 3525,
	playerLeftFormatID = 3526,

	LobbyType_Steam_Text = "$3411",	--STEAM
	LobbyType_LAN_Text = "$3441",	--LAN

	ErrorMessages = 
	{
		[ LM_Joining ] 			= "$3620",--"Joining Room",
		-- Note: This disconnected from server is the same message as in GameSetup.lua and ServerRoom.lua so it can share a localizer ID
		[ LM_Disconnected ] 		= "$3621",--"Disconnected from server",
		[ LM_CouldNotJoinRoom ] 	= "$3622",--"Unable to join room",
	}, 
	
	pixelUVCoords = 1,
	
	
	;


	------------------------------------------------------------------------------------
	-- SCREEN HEADER
	------------------------------------------------------------------------------------
	{
		type = "RmWindow",
		WindowTemplate = SCREENHEADER_WINDOWSTYLE,
		TitleText =		"$3410",
		SubTitleText =	"UNDEFINED",	-- Filled in by the Type of Game
		Extra1Text =	"$2622",		-- BETA

		Layout = {	
			size_WH = {	w = 1.0, h = 180.0/540, wr = "par", hr = "scr" },							
		},				
		autosize=1,
		;
		--SUBTITLE (visible for LAN games only)
		{
			type = "TextLabel",
			autosize=1,
			name = "txtLblSUBTITLELAN",
			Text = {
				text = "", -- LOCAL AREA NETWORK
				textStyle = "FEHeading2",
			},
			;
		},
	},


	
	------------------------------------------------------------------------------------
	-- MAIN WINDOW FRAME (Window and Navigation Panel)
	------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------
	-- GAME LIST FRAME - GBX:pdeupree - This was the LAN gamelist, but with no chat in the game list now for Steam it's used for both game types
	------------------------------------------------------------------------------------
	{
		type = "Frame",
		name = "frmRootGame",

		--backgroundColor = "FEColorBackground1",
		
		Layout = {
			pivot_XY = { 0.5, 0.5 },					
			pos_XY = {	x=0.5, y=0.5, xr="par", yr="par" },			
			size_WH = {w = 0.8, h = 1, wr = "par", hr = "px" },
		},	

		autosize=1,
		arrangetype = "vert",
		--arrangeSep = {	x=0, y=PANEL_SPACING_VERT, xr="scr", yr="scr",},	
		;
		
		------------------------------------------------------------------------------------
		-- WINDOW FRAME
		------------------------------------------------------------------------------------
		{
			type = "RmWindow",			
			WindowTemplate = PANEL_WINDOWSTYLE,
			TitleText = "$3414",
			-- SubtitleText = "$3412", --SELECT_A_GAME
			autosize=1,
			--backgroundColor = {0,255,0,255},
			arrangetype="vert",
			
			Layout = {
				size_WH = {	w = 1.0, h = 1, wr = "par", hr = "px" },
			},	

			--arrangeSep = {	x=0, y=PANEL_SPACING_VERT, xr="scr", yr="scr",},	
			;
			----------- Options Bar ---------------------
			{
				type = "Frame",
				name = "frmOptions",
								
				Layout = {
				--	pivot_XY = { 0.5, 0.5 },					
				--	pos_XY = {	x=0.5, y=0.5, xr="par", yr="par",},		
					pad_LT  = { l = BUTTON_TEXT_PAD_HORIZ, t = 0, lr = "scr", tr = "scr" },
					pad_RB  = { r = BUTTON_TEXT_PAD_HORIZ, b = BUTTON_TEXT_PAD_VERT*2, rr = "scr", br = "scr" },	
					size_WH = {	w = 1.0, h = 1, wr = "par", hr = "px" },
				},	

				autosize=1,
				arrangetype = "horiz",
				--arrangeSep = {	x=0, y=PANEL_SPACING_VERT, xr="scr", yr="scr",},	
				--backgroundColor = {0,255,0,255},
				;

				--DEFINITION FOR: (txtBtn) FILTERS
				NewMenuButton("txtBtnFILTERS",	"$3401",	"$3633",	0,	BTN_FOOTER_STD_SMALL_LAYOUT,	"FEButtonStyle1_Outlined_Chipped",	nil),
				NewMenuButton("txtBtnREFRESH",		"$3421",	"$3631",	0,	BTN_FOOTER_YES_LAYOUT,	"FEButtonStyle1_Alert_Outlined_Chipped",	nil),
				
			},





			----------- Options Bar ---------------------
			{
				type = "Frame",
				name = "frmOptions",
								
				Layout = {
				--	pivot_XY = { 0.5, 0.5 },					
				--pos_XY = {	x=0.5, y=0.5, xr="par", yr="par",},		
				pad_LT  = { l = 0, t = BUTTON_TEXT_PAD_VERT, lr = "scr", tr = "scr" },
					pad_RB  = { r = 0, b = BUTTON_TEXT_PAD_VERT, rr = "scr", br = "scr" },	
					size_WH = {	w = 1, h = .5, wr = "par", hr = "scr" },							
				},
					BackgroundGraphic = BORDER_GRAPHIC_FRAME,		
				;
		
			-- DEFINITION FOR (tbl) tableGames
			{
				type = "Table",
				name = "tableGames",
				
				Layout = {													
					size_WH = { w=1, h = 1,  wr="par", hr = "par",},
				},
				--width = 875,
				--position = {4,4},
				
				--size = {LANGAMELIST_W - 12, LANGAMELIST_H - 41},
				--size = {389,428},
				
				backgroundColor = FEColorBackground1,
				tableStyle = "FETableStyle",
				
				Columns = {
					;
					-- GAME HOST
					{
						width = .2,
						TitleCell = {
							type = "TableCell",
							helpTipTextLabel = "m_lblHelpText",
							helpTip = "$3623",--"SORT GAMES BY GAME HOST",
							;
							{
								name = "TableTitleGameHost",
								type = "TextButton",
								buttonStyle = "FETableTitleButtonStyle",
								Text = {
									text = "$3435",
									textStyle = "FETableTitleTextStyle",
								},
							}
						},
					},
					
					-- MAP
					{
						width = .3,
						TitleCell = {
							type = "TableCell",
							helpTipTextLabel = "m_lblHelpText",
							helpTip = "$3624",--SORT GAMES BY MAP NAME
							;
							{
								name = "TableTitleMap",
								type = "TextButton",
								buttonStyle = "FETableTitleButtonStyle",
								Text = {
									text = "$3436",
									textStyle = "FETableTitleTextStyle",
								},
							}
						},
					},
					
					-- GAME MODE
					{
						width = .25,
						TitleCell = {
							type = "TableCell",
							helpTipTextLabel = "m_lblHelpText",
							helpTip = "$3625",--SORT GAMES BY GAME MODE
							;
							{
								name = "TableTitleGameMode",
								type = "TextButton",
								buttonStyle = "FETableTitleButtonStyle",
								Text = {
									text = "$3437",
									textStyle = "FETableTitleTextStyle",
								},
							}
						},
					},
					
					-- PLAYERS
					{
						width = .1,
						TitleCell = {
							type = "TableCell",
							helpTipTextLabel = "m_lblHelpText",
							helpTip = "$3626",--SORT GAMES BY GAME PLAYERS
							;
							{
								name = "TableTitlePlayers",
								type = "TextButton",
								buttonStyle = "FETableTitleButtonStyle",
								Text = {
									text = "$3438",
									textStyle = "FETableTitleTextStyle",
								},
							}
						},
					},
					
					-- PING
					--{
					--	width = .05,
					--	TitleCell = {
					--		type = "TableCell",
					--		helpTipTextLabel = "m_lblHelpText",
					--		helpTip = "$3627",--SORT GAMES BY PING
					--		;
					--		{
					--			name = "TableTitlePing",
					--			type = "TextButton",
					--			buttonStyle = "FETableTitleButtonStyle",
					--			Text = {
					--				text = "$3439",
					--				textStyle = "FETableTitleTextStyle",
					--			},
					--		}
					--	},
					--},
					
					-- VERSION
					{
						width = .15,
						TitleCell = {
							type = "TableCell",
							helpTipTextLabel = "m_lblHelpText",
							helpTip = "$3628",--SORT GAMES BY GAME VERSION
							;
							{
								type = "TextButton",
								buttonStyle = "FETableTitleButtonStyle",
								Text = {
									text = "$3440",
									textStyle = "FETableTitleTextStyle",
								},
							}
						},
					},
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
			arrangetype="horiz",
			arrangedir=-1,
			autosize=1,
			;
			-- BUTTONS	
			NewMenuButton("txtBtnBACK",			"$3433",	"$3629",	0,	BTN_FOOTER_FORCELEFT_LAYOUT,	"FEButtonStyle1_Outlined_Chipped",	nil),
			NewMenuButton("txtBtnHOSTGAME",		"$3418",	"$3634",	0,	BTN_FOOTER_CENTER_LAYOUT,	"FEButtonStyle1_Alert_Outlined_Chipped",	nil),
			
			
			{
				type = "Frame",
				name = "frmJoinInfo",
								
				Layout = {
					pivot_XY = { 1.0, 0.5 },					
					pos_XY = {	x=1, y=0.5, xr="par", yr="par",},							
				},	

				autosize=1,
				arrangetype = "horiz",	
				
				;
				NewMenuButton("txtBtnGAMEINFO",		"$3422",	"$3632",	0,	BTN_FOOTER_STD_LAYOUT,	"FEButtonStyle1_Outlined",	nil),		
				NewMenuButton("txtBtnJOINGAME",		"$3417",	"$3630",	0,	BTN_FOOTER_STD_LAYOUT,	"FEButtonStyle1_Alert_Outlined_Chipped",	nil),		

			},


	
		},




		

	},



	------------------------------------------------------------------------------------
	-- LOBBY CHAT FRAME
	------------------------------------------------------------------------------------
	--position = {414,69},
	--size = {380,469},
	--GetChatTable(414,69, 380,469),
	GetChatTable(12, 252, 776, 285),
	
	
	
	


}

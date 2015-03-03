dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")

OUTLINECOLOR = {83,202,0,255}
LAUNCHMENUWIDTH = 120/540


NewLaunchMenu = {

	stylesheet = "HW2StyleSheet",
	
	RootElementSettings = {
		backgroundColor = "IGColorBackground1",

		Anchor_Binds = {
			pivotY = "Taskbar_UpperRight",
			edgeB = "Taskbar_LowerRight",
		},

		--autosize=1,
	},

	Layout = {
		pivot_XY = { 1.0, 0.0 },					
		pos_XY = {	x=1, y=0, xr="scr", yr="scr",},	
		size_WH = {	w = LAUNCHMENUWIDTH, h = 1, wr = "scr", hr = "scr" },	

	},

	--
	soundOnShow = "SFX_LaunchMenuONOFF",
	soundOnHide = "SFX_LaunchMenuONOFF",
	
	shipHealthColor = {0,255,0,255},
		
	-- Flags
	pixelUVCoords = 1, -- Enter pixel coords for texture coords	

	onShow = "UI_SubtitleNarrow()",
	onHide = "UI_SubtitleWide()",

	
	-- custom values
	fstringDockedCount = "$2667",	-- localizer string to show number of docked ships, ie. "500/500"
	drawToShipLineWidth = 2,
	drawToShipLineStubLength = 10,	
	--drawToShipLineColor = {238,188,5,255},
	drawToShipLineColor = OUTLINECOLOR,
	drawToShipLineElement = "btnPrev", -- element to draw the toship line from (draws from the left edge)
	;	

	{
		type = "Frame",

		arrangetype = "vert",
		arrangedir = 1,	

		Layout = {
			size_WH = {	w = 1.0, h = 1.0, wr = "par", hr = "par" },
			pad_LT  = { l = BUILDPANEL_PAD_HORIZ, t = BUILDPANEL_PAD_VERT, lr = "scr", tr = "scr" },
			pad_RB  = { r = BUILDPANEL_PAD_HORIZ, b = BUILDPANEL_PAD_VERT, rr = "scr", br = "scr" },	
		},	

		arrangeSep = {	x=0, y= TITLE_PAD_VERT, xr="scr", yr="scr"},	
		BackgroundGraphic = BORDER_GRAPHIC_BUILDFRAME,
		;

------------------------- Ships that can launch -------------------------
		{
			type = "Frame",
			autosize = 1,

			Layout = {				
				size_WH = {	w = 1, h = 1.0, wr = "par", hr = "px" },												
			},	
			--arrangeSep = {	x=TITLE_PAD_HORIZ, y=0, xr="scr", yr="scr"},	
			--backgroundColor = COLOR_PURPLE_SOLID,
			BackgroundGraphic = DECO_GRID,
			backgroundColor = COLOR_BACKGROUND_SUBPANEL,
			;

			{
				type = "Frame",
				autosize = 1,
				arrangetype = "horiz",
				arrangedir = 1,	

				Layout = {				
					size_WH = {	w = 1, h = 1.0, wr = "par", hr = "px" },							
				},	
				--arrangeSep = {	x=TITLE_PAD_HORIZ, y=0, xr="scr", yr="scr"},	
				BackgroundGraphic = BORDER_GRAPHIC_FRAME_THICKSIDELINES
				;

				-- Prev button
				{
					type = "Button",
					name = "btnPrev",
					buttonStyle = "IGPrevButton",
					toggleButton = 0,
		
					helpTip = "$5219", -- PREV LAUNCH SHIP
					helpTipTextLabel = "commandsHelpTip",
					helpTipScreen = "NewTaskbar",
				},
				---------------- Ship Selection	Area		
				{
					type = "Frame",
					autosize  = 1,
					--arrangetype = "vert",
					--arrangedir = 1,	
					arrangeweight = 1,
					;				
					-- Ship graphic
					{	
						type = "Frame",
						name = "frameShipGraphic",

						Layout = {								
							size_WH = {	w = 1, h = 2000.0, wr = "par", hr = "px" },
							lockAspect=2,		
						},	

						backgroundGraphicHAlign = "Center",
						backgroundGraphicVAlign = "Center",
						helpTip = "$5217", -- CLICK ICON TO FOCUS
						helpTipTextLabel = "commandsHelpTip",
						helpTipScreen = "NewTaskbar",
					},
					-- Health Bar
					{
						type = "ProgressBar",
						name = "launchShipHealth",

						backgroundColor = { 0, 128, 0, 255},
						progressColor = { 0, 255, 0, 255},
						borderColor = { 0, 0, 0, 255},
						outerBorderWidth = 1,
					
						Layout = {								
							size_WH = {	w = 1, h = 2.0, wr = "par", hr = "px" },		
							pos_XY = { y = 1.0, yr = "par" },		
							pivot_XY = { 0,  1 },		
						},						
					},	
					-- Choose ship combo box
					{					
						type = "DropDownListBox",
						name  = "launchShipList",
						backgroundColor          = COLOR_LISTITEM,
						BackgroundGraphic = BORDER_GRAPHIC_BUILDFRAME_HORIZ,
						dropDownListBoxStyle = "IGDropDownListBoxStyle",
						autosize = 1,
					
						Layout = {						
							pos_XY = { y = 0.0, yr = "par" },							
							size_WH = {	w = .75, h = DROPDOWN_HEIGHT, wr = "par", hr = "scr" }											
						},	
						visible = 1,
					
		
						ListBox = {
							type = "ListBox",
							listBoxStyle = "FEListBoxStyle_Bordered",
							name = "comboBuildShipListBox",
							Layout = {								
								size_WH = {	w = 1, h = 1.0, wr = "par", hr = "px" },									
							},	
							backgroundColor = "IGColorBackground1",
							BackgroundGraphic = BORDER_GRAPHIC_BUILDFRAME_HORIZ,
						},
		
						helpTip = "$5216", -- SELECT LAUNCH SHIP
						helpTipTextLabel = "commandsHelpTip",
						helpTipScreen = "NewTaskbar",
					},
				

				},
				-- Next button
				{
					type = "Button",
					name = "btnNext",
					toggleButton = 0,
					buttonStyle = "IGNextButton",
		
					helpTip = "$5218", -- NEXT LAUNCH SHIP
					helpTipTextLabel = "commandsHelpTip",
					helpTipScreen = "NewTaskbar",
				},
			},
		},
				
---------------------- Stay Docked / Autolaunch buttons ----------------------
-------------------------------------------------------------------------
		{
			type = "Frame",
			Layout = {			
				size_WH = {	w = 1, h = 1.0, wr = "par", hr = "px" },						
			},	

			arrangetype = "vert",
			autosize=1,
			;
	
			{
				type = "RadioButton",
				name = "stayDockedButton",

				size = {193, 13},
				buttonStyle = "IGRadioButtonStyle",
				Text = {
					text = "$2662",		-- STAY DOCKED
					textStyle = "IGRadioButtonTextStyle",
				},
			
				helpTip = "$5222", -- SHIPS WILL REMAIN DOCKED
				helpTipTextLabel = "commandsHelpTip",
				helpTipScreen = "NewTaskbar",
			
			},
			{
				type = "RadioButton",
				name = "autoLaunchButton",

				size = {193, 13},
				buttonStyle = "IGRadioButtonStyle",
				Text = {
					text = "$2663",		-- AUTO LAUNCH
					textStyle = "IGRadioButtonTextStyle",
				},
			
				helpTip = "$5223", -- SHIPS WILL AUTOLAUNCH
				helpTipTextLabel = "commandsHelpTip",
				helpTipScreen = "NewTaskbar",
			},
		},

		-- docked ship title/count
		{
			type = "Frame",
			Layout = {						
				size_WH = {	w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr" },		
				pad_LT = { l = TITLE_PAD_HORIZ, t = TITLE_PAD_VERT, lr = "scr", tr = "scr" },
				pad_RB = { r = TITLE_PAD_HORIZ, b =TITLE_PAD_VERT, rr = "scr", br = "scr" },		
			},		
			backgroundColor = {27, 69, 85, 128},
			autosize=1,
			--backgroundColor = OUTLINECOLOR,
			;
			{
				type = "TextLabel",

				Layout = {								
					size_WH = {w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr",},
				},
				autosize=1,

				Text = {
					textStyle = "IGHeading2",
					text = "$2666",		-- DOCKED SHIPS
					color = COLOR_LABEL_TITLETEXT,
					vAlign = "Middle",
				},
			},
			{
				type = "TextLabel",
				name = "dockedCountLabel",

				Layout = {								
					size_WH = {w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr",},
				},	
				autosize=1,

				Text = {
					textStyle = "IGHeading2",
					color = COLOR_LABEL_VALUETEXT, 
					vAlign = "Middle",
					hAlign = "Right",
					text = "12/12",
				},
			},
		},	

------------------- docked ships list box
		{
			type = "Frame",
			Layout = {			
				size_WH = {	w = 1, h = 1.0, wr = "par", hr = "px" },	
				--pad_LT = { l = 8.0, t = 8.0, lr = "px", tr = "px" },
				--pad_RB = { r = 8.0, b = 8.0, rr = "px", br = "px" },					
			},	
			arrangeweight = 1.0,
			autosize=1,
			BackgroundGraphic = BORDER_GRAPHIC_BUILDFRAME_HORIZ,
			;
		
			{
				type = "ListBox",
				name = "dockedShipList",
				marginWidth = 2,
				marginHeight = 2,
				
				Layout = {			
					size_WH = {	w = 1, h = 1, wr = "par", hr = "par" },		
					--margin_LT = { l = 8.0, t = 0.0, lr = "px", tr = "px" },
					--margin_RB = { r = 8.0, b = 0.0, rr = "px", br = "px" },			
				},

				scrollBarSpace = 2,
				marginWidth = 2,
				marginHeight = 0,
				
				--contentsOuterBorderWidth = 2,
				--contentsBorderColor = OUTLINECOLOR,
				scrollBarPageSize = 100,
				scrollBarStepSize = 3,

				multiSelect = 1,
		
				helpTip = "$5220", -- SELECT SHIPS TO LAUNCH
				helpTipTextLabel = "commandsHelpTip",
				helpTipScreen = "NewTaskbar",
				arrangeweight = 1.0,
			},
		},
-------------- Launch buttons
		{
			type = "Frame",
			Layout = {							
				size_WH = {	w = 1, h = 1.0, wr = "par", hr = "px" },	
				margin_RB = { r = 0.0, b = 2.0, rr = "px", br = "px" },					
			},	

			arrangetype = "horiz",
			autosize=1,
			;

			-- Launch button
			{
				type = "TextButton",
				name = "launchButton",
				Layout = {	
					size_WH = {	w = .5, h = STD_BUTTON_HEIGHT, wr = "par", hr = "scr" },						
				},	
				buttonStyle = "FEButtonStyle1_Outlined_Chipped",			
	
				Text = {
					text = "$2664",
					pixels = (16),
					rel = 1080,
					
					--textStyle = "IGButtonTextStyle",
				},
		
				helpTip = "$5225", -- LAUNCH SELECTED SHIPS ONLY
				helpTipTextLabel = "commandsHelpTip",
				helpTipScreen = "NewTaskbar",
			},
	
			-- Launch All button
			{
				type = "TextButton",
				name = "launchAllButton",

				Layout = {	
					size_WH = {	w = .5, h = STD_BUTTON_HEIGHT, wr = "par", hr = "scr" },						
				},	
			
				buttonStyle = "FEButtonStyle1_Alert_Outlined_Chipped",			
					
				Text = {
					text = "$2665",
					pixels = (16),
					rel = 1080,
					--textStyle = "IGButtonTextStyle",
				},
				helpTip = "$5224", -- LAUCNH ALL SHIPS
				helpTipTextLabel = "commandsHelpTip",
				helpTipScreen = "NewTaskbar",
			},

		},


	},


	
	
	
	
	



		-- help tip	text label
	{
		type = "TextLabel",
		name = "helpTipTextLabel",
		--position = { 0, 441 },
		visible = 0,
		size = { 210, 19},
		ignored=1,
		marginWidth = 6,
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = { 255, 255, 255, 255},
		},
	},

------------------------------------------------------------------
--------------------- ITEMS TO CLONE -----------------------
	 -- Ship name dropdown item to clone
	{
		type = "TextListBoxItem",
		name = "launchShipItem",
		pressedColor = COLOR_LISTITEM,

		buttonStyle = "IGListBoxItemButtonStyle",			
		resizeToListBox = 1,

		visible = 0,
		enabled = 0,
		ignored = 1,

		Text = {
			textStyle = "IGListBoxItemTextStyle",
		},
	},

	-- docked ships item to insert into list box
	{

		type = "ListBoxItem",
		visible = 0,
		ignored=1,
		buttonStyle = "TaskbarHD_ShipButtonStyle",
		name = "dockedShipItem",
		helpTipTextLabel = "helpTipTextLabel",
		resizeToListBox = 0,
	},
}

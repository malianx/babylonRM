dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")

LAUNCHMENUWIDTH = 210/800
OUTLINECOLOR = COLOR_BUTTON_BGRD_DEFAULT
SHIPQUEUECOLOR = COLOR_SCROLLGRIP_BORDER_DEFAULT
SUBQUEUECOLOR = COLOR_SCROLLGRIP_BORDER_HOVER

DISABLEDICONCOLOR = { 90, 155, 211, 100}

UNITCAPSREACHEDCOLOR1 = {180,0,0,255} -- outline color
UNITCAPSREACHEDCOLOR2 = {255,0,0, 30} -- background color

dofilepath("data:ui/newui/build/collapsablequeue.lua")






NewBuildMenu = {

	stylesheet = "HW2StyleSheet",
	
	RootElementSettings = {
		backgroundColor = "IGColorBackground1",

		Anchor_Binds = {
			pivotY = "Taskbar_UpperRight",
			edgeB = "Taskbar_LowerRight",
		},

	},

	Layout = {
		pivot_XY = { 1.0, 0.0 },					
		pos_XY = {	x=1, y=0, xr="scr", yr="scr",},	
		size_WH = {	w = LAUNCHMENUWIDTH, h = 1, wr = "scr", hr = "scr" },	

	},
	--autosize=1,
	--
	soundOnShow = "SFX_BuildMenuONOFF",
	soundOnHide = "SFX_BuildMenuONOFF",
	
	-- Flags
	pixelUVCoords = 1, -- Enter pixel coords for texture coords	
	
	onShow = "UI_SubtitleNarrow()",
	onHide = "UI_HideScreen(\"BuildInfo\"); UI_SubtitleWide()",
	
	
	-- Custom to build menu	
	textureFolder = "DATA:\\UI\\NewUI\\Build",
	drawToShipLineWidth = 1,
	drawToShipLineStubLength = 10,	
	--drawToShipLineColor = {238,188,5,255},
	drawToShipLineColor = OUTLINECOLOR,
	drawToShipLineElement = "btnPrev", -- element to draw the toship line from (draws from the left edge)
	
	neverAvailBorderColor = {0,0,0,255}, -- disabled color for facility buttons that are never available
	notYetAvailBorderColor = DISABLEDICONCOLOR, -- disabled color for facility buttons that are not yet available
	unitCapsReachedColor = UNITCAPSREACHEDCOLOR2,
	unitCapsReachedTextColor = UNITCAPSREACHEDCOLOR1,
	
	fstringRU = "$2640",  -- The localizer id for a string that says RU (appears to the left of the ship price on the items)
	fstringQueue = "$2641", -- The localizer id for the format string for the build queue item
	fstringSubsytemsReplace = "$2565", -- REPLACE : %d
	
	queuesFramePos = 494, -- y position of the bottom of the collapsable queues frame
	
	shipNameDisabledColor = {175,175,175,255},
	
	shipQueueTitle = "$2566",--Ship Queue (Empty)
	subsystemQueueTitle = "$2567",--Subsystem Queue (Empty)
		
	subsysColor = SUBQUEUECOLOR,
	
	menuColor = OUTLINECOLOR,
	
	fstringHardpoints = "$2568",		-- format string for harpoint slots at top of menu
	fstringUnitCaps = "$2569",  -- format string for unit caps headers (%06x is for the color [ red when maxed out ])
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

		--arrangeSep = {	x=0, y= TITLE_PAD_VERT, xr="scr", yr="scr"},	
		BackgroundGraphic = BORDER_GRAPHIC_BUILDFRAME,
		;

		
------------------------- Ships that can build -------------------------		
		{
			type = "Frame",
			autosize = 1,

			Layout = {				
				size_WH = {	w = 1, h = 1.0, wr = "par", hr = "px" },							
			},	
			--arrangeSep = {	x=TITLE_PAD_HORIZ, y=0, xr="scr", yr="scr"},	
			--BackgroundGraphic = DECO_GRID,
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
		
					helpTip = "$5203", -- PREVIOUS BUILD SHIP
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
						helpTip = "$5201", -- CLICK ICON TO FOCUS
						helpTipTextLabel = "commandsHelpTip",
						helpTipScreen = "NewTaskbar",
					},
					-- Health Bar
					{
						type = "ProgressBar",
						name = "buildShipHealth",

						backgroundColor = { 0, 128, 0, 255},
						progressColor = { 0, 255, 0, 255},
						borderColor = { 0, 0, 0, 255},
						outerBorderWidth = 1,
					
						Layout = {								
							size_WH = {	w = 1, h = 4.0, wr = "par", hr = "px" },
							pos_XY = { y = 1.0, yr = "par" },		
							pivot_XY = { 0,  1 },			
						},					
					},
					-- Choose ship combo box
					{
						type = "DropDownListBox",
						name  = "comboBuildShip",
						backgroundColor          = COLOR_LISTITEM,
						BackgroundGraphic = BORDER_GRAPHIC_BUILDFRAME_HORIZ,
						dropDownListBoxStyle = "IGDropDownListBoxStyle",
						autosize = 1,
					
						Layout = {		
							pos_XY = { y = 0.0, yr = "par" },							
							size_WH = {	w = .75, h = DROPDOWN_HEIGHT, wr = "par", hr = "scr" },
						},
						visible = 1,
					
		
						ListBox = {
							type = "ListBox",
							name = "comboBuildShipListBox",
							Layout = {							
								size_WH = {	w = 1, h = 1.0, wr = "par", hr = "px" },										
							},
							backgroundColor = "IGColorBackground1",
							BackgroundGraphic = BORDER_GRAPHIC_BUILDFRAME_HORIZ,
						},
		
						helpTip = "$5200", -- SELECT BUILD SHIP
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
	
					helpTip = "$5202", -- NEXT BUILD SHIP
					helpTipTextLabel = "commandsHelpTip",
					helpTipScreen = "NewTaskbar",
				},
			},
		},

---------------------- Subsystem stat labels ----------------------

		{
			type = "Frame",
			Layout = {			
				size_WH = {	w = 1, h = 1.0, wr = "par", hr = "px" },	
				margin_LT = { l = 8.0, t = 0.0, lr = "px", tr = "px" },
				margin_RB = { r = 8.0, b = 0.0, rr = "px", br = "px" },					
			},	

			arrangetype = "vert",
			autosize=1,
			--backgroundColor = COLOR_BLUE_SOLID,
			--borderWidth = 1,
			--borderColor = { 0, 255, 255, 255},
			;
			-- Hardpoints
			{
				type = "Frame",
				Layout = {			
					size_WH = {	w = 1, h = 1.0, wr = "par", hr = "px" },						
				},	
				autosize = 1,
				;
				-- hardpoint names
				{
					type = "TextLabel",
					name = "lblProductionHeading",
					autosize=1,

					Layout = {			
						size_WH = {	w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr" },						
					},

					dropShadow = 1,
					Text = {
						text = "$2815", -- "Production Slots",
						textStyle = "IGHeading2",
					},

				},
				-- hardpoint status count
				{
					type = "TextLabel",
					name = "lblProductionCount",

					Layout = {								
						size_WH = {w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr",},
					},

					autosize = 1,
	
					dropShadow = 1,
					Text = {
					textStyle = "IGHeading2",
						hAlign = "Right",
						},
				},

			},



			-- Module Slots
			{
				type = "Frame",
				Layout = {			
					size_WH = {	w = 1, h = 1.0, wr = "par", hr = "px" },						
				},	
				autosize = 1,
				;
				-- module label
				{
					type = "TextLabel",
					name = "lblModuleHeading",
					autosize=1,

					Layout = {			
						size_WH = {	w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr" },						
					},

					dropShadow = 1,
					Text = {
						text = "$2816", -- "Module Slots",
						textStyle = "IGHeading2",
					},

				},
				-- module count
				{
					type = "TextLabel",
					name = "lblModuleCount",

					Layout = {								
						size_WH = {w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr",},
					},

					autosize = 1,
	
					dropShadow = 1,
					Text = {
					textStyle = "IGHeading2",
						hAlign = "Right",
						},
				},

			},


			-- Sensors Slots
			{
				type = "Frame",
				Layout = {			
					size_WH = {	w = 1, h = 1.0, wr = "par", hr = "px" },						
				},	
				autosize = 1,
				;
				-- sensors label
				{
					type = "TextLabel",
					name = "lblSensorsHeading",
					autosize=1,

					Layout = {			
						size_WH = {	w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr" },						
					},

					dropShadow = 1,
					Text = {
						text = "$2817", -- "Sensors Slots",
						textStyle = "IGHeading2",
					},

				},
				-- sensors count
				{
					type = "TextLabel",
					name = "lblSensorsCount",

					Layout = {								
						size_WH = {w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr",},
					},

					autosize = 1,
	
					dropShadow = 1,
					Text = {
					textStyle = "IGHeading2",
						hAlign = "Right",
						},
				},

			},
		},

		----------------------------------------------------------------
		{
			type = "Frame",
			Layout = {			
				size_WH = {	w = 1, h = 1.0, wr = "par", hr = "px" },	
				margin_LT = { l = 0.0, t = 8/600, lr = "px", tr = "scr" },
				--margin_RB = { r = 8.0, b = 0.0, rr = "px", br = "px" },					
			},	
			--backgroundColor = COLOR_RED_SOLID,
			arrangetype = "vert",
			autosize=1,
			--borderWidth = 1,
			--borderColor = { 0, 255, 255, 255},
			--backgroundColor = COLOR_BLUE_SOLID,
			--BackgroundGraphic = BORDER_GRAPHIC_FRAME_THICKSIDELINES,
			;
		

	
			------------------- Build Buttons -----------------
			-- NOTICE: The names of these buttons must match the family names (the strcmp is case insensitive)
			{
				type = "Frame",
				name = "frameButtonGroup",

				Layout = {
					pad_LT  = { l = TITLE_PAD_HORIZ, t = 0, lr = "scr", tr = "scr" },
					pad_RB  = { r = 0, b = 0, rr = "scr", br = "scr" },	
				},	
				autoarrangeSpace = 2,
				arrangetype = "horiz",
				autosize=1,
				helpTip = "$5211", -- SELECT FACILITY
				helpTipTextLabel = "commandsHelpTip",
				helpTipScreen = "NewTaskbar",
				BackgroundGraphic = BORDER_GRAPHIC_FRAME_THICKSIDELINES,

				;
		
				-- Normal facility buttons	
				GetFacilityButton("Utility", "$2623", 94, { 0/64, 320/512, 64/64, 384/512 }),
				GetFacilityButton("Corvette", "$2624", 91, { 0/64, 64/512, 64/64, 128/512 }),
				GetFacilityButton("Capital", "$2625", 93, { 0/64, 192/512, 64/64, 256/512 }),
				GetFacilityButton("SubSystemModule", "$2643", 95, { 0/64, 384/512, 64/64, 448/512 }),
				GetFacilityButton("SubSystemSensors", "$2644", 97, { 0/64, 448/512, 64/64, 512/512 }),
				GetFacilityButton("Fighter", "$2627", 90, { 0/64, 0/512, 64/64, 64/512 }),
				GetFacilityButton("Frigate", "$2628", 92, { 0/64, 128/512, 64/64, 192/512 }),
				GetFacilityButton("Platform", "$2629", 96, { 0/64, 256/512, 64/64, 320/512 }),
				GetFacilityButton("Resource", "$2638", 109, { 0/64, 320/512, 64/64, 384/512 }),
				GetFacilityButton("NonCombat", "$2639", 110, { 0/64, 448/512, 64/64, 512/512 }),

			},
		
	
			----------------- Facility Sub Heading -----------------
			{
				type = "Frame",
				Layout = {						
					size_WH = {	w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr" },		
					pad_LT = { l = TITLE_PAD_HORIZ, t = TITLE_PAD_VERT, lr = "scr", tr = "scr" },
					pad_RB = { r = TITLE_PAD_HORIZ, b =TITLE_PAD_VERT, rr = "scr", br = "scr" },		
				},	
				backgroundColor = COLOR_BACKGROUND_HEADER,
				autosize=1,

				--borderWidth = 2,
				--borderColor = { 0, 255, 0, 255},


				;
				{
					type = "TextLabel",
					name = "lblCurrentFacility",

					Layout = {								
						size_WH = {w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr",},
					},
					autosize=1,
					Text = {
						textStyle = "IGHeading2",
						color = COLOR_LABEL_TITLETEXT, 
						--offset = {6,0},
						vAlign = "Middle",
					},
				},
	
				-- Unit caps label
				{
					type = "TextLabel",
					name = "lblFacilityUnitCaps",

					Layout = {		
						pivot_XY = { 0, 0.0 },					
						pos_XY = {	x=0, y=0.0, xr="par", yr="par"},						
						size_WH = {w = 1, h = STD_LABEL_HEIGHT/2, wr = "par", hr = "scr",},
					},	
					--autosize=1,
					--backgroundColor = COLOR_BLUE_SOLID,
					Text = {
						textStyle = "IGHeading2",
						color = COLOR_LABEL_VALUETEXT, 
						vAlign = "Middle",
						hAlign = "Right",
						text = "12/12",
					},
				},
			},
		},
----------------------- Build List Box -----------------------
		
		{

			type = "Frame",
			Layout = {			
				size_WH = {	w = 1, h = 1.0, wr = "par", hr = "px" },	
				--pad_LT = { l = 8.0, t = 8.0, lr = "px", tr = "px" },
				--pad_RB = { r = 8.0, b = 8.0, rr = "px", br = "px" },					
			},	
			arrangeweight = 1.0,
			autosize=1,
			--BackgroundGraphic = BORDER_GRAPHIC_BUILDFRAME_HORIZ,
			--backgroundColor = COLOR_GREEN_SOLID,
			backgroundColor = COLOR_BACKGROUND_SUBPANEL,
			;
		
			{
				type = "ListBox",
				name = "listBuild",
				listBoxStyle = "FEListBoxStyle_Bordered",

				marginWidth = 2,
				marginHeight = 2,

				Layout = {			
					size_WH = {	w = 1, h = 1, wr = "par", hr = "par" },		
		
				},	
		
				scrollBarSpace = 2,
				marginWidth = 2,
				marginHeight = 0,
		
				--contentsOuterBorderWidth = 2,
				--contentsBorderColor = OUTLINECOLOR,
				scrollBarPageSize = 100,
				scrollBarStepSize = 3,

				--backgroundColor = COLOR_RED_SOLID,
				
				;
			},
		},
		----------------- Show all button ---------------
		{
			type = "Frame",
			Layout = {			
					size_WH = {	w = 1, h = 1, wr = "par", hr = "px" },	
					pad_LT = { l = 8.0, t = 0.0, lr = "px", tr = "px" },
					pad_RB = { r = 8.0, b = 8.0, rr = "px", br = "px" },							
			},	

			backgroundColor = COLOR_BACKGROUND_SUBPANEL,
			autosize=1,
			;
			{
				type = "TextButton",
				name = "btnShowAll",
				toggleButton = 1,

				buttonStyle = "FEButtonStyle1_Chipped",
			
				Layout = {			
					size_WH = {	w = 1, h = LISTBOXITEM_HEIGHT, wr = "par", hr = "scr" },	
					--margin_LT = { l = 8.0, t = 0.0, lr = "px", tr = "px" },
					--margin_RB = { r = 8.0, b = 0.0, rr = "px", br = "px" },							
				},	

				Text = {
					text = "$5212", -- "SHOW ALL FACILITIES",
				},
		
				helpTipTextLabel = "lblCurrentFacility",
				helpTip = "$2630", -- SHOW ALL FACILITIES
			
				hotKeyID = 98,
				--BackgroundGraphic = BORDER_GRAPHIC_BUILDFRAME_HORIZ,
			},
	},
	
	-- Frame to hold expandable build queues.
	{
		type = "Frame",
		--position = {0,393},
		name = "frameQueues",
			
		Layout = {			
			size_WH = {	w = 1, h = 1, wr = "par", hr = "px" },		
				margin_LT = { l = 0.0, t = 2.0, lr = "px", tr = "px" },
				margin_RB = { r = 0.0, b = 4.0, rr = "px", br = "px" },		
		},	
		backgroundColor = COLOR_BACKGROUND_SUBPANEL,
		--backgroundColor = COLOR_WHITE_SOLID,
		autosize = 1,
		autoarrange = 1,
		autoarrangeSpace = 0,
		--autoarrangeWidth = 393,
		customData = 4, --Amount of spacing to put between queue frame and bottom of build list
		--outerBorderWidth = 1, 
		--borderColor = OUTLINECOLOR,
		--backgroundColor = COLOR_GREEN_SOLID,
	},
	{
		type = "Frame",
		name = "gg",
		autosize = 1,
		visible=0,
		ignored=1,
					Layout = {			
				--size_WH = {	w = 1, h = LISTBOXITEM_HEIGHT, wr = "par", hr = "scr" },	
					
			},	
		;
		-- Collapsable build queue to clone
		GetCollapsableQueue( OUTLINECOLOR, SHIPQUEUECOLOR,80 ),
	},

	
------------------------------------------------------------------
--------------------- ITEMS TO CLONE -----------------------
	 -- Ship name dropdown item to clone
	{
		type = "TextListBoxItem",
		name = "buildShipDropDownListBoxItem",	
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
	
	-- SHOW ALL - SHIP ITEM
	{
		type = "Button",
		--size = {185,15},
		ignored = 1,
		name = "showAllItemToClone",
		visible = 0,
		enabled = 0,
		selectable = 0,
		
		Layout = {			
			size_WH = {	w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr" },						
		},
		autosize=1,
		arrangetype = "horiz",
		flashColor = {255,255,255,65},
		
		soundOnClicked 		= "SFX_BuildItemClick",
		--backgroundColor = COLOR_PURPLE_SOLID
		;
		
			
		-- ship name / price button
		{
			type = "Button",

			Layout = {			
				size_WH = {	w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr" },						
			},

			ignored = 1,
			overColor = COLOR_SHIP_ITEMOVERCOLOR,
			pressedColor = COLOR_SHIP_ITEMPRESSEDCOLOR,
			flashColor = COLOR_SHIP_ITEMOVERCOLOR,
			arrangetype = "horiz",
			autosize=1,

			--overBorderColor = {255,255,255,255},
			--pressedBorderColor = {255,255,255,255},
			--pressedColor = {0,175,255,127},
			--flashColor = {0,175,255,127},
			--borderWidth = 1,
			--backgroundColor = {255,0,0,255},
			--backgroundColor = COLOR_GREEN_SOLID,
			helpTip = "$5204", -- CLICK ITEM TO BUILD
			helpTipTextLabel = "commandsHelpTip",
			helpTipScreen = "NewTaskbar",
			;
			
			-- more info button
			{
				type = "Button",
				name = "buildInfo",
				--position = {3, 2},
				size = {13, 13},
				DefaultGraphic = {
					texture = "data:ui\\newui\\Styles\\ArrowButtons\\arrow_horiz.tga",
					uvRect = { 0, 1, 1, 0 },
					color = COLOR_BUTTON_BGRD_HOVER,
				},

				--PressedGraphic = {
				--	texture = "data:ui\\newui\\ingameicons\\research_borders.mres",
				--	textureUV = {0,0,13,13},
				--	color = COLOR_SHIP_ITEMPRESSEDCOLOR,
				--},
			
				helpTip = "$5213", -- SHOW BUILD INFO
				helpTipTextLabel = "commandsHelpTip",
				helpTipScreen = "NewTaskbar",
			},
			-- The actual info area
			{
				type = "Frame",
				Layout = {			
					size_WH = {	h = STD_LABEL_HEIGHT, hr = "scr" },						
				},	
				autosize = 1,
				arrangeweight=1,
				--backgroundColor = COLOR_RED_SOLID,
				;
			
			
				-- Ship name label
				{
					type = "TextLabel",
					name = "lblShipName",
					autosize = 1,
					Layout = {			
						size_WH = {	w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr" },						
					},
					ignored = 1,		
					giveParentMouseInput = 1,
					Text = {				
						textStyle = "IGHeading2",
						color = {255,255,255,255},
						offset = {5,0},
						--hAlign = "Left",
						--vAlign = "Middle",
					},
				},
				-- Ship name label (UNIT CAPS REACHED)
				{
					type = "TextLabel",
					name = "lblShipNameUnitsReached",
					visible = 0,
					autosize = 1,
					Layout = {			
						size_WH = {	w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr" },						
					},
					ignored = 1,			
					giveParentMouseInput = 1,
					Text = {				
						textStyle = "IGHeading2",
						color = UNITCAPSREACHEDCOLOR1,
						--offset = {5,0},
						--hAlign = "Left",
						--vAlign = "Middle",
					},
				},
			
				-- Ship price label
				{
					type = "TextLabel",
					name = "lblShipPrice",
					autosize = 1,
					Layout = {			
						size_WH = {	w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr" },						
					},
					giveParentMouseInput = 1,
					Text = {
						font = "ListBoxItemFont",
						hAlign = "Right",
						--vAlign = "Middle",
						color = "FEColorHeading3",
						offset = {-4, 0},
					},
				},
			},
		},
	},
	
	
	--  SHOW ALL - FAMILY ITEM
	{
		type = "ListBoxItem",
		--size = {188,13},
		ignored = 1,
		name = "showAllFamilyItemToClone",
		visible = 0,
		enabled = 0,
		selectable = 0,
		autosize = 1,
		
		Layout = {			
			size_WH = {	w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr" },			
			pad_LT = { l = 0, t = PANEL_PAD_VERT, lr = "scr", tr = "scr" },				
		},

		--Layout = {	
		--	size_WH = {	w = 1, h = 31/600, wr = "par", hr = "scr"},
		--},
		--backgroundColor = COLOR_BLUE_SOLID,
		;
		
		{
			type = "Frame",
			--position = {3,2},
			autosize = 1,
			arrangetype = "vert",
			
			Layout = {			
				size_WH = {	w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr" },						
			},


			--autoarrange = 1,
			;
			-- header w / title
			{
				type = "Frame",
				Layout = {			
					size_WH = {	w = 1, h = 1.0, wr = "par", hr = "px" },						
				},	
				autosize = 1,
				;
			
				{
					type = "TextLabel",
					name = "lblTitle",
					--size = {185, 13},
				
					Layout = {			
						size_WH = {	w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr" },						
					},
				
					autosize=1,
					ignored = 1,
					--BackgroundGraphic = {
					--	texture = "data:ui\\newui\\ingameicons\\show_all_borders.mres",
					--	textureUV = {0,0,185,13},
					--	color = COLOR_SHIP_ITEMDEFAULTCOLOR,
					--},
				
					Text = {	
						textStyle = "RM_GenericLabelLarge_TextStyle",		
						--font = "ListBoxItemFont",
						vAlign = "Middle",
						hAlign = "Left",
						offset = {4,0},
						--color = {0,0,0,255},
					},
					backgroundColor = COLOR_LISTITEM_TITLEBAR,
				},
				
				{
					type = "TextLabel", -- used to display unit caps
					name = "lblShowAllFamilyUnitCaps",
					Layout = {			
						size_WH = {	w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr" },						
					},
					autosize=1,
					visible = 0,
					Text = {
						font = "ListBoxItemFont",
						vAlign = "Middle",
						hAlign = "Right",
						offset = {-3, 0},
						color = {240,240,255,255},
					},
					--backgroundColor = COLOR_RED_SOLID,
				},
			
			},
			-- Item tray (holds small show all items)
			{
				type = "Frame",
				name = "frmSmallShipItems",
				autosize = 1,
				autoarrange = 1,

				Layout = {			
					size_WH = {	w = 1, h = STD_LABEL_HEIGHT, wr = "par", hr = "scr" },						
				},

				--size = {185, 13},
				ignored = 1,
				BackgroundGraphic = {
					texture = "data:ui\\newui\\ingameicons\\show_all_borders.mres",
					textureUV = {0,14,185,25},
					color = COLOR_SHIP_ITEMDEFAULTCOLOR,
				},

				backgroundColor = COLOR_LISTITEM,
								
			},
			-- footer
			--{
			--	type = "Frame",
				--size = {185, 5},
			--	ignored = 1,
			--	BackgroundGraphic = {
			--		size = {185, 4},
			--		ignored = 1,
			--		texture = "data:ui\\newui\\ingameicons\\show_all_borders.mres",
			--		textureUV = {0,28,185,32},
			--		color = COLOR_SHIP_ITEMDEFAULTCOLOR,
			--	},
			--},
		},
	},
	
	-- BUILD ITEM - BIG ICON
	{
		type = "ListBoxItem",
		name = "m_buildItemToClone",
		--size = {188,31}, 
		Layout = {	
			size_WH = {	w = 1, h = 31/600, wr = "par", hr = "scr"},				
			margin_LT = { l = 0.0, t = 8.0, lr = "px", tr = "px" },
			--margin_RB = { r = 8.0, b = 0.0, rr = "px", br = "px" },			
		
		},
		ignored = 1,
		
		visible = 0,
		enabled = 0,
		selectable = 0,
		arrangetype = "horiz",
		--flashColor = COLOR_SHIP_ITEMOVERCOLOR,
		flashColor = {255,255,255,65},
		disabledColor 		= COLOR_LISTITEM_DISABLED,
		soundOnClicked 		= "SFX_BuildItemClick",
		backgroundColor = COLOR_LISTITEM,
		BackgroundGraphic = BORDER_GRAPHIC_FRAME_THICKSIDELINES,
		;

			--helpTip = "$5213", -- SHOW BUILD INFO
			--helpTipTextLabel = "commandsHelpTip",
			--helpTipScreen = "NewTaskbar",
		--},
		
		-- Button (for mouse over effect etc)
		{
			type = "Button",
			name = "m_btnItemButton",
			--position = {18, 1},
			--size = {170, 30},
			Layout = {	
				size_WH = {	w = 1, h = 1, wr = "px", hr = "par"},
				pad_LT  = { l = LISTBOX_ITEM_PAD_HORIZ, t = LISTBOX_ITEM_PAD_VERT, lr = "scr", tr = "scr" },
				pad_RB  = { r = LISTBOX_ITEM_PAD_HORIZ, b = LISTBOX_ITEM_PAD_VERT, rr = "scr", br = "scr" },	
			},
			arrangeweight=1,
			--autosize=1,
			ignored = 1,
			-- temp, pending textures
			--borderWidth = 1,
			--borderColor = {80,175,255,255},
			--overBorderColor = OUTLINECOLOR,
			--disabledBorderColor = {0,0,0,255}, -- color for already built item
			--pressedBorderColor = {185,136,0,255},
			
			
			overColor = COLOR_SHIP_ITEMOVERCOLOR,
			pressedColor = COLOR_SHIP_ITEMPRESSEDCOLOR,
			flashColor = COLOR_SHIP_ITEMOVERCOLOR,
			

			BackgroundGraphic = BORDER_GRAPHIC_BUILDFRAME_HORIZ,

			
			helpTip = "$5204", -- CLICK ITEM TO BUILD
			disabledHelpTip = "$5214", -- ITEM CURRENTLY UNAVAILABLE
			helpTipTextLabel = "commandsHelpTip",
			helpTipScreen = "NewTaskbar",
			;
			
			-- Ship icon
			{
				type = "Frame",
				name = "frameIcon",
				--position = {8, 3},
				size = {48, 24},
				Layout = {	
					pos_XY = { x = 1.0, y = 0.5, xr = "px", yr = "par" },	
					pivot_XY = { 0.0, 0.5 },
				},
				lockAspect=2,
				giveParentMouseInput = 1,
				backgroundGraphicVAlign = "Center",
			},
				
			-- Ship name label
			{
				type = "TextLabel",
				name = "lblShipName",
				Layout = {	
					pos_XY = { x = .95, y = 0.0, xr = "par", yr = "par" },	
					pivot_XY = { 1.0, 0.0 },
				},
				size = {154,12},
				ignored = 1,
				Text = {
					color = COLOR_BUTTON_TEXT_DEFAULT,
					font = "ListBoxItemFont",
					hAlign = "Right",
					vAlign = "Center",
					offset = {-1,0},
				},
				giveParentMouseInput = 1,
				dropShadow = 1,

			},
			
			-- Ship price label
			{
				type = "TextLabel",
				name = "lblShipPrice",
				Layout = {	
					pos_XY = { x = 0.95, y = 1.0, xr = "par", yr = "par" },	
					pivot_XY = { 1.0, 1.0 },
				},
				size = {154,12},
				ignored = 1,
				Text = {
					color = "FEColorHeading3",
					font = "ListBoxItemFont",
					hAlign = "Right",
					vAlign = "Center",
					offset = {-2,0},
				},
				giveParentMouseInput = 1,
				dropShadow = 1,
			},
			-- Subsystem Replace label
			{
				type = "TextLabel",
				name = "lblShipPriceReplace",
				Layout = {	
					pos_XY = { x = 0.95, y = 1.0, xr = "par", yr = "par" },	
					pivot_XY = { 1.0, 1.0 },
				},
				size = {154,12},
				ignored = 1,
				visible = 0,
				Text = {
					color = {255,255,255,255},
					font = "ListBoxItemFont",
					hAlign = "Right",
					vAlign = "Center",
					offset = {-2,0},
				},
				giveParentMouseInput = 1,
				dropShadow = 1,
			},
			-- Not avail label
			{
				type = "TextLabel",
				name = "lblNotAvailable",
				visible = 0,
				--position = {13, 14},
				Layout = {	
					pos_XY = { x = 0.95, y = 1.0, xr = "par", yr = "par" },	
					pivot_XY = { 1.0, 1.0 },
				},
				size = {154,12},
				ignored = 1,
				Text = {
					color = {100,100,100,255},
					font = "ListBoxItemFont",
					hAlign = "Right",
					vAlign = "Center",
					offset = {-2,0},
				},
				giveParentMouseInput = 1,
				dropShadow = 1,
			},
			-- lblAlreadyBuilt
			{
				type = "TextLabel",
				name = "lblAlreadyBuilt",
				visible = 0,
				Layout = {	
					pos_XY = { x = 0.95, y = 1.0, xr = "par", yr = "par" },	
					pivot_XY = { 1.0, 1.0 },
				},
				size = {154,12},
				ignored = 1,
				Text = {
					text = "$2637", -- "BUILT",
					textStyle = "IGButtonTextStyle",
					color = {255,255,255,255},
					font = "ListBoxItemFont",
					hAlign = "Right",
				},
				giveParentMouseInput = 1,
				dropShadow = 1,
			},
		},
	},
	
	-- EMPTY ITEM
	{
		type = "ListBoxItem",
		--size = {188,31}, 
		size = {10,13},
		ignored = 1,
		name = "m_emptyBuildItemToClone",
		visible = 0,
		enabled = 0,
		selectable = 0,
		--backgroundColor = COLOR_PURPLE_SOLID,

		;
		
		-- Info label
		{
			type = "Button",
			position = {3,1},
			size = {0,0},
		},
		
		-- Button 
		{
			type = "Button",
			position = {18, 1},
			size = {0, 0},
			ignored = 1,			
			;
		}
	},
	
	-- EMPTY SHOW ALL ITEM
	{
		type = "ListBoxItem",
		size = {10,13},
		ignored = 1,
		name = "m_emptyShowAllItemToClone",
		visible = 0,
		enabled = 0,
		selectable = 0,
		--autosize = 1,
		--backgroundColor = COLOR_YELLOW_SOLID,
		--backgroundColor = COLOR_PURPLE_SOLID,
		--	borderColor = COLOR_WHITE_SOLID,
		--	borderWidth = 1,
		;
		
		{
			type = "Frame",
			position = {3,2},
			autosize = 1,
			;
			-- header w / title
			{
				type = "Frame",
				position = {0,0},
				ignored = 1,

			},
			
			-- Item tray (holds small show all items)
			{
				type = "Frame",
				position = {0,13},
				ignored = 1,

				;
				
				-- more info frame
				{
					type = "Frame",
					position = {3, 4},
				},
				
				--ship name / price frame
				{
					type = "Frame",
					position = {18,4},
					ignored = 1,

				},
			},
			-- footer
			{
				type = "Frame",
				position = {0, 5},
				ignored = 1,

			},
		},
	},



	},
}

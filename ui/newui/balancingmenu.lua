balancingmenu = {        	
	size = {272, 497, 256, 30},
	stylesheet = "HW2StyleSheet",	
	clickThrough = 0,	
	pixelUVCoords = 1, -- Enter pixel coords for texture coords	
	;	
-- Timeto Frame
	{
		type = "Frame",
		position = {0,0},
		size = {255, 30},		
		backgroundColor = "IGColorBackground1",
		helpTip = "",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		--autosize = 1,
		--marginHeight = 1,
		--autoarrange = 1,
		;	
		{		        
			type = "TextLabel",
			position = {2, -3},
			size = {75,  15},
			name = "p1",			
			Text = {
				textStyle = "IGHeading1",
				hAlign = "Left",				
				color = "FEColorHeading3",
			},			
		},	
		{		        
			type = "TextLabel",
			position = {2, 7},
			size = {75,  15},
			name = "number1",			
			Text = {
				textStyle = "IGHeading1",
				hAlign = "Left",				
				color = "FEColorHeading3",
			},			
		},
		{		        
			type = "TextLabel",
			position = {179, -3},
			size = {75,  15},
			name = "p2",			
			Text = {
				textStyle = "IGHeading1",
				hAlign = "Right",				
				color = "FEColorHeading3",
			},			
		},			
		{		        
			type = "TextLabel",
			position = {179, 7},
			size = {75,  15},
			name = "number2",			
			Text = {
				textStyle = "IGHeading1",
				hAlign = "Right",				
				color = "FEColorHeading3",
			},			
		},			
		{		        
			type = "TextLabel",
			position = {77, 0},
			size = {100,  14},
			name = "ship",			
			Text = {
				textStyle = "Taskbar_MenuButtonTextStyle",
				hAlign = "Center",				
				color = { 255, 255, 255, 255},
			},			
		},	
    {
			type = "TextButton",
			--buttonStyle = "Taskbar_CommandButtonStyle",
			Text = {							
							hAlign = "Center",
							vAlign = "Center",
						 },
			position = {70,0},
			size = {100, 14},
			name = "focus",
			onMouseClicked = "UI_SetScreenVisible( 'focus', 1)",	
			helpTip = "FOCUS ON SHIP",
			helpTipTextLabel = "commandsHelpTip",	
			helpTipScreen = "NewTaskbar",
			soundOnClicked = "SFX_ButtonClick", 
			visible = 1,
		},		
		{
			type = "TextButton",
			buttonStyle = "Taskbar_CommandButtonStyle",
			Text = {
							text = "H",
							hAlign = "Center",
							vAlign = "Center",
							color = { 255, 255, 255, 255},
						 },
			position = {31,15},
			size = {14, 14},
			name = "cyclehgn",
			onMouseClicked = "UI_SetScreenVisible( 'cyclehgn', 1)",	
			helpTip = "SELECT HIIGARAN",
			helpTipTextLabel = "commandsHelpTip",	
			helpTipScreen = "NewTaskbar",
			soundOnClicked = "SFX_ButtonClick", 
		},
		{
			type = "TextButton",
			buttonStyle = "Taskbar_CommandButtonStyle",
			Text = {
							text = "V",
							hAlign = "Center",
							vAlign = "Center",
							color = { 255, 255, 255, 255},
						 },
			position = {46,15},
			size = {14, 14},
			name = "cyclevgr",
			onMouseClicked = "UI_SetScreenVisible( 'cyclevgr', 1)",	
			helpTip = "SELECT VAYGR",
			helpTipTextLabel = "commandsHelpTip",	
			helpTipScreen = "NewTaskbar",
			soundOnClicked = "SFX_ButtonClick", 
		},
		{
			type = "TextButton",
			buttonStyle = "Taskbar_CommandButtonStyle",
			Text = {
							text = "K",
							hAlign = "Center",
							vAlign = "Center",
							color = { 255, 255, 255, 255},
						 },
			position = {61,15},
			size = {14, 14},
			name = "cyclekus",
			onMouseClicked = "UI_SetScreenVisible( 'cyclekus', 1)",	
			helpTip = "SELECT KUSHAN",
			helpTipTextLabel = "commandsHelpTip",	
			helpTipScreen = "NewTaskbar",
			soundOnClicked = "SFX_ButtonClick", 
		},
		{
			type = "TextButton",
			buttonStyle = "Taskbar_CommandButtonStyle",
			Text = {
							text = "T",
							hAlign = "Center",
							vAlign = "Center",
							color = { 255, 255, 255, 255},
						 },
			position = {76,15},
			size = {14, 14},
			name = "cycletai",
			onMouseClicked = "UI_SetScreenVisible( 'cycletai', 1)",	
			helpTip = "SELECT TAIDAN",
			helpTipTextLabel = "commandsHelpTip",	
			helpTipScreen = "NewTaskbar",
			soundOnClicked = "SFX_ButtonClick", 
		},
		{
			type = "TextButton",
			buttonStyle = "Taskbar_CommandButtonStyle",
			Text = {
							text = "O",
							hAlign = "Center",
							vAlign = "Center",
							color = { 255, 255, 255, 255},
						 },
			position = {91,15},
			size = {14, 14},
			name = "cycleother",
			onMouseClicked = "UI_SetScreenVisible( 'cycleother', 1)",	
			helpTip = "SELECT OTHER",
			helpTipTextLabel = "commandsHelpTip",	
			helpTipScreen = "NewTaskbar",
			soundOnClicked = "SFX_ButtonClick", 
		},
		{
			type = "TextButton",
			buttonStyle = "Taskbar_CommandButtonStyle",
			Text = {
							text = "S1",
							hAlign = "Center",
							vAlign = "Center",
							color = { 255, 255, 255, 255},
						 },
			position = {111,15},
			size = {14, 14},
			name = "spawn1",
			onMouseClicked = "UI_SetScreenVisible( 'spawn1', 1)",	
			helpTip = "PLAYER 1 SPAWN",
			helpTipTextLabel = "commandsHelpTip",	
			helpTipScreen = "NewTaskbar",
			soundOnClicked = "SFX_ButtonClick", 
		},
		{
			type = "TextButton",
			buttonStyle = "Taskbar_CommandButtonStyle",
			Text = {
							text = "S2",
							hAlign = "Center",
							vAlign = "Center",
							color = { 255, 255, 255, 255},
						 },
			position = {126,15},
			size = {14, 14},
			name = "spawn2",
			onMouseClicked = "UI_SetScreenVisible( 'spawn2', 1)",	
			helpTip = "PLAYER 2 SPAWN",
			helpTipTextLabel = "commandsHelpTip",	
			helpTipScreen = "NewTaskbar",
			soundOnClicked = "SFX_ButtonClick", 
		},
		{
			type = "TextButton",
			buttonStyle = "Taskbar_CommandButtonStyle",
			Text = {
							text = "Fi",
							hAlign = "Center",
							vAlign = "Center",
							color = { 255, 0, 0, 255},
							
						 },
			position = {146,15},
			size = {14, 14},
			name = "fight",
			onMouseClicked = "UI_SetScreenVisible( 'fight', 1)",	
			helpTip = "FIGHT!",
			helpTipTextLabel = "commandsHelpTip",	
			helpTipScreen = "NewTaskbar",
			soundOnClicked = "SFX_ButtonClick",
		},
		{
			type = "TextButton",
			buttonStyle = "Taskbar_CommandButtonStyle",
			Text = {
							text = "De",
							hAlign = "Center",
							vAlign = "Center",
							color = { 255, 255, 255, 255},
						 },
			position = {161,15},
			size = {14, 14},
			name = "destroy",
			onMouseClicked = "UI_SetScreenVisible( 'destroy', 1)",	
			helpTip = "DESTROY!",
			helpTipTextLabel = "commandsHelpTip",	
			helpTipScreen = "NewTaskbar",
			soundOnClicked = "SFX_ButtonClick", 			
		},
		{
			type = "TextButton",
			buttonStyle = "Taskbar_CommandButtonStyle",
			Text = {
							text = "Da",
							hAlign = "Center",
							vAlign = "Center",
							color = { 255, 255, 255, 255},
						 },
			position = {176,15},
			size = {14, 14},
			name = "damage",
			onMouseClicked = "UI_SetScreenVisible( 'damage', 1)",	
			helpTip = "DAMAGE!",
			helpTipTextLabel = "commandsHelpTip",	
			helpTipScreen = "NewTaskbar",
			soundOnClicked = "SFX_ButtonClick",
		},
		{
			type = "TextButton",
			buttonStyle = "Taskbar_CommandButtonStyle",
			Text = {
							text = "F1",
							hAlign = "Center",
							vAlign = "Center",
							color = { 255, 255, 255, 255},
						 },
			position = {196,15},
			size = {14, 14},
			name = "special1",
			onMouseClicked = "UI_SetScreenVisible( 'special1', 1)",	
			helpTip = "FUNCTION 1 (SFX Test)",
			helpTipTextLabel = "commandsHelpTip",	
			helpTipScreen = "NewTaskbar",
			soundOnClicked = "SFX_ButtonClick",
		},
		{
			type = "TextButton",
			buttonStyle = "Taskbar_CommandButtonStyle",
			Text = {
							text = "F2",
							hAlign = "Center",
							vAlign = "Center",
							color = { 255, 255, 255, 255},
						 },
			position = {211,15},
			size = {14, 14},
			name = "special2",
			onMouseClicked = "UI_SetScreenVisible( 'special2', 1)",	
			helpTip = "FUNCTION 2 (Disable AI)",
			helpTipTextLabel = "commandsHelpTip",	
			helpTipScreen = "NewTaskbar",
			soundOnClicked = "SFX_ButtonClick",
		},
	},	
}	

cyclehgn = 
	{    	
		size = {0, 0, 0, 0},
		stylesheet = "HW2StyleSheet",		
		pixelUVCoords = 1,
	}	
cyclevgr = 
	{    	
		size = {0, 0, 0, 0},
		stylesheet = "HW2StyleSheet",		
		pixelUVCoords = 1,
	}		
cyclekus = 
	{    	
		size = {0, 0, 0, 0},
		stylesheet = "HW2StyleSheet",		
		pixelUVCoords = 1,
	}		
cycletai = 
	{    	
		size = {0, 0, 0, 0},
		stylesheet = "HW2StyleSheet",		
		pixelUVCoords = 1,
	}		
cycleother = 
	{    	
		size = {0, 0, 0, 0},
		stylesheet = "HW2StyleSheet",		
		pixelUVCoords = 1,
	}					
spawn1 = 
	{    	
		size = {0, 0, 0, 0},
		stylesheet = "HW2StyleSheet",		
		pixelUVCoords = 1,
	}			
spawn2 = 
	{    	
		size = {0, 0, 0, 0},
		stylesheet = "HW2StyleSheet",		
		pixelUVCoords = 1,
	}			
fight = 
	{    	
		size = {0, 0, 0, 0},
		stylesheet = "HW2StyleSheet",		
		pixelUVCoords = 1,
	}			
destroy = 
	{    	
		size = {0, 0, 0, 0},
		stylesheet = "HW2StyleSheet",		
		pixelUVCoords = 1,
	}			
damage = 
	{    	
		size = {0, 0, 0, 0},
		stylesheet = "HW2StyleSheet",		
		pixelUVCoords = 1,
	}		
focus = 
	{    	
		size = {0, 0, 0, 0},
		stylesheet = "HW2StyleSheet",		
		pixelUVCoords = 1,
	}	
special1 = 
	{    	
		size = {0, 0, 0, 0},
		stylesheet = "HW2StyleSheet",		
		pixelUVCoords = 1,
	}		
special2 = 
	{    	
		size = {0, 0, 0, 0},
		stylesheet = "HW2StyleSheet",		
		pixelUVCoords = 1,
	}						
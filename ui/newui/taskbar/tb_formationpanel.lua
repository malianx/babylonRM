dofilepath("data:ui/newui/Taskbar/TaskbarDefines.lua")

----------- Formation Buttons ----------
--
-- BTN_CAPITALPHALANX
-- BTN_FRIGATELINE 
-- BTN_FIGHTERSCREEN
-- BTN_DELTA
-- BTN_BROAD
-- BTN_X
-- BTN_CLAW
-- BTN_WALL
-- BTN_SPHERE


function GetFormationButton(_name, _helptip, _hotkeyID, _texture, _mouseclick, _layout)

	local _buttonLayout 

	if(_layout == nil) then
		_buttonLayout = {		
			size_WH = { w = FORMATIONICON_W, h = FORMATIONICON_H, wr = "px", hr = "px" },			
			pos_XY = { x = 0.0, y = 0.0, xr = "px", yr = "px" },
		}
	else
		_buttonLayout = _layout
	end


	local FormationButton = {
		type = "ButtonHD",
		name = _name,	
		ignored = 1,
		
		onMouseClicked = _mouseclick,

		helpTip = _helptip,		
		helpTipTextLabel = "commandsHelpTip",

		hotKeyID = _hotkeyID,	
		stateBaseOfs = { 0.0, 64/512 },
		stateBaseCells = { 0, 1, 2, 3,       2, 3, 2, 7 },
		BackgroundGraphic = MENU_COMMANDBUTTON_GRAPHIC,

		Layout = _buttonLayout,

		stateIconOfs = { 0.0, 128/1024 },
		stateIconCells = { 0, 1, 2, 3, 2, 2, 3, 7 },
		soundOnClicked 		= "SFX_ButtonClick",

		IconBase = {
			texture = _texture,
			uvRect = { 0/128, 0/1024, 128/128, 128/1024 },
			patch_X = { 4,-120, 4,0 },
			patch_Y = { 4,-120,4, 0 },
			patch_Scale = 1,
		
			Surface = THREESTATEBUTTONSURFACE,
		},
	}


	return FormationButton

end

-- The names of these much match the names of the formations found in strikegroups.lua or else the UI won't update properly.
BTN_CAPITALPHALANX	= GetFormationButton("Capital Phalanx",		"$2735",	28,	"DATA:UI\\NewUI\\Taskbar\\FormationIcons\\form_ico_capital_phalanx.tga",	"formStrikeGroup(0)")
BTN_FRIGATELINE		= GetFormationButton("Frigate Line",		"$2736",	29,	"DATA:UI\\NewUI\\Taskbar\\FormationIcons\\form_ico_frigate_line.tga",		"formStrikeGroup(1)")
BTN_FIGHTERSCREEN	= GetFormationButton("Fighter Screen",		"$2737",	30,	"DATA:UI\\NewUI\\Taskbar\\FormationIcons\\form_ico_fighter_screen.tga",		"formStrikeGroup(2)")
BTN_DELTA			= GetFormationButton("Delta",				"$4950",	103,	"DATA:UI\\NewUI\\Taskbar\\FormationIcons\\form_ico_delta.tga",				"formStrikeGroup(3)")
BTN_BROAD			= GetFormationButton("Broad",				"$4951",	104,	"DATA:UI\\NewUI\\Taskbar\\FormationIcons\\form_ico_broad.tga",				"formStrikeGroup(4)")
BTN_X				= GetFormationButton("X",					"$4952",	105,	"DATA:UI\\NewUI\\Taskbar\\FormationIcons\\form_ico_x.tga",					"formStrikeGroup(5)")
BTN_CLAW			= GetFormationButton("Movers",				"$4953",	106,	"DATA:UI\\NewUI\\Taskbar\\FormationIcons\\form_ico_claw.tga",				"formStrikeGroup(6)")  --CLAW
BTN_WALL			= GetFormationButton("Wall",				"$4954",	107,	"DATA:UI\\NewUI\\Taskbar\\FormationIcons\\form_ico_wall.tga",				"formStrikeGroup(7)")
BTN_SPHERE			= GetFormationButton("Sphere",				"$4955",	108,	"DATA:UI\\NewUI\\Taskbar\\FormationIcons\\form_ico_sphere.tga",				"formStrikeGroup(8)")
--
BTN_LEAVE			= GetFormationButton("btnLeave",			"$3135",	31,	"DATA:UI\\NewUI\\Taskbar\\CommandIcons\\cmd_ico_cancel.dds",				"leaveStrikeGroup()", {	size_WH = { w = FORMATIONICON_W, h = FORMATIONICON_H, wr = "px", hr = "px" },	pos_XY = { x = 0.0, y = 0.0, xr = "px", yr = "px" },})

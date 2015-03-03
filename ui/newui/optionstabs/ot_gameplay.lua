
----------- Command Panel Buttons ----------
-- OPTION_GAMEPLAY_UISPACER
-- OPTION_GAMEPLAY_ORDERFEEDBACK
-- OPTION_GAMEPLAY_MOUSESENSITIVITY
-- OPTION_GAMEPLAY_MOUSEPAN
-- OPTION_GAMEPLAY_NLIPS
-- OPTION_GAMEPLAY_SELECTIONPRIORITY
-- OPTION_GAMEPLAY_RIGHTCLICKMENU
-- OPTION_GAMEPLAY_SUBTITLES


------- Custom Commands
-- SPACER
OPTION_GAMEPLAY_UISPACER = {
	type = "Frame",
	size = {608, 13},
}

-- ORDER FEEDBACK SLIDER


OPTION_GAMEPLAY_ORDERFEEDBACK		= Option_LabeledSlider("SFXVOLUME",				"$5114",	"lblOrderFeedback",		"$5243",	"m_sbarOrderFeedback",		"$5244")
OPTION_GAMEPLAY_MOUSESENSITIVITY	= Option_LabeledSlider("MOUSESENSATIVITY",		"$5115",	"lblSensitivity",		"$5245",	"m_sbarMouseSensitivity",	"$5246", 0)

OPTION_GAMEPLAY_MOUSEPAN			= NewCheckBoxButton("m_chkScreenPan",		"$5116", "$5247", nil,  nil, 1 )
OPTION_GAMEPLAY_NLIPS				= NewCheckBoxButton("m_chkNLIPS",			"$5146", "$5248", nil,  nil, 1 )
OPTION_GAMEPLAY_SELECTIONPRIORITY	= NewCheckBoxButton("m_chkMilitarySel",		"$5148", "$5093", nil,  nil, 1 )
OPTION_GAMEPLAY_RIGHTCLICKMENU		= NewCheckBoxButton("m_chkRightClickMenu",	"$5092", "$5091", nil,  nil, 1 )
OPTION_GAMEPLAY_SUBTITLES			= NewCheckBoxButton("m_chkSubtitles",		"$5087", "$5088", nil,  nil, 1 )


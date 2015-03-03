dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")

-- ControlConstructors


	-------------- Helpful Common Layouts for Buttons ---------------
	BTN_FOOTER_STD_SMALL_LAYOUT = {
			pivot_XY = { 0.0, 0.5 },					
			pos_XY = {	x=0.0, y=0.5, xr="px", yr="par",},		
			min_WH = {	w = NAVIGATION_SMALL_BUTTON_WIDTH, h = STD_BUTTON_HEIGHT, wr = "scr", hr = "scr" },						
		}	
	
	BTN_FOOTER_STD_LAYOUT = {
			pivot_XY = { 0.0, 0.5 },					
			pos_XY = {	x=0.0, y=0.5, xr="px", yr="par",},		
			min_WH = {	w = NAVIGATION_BUTTON_WIDTH, h = STD_BUTTON_HEIGHT, wr = "scr", hr = "scr" },	
			pad_LT  = { l = BUTTON_TEXT_PAD_HORIZ, t = BUTTON_TEXT_PAD_VERT/2, lr = "scr", tr = "scr" },
			pad_RB  = { r = BUTTON_TEXT_PAD_HORIZ, b = BUTTON_TEXT_PAD_VERT/2, rr = "scr", br = "scr" },						
		}

	BTN_FOOTER_YES_LAYOUT = {
			pivot_XY = { 1.0, 0.0 },					
			pos_XY = {	x=1.0, xr="par"},	
			min_WH = {	w = NAVIGATION_BUTTON_WIDTH, h = STD_BUTTON_HEIGHT, wr = "scr", hr = "scr" },						
		}	

	BTN_FOOTER_CENTER_LAYOUT = {
			pivot_XY = { 0.5, 0.5 },					
			pos_XY = {	x=0.5, y=0.5, xr="par", yr="par",},		
			min_WH = {	w = NAVIGATION_BUTTON_WIDTH, h = STD_BUTTON_HEIGHT, wr = "scr", hr = "scr" },						
			Flags = {	hasVolume = 0,	canArrange = 0,	}, -- So it doesn't affect the autoarrange of other elements		
		}
	BTN_FOOTER_FORCELEFT_LAYOUT = {
			pivot_XY = { 0.0, 0.5 },					
			pos_XY = {	x=0.0, y=0.5, xr="par", yr="par",},		
			min_WH = {	w = NAVIGATION_BUTTON_WIDTH, h = STD_BUTTON_HEIGHT, wr = "scr", hr = "scr" },						
			Flags = {	hasVolume = 0,	canArrange = 0,	}, -- So it doesn't affect the autoarrange of other elements	
		}

	BTN_FOOTER_SMALL_LAYOUT = {
			pivot_XY = { 0.0, 0.5 },					
			pos_XY = {	x=0.0, y=0.5, xr="px", yr="par",},	
			pad_LT  = { l = BUTTON_TEXT_PAD_HORIZ, t = BUTTON_TEXT_PAD_VERT/2, lr = "scr", tr = "scr" },
			pad_RB  = { r = BUTTON_TEXT_PAD_HORIZ, b = BUTTON_TEXT_PAD_VERT/2, rr = "scr", br = "scr" },	
		}

	BTN_FOOTER_SMALL_YES_LAYOUT = {
			pivot_XY = { 1.0, 0.0 },					
			pos_XY = {	x=1.0, xr="par"},	
			pad_LT  = { l = BUTTON_TEXT_PAD_HORIZ, t = BUTTON_TEXT_PAD_VERT/2, lr = "scr", tr = "scr" },
			pad_RB  = { r = BUTTON_TEXT_PAD_HORIZ, b = BUTTON_TEXT_PAD_VERT/2, rr = "scr", br = "scr" },	
		}

	-----------------------------------------------------------------

if(NewMenuButton==nil) then

	function NewMenuButton(_name, _text, _helptip, _hotkeyID, _layout, _style, _mouseclicked, _visible )

		local _buttonLayout 
		local _buttonStyle
		local _buttonvisible
		--------------------- Setup Defaults ---------------------
		if(_layout == nil) then
			_buttonLayout = {	
				min_WH  = {	w = INGAMEMENU_BUTTON_WIDTH, h = STD_BUTTON_HEIGHT, wr = "scr", hr = "scr" },								
			}
		else
			_buttonLayout = _layout
		end
	
		if(_style == nil) then
			_buttonStyle = "FEButtonStyle1"
		else
			_buttonStyle = _style
		end

		if(_visible == nil) then
			_buttonvisible = 1
		else
			_buttonvisible = _visible
		end

		--------------------- The actual button constructor ---------------------

		local MenuButton = {
			type = "TextButton",
			name = _name,

			buttonStyle = _buttonStyle,

			ignored = 1,

			helpTip = _helptip,
			hotKeyID = _hotkeyID,
			visible = _buttonvisible,
			Layout = _buttonLayout,
			autosize=1,
			
			Text = {		
				text = _text, 
				--pixels = (16),
				--rel = 500,
			},
			backgroundColor = { 255, 0, 0, 255 },
			onMouseClicked =_mouseclicked,

		}


		return MenuButton

	end
end
-------------------------------------------------------------------------------------------
if(Option_LabeledSlider == nil) then
	function Option_LabeledSlider(_name, _labelText,  _valueTextName, _valueText_helptip, _sliderName, _slider_helptip, _visible )
		
		local _buttonvisible
		
			if(_visible == nil) then
				_buttonvisible = 1
			else
				_buttonvisible = _visible
			end
		
		local LabeledSlider = {
			type = "Frame",
			name = _name,

			Layout = {									
				size_WH = {w = 1, h = LISTBOXITEM_HEIGHT, wr = "par", hr = "scr_min",},
				pad_LT = { l = 4, t = 4, lr = "px", tr = "px" },
			},
			autosize=1,
			arrangetype = "horiz",

			visible = _buttonvisible,
			;
			{
				type = "TextLabel",

				Layout = {	
					size_WH = {w = .45, h = 1, wr = "par", hr = "par",},
				},

				Text = {
					textStyle = "RM_GenericLabelLarge_TextStyle",
					text = _labelText,
				},
			},
			-- SLIDER
			{	
				type = "Frame",
				--borderWidth = 1,
				--borderColor = {255,0,255,255},

				Layout = {		
					size_WH = {w = .5, h = 1, wr = "par", hr = "par",},
				},
				--autosize=1,
				arrangetype = "horiz",
				--arrangeSep = {	x = TITLE_PAD_HORIZ, y = 0, xr="scr", yr="scr"},	
				;					

				{
					type = "TextLabel",
					name = _valueTextName,					
					style = "FESliderLabelStyle",

					Layout = {						
						size_WH = {	w = 40.0/800, h = 1.0, wr = "scr", hr = "par" },	
					},	

					Text = {
						text ="0",
						font = "ButtonFont",
						vAlign = "Middle",
						hAlign = "Center",
						color = {255,255,255,255},
					},	

					helpTipTextLabel = "m_lblHelpText", 
					helpTip = _valueText_helptip, -- "SOUND EFFECTS VOLUME",
				},
							
				{
					type = "ScrollBar",
					name = _sliderName,
					sliderTextLabel = _valueTextName,
					arrangeweight = 1,

					Layout = {						
						size_WH = {	w = 1.0, h = 1.0, wr = "px", hr = "par" },	
					},	


					--position = {270+42, 2},
					--width = 330-42,
					scrollBarStyle = "FESliderStyle",
								
					helpTipTextLabel = "m_lblHelpText", 
					helpTip = _slider_helptip, -- "ADJUST THE VOLUME OF THE SOUND EFFECTS",
											
					--helpTipAnchored = 1,
					--helpTipPos = { 1.0, 1.25 },
					--helpTipPivot = { 1.0, -0.25 },
			
				},
			},
		}


		return LabeledSlider

	end
end
---------------------------------------------------------------------------------------------
if(Option_LabeledDropDown == nil) then
	function Option_LabeledDropDown(_name, _labelText,  _dropdownName, _dropdown_helptip, _listbox )
		local LabeledDropDown = {
				type = "Frame",
				name = "LabeledDropDownTempName",
				Layout = {									
					size_WH = {w = 1, h = 1, wr = "par", hr = "px",},
					pad_LT = { l = 4, t = 4, lr = "px", tr = "px" },
					pad_RB = { r = 4, b = 4, rr = "px", br = "px" },
				},
				autosize=1,
				arrangetype = "horiz",
				visible = 1, 
				;
							
				{
					type = "TextLabel",
					name = _name,

					Layout = {	
						pos_XY = { x = 1.0, y = .5, xr = "px", yr = "par" },		
						size_WH = {	w = .45, h = DROPDOWN_HEIGHT, wr = "par", hr = "scr"},	
						pivot_XY = { 0, 0.5 },	
					},

					Text = {
						textStyle = "RM_GenericLabelLarge_TextStyle",
						text = _labelText, 
					},
					autosize=1,
				},
								
				{
					type = "DropDownListBox",
					name = _dropdownName,
					position = {270, 0},
					enabled = 1,				

					Layout = {		
						size_WH = {w = .5, h = DROPDOWN_HEIGHT, wr = "par", hr = "scr",},
						pos_XY = { x = 1.0, y = .5, xr = "px", yr = "par" },		
						pivot_XY = { 0, 0.5 },	
					
						--size_WH = {	w = 330/800, h = DROPDOWN_HEIGHT, wr = "scr", hr = "scr" },	
					},

					dropDownListBoxStyle = "FEDropDownListBoxStyle",
					selected = 1,
					helpTipTextLabel = "m_lblHelpText", 
					helpTip = _dropdown_helptip, -- 
								
					ListBox = _listbox,
				},
			}


		return LabeledDropDown

	end
end

---------------------------------------------------------------------------------------------
if(Option_LabeledTextInput == nil) then
	function Option_LabeledTextInput(_name, _labelText,  _textinputName, _textinput_helptip, _maxtextlength, _password )
	
		--------------------- Setup Defaults ---------------------
		if(_password == nil) then
			_password = 0
		end 

		if(_maxtextlength == nil) then
			_maxtextlength = 24
		end
		-------------------------------------------------------------
		local LabeledTextInput = {
				type = "Frame",
				name = "LabeledTextInfoTempName",
				Layout = {									
					size_WH = {w = 1, h = 1, wr = "par", hr = "px",},
					pad_LT = { l = 4, t = 4, lr = "px", tr = "px" },
					pad_RB = { r = 4, b = 4, rr = "px", br = "px" },	
				},
				autosize=1,
				arrangetype = "horiz",
				visible = 1, 
				;
							
				{
					type = "TextLabel",
					name = _name,
					Layout = {	
							pos_XY = { x = 1.0, y = .5, xr = "px", yr = "par" },		
							size_WH = {	w = .45, h = TEXTINPUT_HEIGHT, wr = "par", hr = "scr"},	
							pivot_XY = { 0, 0.5 },	
						--size_WH = {w = .5, h = 1, wr = "par", hr = "px",},
					},

					Text = {
						textStyle = "RM_GenericLabelLarge_TextStyle",
						text = _labelText, 
					},
					autosize=1,
				},
								
				{
					type = "TextInput",
					name = _textinputName,
					enabled = 1,				
					--arrangeweight = 1,
					Layout = {		
							pos_XY = { x = 1.0, y = .5, xr = "px", yr = "par" },		
							size_WH = {	w = .5, h = TEXTINPUT_HEIGHT, wr = "par", hr = "scr"},	
							pivot_XY = { 0, 0.5 },	
						--size_WH = {	w = 330/800, h = DROPDOWN_HEIGHT, wr = "scr", hr = "scr" },	
					},

					textInputStyle = "FETextInputStyle",
					maxTextLength = _maxtextlength,
					password = _password,	
					helpTip = _textinput_helptip, 
				},
			}


		return LabeledTextInput

	end
end
-----------------------------------------------------------------------


if(NewCheckBoxButton==nil) then

	function NewCheckBoxButton(_name, _text, _helptip, _layout,  _mouseclicked, _visible )

		local _buttonLayout 

		local _buttonvisible
		--------------------- Setup Defaults ---------------------
		if(_layout == nil) then
			_buttonLayout = {	
				size_WH = {	w = 1, h = DROPDOWN_HEIGHT, wr = "par", hr = "scr" },									
			}
		else
			_buttonLayout = _layout
		end

		if(_visible == nil) then
			_buttonvisible = 1
		else
			_buttonvisible = _visible
		end

		--------------------- The actual button constructor ---------------------

		local CheckBoxButton = {
			type = "Frame",
			size = {608, 18},
			--autosize=1,
			;
							
			{
				type = "TextLabel",
				
				position = {20,0},
				Text = {
					textStyle = "FEHeading4",
					text = _text, -- ENABLE RIGHT CLICK MENU
				},

				Layout = {		
					pos_XY = {	x=16/800, y=0.5, xr="scr", yr="par",},	
					pivot_XY = { 0.0, 0.5 },	
				},

			},
							
			{
				type = "Button",
				name = _name,
				Layout = {		
						pos_XY = {	x=0, y=0.5, xr="px", yr="par",},	
						pivot_XY = { 0.0, 0.5 },	
						size_WH = {	w = 1000, h = .75, wr = "px", hr = "par" },		
						lockAspect = 1,	
				},

				enabled = 1,
				buttonStyle = "FECheckBoxButtonStyle",
				helpTipTextLabel = "m_lblHelpText", 
				helpTip = _helptip, -- ENABLE / DISABLE THE SHIFT RIGHT CLICK MENU
			},
		}


		return CheckBoxButton

	end
end
dofilepath("data:ui/newui/Taskbar/TaskbarDefines.lua")

-- Ship MultiSelect Buttons
-- BTN_SHIPSEL_1
-- BTN_SHIPSEL_2
-- BTN_SHIPSEL_3
-- BTN_SHIPSEL_4
-- BTN_SHIPSEL_5
-- BTN_SHIPSEL_6
-- BTN_SHIPSEL_7
-- BTN_SHIPSEL_8
-- BTN_SHIPSEL_9
-- BTN_SHIPSEL_10
-- BTN_SHIPSEL_11
-- BTN_SHIPSEL_12
-- BTN_SHIPSEL_13
-- BTN_SHIPSEL_14
-- BTN_SHIPSEL_15
-- BTN_SHIPSEL_16
-- BTN_SHIPSEL_17
-- BTN_SHIPSEL_18
-- BTN_SHIPSEL_19
-- BTN_SHIPSEL_20
-- BTN_SHIPSEL_21
-- BTN_SHIPSEL_22
-- BTN_SHIPSEL_23
-- BTN_SHIPSEL_24

if(NewShipSelectButton==nil) then

	function NewShipSelectButton( _name )
			local ShipSelButton = {
				type = "Button",
				Layout = {
					size_WH = { w = MULTISELECTICON_W, h = MULTISELECTICON_H, wr = "px", hr = "px" }
				},
				buttonStyle = "RM_FEButtonStyleShipSel",
				ignored = 1,
				name = _name,	
			
			}
			return ShipSelButton
	end
end

-- Ship buttons					
BTN_SHIPSEL_1 = NewShipSelectButton("btnShip01")	
BTN_SHIPSEL_2 = NewShipSelectButton("btnShip02")	
BTN_SHIPSEL_3 = NewShipSelectButton("btnShip03")	
BTN_SHIPSEL_4 = NewShipSelectButton("btnShip04")	
BTN_SHIPSEL_5 = NewShipSelectButton("btnShip05")	
BTN_SHIPSEL_6 = NewShipSelectButton("btnShip06")	
BTN_SHIPSEL_7 = NewShipSelectButton("btnShip07")	
BTN_SHIPSEL_8 = NewShipSelectButton("btnShip08")	
BTN_SHIPSEL_9 = NewShipSelectButton("btnShip09")	
BTN_SHIPSEL_10 = NewShipSelectButton("btnShip10")	
BTN_SHIPSEL_11 = NewShipSelectButton("btnShip11")	
BTN_SHIPSEL_12 = NewShipSelectButton("btnShip12")	
BTN_SHIPSEL_13 = NewShipSelectButton("btnShip13")	
BTN_SHIPSEL_14 = NewShipSelectButton("btnShip14")	
BTN_SHIPSEL_15 = NewShipSelectButton("btnShip15")	
BTN_SHIPSEL_16 = NewShipSelectButton("btnShip16")	
BTN_SHIPSEL_17 = NewShipSelectButton("btnShip17")	
BTN_SHIPSEL_18 = NewShipSelectButton("btnShip18")	
BTN_SHIPSEL_19 = NewShipSelectButton("btnShip19")	
BTN_SHIPSEL_20 = NewShipSelectButton("btnShip20")	
BTN_SHIPSEL_21 = NewShipSelectButton("btnShip21")	
BTN_SHIPSEL_22 = NewShipSelectButton("btnShip22")	
BTN_SHIPSEL_23 = NewShipSelectButton("btnShip23")	
BTN_SHIPSEL_24 = NewShipSelectButton("btnShip24")	

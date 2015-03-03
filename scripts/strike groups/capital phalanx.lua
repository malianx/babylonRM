--=============================================================================================================================================
--  Purpose : Lua definition file for the homeworld .
--            description of the inverted leaping goose strike group
--			  uses the AttackAIFamily names for ship types
--
--  Copyright Relic Entertainment, Inc.  All rights reserved.
--
--==================================================================================================================

strikegroup0 =
{
	Name					= "Core",
	DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip, Mothership",
	OffsetFromParent 		= {0,0,0},
	Children =
	{
		--==========================================================
		-- captial ships, in a line
		--==========================================================
		{
			Name					= "CoreRight",
			DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip, Mothership",
			OffsetFromParent 		= {-1,0,0},
			Children =
			{
				{
					Name					= "CoreRightRight",
					DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip, Mothership",
					OffsetFromParent 		= {-1,0,0},
				},
				{
					Name					= "CoreRightUP",
					DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip, Mothership",
					OffsetFromParent 		= {0,1,0},
					Children =
					{
						{
							Name					= "CoreRightUPRight",
							DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip, Mothership",
							OffsetFromParent 		= {-1,0,0},
						},
					},
				},	
				{
					Name					= "CoreRightDown",
					DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip, Mothership",
					OffsetFromParent 		= {0,-1,0},
					Children =
					{
						{
							Name					= "CoreRightDownRight",
							DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip, Mothership",
							OffsetFromParent 		= {-1,0,0},
						},
					},
				},	
			},
		},
		{
			Name					= "CoreLeft",
			DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip, Mothership",
			OffsetFromParent 		= {1,0,0},
			Children =
			{
				{
					Name					= "CoreLeftLeft",
					DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip, Mothership",
					OffsetFromParent 		= {1,0,0},
				},
				{
					Name					= "CoreLeftUP",
					DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip, Mothership",
					OffsetFromParent 		= {0,1,0},
					Children =
					{
						{
							Name					= "CoreLeftUPLeft",
							DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip, Mothership",
							OffsetFromParent 		= {1,0,0},
						},
					},
				},	
				{
					Name					= "CoreLeftDown",
					DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip, Mothership",
					OffsetFromParent 		= {0,-1,0},
					Children =
					{
						{
							Name					= "CoreLeftDownLeft",
							DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip, Mothership",
							OffsetFromParent 		= {1,0,0},
						},
					},
				},	
			},
		},
		
		
		{
			Name					= "FrigateRight",
			DesiredShipTypes 		= "Frigate, Capturer",
			OffsetFromParent 		= {-0.25,0,-2},
			Children =
			{
				{
					Name					= "FrigateRightRight",
					DesiredShipTypes 		= "Frigate, Capturer",
					OffsetFromParent 		= {-1,0,0},
				},
				{
					Name					= "FrigateRightUP",
					DesiredShipTypes 		= "Frigate, Capturer",
					OffsetFromParent 		= {0,1,0},
					Children =
					{
						{
							Name					= "FrigateRightUPRight",
							DesiredShipTypes 		= "Frigate, Capturer",
							OffsetFromParent 		= {-1,0,0},
						},
					},
				},	
				{
					Name					= "FrigateRightDown",
					DesiredShipTypes 		= "Frigate, Capturer",
					OffsetFromParent 		= {0,-1,0},
					Children =
					{
						{
							Name					= "FrigateRightDownRight",
							DesiredShipTypes 		= "Frigate, Capturer",
							OffsetFromParent 		= {-1,0,0},
						},
					},
				},	
			},
		},
		{
			Name					= "FrigateLeft",
			DesiredShipTypes 		= "Frigate, Capturer",
			OffsetFromParent 		= {0.25,0,-2},
			Children =
			{
				{
					Name					= "FrigateLeftLeft",
					DesiredShipTypes 		= "Frigate, Capturer",
					OffsetFromParent 		= {1,0,0},
				},
				{
					Name					= "FrigateLeftUP",
					DesiredShipTypes 		= "Frigate, Capturer",
					OffsetFromParent 		= {0,1,0},
					Children =
					{
						{
							Name					= "FrigateLeftUPLeft",
							DesiredShipTypes 		= "Frigate, Capturer",
							OffsetFromParent 		= {1,0,0},
						},
					},
				},	
				{
					Name					= "FrigateLeftDown",
					DesiredShipTypes 		= "Frigate, Capturer",
					OffsetFromParent 		= {0,-1,0},
					Children =
					{
						{
							Name					= "FrigateLeftDownLeft",
							DesiredShipTypes 		= "Frigate, Capturer",
							OffsetFromParent 		= {1,0,0},
						},
					},
				},	
			},
		},
		
		
		{
			Name					= "Strikecraft and JunkRight",
			DesiredShipTypes 		= "Fighter, Corvette, Utility",
			OffsetFromParent 		= {-0.15,0,-3.25},
			Children =
			{
				{
					Name					= "Strikecraft and JunkRightRight",
					DesiredShipTypes 		= "Fighter, Corvette, Utility",
					OffsetFromParent 		= {-1,0,0},
				},
				{
					Name					= "Strikecraft and JunkRightUP",
					DesiredShipTypes 		= "Fighter, Corvette, Utility",
					OffsetFromParent 		= {0,1,0},
					Children =
					{
						{
							Name					= "Strikecraft and JunkRightUPRight",
							DesiredShipTypes 		= "Fighter, Corvette, Utility",
							OffsetFromParent 		= {-1,0,0},
						},
					},
				},	
				{
					Name					= "Strikecraft and JunkRightDown",
					DesiredShipTypes 		= "Fighter, Corvette, Utility",
					OffsetFromParent 		= {0,-1,0},
					Children =
					{
						{
							Name					= "Strikecraft and JunkRightDownRight",
							DesiredShipTypes 		= "Fighter, Corvette, Utility",
							OffsetFromParent 		= {-1,0,0},
						},
					},
				},	
			},
		},
		{
			Name					= "Strikecraft and JunkLeft",
			DesiredShipTypes 		= "Fighter, Corvette, Utility",
			OffsetFromParent 		= {0.15,0,-3.25},
			Children =
			{
				{
					Name					= "Strikecraft and JunkLeftLeft",
					DesiredShipTypes 		= "Fighter, Corvette, Utility",
					OffsetFromParent 		= {1,0,0},
				},
				{
					Name					= "Strikecraft and JunkLeftUP",
					DesiredShipTypes 		= "Fighter, Corvette, Utility",
					OffsetFromParent 		= {0,1,0},
					Children =
					{
						{
							Name					= "Strikecraft and JunkLeftUPLeft",
							DesiredShipTypes 		= "Fighter, Corvette, Utility",
							OffsetFromParent 		= {1,0,0},
						},
					},
				},	
				{
					Name					= "Strikecraft and JunkLeftDown",
					DesiredShipTypes 		= "Fighter, Corvette, Utility",
					OffsetFromParent 		= {0,-1,0},
					Children =
					{
						{
							Name					= "Strikecraft and JunkLeftDownLeft",
							DesiredShipTypes 		= "Fighter, Corvette, Utility",
							OffsetFromParent 		= {1,0,0},
						},
					},
				},	
			},
		},
	},
}
	
	
	
		
	
	
	
	
	
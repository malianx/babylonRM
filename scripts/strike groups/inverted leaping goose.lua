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
	DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip",
	OffsetFromParent 		= {0,		0,		0},
	Children =
	{
		{
			Name					= "CoreLeft",
			DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip",
			OffsetFromParent 		= {-1,		0,		0},
		},
		{
			Name					= "CoreRight",
			DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip",
			OffsetFromParent 		= {1,		0,		0},
		},
		{
			Name					= "LeftFlank",
			DesiredShipTypes 		= "BigCapitalShip",
			OffsetFromParent 		= {-1,	1,		-0.5},
			Children =
			{
				{
					Name					= "LeftFlankExtend",
					DesiredShipTypes 		= "BigCapitalShip",
					OffsetFromParent 		= {-1,	0,		-0.5},
				},
			},
		},
		{
			Name					= "RightFlank",
			DesiredShipTypes 		= "BigCapitalShip",
			OffsetFromParent 		= {1,		1,		-0.5},
			Children =
			{
				{
					Name					= "RightFlankExtend",
					DesiredShipTypes 		= "BigCapitalShip",
					OffsetFromParent 		= {1,		0,		-0.5},
				}
			},
		},
		{
			Name					= "BottomFlank",
			DesiredShipTypes 		= "BigCapitalShip",
			OffsetFromParent 		= {0,		-1,		-0.3},
			Children =
			{
				{
					Name					= "BottomFlankLeft",
					DesiredShipTypes 		= "BigCapitalShip",
					OffsetFromParent 		= {-1,	-0.5,	-0.2},
				},
				{
					Name					= "BottomFlankRight",
					DesiredShipTypes 		= "BigCapitalShip",
					OffsetFromParent 		= {1,		-0.5,	-0.2},

				},
			},
		},
		{
			Name					= "Rear",
			DesiredShipTypes 		= "BigCapitalShip",
			OffsetFromParent 		= {0,		0,		-1},
			Children =
			{
				{
					Name					= "RearLeft",
					DesiredShipTypes 		= "BigCapitalShip",
					OffsetFromParent 		= {-1,	0,		0},
				},
				{
					Name					= "RearRight",
					DesiredShipTypes 		= "BigCapitalShip",
					OffsetFromParent 		= {1,		0,		0},

				},
			},
		},
		{
			Name					= "Assault",
			DesiredShipTypes 		= "BigCapitalShip",
			OffsetFromParent 		= {0,		0,		1},
			Children =
			{
				{
					Name					= "AssaultLeft",
					DesiredShipTypes 		= "BigCapitalShip",
					OffsetFromParent 		= {-1,	0,		-0.3},
				},
				{
					Name					= "AssaultRight",
					DesiredShipTypes 		= "BigCapitalShip",
					OffsetFromParent 		= {1,		0,		-0.3},
				},
			},
		},
	},
}

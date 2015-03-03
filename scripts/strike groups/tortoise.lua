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
	DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip, Frigate, Corvette, Fighter, Capturer, Utility",
	OffsetFromParent 		= {0,0,0},
	Children =
	{
		--==========================================================
		-- captial ships, in a line
		--==========================================================
		{
			Name					= "CoreLeft",
			DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip",
			OffsetFromParent 		= {-1,0,0},
		},
		{
			Name					= "CoreRight",
			DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip",
			OffsetFromParent 		= {1,0,0},
		},
		--==========================================================
		-- corvettes, form a roof over the cap line, roof is 5 deep
		-- and then spreads left/right
		--==========================================================
		{
			-- up
			Name					= "Corvette Roof",
			DesiredShipTypes 		= "Corvette",
			OffsetFromParent 		= {0,1,0},
			Children =
			{
				{
					-- the forward elements
					Name					= "CorvetteRoof Forward 1",
					DesiredShipTypes 		= "Corvette",
					OffsetFromParent 		= {0,0,1},
					Children =
					{
						{
							Name					= "CorvetteRoof Forward 1 Left",
							DesiredShipTypes 		= "Corvette",
							OffsetFromParent 		= {-1,0,0},
						},
						{
							Name					= "CorvetteRoof Forward 1 Right",
							DesiredShipTypes 		= "Corvette",
							OffsetFromParent 		= {1,0,0},
						},
					},
				},
				{
					-- the rear elements
					Name					= "CorvetteRoof Backwards 1",
					DesiredShipTypes 		= "Corvette",
					OffsetFromParent 		= {0,0,-1},
					Children =
					{
						{
							Name					= "CorvetteRoof Backwards 1 Left",
							DesiredShipTypes 		= "Corvette",
							OffsetFromParent 		= {-1,0,0},
						},
						{
							Name					= "CorvetteRoof Backwards 1 Right",
							DesiredShipTypes 		= "Corvette",
							OffsetFromParent 		= {1,0,0},
						},
						{
							Name					= "CorvetteRoof Backwards 2",
							DesiredShipTypes 		= "Corvette",
							OffsetFromParent 		= {0,0,-1},
							Children =
							{
								{
									Name					= "CorvetteRoof Backwards 2 Left",
									DesiredShipTypes 		= "Corvette",
									OffsetFromParent 		= {-1,0,0},
								},
								{
									Name					= "CorvetteRoof Backwards 2 Right",
									DesiredShipTypes 		= "Corvette",
									OffsetFromParent 		= {1,0,0},
								},
								{
									Name					= "CorvetteRoof Backwards 3",
									DesiredShipTypes 		= "Corvette",
									OffsetFromParent 		= {0,0,-1},
									Children =
									{
										{
											Name					= "CorvetteRoof Backwards 3 Left",
											DesiredShipTypes 		= "Corvette",
											OffsetFromParent 		= {-1,0,0},
										},
										{
											Name					= "CorvetteRoof Backwards 3 Right",
											DesiredShipTypes 		= "Corvette",
											OffsetFromParent 		= {1,0,0},
										},
									},
								},
							},
						},
					},
				},
			},
		},
		--==========================================================
		-- frigates in lines to the rear
		--==========================================================
		{
			Name					= "Frigate Line Left",
			DesiredShipTypes 		= "Frigate, Capturer",
			OffsetFromParent 		= {-1,0,-1},
			Children =
			{
				{
					Name					= "Frigate Line Left Continuation",
					DesiredShipTypes 		= "Frigate, Capturer",
					OffsetFromParent 		= {-1,0,0},
				},
				{
					Name					= "Frigate Line Left Upper",
					DesiredShipTypes 		= "Frigate, Capturer",
					OffsetFromParent 		= {0,1,0},
					Children =
					{
						{
							Name					= "Frigate Line Left Upper Continuation",
							DesiredShipTypes 		= "Frigate, Capturer",
							OffsetFromParent 		= {-1,0,0},
						},
					},
				},
				{
					Name					= "Frigate Line Left Lower",
					DesiredShipTypes 		= "Frigate, Capturer",
					OffsetFromParent 		= {0,-1,0},
					Children =
					{
						{
							Name					= "Frigate Line Left Lower Continuation",
							DesiredShipTypes 		= "Frigate, Capturer",
							OffsetFromParent 		= {-1,0,0},
						},
					},
				},
			},
		},
		{
			Name					= "Frigate Line Right",
			DesiredShipTypes 		= "Frigate, Capturer",
			OffsetFromParent 		= {1,0,-1},
			Children =
			{
				{
					Name					= "Frigate Line Right Continuation",
					DesiredShipTypes 		= "Frigate, Capturer",
					OffsetFromParent 		= {1,0,0},
				},
				{
					Name					= "Frigate Line Right Upper",
					DesiredShipTypes 		= "Frigate, Capturer",
					OffsetFromParent 		= {0,1,0},
					Children =
					{
						{
							Name					= "Frigate Line Right Upper Continuation",
							DesiredShipTypes 		= "Frigate, Capturer",
							OffsetFromParent 		= {1,0,0},
						},
					},
				},
				{
					Name					= "Frigate Line Right Lower",
					DesiredShipTypes 		= "Frigate, Capturer",
					OffsetFromParent 		= {0,-1,0},
					Children =
					{
						{
							Name					= "Frigate Line Right Lower Continuation",
							DesiredShipTypes 		= "Frigate, Capturer",
							OffsetFromParent 		= {1,0,0},
						},
					},
				},
			},
		},
		--==========================================================
		-- utility in a line down and to the rear
		--==========================================================
		{
			Name					= "Utility",
			DesiredShipTypes 		= "Utility",
			OffsetFromParent 		= {0,-0.6,-1},
			Children =
			{
				{
					Name					= "Utility Left",
					DesiredShipTypes 		= "Utility",
					OffsetFromParent 		= {-1,0,0},
				},
				{
					Name					= "Utility Right",
					DesiredShipTypes 		= "Utility",
					OffsetFromParent 		= {1,0,0},
				},
			},
		},
		--==========================================================
		-- strike craft in walls out to the front
		--==========================================================
		{
			Name					= "StrikeCraft upper line",
			DesiredShipTypes 		= "Fighter",
			OffsetFromParent 		= {0,0.3,1},
			Children =
			{
				{
					Name					= "Left",
					DesiredShipTypes 		= "Fighter",
					OffsetFromParent 		= {-1,0,0},
				},
				{
					Name					= "Right",
					DesiredShipTypes 		= "Fighter",
					OffsetFromParent 		= {1,0,0},
				},
				{
					Name					= "StrikeCraft upper line second tier",
					DesiredShipTypes 		= "Fighter",
					OffsetFromParent 		= {0,1,0},
					Children =
					{
						{
							Name					= "Left",
							DesiredShipTypes 		= "Fighter",
							OffsetFromParent 		= {-1,0,0},
						},
						{
							Name					= "Right",
							DesiredShipTypes 		= "Fighter",
							OffsetFromParent 		= {1,0,0},
						},
					},
				},
			},
		},
		{
			Name					= "StrikeCraft lower line",
			DesiredShipTypes 		= "Fighter",
			OffsetFromParent 		= {0,-0.3,1},
			Children =
			{
				{
					Name					= "Left",
					DesiredShipTypes 		= "Fighter",
					OffsetFromParent 		= {-1,0,0},
				},
				{
					Name					= "Right",
					DesiredShipTypes 		= "Fighter",
					OffsetFromParent 		= {1,0,0},
				},
				{
					Name					= "StrikeCraft lower line second tier",
					DesiredShipTypes 		= "Fighter",
					OffsetFromParent 		= {0,-1,0},
					Children =
					{
						{
							Name					= "Left",
							DesiredShipTypes 		= "Fighter",
							OffsetFromParent 		= {-1,0,0},
						},
						{
							Name					= "Right",
							DesiredShipTypes 		= "Fighter",
							OffsetFromParent 		= {1,0,0},
						},
					},
				},
			},
		},
	},
}

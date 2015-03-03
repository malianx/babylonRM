strikegroup0 =
{
	Name					= "Core",
	DesiredShipTypes 		= "BigCapitalShip, SmallCapitalShip, Frigate, Corvette, Fighter",
	OffsetFromParent 		= {0,0,0},
	Children =
	{
		{
			Name					= "CoreLeft",
			DesiredShipTypes 		= "",
			OffsetFromParent 		= {-1,0,-1},
			Children =
			{
				{
					Name					= "Left_1",
					DesiredShipTypes 		= "",
					OffsetFromParent 		= {-1,0,-1},
					Children =
					{
						{
							Name					= "Left_2",
							DesiredShipTypes 		= "",
							OffsetFromParent 		= {-1,0,-1},
							Children =
							{
								{
									Name					= "Left_3",
									DesiredShipTypes 		= "",
									OffsetFromParent 		= {-1,0,-1},
								},
							},
						},
					},
				},
			},
		},
		{
			Name					= "CoreRight",
			DesiredShipTypes 		= "",
			OffsetFromParent 		= {1,0,-1},
			Children =
			{
				{
					Name					= "Right_1",
					DesiredShipTypes 		= "",
					OffsetFromParent 		= {1,0,-1},
					Children =
					{
						{
							Name					= "Right_2",
							DesiredShipTypes 		= "",
							OffsetFromParent 		= {1,0,-1},
							Children =
							{
								{
									Name					= "Right_3",
									DesiredShipTypes 		= "",
									OffsetFromParent 		= {1,0,-1},
								},
							},
						},
					},
				},
			},
		},
	},
}

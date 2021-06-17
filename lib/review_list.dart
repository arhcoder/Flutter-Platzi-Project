import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget
{
	@override
	Widget build(BuildContext context)
	{
		return Column
		(
			crossAxisAlignment: CrossAxisAlignment.start,

			children:
			[
				Review
				(
					"assets/images/user-arhcoder.png",
					"arhcoder",
					5.0,
					"8 Reviews",
					"Excelente ciudad."
				),
				Review
				(
					"assets/images/user-anncode.png",
					"anncode",
					4.5,
					"4 Reviews",
					"Bonita ciudad. Mucho calor."
				),
				Review
				(
					"assets/images/user-luisillo.png",
					"luisillo",
					5.0,
					"12 Reviews",
					"Una ciudad muy cool."
				),
				Review
				(
					"assets/images/user-freddier.png",
					"freddier",
					4.0,
					"3 Reviews",
					"Muchos zancudos. Buen destino."
				)
			]
		);
	}
}
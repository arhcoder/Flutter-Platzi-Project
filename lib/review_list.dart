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
                Container
                (
                    margin: EdgeInsets.only(
                        top: 20.0,
                        left: 40.0
                    ),

                    child: Text
                    (
                        "Reseñas",
                        textAlign: TextAlign.left,
                        style: TextStyle
                        (
                            fontFamily: "Gotham",
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                        )
                    )
                ),

				Review
				(
					"assets/images/user-arhcoder.png",
					"arhcoder",
					5.0,
					"8 Reseñas",
					"Excelente ciudad."
				),
				Review
				(
					"assets/images/user-anncode.png",
					"anncode",
					4.5,
					"4 Reseñas",
					"Bonita ciudad. Mucho calor."
				),
				Review
				(
					"assets/images/user-luisillo.png",
					"luisillo",
					5.0,
					"12 Reseñas",
					"Una ciudad muy cool."
				),
				Review
				(
					"assets/images/user-freddier.png",
					"freddier",
					4.0,
					"3 Reseñas",
					"Muchos zancudos. Buen destino."
				)
			]
		);
	}
}
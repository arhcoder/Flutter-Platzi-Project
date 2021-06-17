import 'package:flutter/material.dart';
import 'stars.dart';

class Review extends StatelessWidget
{
	// Atributos //
	String image_path;
	String username;
	double stars_score;
	String reviews;
	String comment;

	// Métodos //
	Review(this.image_path, this.username, this.stars_score, this.reviews, this.comment);

	@override
	Widget build(BuildContext context)
	{
		final photo = Container
		(
			width: 60.0,
			height: 60.0,

			margin: EdgeInsets.only(
				top: 28.0,
				left: 40.0
			),

			decoration: BoxDecoration
			(
				shape: BoxShape.circle,
				image: DecorationImage
				(
					image: AssetImage(image_path),
					fit: BoxFit.cover
				)
			)
		);

		final user_name = Container
		(
			margin: EdgeInsets.only(
				top: 18.0,
				left: 20.0
			),
			child: Text
			(
				username,
				textAlign: TextAlign.left,
				style: TextStyle
				(
					fontFamily: "Gotham",
					fontWeight: FontWeight.bold,
					fontSize: 16.0
				)
			)
		);

		final user_reviews = Container
		(
			margin: EdgeInsets.only(
				top: 8.0,
				left: 20.0
			),
			child: Text
			(
				reviews,
				textAlign: TextAlign.left,
				style: TextStyle
				(
					fontFamily: "Gotham",
					color: Color(0xFFA3A5A8),
					fontSize: 12.0
				)
			)
		);

		final user_comment = Container
		(
			margin: EdgeInsets.only(
				top: 8.0,
				left: 20.0
			),
			child: Text
			(
				comment,
				textAlign: TextAlign.left,
				style: TextStyle
				(
					fontFamily: "Gotham",
					fontSize: 14.0
				)
			)
		);

		final user_information = Column
		(
			crossAxisAlignment: CrossAxisAlignment.start,

			children:
			[
				Row
				(
					children:
					[
						user_name,
						Container
						(
							margin: EdgeInsets.only(
							top: 10.0,
						),
							child: Stars(stars_score, 14.0)
						)
					]
				),
				user_reviews,
				user_comment
			]
		);
		
		return Row
		(
			children:
			[
				photo,
				user_information,
			]
		);
	}
}
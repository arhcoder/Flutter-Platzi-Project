import 'package:flutter/material.dart';

class PlaceDescription extends StatelessWidget
{
	// Atributos //
	String place_name;
	String place_description;
	double place_stars;

	// Métodos //
	PlaceDescription(this.place_name, this.place_description, this.place_stars);

	@override
	Widget build(BuildContext context)
	{
		// Ícono de estrella completa //
		final star_complete = Container
		(
			child: Icon
			(
				Icons.star,
				color: Color(0xFFF2C611)
			)
		);

		// Ícono de estrella a la mitad //
		final star_half = Container
		(
			child: Icon
			(
				Icons.star_half,
				color: Color(0xFFF2C611)
			)
		);

		// Ícono de estrella completa //
		final star_border = Container
		(
			child: Icon
			(
				Icons.star_border,
				color: Color(0xFFF2C611)
			)
		);

		// Título del lugar //
		final title = Container
		(
			margin: EdgeInsets.only(
				top: 40.0,
				left: 40.0,
				right: 40.0
			),

			child: Text
			(
				place_name,
				style: TextStyle
				(
					fontSize: 28.0,
					fontWeight: FontWeight.bold
				),
				textAlign: TextAlign.left
			)
		);

		// Conjunto de estrellas //
		final stars = Container
		(
			margin: EdgeInsets.only(
				top: 20.0,
				left: 40.0,
				right: 40.0
			),

			child: Row
			(
				children:
				[
					star_complete,
					star_complete,
					star_complete,
					star_complete,
					star_half
				]
			)
		);

		// Descripción del lugar //
		final description = Container
		(
			margin: EdgeInsets.only(
				top: 20.0,
				left: 40.0,
				right: 40.0
			),

			child: Text
			(
				place_description,
				style: TextStyle
				(
					fontSize: 16.0,
					fontWeight: FontWeight.normal
				),
				textAlign: TextAlign.left
			)	
		);

		// Título de estrellas //
		return Column
		(
			crossAxisAlignment: CrossAxisAlignment.start,
			children:
			[
				title,
				stars,
				description
			],
		);
	}
}
import 'package:flutter/material.dart';
import 'button_rounded.dart';
import 'stars.dart';

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
		// Título del lugar //
		final title = Container
		(
			margin: EdgeInsets.only(
				top: 311.8,
				left: 40.0,
				right: 40.0
			),

			child: Text
			(
				place_name,
				style: TextStyle
				(
					fontFamily: "Gotham",
					fontSize: 26.0,
					fontWeight: FontWeight.bold
				),
				textAlign: TextAlign.left
			)
		);

		// Descripción del lugar //
		final description = Container
		(
			margin: EdgeInsets.only(
				top: 10.0,
				left: 40.0,
				right: 40.0
			),

			child: Text
			(
				place_description,
				style: TextStyle
				(
					fontFamily: "Gotham",
					fontSize: 14,
                    height: 1.34,
					fontWeight: FontWeight.normal,
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
				Container
                (
                    margin: EdgeInsets.only(
                        top: 10.0
                    ),
          
                    child: Stars(place_stars, 26.0)
                ),
				description,
                ButtonRounded("Visitar")
			]
		);
	}
}
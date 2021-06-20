import 'package:flutter/material.dart';

class Stars extends StatelessWidget
{
	// Atributos //
	double stars;
	double icon_size;

	// Métodos //
	Stars(this.stars, this.icon_size);

	@override
	Widget build(BuildContext context)
	{
		// Ícono de estrella completa //
		final star_complete = Container
		(
			child: Icon
			(
				Icons.star,
				color: Color(0xFFF2C611),
				size: icon_size
			)
		);

		// Ícono de estrella a la mitad //
		final star_half = Container
		(
			child: Icon
			(
				Icons.star_half,
				color: Color(0xFFF2C611),
				size: icon_size
			)
		);

		// Ícono de estrella completa //
		final star_border = Container
		(
			child: Icon
			(
				Icons.star_border,
				color: Color(0xFFF2C611),
				size: icon_size
			)
		);

		// Conjunto de estrellas //
		return Container
		(
			margin: EdgeInsets.only(
				left: 30.0,
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
  	}
}
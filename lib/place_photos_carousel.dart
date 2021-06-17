import 'package:flutter/material.dart';
import 'place_photo.dart';

class PlacePhotosCarousel extends StatelessWidget
{
	@override
	Widget build(BuildContext context)
	{
		return Container
		(
			height: 328.0,
			child: ListView
			(
				padding: EdgeInsets.all(20.0),

				scrollDirection: Axis.horizontal,

				children:
				[
					PlacePhoto("assets/images/Aguascalientes-01.png"),
					PlacePhoto("assets/images/Aguascalientes-02.png"),
					PlacePhoto("assets/images/Aguascalientes-03.png"),
					PlacePhoto("assets/images/Aguascalientes-04.png")
				]
			)
		);
	}
}
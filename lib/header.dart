import 'package:flutter/material.dart';
import 'gradient_appbar.dart';
import 'place_photos_carousel.dart';

class Header extends StatelessWidget
{
	@override
	Widget build(BuildContext context)
	{
		// Pila que incluye un gradiente y un carrusel de fotos encima :3 //
		return Stack
		(
			children:
			[
				GradientAppBar("Destinos Populares", 250.00),
				PlacePhotosCarousel()
			]
		);
	}
}
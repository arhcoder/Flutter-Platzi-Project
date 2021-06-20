import 'package:flutter/material.dart';
import 'button_floating_favorite.dart';

class PlacePhoto extends StatelessWidget
{
	// Atributos //
	String image_path;

	// Métodos //
	PlacePhoto(this.image_path);

	@override
	Widget build(BuildContext context)
	{
		return Stack
        (
            alignment: Alignment(1.0, 1.1),
            children:
            [
                Container
                (
                    width: 200.00,
                    height: 200.00,
                    margin: EdgeInsets.only(
                        top: 80.0,
                        left: 4.0,
                        right: 10.0
                    ),

                    decoration: BoxDecoration
                    (
                        image: DecorationImage
                        (
                            image: AssetImage(image_path),
                            fit: BoxFit.fill
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow:
                        [
                            BoxShadow
                            (
                                color: Colors.black38,
                                blurRadius: 10.0,
                                offset: Offset(0.0, 6.0)
                            )
                        ]
                    )
                ),
                ButtonFloatingFavorite()
            ]
        );
	}
}
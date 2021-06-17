import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget
{
	// Atributos //
	String title;
	double height;

	// Métodos //
	GradientAppBar(this.title, this.height);

	@override
  	Widget build(BuildContext context)
	{
    	return Container
		(
			height: height,
			decoration: BoxDecoration
			(
				gradient: LinearGradient
				(
					colors:
					[
                        Color(0xFF584CD1),
						Color(0xFF8068D3)
					],
					begin: FractionalOffset(0.2, 0.0),
					end: FractionalOffset(1.0, 0.6),
					stops: [0.0, 0.8],
					tileMode: TileMode.clamp,
				)
			),
			child: Text
			(
				title,
				style: TextStyle
				(
					fontFamily: "Gotham",
					fontSize: 24.0,
					fontWeight: FontWeight.w900,
					color: Colors.white
				)
			),
			alignment: Alignment(-0.6, -0.5),
		);
  	}
}
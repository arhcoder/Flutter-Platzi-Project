import 'package:flutter/material.dart';

class ButtonRounded extends StatelessWidget
{
	// Atributos //
	String button_text;

	// Métodos //
	ButtonRounded(this.button_text);

	@override
	Widget build(BuildContext context)
	{
        return Container
        (
            width: 160.0,
            height: 60.0,

            margin: EdgeInsets.only(
                top: 20.0,
                left: 40.0
            ),

            decoration: BoxDecoration
            (
                borderRadius: BorderRadius.circular(30.0),
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

            child: Stack
            (
                children:
                [
                    Container
                    (
                        child: Center
                        (
                            child: Text
                            (
                                button_text,
                                style: TextStyle
                                (
                                    fontFamily: "Gotham",
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                )
                            )
                        )
                    ),

                    InkWell
                    (
                        onTap: ()
                        {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar
                                (
                                    content: Text
                                    (
                                        "Viajando..."
                                    ),
                                )
                            );
                        }
                    )
                ]
            )
        );
    }
}
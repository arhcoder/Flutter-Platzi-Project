import 'package:flutter/material.dart';
import 'header.dart';
import 'place_description.dart';
import 'review_list.dart';

class Home extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return Stack
        (
            children:
            [
                ListView
                (
                    children:
                    [
                        PlaceDescription
                        (
                            "Aguascalientes",
                            "Tierra de la gente buena. Desde vivir la gran Feria de San Marcos, descubrir su centro histórico colonial con su hermosa catedral, disfrutar de las exposiciones, parques y fuentes del Museo de La muerte, hasta dar un paseo por sus hermosos Pueblos Mágicos. Un destino lleno de cultura cononial y de calaveras.",
                            4.5
                        ),

                        Container
                        (
                            margin: EdgeInsets.only(
                                top: 20.0,
                                bottom: 28.0
                            ),
                            child: ReviewList()
                        )
                    ]
                ),
                Header()
            ]
        );
    }
}
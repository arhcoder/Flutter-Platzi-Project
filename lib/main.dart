import 'package:flutter/material.dart';
import 'place_description.dart';

void main()
{
	runApp(MyApp());
}

class MyApp extends StatelessWidget
{
	@override
	Widget build(BuildContext context)
	{
		return MaterialApp
		(
			title: 'Places Trial',

			theme: ThemeData
			(
				primarySwatch: Colors.deepPurple
			),
			
			home: Scaffold
			(
				appBar: AppBar
				(
					title: Text("Destino: Aguascalientes")
				),
				body: new PlaceDescription
        (
          "Aguascalientes",
          "Tierra de la gente buena. Conocida por los edificios coloniales españoles de su centro histórico. En la Plaza Patria se ubica la Catedral de Nuestra Señora de la Asunción, con pinturas del siglo XVIII de Miguel Cabrera. El Palacio de Gobierno del siglo XVII es conocido por sus numerosos arcos interiores tallados. El Museo Nacional de la Muerte exhibe arte funerario y artefactos desde la época precolombina hasta la actualidad.",
          4.5
        )
			)
		);
	}
}
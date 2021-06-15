import 'package:flutter/material.dart';

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
					title: Text("Places Trial")
				),
				body: Text("¡Bienvenido!")
			)
		);
	}
}
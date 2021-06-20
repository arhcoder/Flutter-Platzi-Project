import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'App.dart';

// @arhcoder //

void main()
{
    // Se hace transparente la barra superior de Android //
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle
        (
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light
        )
    );
	runApp(MyApp());
}

class MyApp extends StatelessWidget
{
	@override
	Widget build(BuildContext context)
	{
		return MaterialApp
		(
            debugShowCheckedModeBanner: false,

			title: 'Places Trial',

			theme: ThemeData
			(
				primarySwatch: Colors.deepPurple
			),
            home: App()
		);
	}
}
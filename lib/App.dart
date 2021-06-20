import 'package:flutter/material.dart';
import 'App_Home.dart';
import 'App_Search.dart';
import 'App_Profile.dart';

// Es el Widget completo de la app //
// Contiene un Bottom Navigation Bar que cambia entre Ventanas //
// @arhcoder //

// Color(0xFF300466) //

class App extends StatefulWidget
{
    @override
    State <StatefulWidget> createState()
    {
        return AppState();
    }
}

class AppState extends State <App>
{
    // Lista de Layouts //
    int index_layout = 0;
    final List <Widget> Layouts =
    [
        Home(),
        Search(),
        Profile()
    ];

    // Cambia de Layout según su índice //
    void SwitchLayout(int index)
    {
        setState(()
        {
            index_layout = index;
        });
    }

    @override
    Widget build(BuildContext context)
    {
        return Scaffold
        (
            body: Layouts[index_layout],
            
            bottomNavigationBar: Theme
            (
                data: Theme.of(context).copyWith(
                    canvasColor: Color(0x00000000)
                ),

                child: Container
                (
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

                    child: BottomNavigationBar
                    (
                        backgroundColor: Colors.black.withOpacity(0.0),
                        selectedItemColor: Color(0xFFFFFFFF),
                        unselectedItemColor: Color(0xFF300466),
                        elevation: 0,

                        onTap: SwitchLayout,

                        currentIndex: index_layout,

                        showSelectedLabels: false,
                        showUnselectedLabels: false,

                        items:
                        [
                            BottomNavigationBarItem
                            (
                                icon: Icon(Icons.home),
                                label: "",
                            ),
                            BottomNavigationBarItem
                            (
                                icon: Icon(Icons.search),
                                label: ""
                            ),
                            BottomNavigationBarItem
                            (
                                icon: Icon(Icons.person),
                                label: ""
                            )
                        ]
                    )
                )
            )
        );
    }
}
import 'package:flutter/material.dart';

class ButtonFloatingFavorite extends StatefulWidget
{
    @override
    State <StatefulWidget> createState()
    {
        return ButtonFloatingFavorite_State();
    }
}

class ButtonFloatingFavorite_State extends State <ButtonFloatingFavorite>
{
    // Atributos //
    bool clicked = false;
    String message = "Agregado a Favoritos";
    Color button_color = Color(0xFFC8C8C8);
    IconData button_icon = Icons.favorite_border;

    void ButtonLoatingFavorite_Click()
    {
        // Valida si el botón está o no presionado y lo cambia //
        if(clicked)
        {
            clicked = false;
            message = "Eliminado de Favoritos";

            setState(()
            {
                button_color = Color(0xFFC8C8C8);
                button_icon = Icons.favorite_border;
            });
        }
        else
        {
            clicked = true;
            message = "Agregado a Favoritos";
            setState(()
            {
                button_color = Color(0xFF584CD1);
                button_icon = Icons.favorite;
            });
        }

        // Elimina el SnackBar que esté corriendo //
        ScaffoldMessenger.of(context).hideCurrentSnackBar();

        // Muestra el mensaje pertinente //
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar
            (
                content: Text
                (
                    message
                )
            )
        );
    }

    @override
    Widget build(BuildContext context)
    {
        return FloatingActionButton
        (
            backgroundColor: button_color,
            mini: true,
            tooltip: "Favorito",
            onPressed: ButtonLoatingFavorite_Click,
            child: Icon
            (
                button_icon
            ),
        );
    }
}
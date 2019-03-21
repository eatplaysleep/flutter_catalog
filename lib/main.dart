import 'package:flutter/material.dart';
import './my_app_meta.dart' as my_app_meta;

void main() => runApp(
      MaterialApp(
        title: 'Flutter Catalog',
        theme: ThemeData(
            accentColor: Color.fromRGBO(76, 87, 235, 1.0),
//            accentColor: Color.fromRGBO(165, 171, 243, 1.0),
            primaryColor: Colors.white,

            backgroundColor: Colors.white,
            highlightColor: Color.fromRGBO(76, 87, 235, 1.0),
            textSelectionColor: Color.fromRGBO(248, 248, 248, 1.0),
//            textSelectionColor: Color.fromRGBO(76, 87, 235, 1.0),
            textSelectionHandleColor: Color.fromRGBO(76, 87, 235, 1.0),
            toggleableActiveColor: Color.fromRGBO(76, 87, 235, 1.0),
            unselectedWidgetColor: Color.fromRGBO(127, 127, 127, 1.0),
            inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: Color.fromRGBO( 248, 248, 248, 1.0),
//                focusedBorder:
            )
        ),
        // No need to set `home` because `routes` is set to a routing table, and
        // Navigator.defaultRouteName ('/') has an entry in it.
        routes: my_app_meta.kRoutingTable,
      ),
    );

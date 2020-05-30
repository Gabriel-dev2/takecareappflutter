import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homePage.dart';
import 'models/gridDashboard.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenu createState() => _MainMenu();
}

class _MainMenu extends State<MainMenu> {

  int submit = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Color(0xFF729dd2),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 110,
          ),
          Padding(padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Bem Vindo ao Take Care", style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      )
                    ),),
                    SizedBox(height: 3,),
                    Text("Home", style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      )
                    ),)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                        alignment: Alignment.topCenter,
                        icon: Icon(Icons.exit_to_app, size: 50, color: Colors.white),
                        onPressed: (){
                          if(submit == 0) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: new Text("Aviso"),
                                    content: new Text("Você está prestes a sair, tem certeza que deseja continuar"),
                                    actions: <Widget>[
                                      new FlatButton(
                                        child: new Text("Sair"),
                                        onPressed: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => HomePage()),
                                          );
                                        },
                                      ),
                                      new FlatButton(
                                          child: new Text("Fechar"),
                                          onPressed: (){
                                            Navigator.of(context).pop();
                                          }
                                      )
                                    ],
                                  );
                                }
                            );
                          }
                        }
                    ),
                    SizedBox(height: 4,),
                    Align(
                      child: Padding(padding: const EdgeInsets.only(
                        left: 22
                      ),
                      child: Text("Sair", style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600
                          )
                      ),)
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 40,
          ),
          GridDashboard()
        ],
      ),
        );
  }
}

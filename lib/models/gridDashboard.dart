import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:takecare/checkBoxTela.dart';
import 'package:takecare/profilePage.dart';

class GridDashboard extends StatelessWidget {

  Item item1 = new Item(
    title: "Hospitais",
    subtitle: "Ver Hospitais",
    iconName: Icon(Icons.local_hospital).icon
  );

  Item item2 = new Item(
    title: "Perfil",
    subtitle: "Meu Perfil",
    iconName: Icon(Icons.people).icon
  );

  Item item3 = new Item(
    title: "Ambulância",
    subtitle: "Chamar Ajuda",
    iconName: Icon(Icons.time_to_leave).icon
  );

  Item item4 = new Item(
    title: "Histórico",
    subtitle: "Meu Historico",
    iconName: Icon(Icons.recent_actors).icon
  );

  @override
  Widget build(BuildContext context) {
    List<Item> myList = [item1, item2, item3, item4];
    int submit = 0;

    return Flexible(
        child: GridView.count(
            childAspectRatio: 1.0,
            padding: EdgeInsets.only(
          left: 16, right: 16
        ),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data){
            return Container(
              decoration: BoxDecoration(color: Color(0xff453658), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(icon: Icon(data.iconName, size: 42, color: Colors.white),
                      onPressed: () {
                        if(submit == 0){
                          if("Hospitais" == data.title) {

                          }
                          else if("Perfil" == data.title){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ProfilePage()),
                            );
                          }
                          else if("Ambulância" == data.title) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CheckBoxTela()),
                            );
                          }
                          else if("Histórico" == data.title) {
//                            Navigator.push(
//                              context,
//                              MaterialPageRoute(builder: (context) => HomePage()),
//                            );
                          }
                        }
                      }),
                  SizedBox(
                    height: 14,
                  ),
                  Text(data.title, style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    )
                  ),),
                  SizedBox(height: 8,),
                  Text(data.subtitle, style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.white38,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      )
                    )
                  )
                ],
              ),
            );
          }
          ).toList() ,
        ),

    );
  }
}

class Item {
  String title;
  String subtitle;
  IconData iconName;
  Item({this.title, this.subtitle, this.iconName});
}
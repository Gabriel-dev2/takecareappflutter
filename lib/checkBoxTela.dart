import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:takecare/classes/CheckBoxItem.dart';
import 'package:takecare/mainMenu.dart';
import 'package:takecare/waitScreen.dart';

class CheckBoxTela extends StatefulWidget {

  var items = new List<CheckBoxItem>();

  final String cpf;

  CheckBoxTela(this.cpf) {
    items = [];
    items.add(CheckBoxItem(title: "Acidente de carro", checked: false));
    items.add(CheckBoxItem(title: "Acidente de Moto", checked: false));
    items.add(CheckBoxItem(title: "Afogamento", checked: false));
    items.add(CheckBoxItem(title: "Queimadura", checked: false));
    items.add(CheckBoxItem(title: "Choque elétrico", checked: false));
  }
  @override
  _CheckBoxTela createState() => _CheckBoxTela(this.cpf);

}

class _CheckBoxTela extends State<CheckBoxTela> {

  int submit = 0;
  int checked = 0;
  String cpf;

  _CheckBoxTela(this.cpf);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Motivo de Chamada', style: GoogleFonts.openSans(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          )
        ),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            if(submit == 0) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainMenu(this.cpf))
              );
            }
          },
        ),
        actions: <Widget>[
          new FlatButton(
            child: new Text("Próximo", style: GoogleFonts.openSans(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400
              )
            ),),
            onPressed: (){
              if(checked == 1){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => WaitScreen(this.cpf)),
              //   );
              } else {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Aviso"),
                          content: Text("É necessário selecionar um dos motivos para continuar"),
                          actions: <Widget>[
                            new FlatButton(
                                child: Text("Fechar"),
                              onPressed: () {
                                  Navigator.of(context).pop();
                              },
                            )
                          ],
                        );
                      }
                  );
              }
            },
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: widget.items.length,
          itemBuilder: (BuildContext ctxt, int index){
            final item = widget.items[index];

            return CheckboxListTile(
              title: Text(item.title),
              key: Key(item.title),
              value: item.checked,
              onChanged: (value){
                  setState(() {
                    item.checked = value;
                    checked = 1;
                  });
              },
            );
          })
    );
  }

}
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

String name = 'Gabriel';
int idade = 12;

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Perfil"),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {

              }
          ),
        ),
      body: Container(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.only(
                    top: 16, left: 32
                  ),
                child: Text("Nome",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 32
                ),
                child: Text(name,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.normal
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}
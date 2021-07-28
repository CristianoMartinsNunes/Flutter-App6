import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  const TelaContato({Key? key}) : super(key: key);

  @override
  _TelaContatoState createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Contato"),
        backgroundColor: Colors.green[300],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("image/menu_contato.png"),
                  Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Contato",
                        style: TextStyle(fontSize: 20),
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("CMN® Consultoria"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Telefone: (55) 9 9937 3737"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("E-mail: martinsnunes@gmail.com"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

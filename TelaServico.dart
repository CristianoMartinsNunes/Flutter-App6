import 'package:flutter/material.dart';

class TelaServico extends StatelessWidget {
  const TelaServico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("SERVIÇO"),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("image/detalhe_servico.png"),
                  Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Sobre Serviço",
                        style: TextStyle(fontSize: 20, color: Colors.cyan),
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Consultoria"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Cáclulo de preços"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Análise e Projetos "),
              )
            ],
          ),
        ),
      ),
    );
  }
}

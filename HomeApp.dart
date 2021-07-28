import 'package:flutter/material.dart';
import 'TelaCliente.dart';
import 'TelaContato.dart';
import 'TelaEmpresa.dart';
import 'TelaServico.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  void _abrirEmpresa() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaEmpresa()));
  }

  void _abrirCliente() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaCliente()));
  }

  void _abrirContato() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaContato()));
  }

  void _abrirServico() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaServico()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("APP ATM® Consultoria"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("image/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("image/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirServico,
                    child: Image.asset("image/menu_servico.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _abrirCliente,
                    child: Image.asset("image/menu_cliente.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirContato,
                    child: Image.asset("image/menu_contato.png"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

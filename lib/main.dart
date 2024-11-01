import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}

class Principal extends StatelessWidget {
  const Principal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding:EdgeInsets.only(top: 10.0),
          children: [
            DrawerHeader(child: Text("Menú lateral", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, ),),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 200, 47, 255)
            ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Opcion3()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_applications),
              title: Text("Catálogos"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Opcion3()));
              },
            ),
            ListTile(
              leading: Icon(Icons.list_alt_rounded),
              title: Text("Inventario"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Opcion3()));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app_rounded),
              title: Text("Exit"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Opcion3()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Navegator Drawer', style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 51, 6, 59),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
class Opcion3 extends StatelessWidget {
  const Opcion3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Bienvenido a la opción 3", style: TextStyle(fontSize: 20.0, color: Colors.purple[900]),textAlign: TextAlign.center,),
    );
  }
}
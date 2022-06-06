import 'package:flutter/material.dart';
import 'package:homepage/review_list.dart';
import 'description_place.dart';
import 'gradient_back.dart';
import 'header_appbar.dart';

void main() {
  runApp(const MyApp());
}

String descricion =
    "La Panaderia Vicentino’s abrió sus puertas el 3 de Marzo del 2006 en un pequeño espacio en la 99 de la Broadway en Somerville. Como logo tiene la famosa torre de San Vicente y con un menú bastante extenso que incluye todo tipo de pan que se conoce en El Salvador. Entre esos están los salpores de arroz, alemanas, y tortas de yema, maríaluisa, budín, pasteles de piña y leche, viejitas y muchos más. Los clientes aprecian el sabor del pan y también el ambiente de la panadería. Una cliente frecuente confesó que “el pan de esta panadería es el más fresco y con mejor sabor, en los diez años de vivir aquí, un lugar como este nos hacía falta”. La música recuerda las fiestas anuales en el Parque de San Vicente, con las orquestas más conocidas del lugar, muchos se contagian con la nostalgia que guarda este pequeño rincón de El Salvador en Massachusetts.";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: Scaffold(
          body: Stack(
            children: <Widget>[
              ListView(children: <Widget>[
                DescriptionPlace("Pan Vicentino’s", 4, descricion),
                ReviewList()
              ]),
              HeaderAppbar()
            ],
          ),
        )); // const MyHomePage(title: 'me Page'),
    //body: ReviewList()));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

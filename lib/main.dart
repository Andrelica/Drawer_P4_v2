import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Drawer';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state.
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Drawer Andrea'),
          backgroundColor: Colors.blueGrey,
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                // <-- SEE HERE
                decoration: BoxDecoration(color: Colors.blueGrey),
                accountName: Text(
                  "Andrea Sanchez - 6toJ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "andrelicasanchez21@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: FlutterLogo(),
              ),
              ListTile(
                leading: Icon(
                  Icons.apple,
                ),
                title: const Text('Apple'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.android,
                ),
                title: const Text('Android'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.window,
                ),
                title: const Text('Windows'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              AboutListTile(
                // <-- SEE HERE
                icon: Icon(
                  Icons.info,
                ),
                child: Text('About app'),
                applicationIcon: Icon(
                  Icons.local_play,
                ),
                applicationName: 'My Cool App',
                applicationVersion: '1.0.25',
                applicationLegalese: '© 2019 Company',
                aboutBoxChildren: [
                  ///Content goes here...
                ],
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  _key.currentState!.openDrawer(); //<-- SEE HERE
                },
                child: const Text(
                  'Elevated Button 1',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ));
  }
}

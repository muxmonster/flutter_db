import 'package:flutter/material.dart';

import 'screens/form_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Finance',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'แอพบัญชี'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FormScreen();
                  },
                ),
              );
            },
            icon: const Icon(Icons.add_circle),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, int index) {
          return Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            child: ListTile(
              leading: CircleAvatar(
                child: FittedBox(
                  child: Text('500'),
                ),
              ),
              title: Text('รายยการ'),
              subtitle: Text(DateTime.now().toString()),
            ),
          );
        },
        itemCount: 4,
      ),
    );
  }
}

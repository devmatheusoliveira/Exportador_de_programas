import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextFormField(
              maxLength: 100,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText:
                    'Insira o caminho do aplicativo: Ex: "C:\\Pasta\\aplicativo.apk"',
              ),
              onChanged: (value) {},
            ),
            TextFormField(
              maxLength: 100,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Insira o nome do aplicativo',
              ),
              onChanged: (value) {},
            ),
            TextFormField(
              maxLength: 100,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText:
                    'Insira o primeiro caminho para duplicar caminho do  aplicativo: Ex: "C:\\Pasta\\novaPasta\\aplicativo.apk"',
              ),
              onChanged: (value) {},
            ),
            FlatButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text("enviar"),
            ),
          ],
        ),
      ),
    );
  }
}

class FileController {
  /*final filename = 'file.txt';
    file = await File(file.path).writeAsString('some content');
    
    File(file.path).readAsString().then((String contents) {
      print(contents);
    });
    */

  File changeFileNameOnlySync(File file, String newFileName) {
    var path = file.path;
    var lastSeparator = path.lastIndexOf(Platform.pathSeparator);
    var newPath = path.substring(0, lastSeparator + 1) + newFileName;
    return file.renameSync(newPath);
  }
  /*
    if (file.existsSync()) {
      file.copySync("C:\\Users\\Maker\\teste_copy.zip");
      changeFileNameOnlySync(file, "teste$_counter.zip");
    }
  */
}

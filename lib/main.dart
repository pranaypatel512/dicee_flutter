import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const DinceePage(),
    );
  }
}

class DinceePage extends StatefulWidget {
  const DinceePage({super.key});

  @override
  State<DinceePage> createState() => _DinceePageState();
}

class _DinceePageState extends State<DinceePage> {
  int leftDiceeNo = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Dicee'),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftDiceeNo = 5;
                    });
                  },
                  child: Image.asset('images/dice$leftDiceeNo.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print("Second dicee clicked");
                    }
                  },
                  child: Image.asset('images/dice2.png'),
                ),
              ),
            ],
          ),
        ));
  }
}
